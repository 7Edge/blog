#! /usr/bin/env python3
# coding:utf-8
# author:zhangjiaqi<1399622866@qq.com>
# Date:2018-08-23

"""

"""
from django import forms
from django.forms import widgets
from django.forms import ModelForm
from myblog import models

# bootstrap 的表单渲染widget
text_wid = widgets.TextInput(attrs={'class': 'form-control'})
textarea_wid = widgets.Textarea(attrs={'class': 'form-control'})
pwd_wid = widgets.PasswordInput(attrs={'class': 'form-control'})
date_wid = widgets.DateInput(attrs={'class': 'form-control'})
category_wid = widgets.RadioSelect()
tag_wid = widgets.RadioSelect()


class AddArticle(forms.Form):
    title = forms.CharField(min_length=5, max_length=200, widget=text_wid, label='标题')
    content = forms.CharField(required=True, widget=textarea_wid, label='正文')
    # category = forms.ChoiceField(widget=category_wid, label='文章分类')

    # tag = forms.ChoiceField(widget=tag_wid, label='文章标签')

    # def __init__(self, user, *args, **kwargs):
    #     super(AddArticle, self).__init__(*args, **kwargs)
    #
    #     category_list = models.Category.objects.filter(blog__userinfo__pk=user.pk)
    #     # tag_list = models.Tag.objects.filter(blog__userinfo__pk=user.pk)
    #
    #     # print(user.username)
    #
    #     self.fields['category'].choices = [(cate_obj.pk, cate_obj.title) for cate_obj in category_list]
    #     # self.fields['tag'].choices = [(tag_obj.pk, tag_obj.title) for tag_obj in tag_list]


class CategoryForm(ModelForm):
    class Meta:
        model = models.Category
        fields = ['title']


class TagForm(ModelForm):
    class Meta:
        model = models.Tag
        fields = ['title']

if __name__ == '__main__':
    pass
