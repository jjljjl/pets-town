<%--
  Created by IntelliJ IDEA.
  User: developer
  Date: 2017/4/12
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<header id="top" class="navbar navbar-collapse navbar-static-top" role="banner">
    <div class="container">
        <ul class="nav navbar-nav navbar-left">
            <li class="header-left">
              <img src="/pets-town/img/index/dog.png">  <span style="font-weight: bold;color: maroon">汪，欢迎来到宠物商城</span>
            </li>
            <li class="header-left">
                <a href="toMain">首页</a>
            </li>
        </ul>
        <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
            <ul class="nav navbar-nav navbar-right">
                <c:if test="${sessionScope.user==null}">
                    <li><a href="login" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click', 'doc-home-navbar-job'])" target="_self">登录</a></li>
                    <li><a href="toRegister" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click', 'doc-home-navbar-expo'])" target="_self">注册</a></li>
                </c:if>
                <c:if test="${sessionScope.user!=null}">
                    <li class="header-left"><img src="/pets-town/img/index/welcome.png">欢迎您：<span style="font-weight: bold;color: maroon">${sessionScope.user.userName}</span></li>
                    <li><a href="toPersonCenter" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click', 'doc-home-navbar-expo'])" target="_blank"><img src="/pets-town/img/index/person.png">&nbsp;个人中心</a></li>
                    <li><a href="toUserCart" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click', 'doc-home-navbar-expo'])" target="_blank"><img src="/pets-town/img/index/index-car.png">&nbsp;购物车</a></li>
                    <li><a href="toRegisterOut" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click', 'doc-home-navbar-expo'])" target="_self" style="color: red">退出</a></li>
                </c:if>
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
                <img src="/pets-town/img/index/logo.jpg"/>
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

        </div>
    </div>
</div>
