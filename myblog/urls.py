#! /usr/bin/env python3
# coding:utf-8
# author:zhangjiaqi<1399622866@qq.com>
# Date:2018-08-06

"""

"""
from django.urls import path, re_path
from django.views.static import serve
from Blogs import settings
from . import views

urlpatterns = [
    path('login/', views.login, name='login'),
    path('index/', views.index, name='index'),
    path('register/', views.register, name='register'),
    path('logout/', views.logout, name='logout'),
    path('digg/', views.digg, name='digg'),
    path('upload/', views.upload, name='upload'),
    path('comment_tree/', views.comment_tree, name='comment_tree'),
    path('comment/', views.comment, name='comment'),
    path('valid_code_img/', views.valid_code_img, name='validCode'),
    re_path(r'^media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT}),
    re_path(r'(?P<sitename>\w+)/(?P<route>category|tag|archive)/(?P<target>.*)/', views.display_articles,
            name='display_articles'),
    path('<str:sitename>/a/<int:article_pk>/', views.article, name='article'),
    path('<str:sitename>/', views.personal_site, name='personalSite'),
    path('', views.index),
]

if __name__ == '__main__':
    pass
