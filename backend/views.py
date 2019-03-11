from django.shortcuts import render, HttpResponse, redirect
from django.urls import reverse
from myblog import models
from django.contrib.auth.decorators import login_required
from .backendforms import AddArticle, CategoryForm, TagForm
from bs4 import BeautifulSoup


# Create your views here.


# 文章后台管理
@login_required()
def manage(request):
    article_list = models.Article.objects.filter(user=request.user)
    category_list = models.Category.objects.filter(blog=request.user.blog)
    tag_list = models.Tag.objects.filter(blog=request.user.blog)
    return render(request, 'backend/manage.html', {'article_list': article_list,
                                                   'category_list': category_list,
                                                   'tag_list': tag_list})


# 添加文章
@login_required()
def add_article(request):
    if request.method == 'POST':
        form = AddArticle(request.POST)
        if form.is_valid():
            p_title = form.cleaned_data.get('title')
            p_content = form.cleaned_data.get('content')
            p_category = request.POST.get('category')  # 这两个没有在form中定义
            p_tag_list = request.POST.getlist('tag')
            print('新加文章分类', p_category)  ###
            print('新加文章标签', p_tag_list)  ###

            # 防止xss攻击,过滤script标签
            soup = BeautifulSoup(p_content, "html.parser")
            for tag in soup.find_all():
                if tag.name == "script":
                    tag.decompose()

            # 构建摘要数据,获取标签字符串的文本前150个符号

            p_desc = soup.text[0:150] + "..."

            # 创建文章对象，同时创建了文章的分类
            article_obj = models.Article.objects.create(title=p_title,
                                                        desc=p_desc,
                                                        content=str(soup),
                                                        up_count=0,
                                                        down_count=0,
                                                        comment_count=0,
                                                        category_id=p_category,
                                                        user=request.user)

            # 构建文章和标签的多对多关系，由于是through表article2tag表，所以只能操作该表
            a2t_list = [models.Article2Tag(article=article_obj, tag_id=tagId) for tagId in p_tag_list]
            print(a2t_list)
            # 利用model 管理器的 bulk_create API 创建数据
            models.Article2Tag.objects.bulk_create(a2t_list)

            return redirect(to=reverse('backend:manage'))
        return render(request, 'backend/add_article.html', {'form': form})

    form = AddArticle()
    category_list = models.Category.objects.filter(blog__userinfo__pk=request.user.pk)
    tag_list = models.Tag.objects.filter(blog__userinfo__pk=request.user.pk)
    return render(request, 'backend/add_article.html', {'form': form,
                                                        'category_list': category_list,
                                                        'tag_list': tag_list})


# 删除文章
@login_required()
def del_article(request, aid):
    article_obj = models.Article.objects.filter(pk=aid).first()
    article_obj.delete()
    return redirect(to=reverse('backend:manage'))


# 修改文章
@login_required()
def modify_article(request, aid):
    article_obj = models.Article.objects.filter(pk=aid).first()
    if request.method == 'POST':
        form = AddArticle(request.POST)
        if form.is_valid():
            p_title = form.cleaned_data.get('title')
            p_content = form.cleaned_data.get('content')
            p_category = request.POST.get('category')  # 这两个没有在form中定义
            p_tag_list = request.POST.getlist('tag')

            # 防止xss攻击,过滤script标签
            soup = BeautifulSoup(p_content, "html.parser")
            for tag in soup.find_all():
                if tag.name == "script":
                    tag.decompose()

            # 构建摘要数据,获取标签字符串的文本前150个符号

            p_desc = soup.text[0:150] + "..."

            # 创建文章对象，同时创建了文章的分类
            models.Article.objects.filter(pk=aid).update(title=p_title,
                                                                       desc=p_desc,
                                                                       content=str(soup),
                                                                       category_id=p_category)

            # 构建文章和标签的多对多关系，由于是through表article2tag表，所以只能操作该表
            models.Article2Tag.objects.filter(article=article_obj).delete()
            a2t_list = [models.Article2Tag(article=article_obj, tag_id=tagId) for tagId in p_tag_list]
            # 利用model 管理器的 bulk_create API 创建数据
            models.Article2Tag.objects.bulk_create(a2t_list)

        return redirect(to=reverse('backend:manage'))
    else:
        temp_dict = {'title': article_obj.title, 'content': article_obj.content}
        form = AddArticle(temp_dict)
        category_list = models.Category.objects.filter(blog__userinfo__pk=request.user.pk)
        tag_list = models.Tag.objects.filter(blog__userinfo__pk=request.user.pk)
        article_used_tag = models.Article2Tag.objects.filter(article=article_obj).values('tag_id')
        used_tag_list = [x['tag_id'] for x in article_used_tag]
        return render(request, 'backend/modify_article.html', {'form': form,
                                                               'aid': aid,
                                                               'article_obj': article_obj,
                                                               'category_list': category_list,
                                                               'tag_list': tag_list,
                                                               'used_tag_list': used_tag_list})


# 添加分类
@login_required()
def add_category(request):
    if request.method == 'POST':
        cate_obj = models.Category.objects.create(title=request.POST.get('title'),
                                                  blog=request.user.blog)
        return redirect(to=reverse('backend:manage'))
    form = CategoryForm()
    return render(request, 'backend/add_category.html', {'form': form})


# 添加标签
@login_required()
def add_tag(request):
    if request.method == 'POST':
        tag_obj = models.Tag.objects.create(title=request.POST.get('title'),
                                            blog=request.user.blog)
        return redirect(to=reverse('backend:manage'))
    form = TagForm()
    return render(request, 'backend/add_tag.html', {'form': form})
