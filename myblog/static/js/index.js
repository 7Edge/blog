$(function () {
    // 模版jquery对象,用于克隆
    var $example_area = $('#example');
    var $example_comment = $example_area.find('li');
    var $example_news = $('#examp_item').find('div.item');
    var $content_list = $('#content-list');

    // jquery对象
    var $nav_ul = $('#bs-example-navbar-collapse-1 ul');
    var $nav_left_ul_li = $nav_ul.eq(0).find('li');
    var $nav_right_ul_li = $nav_ul.eq(1).find('li').slice(0, 3);
    var $hot_nav_a = $('#main-nav').find('a');
    var $register_next_btn = $('#phone3').find('button[type=button]');
    var $login_btn = $('#myModal').find('button[type=submit]').slice(0, 2);
    var $register_step = $('div[class=step-zjq]');
    var $register_step_one = $register_step.find('span').eq(0);
    var $register_step_sed = $register_step.find('span').eq(1);
    var $dist_area_btn = $('.distr-area-choice button');
    var $digg_like = $('.glyphicon.glyphicon-thumbs-up');
    var $discus_case = $('.glyphicon.glyphicon-edit');
    var $discus_coll_btn = $('button[zjq-type=collpe]');
    var $discus_publish_btn = $('button[zjq-type=commt]');
    var $modal_distr = $('#distr');
    var $modal_distr_disbtn = $modal_distr.find('.modal-footer button').eq(1);
    // console.log($login_btn);

    // 点赞前十数据
    var $like_ul = $('.col-md-4 ul[class=list-group]');
    var like_top = [{"favor": "300", "content": "使用以下给出的这份超级简单的HTML模版使用以下给出的这份超级简单的HTML模版"},
        {"favor": "200", "content": "使用以下超级简单的HTML模版"},
        {"favor": "100", "content": "使用给出的这份超级简单的HTML模版"},
        {"favor": "90", "content": "使用以超级简单的HTML模版"},
        {"favor": "80", "content": "使用以这份超级简单的HTML模版"},
        {"favor": "70", "content": "使用给出的这份超级简单的HTML模版"},
        {"favor": "60", "content": "使用以简单的HTML模版"},
        {"favor": "60", "content": "使用以份超级简单的HTML模版使用以份超级简单的HTML模版"},
        {"favor": "60", "content": "使用以份超级简单的HTML模版"},
        {"favor": "60", "content": "使用这份超级简单的HTML模版"}];
    for (var i = 0; i < like_top.length; i++) {
        var new_li = $like_ul.find('#example-li').clone();
        new_li.find('span').eq(0).text(like_top[i].favor);
        new_li.find('span').eq(1).text(like_top[i].content);
        new_li.css("display", "block");
        $like_ul.append(new_li);
    }

    // 导航左边-鼠标移入点亮；要考虑mouseenter后的click在mouseleave后不影响click产生的影响，所以排除active元素的移出效果
    $nav_left_ul_li.mouseenter(function () {
        if ($(this).attr('class') !== 'active') {
            $(this).children('a').css({'background-color': '#2e6da4', "color": "white"});
        }
    });
    $nav_left_ul_li.mouseleave(function () {
        if ($(this).attr('class') !== 'active') {
            $(this).find('a').css({'background-color': '', "color": ""});
        } else {
            $(this).find('a').css({"color": ""});
        }
    });
    // $nav_right_ul_li.mouseleave(function () {
    //     if ($(this).attr('class') !== 'active') {
    //         $(this).children('a').css({'background-color': ''});
    //     }
    // });

    // 导航-左栏-鼠标点击：active;div切换
    $nav_left_ul_li.click(function () {
        $(this).addClass('active').siblings('li').removeClass('active').find('a').css({"background-color": ""});
        // $(this).siblings('li');
        $(this).find('a').css({"background-color": "transparent"});
    });

    // 最热最新导航-鼠标点击:btn-default btn-sm active;div切换
    $hot_nav_a.click(function () {
        $(this).addClass('btn btn-default btn-sm active').siblings('a[role=button]').removeClass('btn-default btn-sm active')
    });

    // 发布到区域按钮：点击 btn-zjq-active
    $dist_area_btn.click(function () {
        $(this).addClass('btn-zjq-active').siblings('button').removeClass('btn-zjq-active');
    });

    // // 登录注册页面 下一步按钮 点击
    // $register_next_btn.click(function () {
    //     // console.log('eheh');
    //     $(this).parents('div[role=tabpanel]').removeClass('active').siblings('div').addClass('active');
    //     $register_step_one.removeClass('active-zjq').siblings('span').addClass('active-zjq');
    // });

    // 登录注册页面 其它按钮点击回到主页
    // $login_btn.click(function () {
    //     var $new_ul = $("<ul class=\"nav navbar-nav navbar-right\">\n" +
    //         "  <li role=\"presentation\"><a href=\"#\">动态</a></li>\n" +
    //         "  <li role=\"presentation\"><a href=\"#\">通知</a></li>\n" +
    //         "  <li role=\"presentation\" class=\"dropdown\">\n" +
    //         "    <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">\n" +
    //         "      SomeBody <span class=\"caret\"></span>\n" +
    //         "    </a>\n" +
    //         "    <ul class=\"dropdown-menu\">\n" +
    //         "\t\t<li><a href=\"#\">帐号</a></li>\n" +
    //         "\t\t<li><a href=\"#\">退出</a></li>\n" +
    //         "    </ul>\n" +
    //         "  </li>\n" +
    //         "</ul>");
    //     $('#login').replaceWith($new_ul);
    // });

    // 点赞
    $digg_like.click(function () {
        $(this).toggleClass('digg-done');
        var like_cnt = $(this).siblings('span').text();
        $(this).siblings('span').text(function (idx, txt) { //回调函数将点赞数根据是否为digg-done状态进行加减
            // console.log($(this)[0]);
            if ($(this).siblings('span').hasClass('digg-done')) { // 注意回调函数中的回调函数，内层回调函数的this是其所在jquery对象的dom.
                return parseInt(txt) + 1
            } else {
                return parseInt(txt) - 1
            }
        })
    });

    // 显示评论区
    $discus_case.click(function () {
        var $comment = $(this).parents('.news-content').find('.comment-box-area');
        $comment.toggleClass('hidden-case-zjq');
    });

    // 收起评论按钮
    $discus_coll_btn.click(function () {
        $(this).parents('.comment-box-area').addClass('hidden-case-zjq');
    });

    // 发表评论
    $discus_publish_btn.click(function () {
        var $comment_area = $(this).siblings('textarea');
        var com_val = $comment_area.val();
        if (com_val) {
            console.log($comment_area.val());
            var $new_comment = $example_comment.clone(true);
            $new_comment.text($comment_area.val());
            $(this).parents('.comment-box').find('ul').prepend($new_comment);
            $comment_area.val('');
            $(this).parents('.item').find('.part2 .discus-a span').eq(1).text(function (idx, txt) {
                return parseInt(txt) + 1;
            });
        } else {
            alert('评论内容不能为空！');
        }
    });

    // 发布按钮
    $modal_distr_disbtn.click(function () {
        var $active_panl = $modal_distr.find('div[role=tabpanel]').filter('.active');
        var titl;
        var ara;
        var fro;
        var dig;
        var dis;
        if ($active_panl.attr('id') === 'link') {
            console.log('link');
            titl = $active_panl.find('#extlink_title').val();
            ara = $active_panl.find('.btn-zjq-active').text();
            fro = '-' + $active_panl.find('#extlink').val();
            dig = 0;
            dis = [];
        } else if ($active_panl.attr('id') === 'text') {
            console.log('text');
            titl = $active_panl.find('textarea').val();
            ara = $active_panl.find('.btn-zjq-active').text();
            fro = '-www.chouti.com';
            dig = 0;
            dis = [];
        } else {
            console.log('pic');
            titl = $active_panl.find('textarea').val();
            ara = $active_panl.find('.btn-zjq-active').text();
            fro = '-www.chouti.com';
            dig = 0;
            dis = [];
        }
        appNews(titl, ara, fro, dig, dis);
        if ($active_panl.attr('id') === 'link') {
            console.log('link');
            $active_panl.find('#extlink_title').val('');
            $active_panl.find('#extlink').val('');
            $active_panl.find('#dgt').val('');
        } else if ($active_panl.attr('id') === 'text') {
            console.log('text');
            $active_panl.find('textarea').val('');
        } else {
            console.log('pic');
            $active_panl.find('textarea').val('');
        }

    });

    // 发布清空按钮
    $('#clr').click(function () {
        var $active_panl = $modal_distr.find('div[role=tabpanel]').filter('.active');
        if ($active_panl.attr('id') === 'link') {
            console.log('link');
            $active_panl.find('#extlink_title').val('');
            $active_panl.find('#extlink').val('');
            $active_panl.find('#dgt').val('');
        } else if ($active_panl.attr('id') === 'text') {
            console.log('text');
            $active_panl.find('textarea').val('');
        } else {
            console.log('pic');
            $active_panl.find('textarea').val('');
        }
    });

    // 获取标题
    $('#gettitle').click(function () {
        var $active_panl = $modal_distr.find('div[role=tabpanel]').filter('.active');
        var cont = $(this).parent('span').siblings('#extlink').val();
        $active_panl.find('#extlink_title').val(cont);
    });

});