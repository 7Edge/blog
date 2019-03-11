 #! /usr/bin/env python3
# coding:utf-8
# author:zhangjiaqi<1399622866@qq.com>
# Date:2018-08-08

"""

"""
from django import forms
from django.forms import widgets
from django.core.exceptions import ValidationError
from .models import UserInfo

# bootstrap 的表单渲染widget
text_wid = widgets.TextInput(attrs={'class': 'form-control'})
pwd_wid = widgets.PasswordInput(attrs={'class': 'form-control'})
email_wid = widgets.EmailInput(attrs={'class': 'form-control'})
date_wid = widgets.DateInput(attrs={'class': 'form-control'})


# 注册页面form

class RegForm(forms.Form):
    username = forms.CharField(min_length=4, widget=text_wid, label='用户名')
    password = forms.CharField(min_length=6, widget=pwd_wid, label='设置密码')
    r_password = forms.CharField(min_length=6, widget=pwd_wid, label='重输密码')
    telephone = forms.CharField(widget=text_wid, label='手机号')
    email = forms.EmailField(widget=email_wid, label='邮箱')

    # 校验用户名是否已被注册
    def clean_username(self):
        user_name = self.cleaned_data.get('username')
        user = UserInfo.objects.filter(username=user_name)
        if user:
            raise ValidationError('用户名已被注册！')
        else:
            return user_name

    def clean_telephone(self):
        phone_num = self.cleaned_data.get('telephone')
        user = UserInfo.objects.filter(telephone=phone_num).first()
        print('user', user)
        if len(phone_num) == 11 and not user:
            return phone_num
        elif user:
            raise ValidationError('手机号已注册！')
        else:
            raise ValidationError('手机格式错误！')

    def clean(self):
        pwd = self.cleaned_data.get('password')
        r_pwd = self.cleaned_data.get('r_password')
        if pwd and r_pwd:  # 这里要校验，是因为密码和重复密码是可能为空的，因为在局部是可能校验不同，就不再cleaned里面，
            # 这样避免有一个局部处理问题，就不再报出两次密码出错了。这样判断就保证只有密码和从输密码都符合局部钩子，才会再
            # 进行后面依赖它验证的进行验证；
            if pwd == r_pwd:
                return self.cleaned_data
            else:
                raise ValidationError('两次密码不相同！')
        return self.cleaned_data


if __name__ == '__main__':
    pass
