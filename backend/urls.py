#! /usr/bin/env python3
# coding:utf-8
# author:zhangjiaqi<1399622866@qq.com>
# Date:2018-08-22

"""

"""
from django.urls import path, re_path
from . import views

urlpatterns = [
    path('add_article/', views.add_article, name='add_article'),
    path('add_category/', views.add_category, name='add_category'),
    path('add_tag/', views.add_tag, name='add_tag'),
    path('del_article/<int:aid>/', views.del_article, name='del_article'),
    path('modify_article/<int:aid>/', views.modify_article, name='modify_article'),
    path('', views.manage, name='manage'),
]

if __name__ == '__main__':
    pass
