from django.shortcuts import render, HttpResponse, redirect
from django.contrib import auth
from django.http import JsonResponse  # 对于ajax请求，大多都响应一个json字符串，使用JsonResponse可以直接
# 将python总的对象帮我们转换成json字符串，就不用我们手动来处理
from django.contrib.auth.decorators import login_required
from django.urls import reverse
from bs4 import BeautifulSoup
from .myform import RegForm
from .models import UserInfo
from myblog import models
from django.core import paginator
from django.db import transaction
from django.db.models import F, Q
from Blogs import settings
import random
import json
import os


# Create your views here.


# 首页
# @login_required
def index(request):
    article_list = models.Article.objects.all().order_by('pk')
    # 分页
    page_max_obj_num = 4
    pag_num = int(request.GET.get('page', 1))
    paginator_obj = paginator.Paginator(article_list, page_max_obj_num)
    max_page_num = 9  # 必须是奇数
    max_page_num_int_half = max_page_num // 2

    # print('用户请求的页数是:', pag_num)  ###
    # print('最大页数显示的一半是：', max_page_num_int_half)  ###
    # print('分页数', paginator_obj.num_pages)  ###

    # 构造页数范围,后面把它构造成一个函数
    if paginator_obj.num_pages < max_page_num:
        pages_range = range(1, paginator_obj.num_pages + 1)
    else:
        if pag_num + max_page_num_int_half <= max_page_num:
            pages_range = range(1, max_page_num + 1)
        elif pag_num + max_page_num_int_half >= paginator_obj.num_pages:
            pages_range = range(paginator_obj.num_pages - max_page_num + 1, paginator_obj.num_pages + 1)
        else:
            pages_range = range(pag_num - max_page_num_int_half, pag_num + 1 + max_page_num_int_half)

    # print('page range', pages_range)  ###
    try:
        curr_page_obj = paginator_obj.page(pag_num)
    except paginator.PageNotAnInteger as e:
        curr_page_obj = paginator_obj.page(1)
        pag_num = 1
    except paginator.EmptyPage as e:
        curr_page_obj = paginator_obj.page(1)
        pag_num = 1

    return render(request, 'myblog/index.html', {'pages_range': pages_range,
                                                 'pag_num': pag_num,
                                                 'curr_page_obj': curr_page_obj, })

# 个人站点
def personal_site(request, sitename):
    site_user = models.UserInfo.objects.filter(username=sitename).first()
    if site_user:
        article_list = site_user.article_set.all()
    else:
        return render(request, 'myblog/404.html')
    return render(request, 'myblog/personsite.html', {'site_user': site_user,
                                                      'article_list': article_list, })


# 获取指定分类文章
def category(user_obj, category_target):
    return models.Article.objects.filter(user=user_obj, category__title=category_target)


# 获取指定标签文章
def tag(user_obj, tag_target):
    return models.Article.objects.filter(user=user_obj, tag__title=tag_target)


# 获取指定归档文章
def archive(user_obj, arch_target):
    try:
        arch_time = arch_target.split('-')
        return models.Article.objects.filter(user=user_obj, create_time__year=arch_time[0],
                                             create_time__month=arch_time[1])
    except Exception as e:
        return []


# 分不同方式显示跟人站点文章
def display_articles(request, sitename, route, target):
    site_user = models.UserInfo.objects.filter(username=sitename).first()

    if site_user:
        import sys
        m = sys.modules[__name__]
        if hasattr(m, route):
            func = getattr(m, route)
            article_list = func(site_user, target)
            return render(request, 'myblog/personsite.html', {'site_user': site_user, 'article_list': article_list, })
    return render(request, 'myblog/404.html')


# 文章详情页
def article(request, sitename, article_pk):
    site_user = models.UserInfo.objects.filter(username=sitename).first()
    article_obj = models.Article.objects.filter(pk=article_pk, user=site_user).first()  # 两个条件限制只能当前用户的文章
    return render(request, 'myblog/article.html', {'site_user': site_user,
                                                   'article_obj': article_obj}, )


# 点赞
def digg(request):
    if request.is_ajax():
        logged_user = request.user
        response_dict = {
            'result': False,
            'msg': '操作失败！',
        }
        if logged_user.is_authenticated:
            a_id = request.POST.get('article_id')
            isup = json.loads(request.POST.get('choice'))  # 注意post的数据类型都是字符串
            digg_obj = models.ArticleUpDown.objects.filter(article_id=a_id, user=logged_user).first()
            if digg_obj:
                if digg_obj.is_up:
                    response_dict['msg'] = '你已点赞过！'
                else:
                    response_dict['msg'] = '你已反对过！'
            else:
                with transaction.atomic():
                    models.ArticleUpDown.objects.create(is_up=isup, article_id=a_id, user=logged_user)
                    article_qs = models.Article.objects.filter(pk=a_id)
                    if isup:
                        article_qs.update(up_count=F('up_count') + 1)
                        # response_dict['msg'] = '点赞成功！'
                    else:
                        article_qs.update(down_count=F('down_count') + 1)
                    response_dict['msg'] = '操作成功！'
                    response_dict['result'] = True
        else:
            response_dict['msg'] = '操作需先登录博客园！'
        return JsonResponse(response_dict)
    else:
        return redirect(to=reverse('blog:index'))


# 返回评论列表树
def comment_tree(request):
    comment_qs = models.Comment.objects.filter(article_id=request.GET.get('article_id')).order_by('pk')

    comment_list = list(comment_qs.values('pk',
                                          'comment_content',
                                          'user_id',
                                          'parent_comment_id',
                                          'create_time',
                                          'article_id',
                                          'user__username', ))
    return JsonResponse(comment_list, safe=False)


