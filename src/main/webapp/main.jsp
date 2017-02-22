<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <style type="text/css">
        @font-face {
            font-family: myFirstFont;
            src: url("fonts/Lobster-Regular.ttf");
            /* IE9+ */
        }

        div {
            font-family: myFirstFont;
        }

    </style>
    <link rel ="shoutcut icon" href="img/index/dog_16px_1143885_easyicon.net.ico"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/index-image.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/plateform/lib/vedio.js/video-js.min.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/css/bootstrap-theme.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/plateform/unslider/css/unslider.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/plateform/unslider/css/unslider-dots.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/plateform/unslider/css/site.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/plateform/font-awesome-4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/index.css"/>
    <title>宠物乐园首页</title>
    <script type="text/javascript" src="<%=request.getContextPath() %>/plateform/lib/jquery-3.1.1.min.js" ></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/js/bootstrap.min.js" ></script>
    <script src="<%=request.getContextPath() %>/plateform/lib/vedio.js/video.min.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
<header id="top" class="navbar navbar-collapse navbar-static-top" role="banner">
    <div class="container">
        <ul class="nav navbar-nav navbar-left">
            <li class="header-left">
                <p style="color: #5C5C5C">汪，欢迎来到宠物商城</p>
            </li>
            <li class="header-left">
                <a href="#">首页</a>
            </li>
        </ul>
        <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="http://job.bootcss.com" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click', 'doc-home-navbar-job'])" target="_blank">登录</a></li>
                <li><a href="http://expo.bootcss.com" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click', 'doc-home-navbar-expo'])" target="_blank">注册</a></li>
                <li><a href="http://blog.getbootstrap.com" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click', 'doc-home-navbar-blog'])" target="_blank">新闻中心</a></li>
                <li><a href="http://blog.getbootstrap.com" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click', 'doc-home-navbar-blog'])" target="_blank">客户服务</a></li>
                <li><a href="http://blog.getbootstrap.com" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click', 'doc-home-navbar-blog'])" target="_blank">网站导航</a></li>
            </ul>
        </nav>
    </div>
</header>
<!--搜索框区-->
<div class="main" id="content" role="main">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <img src="img/index/logo.jpg"/>
            </div>
            <div class="col-md-6 col-md-offset-1">
                <div class="input-group" style="margin-top: 20px;">
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">宝贝 </button>
                       <%-- <ul class="dropdown-menu" role="menu">
                        </ul>--%>

                    </div><!-- /btn-group -->
                    <input type="text" class="form-control">
                    <span class="input-group-addon btn btn-warning">搜索</span>
                </div>
            </div>
            <div class="col-md-2 col-right">
                <button type="button" class="btn btn-warning btn-right" style="margin-top: 20px;">我的购物车</button>
            </div>
        </div>
    </div>
</div>
<!--导航菜单-->
<div class="navbar my-navbar" role="navigation" style="margin-bottom: 0px;margin-top: 20px;">
    <div class="container">
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle btn btn-warning" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        狗狗类型
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu " aria-labelledby="dropdownMenu1">
                        <li><a href="#">哈士奇</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">泰迪</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">金毛</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">拉布拉多</a></li>
                    </ul>
                </div>
            </ul>

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</div>
<hr  class="nav-hr"/>
<!--轮播图-->
<div class="container-fluid" id="my-slide">
    <div class="demo">
        <div class="my-slider" style="overflow: hidden;position: relative;">
            <ul>
                <li><img src="img/jd/index1.png"></li>
                <li><img src="img/jd/index.png"></li>
                <li><img src="img/jd/index3.png"></li>
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <p style="font-size: 18px;font-weight: bold;color: #5C5C5C;margin:5px;margin-bottom: 10px" >热门犬种</p>
    <div class="f1">
        <a href="" >
            <img src="img/tuijian/dog_1.jpg" height="254" width="550"/>
        </a>
        <a href="" >
            <img src="img/tuijian/dog_2.jpg" height="254" width="280"/>
        </a>
        <a href="" >
            <img src="img/tuijian/dog_3.jpg" height="254" width="280"/>
        </a>
        <a href="" >
            <img src="img/tuijian/dog_8.jpg" height="254" width="280"/>
        </a>
        <a href="" >
            <img src="img/tuijian/dog_5.jpg" height="254" width="280"/>
        </a>
        <a href="" >
            <img src="img/tuijian/dog_6.jpg" height="254" width="280"/>
        </a>
        <a href="" >
            <img src="img/tuijian/dog_7.jpg" height="254" width="270"/>
        </a>
    </div>
