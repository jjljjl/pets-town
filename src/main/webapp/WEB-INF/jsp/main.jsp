<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>宠物乐园首页</title>
    <meta charset="UTF-8">
    <style type="text/css">
        @font-face {
            font-family: myFirstFont;
            src: url("/pets-town/fonts/Lobster-Regular.ttf");
            /* IE9+ */
        }

        div {
            font-family: myFirstFont;
        }
    </style
    <jsp:include page="TheImportFile.jsp"></jsp:include>

</head>
<body>
<jsp:include page="TheIndexHeadPage.jsp"></jsp:include>
<!--导航菜单-->
<div class="navbar my-navbar" role="navigation" style="margin-bottom: 0px;margin-top: 20px;">
    <div class="container">
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle btn btn-warning" type="button" id="dropdownMenu1"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
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
<hr class="nav-hr"/>
<!--轮播图-->
<div class="container-fluid" id="my-slide">
    <div class="demo">
        <div class="my-slider" style="overflow: hidden;position: relative;">
            <ul>
                <li><img src="/pets-town/img/jd/index1.png"></li>
                <li><img src="/pets-town/img/jd/index.png"></li>
                <li><img src="/pets-town/img/jd/index3.png"></li>
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <p style="font-size: 18px;font-weight: bold;color: #5C5C5C;margin:5px;margin-bottom: 10px">热门犬种</p>
    <div class="f1">
        <a href="">
            <img src="/pets-town/img/tuijian/dog_1.jpg" height="254" width="550"/>
        </a>
        <a href="">
            <img src="/pets-town/img/tuijian/dog_2.jpg" height="254" width="280"/>
        </a>
        <a href="">
            <img src="/pets-town/img/tuijian/dog_3.jpg" height="254" width="280"/>
        </a>
        <a href="">
            <img src="/pets-town/img/tuijian/dog_8.jpg" height="254" width="280"/>
        </a>
        <a href="">
            <img src="/pets-town/img/tuijian/dog_5.jpg" height="254" width="280"/>
        </a>
        <a href="">
            <img src="/pets-town/img/tuijian/dog_6.jpg" height="254" width="280"/>
        </a>
        <a href="">
            <img src="/pets-town/img/tuijian/dog_7.jpg" height="254" width="280"/>
        </a>
    </div>
</div>
<div class="container" style="background-color: rgb(238,238,238);">
    <table class="table">
        <tr>
            <th class="th-style" colspan="6"><img src="/pets-town/img/index-image-images/resizeApi.png"/>&nbsp;&nbsp;泰迪犬
            </th>
        </tr>
        <tr id="show-teddy"></tr>
        <tr>
            <th class="th-style" colspan="6"><img src="/pets-town/img/index-image-images/resizeApi2.png"/>&nbsp;&nbsp;比熊犬
            </th>
        </tr>
        <tr id="show-bichon"></tr>
        <tr>
            <th class="th-style" colspan="6"><img src="/pets-town/img/index-image-images/resizeApi3.png"/>&nbsp;&nbsp;金毛犬
            </th>
        </tr>
        <tr id="showGolden"></tr>
    </table>
</div>
<div class="container th-style">
    <div>
        <h2>Speak For The Childers</h2>
    </div>
</div>