# 提交评论
def comment(request):
    # print(request.POST)
    cmt_content = request.POST.get('comment_cont')
    cmt_article_id = request.POST.get('article_id')
    cmt_parent_id = request.POST.get('pid')
    cmt_user_id = request.user.pk

    # 处理评论的xss攻击
    soup = BeautifulSoup(cmt_content, 'html.parser')
    for tag_item in soup.find_all():
        if tag_item.name == 'script':
            tag_item.decompose()

    with transaction.atomic():
        comment_obj = models.Comment.objects.create(comment_content=str(soup), article_id=cmt_article_id,
                                                    parent_comment_id_id=cmt_parent_id, user_id=cmt_user_id)
        models.Article.objects.filter(pk=cmt_article_id).update(comment_count=F('comment_count') + 1)

    response = {}
    response['result'] = True
    response['cmt_pk'] = comment_obj.pk
    response['cmt_content'] = str(soup)
    response['cmt_article_id'] = cmt_article_id
    response['cmt_parent_id'] = cmt_parent_id
    response['cmt_user_id'] = cmt_user_id
    response['cmt_username'] = comment_obj.user.username
    response['cmt_createtime'] = comment_obj.create_time

    return JsonResponse(response)


# 评论和文章编辑器文件上传
def upload(request):
    response = {
        "error": 1
    }

    try:
        print(request.FILES)
        file_obj = request.FILES.get('imgFile')
        with open(os.path.join(settings.MEDIA_ROOT, 'user_upload', file_obj.name), 'wb') as fp:
            for line in file_obj:
                fp.write(line)
        response['error'] = 0
        response['url'] = settings.MEDIA_URL + 'user_upload/' + file_obj.name
        # return HttpResponse(json.dumps(response))
    except Exception as e:
        response['message'] = "服务器端发生错误！"

    return JsonResponse(response)


# 登录验证页面
def login(request):
    if request.method == 'POST':
        response = {
            'user': None,
            'msg': None,
        }
        login_name = request.POST.get('username')  # 因为使用的是ajax提交表单数据，对于表单数据的校验就放到前端吧.
        pwd = request.POST.get('password')
        valid_code = request.POST.get('valid_code')
        if valid_code.upper() == request.session['valid_code'].upper():  # 只做验证码校验和用户认证校验。
            user = auth.authenticate(username=login_name, password=pwd)
            if user:
                auth.login(request, user)  # 这样request.user 就会有当前登录对象
                response['user'] = user.username
                return JsonResponse(response)
            else:
                response['msg'] = '用户名或密码错误！'
                return JsonResponse(response)
        else:
            response['msg'] = '验证码错误！'
            return JsonResponse(response)
    return render(request, 'myblog/login.html')


# 注册页面
def register(request):
    if request.method == 'POST':  # request对象还有一个is_ajax()方法，判定请求是否是ajax请求。
        response = {
            'result': False,
            'msg': None
        }
        form = RegForm(request.POST)
        if form.is_valid():
            reg_username = form.cleaned_data.get('username')
            reg_password = form.cleaned_data.get('password')
            reg_telephone = form.cleaned_data.get('telephone')
            reg_email = form.cleaned_data.get('email')
            reg_avatar_obj = request.FILES.get('avatar')  # 这是一个UploadedFile对象
            try:
                extra = {}
                if reg_avatar_obj:
                    extra['avatar'] = reg_avatar_obj

                # 先创建blog
                blog_obj = models.Blog.objects.create(title=reg_username,
                                                      name=reg_username,
                                                      theme=reg_username+'.css')

                user = UserInfo.objects.create_user(username=reg_username, password=reg_password,
                                                    email=reg_email, telephone=reg_telephone, blog=blog_obj, **extra)
                if user:
                    response['result'] = True
            except Exception as e:
                response['msg'] = e
            return JsonResponse(response)
        else:
            response['msg'] = form.errors.as_json()
            return JsonResponse(response)
    form = RegForm()
    return render(request, 'myblog/register.html', {'form': form})


# 退出注销页面
def logout(request):
    auth.logout(request)
    return redirect(to=reverse('blog:index'))


# 验证码图片生成view
def valid_code_img(request):
    def get_random_color():
        return random.randint(0, 255), random.randint(0, 255), random.randint(0, 255)

    from PIL import Image, ImageDraw, ImageFont  # 安装pillow库 python -m pip install pillow
    from io import BytesIO
    import string
    img = Image.new("RGB", (255, 55), color=get_random_color())  # img对象
    draw = ImageDraw.Draw(img)  # 画板对象
    fanti_font = ImageFont.truetype(font='myblog/static/font/RobotoDraft-Medium.ttf', size=50)  # 字体对象
    valid_code = ''
    for i in range(5):
        v_char = ''.join(random.sample(string.ascii_letters + string.digits, 1))
        draw.text((40 * i + 30, -5), v_char, get_random_color(), font=fanti_font)
        valid_code += v_char
    # print(valid_code)
    request.session['valid_code'] = valid_code
    width = 265
    height = 55
    for i in range(10):
        x1 = random.randint(0, width)
        y1 = random.randint(0, height)
        x2 = random.randint(0, width)
        y2 = random.randint(0, height)
        draw.line((x1, y1, x2, y2), fill=get_random_color())

    for i in range(20):
        x = random.randint(0, width)
        y = random.randint(0, height)
        draw.arc((x, y, x + 4, y + 4), 0, 90, fill=get_random_color())
    # with open('myblog/static/img/validCode.png', 'wb') as f:
    #     img.save(f, 'png')
    #
    # with open('myblog/static/img/validCode.png', 'rb') as f:
    #     data = f.read()

    with BytesIO() as fp:
        img.save(fp, 'png')
        # fp.seek(0)
        # data = fp.read()
        data = fp.getvalue()

    return HttpResponse(data)

# 博客管理页面