</div>
<div class="container" style="background-color: rgb(238,238,238);">
    <table class="table">
        <tr>
            <th class="th-style" colspan="6"><img src="img/index-image-images/resizeApi.png" />&nbsp;&nbsp;泰迪犬</th>
        </tr>
        <tr>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/smy1.jpg" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p >名称：犬舍 CKU犬舍 </p>
                        <p>价格：2000.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/smy2.jpg" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p>名称：泰迪乐园 </p>
                        <p>价格：2000.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/smy3.jpg" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p>名称：信达国际名犬 </p>
                        <p>价格：2000.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/smy4.jpg" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p>名称：国际名犬基地 </p>
                        <p>价格：2000.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/smy5.jpg" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption " id="fontsizes">
                        <p>名称：东方名犬繁殖</p>
                        <p>价格：3000.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/smy6.jpg" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p>名称：北京万科犬业</p>
                        <p>价格：2000.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <th class="th-style" colspan="6"><img src="img/index-image-images/resizeApi2.png" />&nbsp;&nbsp;比熊犬</th>
        </tr>
        <tr>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/biq1.jpg" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p>名称：宠物馆俱乐部 </p>
                        <p>价格：2000.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/bxq2.jpg" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p>名称：旺财犬舍</p>
                        <p>价格：3300.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/bxq4.jpg " alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p>名称：京城名犬 </p>
                        <p>价格：2500.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/bxq5.jpg" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p>名称：国际名犬中心 </p>
                        <p>价格：2000.00</p>
                        <p><img src="img/index-image-images/b1.jpg" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/bxq2.png" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p>名称：京福犬舍 </p>
                        <p>价格：2800.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/bxq6.jpg" alt="泰迪犬" class="img-circle"> </a>
                    <div class="caption">
                        <p>名称：北京祥瑞犬业 </p>
                        <p>价格：2200.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
        </tr>

        <tr>
            <th class="th-style" colspan="6"><img src="img/index-image-images/resizeApi3.png" />&nbsp;&nbsp;金毛犬</th>
        </tr>
        <tr>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/jm1.jpg" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p>名称：英系金毛</p>
                        <p>价格：6000.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/jm2.jpg" alt="泰迪犬" class="img-circle"> </a>
                    <div class="caption">
                        <p>名称：纯种金毛 </p>
                        <p>价格：2000.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/jm3.jpg" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p>名称：纯种金毛 </p>
                        <p>价格：2500.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/jm4.jpg" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p>名称：英系金毛 </p>
                        <p>价格：4000.00</p>
                        <p><img src="img/index-image-images/b1.jpg" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/jm5.jpg" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p>名称：赛级金毛 </p>
                        <p>价格：2800.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <a href="#"><img src="img/index-image-images/jm6.jpg" alt="泰迪犬" class="img-circle"></a>
                    <div class="caption">
                        <p>名称：英系金毛 </p>
                        <p>价格：6000.00</p>
                        <p><img src="img/index-image-images/b1.png" /> <img src="img/index-image-images/b2.png" /> <img src="img/index-image-images/b3.png" /></p>
                        <p><a href="#" class="btn btn-default" role="button">查看</a> <a href="#" class="btn btn-primary" role="button">购买</a> </p>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</div>
<div class="container th-style">
    <div>
        <h2>Speak For The Childers</h2>
    </div>
</div>

<div class="container" style="background-color: #BABABA;">

    <div class="row">
        <div class="col-lg-3 container">
            <video id="really-cool-video" class="video-js vjs-default-skin" controls preload="auto" width="210" height="200" poster="img/index-image-images/QQ截图20161121151318.png" data-setup='{}'>
                <source src="vidios/out-naiyou-daiyan.mp4" type="video/mp4">
            </video>
        </div>
        <div class="col-lg-3">
            <video id="really-cool-video" class="video-js vjs-default-skin" controls preload="auto" width="210" height="200" poster="img/index-image-images/QQ截图20161121151302.png" data-setup='{}'>
                <source src="vidios/lbld.mp4" type="video/mp4">
            </video>
        </div>
        <div class="col-lg-3">
            <video id="really-cool-video" class="video-js vjs-default-skin" controls preload="auto" width="210" height="200" poster="img/index-image-images/QQ截图20161121152745.png" data-setup='{}'>
                <source src="vidios/44.mp4" type="video/mp4">
            </video>
        </div>
        <div class="col-lg-3">
            <video id = "really-cool-video" class="video-js vjs-default-skin" controls preload="auto" width="210" height="200" poster="img/index-image-images/QQ截图20161121154532.png" data-setup='{}'>
                <source src="vidios/55.mp4" type="video/mp4">
            </video>
        </div>
    </div>
</div>
<!--页脚-->
<div class="footer" style="margin-top: 20px;">
    <div class="container-fluid" style="padding: 0;">
        <hr class="nav-hr" style="border-top-color: #009635;"/>
        <div class="row" id="footer-list">
            <ul class="list-inline">
                <li><a href="#">网站介绍</a></li>|
                <li><a href="#">隐私政策 </a></li>|
                <li><a href="#">广告服务</a></li>|
                <li><a href="#">合作媒体 </a></li>|
                <li><a href="#">投稿指南</a></li>|
                <li><a href="#">使用条款 </a></li>|
                <li><a href="#">联系我们 </a></li>
                <li><a href="#"> 用户体验提升计划 </a></li>
                <li><a href="#"> 网站地图 </a></li>
                <li><a href="#"> 淘狗网指数 </a></li>
            </ul>
        </div>
        <div class="row" style="margin: 0;">
            <p style="color: #5C5C5C;line-height: 3em;">Copyright © 2013 - 淘狗网(dog126.com) - 京ICP备11011882号 网站建设：<a href="#">恰维网络 </a></p>
        </div>
        <div class="row" style="margin: 0;">
            <p style="color: #5C5C5C;line-height: 3em;">【免责声明：淘狗网上所有宠物狗交易信息内容系用户自行发布，其真实性、合法性由发布人负责，淘狗网不提供任何保证，亦不承担任何法律责任！】</p>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=request.getContextPath() %>/plateform/unslider/js/unslider-min.js" ></script>
<script type="text/javascript">
    $(function () {
        $('.my-slider').unslider( {
            animation: 'fade',
            arrows: true,
            autoplay: true,
            infinite: true,
            nav: true,
            key: true
        });
    });
</script>
</body>
</html>

