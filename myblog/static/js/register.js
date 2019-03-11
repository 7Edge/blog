$(function () {
    // 注册ajax提交
    $('#register').click(function () {
        var form = new FormData();
        var request_data = $('#form').serializeArray();
        // 返回一个array数组，每个元素是一个js对象，对象的key是name，value是value
        $.each(request_data, function (idx, elem) {
            form.append(elem.name, elem.value)
        });
        console.log(request_data);
        // form.append('username', $('#id_username').val());
        // form.append('password', $('#id_password').val());
        // form.append('r_password', $('#id_r_password').val());
        // form.append('telephone', $('#id_telephone').val());
        // form.append('email', $('#id_email').val());
        // form.append('csrfmiddlewaretoken', $('input[name=csrfmiddlewaretoken]').val());
        form.append('avatar', $('#avatar')[0].files[0]);
        $.ajax({
            url: '',
            type: 'post',
            contentType: false,
            processData: false,
            data: form,
            success: function (data) {
                // console.log(data);
                var error = JSON.parse(data.msg);
                // console.log(error);
                // console.log(data.result);
                if (data.result) {
                    location.href = '/index/';
                } else {
                    $('span.error').text('');  // 先清空再添加
                    $('.form-group').removeClass('has-error');
                    $.each(error, function (key, error_list) {
                        if (key === '__all__') {
                            $('#id_r_password').next().text(error_list[0].message).parent().addClass('has-error')
                        } else {
                            $('#id_' + key).next().text(error_list[0].message).parent().addClass('has-error')
                        }
                    });
                }
            }

        });
    });

    // 选择头像预览
    $("#avatar").change(function () {

        // 获取用户选中的文件对象
        var file_obj = $(this)[0].files[0];
        // 获取文件对象的路径
        var reader = new FileReader();
        reader.readAsDataURL(file_obj);
        // 修改img的src属性 ，src=文件对象的路径
        reader.onload = function () {
            $("#avatar_img").attr("src", reader.result)
        };

    });

});