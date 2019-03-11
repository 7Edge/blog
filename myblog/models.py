from django.db import models
from django.contrib.auth.models import AbstractUser


# Create your models here.
# 用户表，通过table_per_class方式继承一个抽象model类，并将设置在settings.AUTH_USER_MODELS配置中
class UserInfo(AbstractUser):
    nid = models.AutoField(primary_key=True)
    telephone = models.CharField(max_length=11, null=True, unique=True)
    avatar = models.FileField(upload_to='avatars/', default='avatars/default.png')
    create_time = models.DateTimeField(verbose_name='创建时间', auto_now_add=True)

    blog = models.OneToOneField(to='Blog', to_field='nid', null=True, on_delete=models.CASCADE)

    def __str__(self):
        return self.username


# 个人博客表
class Blog(models.Model):
    nid = models.AutoField(primary_key=True)
    title = models.CharField(verbose_name='个人博客标题', max_length=32)
    name = models.CharField(verbose_name='博客站点名', max_length=32)
    theme = models.CharField(verbose_name='博客主题', max_length=32)

    def __str__(self):
        return self.title


class Category(models.Model):
    """
    博主个人文章分类表
    """
    nid = models.AutoField(primary_key=True)
    title = models.CharField(verbose_name='分类标题', max_length=32)
    blog = models.ForeignKey(verbose_name='所属博客', to='Blog', to_field='nid', on_delete=models.CASCADE)

    def __str__(self):
        return self.title


class Tag(models.Model):
    nid = models.AutoField(primary_key=True)
    title = models.CharField(verbose_name='标签名', max_length=32)
    blog = models.ForeignKey(verbose_name='所属博客', to='Blog', to_field='nid', on_delete=models.CASCADE)

    def __str__(self):
        return self.title


class Article(models.Model):
    nid = models.AutoField(primary_key=True)
    title = models.CharField(verbose_name='文章标题', max_length=64)
    desc = models.CharField(verbose_name='文章描述', max_length=255)
    create_time = models.DateTimeField(verbose_name='创建时间', auto_now_add=True)
    content = models.TextField(verbose_name='文章内容')

    up_count = models.IntegerField(verbose_name='文章点赞数', default=0)
    down_count = models.IntegerField(verbose_name='文章踩灭数', default=0)
    comment_count = models.IntegerField(verbose_name='文章评论数', default=0)

    user = models.ForeignKey(to='UserInfo', to_field='nid', verbose_name='作者', on_delete=models.CASCADE)
    category = models.ForeignKey(to='Category', to_field='nid', verbose_name='文章分类', on_delete=models.CASCADE)
    tag = models.ManyToManyField(to='Tag',
                                 through='Article2Tag',
                                 through_fields=('article', 'tag'),
                                 )

    def __str__(self):
        return self.title


class Article2Tag(models.Model):
    nid = models.AutoField(primary_key=True)
    article = models.ForeignKey(to='Article', to_field='nid', verbose_name='文章', on_delete=models.CASCADE)
    tag = models.ForeignKey(to='Tag', to_field='nid', verbose_name='标签', on_delete=models.CASCADE)

    # 这是一个多对多中间表，所以article和tag应该唯一联合，这个关系表示需要卸载meta内嵌类中，作为metadata
    class Meta:
        unique_together = [
            ('article', 'tag'),
        ]

    def __str__(self):
        return self.article.title + "---" + self.tag.title


class ArticleUpDown(models.Model):
    """
    点赞表
    """
    nid = models.AutoField(primary_key=True)
    user = models.ForeignKey(to="UserInfo", to_field='nid', verbose_name='用户', on_delete=models.CASCADE)
    article = models.ForeignKey(to='Article', to_field='nid', verbose_name='文章', on_delete=models.CASCADE)
    is_up = models.NullBooleanField(null=True)

    class Meta:
        unique_together = [
            ('user', 'article'),
        ]


class Comment(models.Model):
    """
    评论表
    """
    nid = models.AutoField(primary_key=True)
    user = models.ForeignKey(to="UserInfo", to_field='nid', verbose_name='用户', on_delete=models.CASCADE)
    article = models.ForeignKey(to='Article', to_field='nid', verbose_name='文章', on_delete=models.CASCADE)
    comment_content = models.CharField(verbose_name='评论内容', max_length=255)
    create_time = models.DateTimeField(verbose_name='评论时间', auto_now_add=True)
    parent_comment_id = models.ForeignKey('self', null=True, on_delete=models.CASCADE)

    def __srt__(self):
        return self.comment_content


