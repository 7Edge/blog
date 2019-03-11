#! /usr/bin/env python3
# coding:utf-8
# author:zhangjiaqi<1399622866@qq.com>
# Date:2018-08-14

"""
自定义tags 和 filters
"""
from django import template
from myblog import models
from django.utils import timezone
from django.db.models import Count

register = template.Library()


@register.inclusion_tag('myblog/stuff_list.html')
def stuff_list(user_obj):  # 参数需要一个
    # 计算园龄 以天为单位
    curr_time = timezone.now()
    create_time = user_obj.create_time
    interval_timedelta = curr_time - create_time
    age_days = interval_timedelta.days
    # print('已经注册年龄天数', age_days)  ###

    user_articles = models.Article.objects.filter(user=user_obj)

    # 分类
    article_category_queryset = user_articles.values('category__pk').annotate(
        count=Count('pk')).values('category__title', 'count')
    # print(article_category_queryset)  ###

    # 标签
    # article_tag_queryset = user_articles.values('tag__pk').annotate(count=Count('pk')).values('tag__title', 'count')
    article_tag_queryset = models.Tag.objects.filter(blog=user_obj.blog).values('pk').annotate(
        count=Count('article__pk')).values('title', 'count')
    # print(article_tag_queryset)  ###

    article_archive_queryset = user_articles.extra(select={'y_m': "date_format(create_time, '%%Y-%%m')"}).values(
        'y_m').annotate(count=Count('pk')).values('y_m', 'count')
    # print(article_archive_queryset)  ###

    return {'user_obj': user_obj,
            'age_days': age_days,
            'category_list': None,
            'article_category_queryset': article_category_queryset,
            'article_tag_queryset': article_tag_queryset,
            'article_archive_queryset': article_archive_queryset,}


if __name__ == '__main__':
    pass
