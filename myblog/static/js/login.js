$(function () {
    // 验证码刷新
    $('#validCode').click(function () {
        $(this)[0].src += '?'
    });

    // 校验表单，校验失败在表单后添加一个校验错误提示：1. 不能为空

    // ajax提交登录认证数据，该web的认证渠道只有这一个。
    $('button').click(function () {

        $.ajax({
            url: '',
            type: 'POST',
            data: {
                username: $('#username').val(),
                password: $('#password').val(),
                valid_code: $('#valid').val(),
                csrfmiddlewaretoken: $('[name=csrfmiddlewaretoken]').val(),
            },
            success: function (data) {
                console.log(data);
                // console.log(typeof(data));
                // var resp = JSON.parse(data);
                // if (resp.msg) {
                //     $('button').append('<span>' + resp.msg +'</span>')
                // }
                if (data.user) {
                    if (location.search) {  // 判定是否是其它页面跳转过来的，从而实现登录成功后，跳转回请求页面
                        // console.log(location.search.slice(6));
                        // console.log(location.search.slice(0));
                        location.href = location.search.slice(6)
                    } else {
                        location.href = '/index/'
                    }
                } else {
                    $('.error').text(data.msg).css({'color': 'red', 'margin-left': '10px'});
                    setTimeout(function () {
                        $('.error').text('');
                    }, 2000);
                }

            }
        })
    });
});