<%--
  Created by IntelliJ IDEA.
  User: developer
  Date: 2017/4/13
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>宠物详情</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/plateform/fangdajing/css/style.css">
    <jsp:include page="TheImportFile.jsp"></jsp:include>
</head>
<body>
<jsp:include page="TheIndexHeadPage.jsp"></jsp:include>
<hr class="nav-hr"/>
<ol class="breadcrumb" >
    <li style="color:maroon;font-weight: bold">宠物详情</li>
</ol>
<div class="container" style="margin-top: 20px">

    <div class="row">
        <div class="col-md-5">
                <div class="etalage_wrap">


                    <ul id="etalage">
                        <c:forEach items="${detailImage}" var="item" >

                            <li>
                                <img class="etalage_thumb_image" src="<c:out value='${item.imageName}'/>" style="width: 65px;height:90px;"/>
                                <img class="etalage_big_image" src="<c:out value='${item.imageName}'/>" style="width: 500px;height:400px;"/>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
        </div>
        <div class="col-md-4">
            <table class="table">
                <tr>
                    <td style="font-weight: bold;color: maroon">${requestScope.seePets.petName} 品质优良 完美出售</td>
                </tr>
                <tr>
                    <td style="font-weight: bold">品种：<c:choose>
                        <c:when test="${requestScope.seePets.petType==0}">
                            <span style="color: maroon">泰迪犬</span>
                        </c:when>
                        <c:when test="${requestScope.seePets.petType==1}">
                            <span style="color: maroon">比熊犬</span>
                        </c:when>
                        <c:when test="${requestScope.seePets.petType==2}">
                            <span style="color: maroon">金毛犬</span>
                        </c:when>
                    </c:choose>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold">年龄：<span style="color: maroon">${requestScope.seePets.petAge}岁</span></td>
                </tr>
                <tr>
                    <td style="font-weight: bold">呆萌价：<img src="/pets-town/img/index/money.png">&nbsp;<span style="color: red;font-weight: bold;font-size:x-large">${requestScope.seePets.petPrice} 元</span></td>
                </tr>
                <tr>
                    <td style="font-weight: bold">销量：<span style="color: maroon">xxx只</span></td>
                </tr>
                <tr>
                    <td style="font-weight: bold">累计评价：<span style="color: maroon">xxx条</span></td>
                </tr>
            </table>
            <hr>
            <div class="col-md-4" style="margin-top: 20px"><button type="button" class="btn btn-info" onclick="buyPets()"> <img src="/pets-town/img/index/buyPets.png"/> 立即购买 </button></div>
            <div class="col-md-4" style="margin-top: 20px"><button type="button" class="btn btn-danger" onclick="addToCar()"><img src="/pets-town/img/index/car.png"/> 加入购物车</button></div>
        </div>
        <div class="col-md-3">

        </div>

    </div>

</div>
<div class="container" style="margin-top: 200px">
    <hr class="nav-hr"/>
    <ol style="margin-top: 10px;"><p style="color: maroon">商品详情</p></ol>
    <hr>
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">宠物介绍</a></li>
        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">宠物评价</a></li>

    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">
            <img src="/pets-town/img/index/1474041038339160.png">
            <img src="/pets-town/img/index/1474041038638001 (1).png">
       </div>
        <div role="tabpanel" class="tab-pane" id="profile">...</div>

    </div>


</div>
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
<script type="text/javascript" src="<%=request.getContextPath() %>/plateform/fangdajing/js/jqzoom.js"></script>
<script type="text/javascript">

    function buyPets(){
        window.location.href = "/pets-town/buyPets?id="+${requestScope.seePets.id};
    }
    $("#etalage").zoom({
        zoom_area_width: 300,
        autoplay_interval :2000,
        small_thumbs : 4,
        autoplay : true
    });

    function addToCar(){
        window.location.href = "/pets-town/addToCar?id="+${requestScope.seePets.id};
    }
</script>
</body>
</html>