<div class="container" style="background-color: #BABABA;">

    <div class="row" id="showVideos">
        <%-- <div class="col-lg-3 ">
             <video id="really-cool-video" class="video-js vjs-default-skin" controls preload="auto" width="210" height="200" poster="/pets-town/img/index-image-images/v1.png" data-setup='{}'>
                 <source src="/pets-town/vidios/out-naiyou-daiyan.mp4" type="video/mp4">
             </video>
         </div>
         <div class="col-lg-3">
             <video id="really-cool-video" class="video-js vjs-default-skin" controls preload="auto" width="210" height="200" poster="/pets-town/img/index-image-images/v2.png" data-setup='{}'>
                 <source src="/pets-town/vidios/lbld.mp4" type="video/mp4">
             </video>
         </div>
         <div class="col-lg-3">
             <video id="really-cool-video" class="video-js vjs-default-skin" controls preload="auto" width="210" height="200" poster="/pets-town/img/index-image-images/v3.png" data-setup='{}'>
                 <source src="/pets-town/vidios/44.mp4" type="video/mp4">
             </video>
         </div>
         <div class="col-lg-3">
             <video id = "really-cool-video" class="video-js vjs-default-skin" controls preload="auto" width="210" height="200" poster="/pets-town/img/index-image-images/v4.png" data-setup='{}'>
                 <source src="/pets-town/vidios/55.mp4" type="video/mp4">
             </video>
         </div>--%>
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
<script type="text/javascript" src="<%=request.getContextPath() %>/plateform/unslider/js/unslider-min.js"></script>
<script type="text/javascript">
    $(function () {
        $('.my-slider').unslider({
            animation: 'fade',
            arrows: true,
            autoplay: true,
            infinite: true,
            nav: true,
            key: true
        });
    });
    //获取当前项目的路径
    var urlRootContext = (function () {
        var strPath = window.document.location.pathname;
        var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);
        return postPath;
    })();
    $(document).ready(function () {

      var videosUrl = urlRootContext + "/show/videos";
        $.ajax({
            type: "post",
            url: videosUrl,
            dataType: "json",
            async: false,
            success: function (data) {
                console.log(data)

                $(data).each(function () {
                    $("#showVideos").append ('<div class="col-lg-3">' +
                    "<video id='really-cool-video' class='video-js vjs-default-skin' controls preload='auto' width='200px' height='200px' " +
                    "poster=" + this.videoImage + " data-setup=" + '{}' + ">" +
                    "<source src=" + this.videoUrl + " type='video/mp4'>" +
                    " </video>" +
                    " </div>");

                })


            }
        })
        var teddyurl = urlRootContext + "/show/teddy";
        $.ajax({
            type: "post",
            url: teddyurl,
            dataType: "json",
            success: function (data) {

                $(data).each(function () {
                    var id = this.id;
                    var strings ="";
                    <c:if test="${sessionScope.user==null}">
                     strings = "login";
                    </c:if>
                    <c:if test="${sessionScope.user!=null}">
                     strings = "/pets-town/buyPets?id="+id;;
                    </c:if>
                    $("#show-teddy").append(
                            "<td>" +
                            "<div class='thumbnail'>" +
                            "<a href='#'><img src='" + this.petImage + "' alt='泰迪' class='img-circle'></a>" +
                            " <div class='caption'>" +
                            "<p>名称：" + this.petName + "</p>" +
                            "<p>价格：" + this.petPrice + "</p>" +
                            "<p><a href='/pets-town/seePets?id="+id+"' class='btn btn-default' role='button'>查看</a> <a href='"+strings+"' class='btn btn-primary' role='button'  >购买</a> </p>" +
                            " </div>" +
                            " </div>" +
                            "</td>")
                })
            }
        })
        var bichonurl = urlRootContext + "/show/bichon";
        $.ajax({
            type: "post",
            url: bichonurl,
            dataType: "json",
            success: function (data) {

                $(data).each(function () {
                    var id = this.id;
                    var strings = "/pets-town/buyPets?id="+id;
                    $("#show-bichon").append(
                            "<td>" +
                            "<div class='thumbnail'>" +
                            "<a href='#'><img src='" + this.petImage + "' alt='比熊犬' class='img-circle'></a>" +
                            " <div class='caption'>" +
                            "<p>名称：" + this.petName + "</p>" +
                            "<p>价格：" + this.petPrice + "</p>" +
                            "<p><a href='/pets-town/seePets?id="+id+"' class='btn btn-default' role='button'>查看</a> <a href='"+strings+"' class='btn btn-primary' role='button'>购买</a> </p>" +
                            " </div>" +
                            " </div>" +
                            "</td>")
                })
            }
        })
        var url = urlRootContext + "/show/golden";
        $.ajax({
            type: "post",
            url: url,
            dataType: "json",
            success: function (data) {

                $(data).each(function () {
                    var id = this.id;
                    var strings = "/pets-town/buyPets?id="+id;
                    $("#showGolden").append(
                            "<td>" +
                            "<div class='thumbnail'>" +
                            "<a href='#'><img src='" + this.petImage + "' alt='金毛' class='img-circle'></a>" +
                            " <div class='caption'>" +
                            "<p>名称：" + this.petName + "</p>" +
                            "<p>价格：" + this.petPrice + "</p>" +
                            "<p><a href='/pets-town/seePets?id="+id+"' class='btn btn-default' role='button'>查看</a> <a href='"+strings+"' class='btn btn-primary' role='button'>购买</a> </p>" +
                            " </div>" +
                            " </div>" +
                            "</td>")
                })
            }
        })

    })


</script>
</body>
</html>

