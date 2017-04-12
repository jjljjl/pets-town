<%--
  Created by IntelliJ IDEA.
  User: developer
  Date: 2017/4/12
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <li><a href="login" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click', 'doc-home-navbar-job'])" target="_blank">登录</a></li>
                <li><a href="toRegister" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click', 'doc-home-navbar-expo'])" target="_blank">注册</a></li>
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
            <div class="col-md-2 col-right">
                <button type="button" class="btn btn-warning btn-right" style="margin-top: 20px;">我的购物车</button>
            </div>
        </div>
    </div>
</div>
