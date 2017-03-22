<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<title>用户登录</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/shark/css/style.css">

<body>

<div class="login-container">
    <h1>欢迎来到宠物商城</h1>

    <div class="connect">
        <p>宠物商城，给你别样选择.</p>
    </div>

    <form action="<%=request.getContextPath() %>/toLogin" method="post" id="loginForm">
        <div>
            <input type="text" name="username" class="username" placeholder="用户名" autocomplete="off"/>
        </div>
        <div>
            <input type="password" name="password" class="password" placeholder="密码" oncontextmenu="return false" onpaste="return false" />
        </div>
        <button id="submit" type="submit">登 陆</button>
    </form>
    <div>

    <span style="color: red">${msg}</span>

     </div>
    <a href="toRegist">
        <button type="button" class="register-tis">还有没有账号？</button>
    </a>

</div>

</body>
<script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/shark/js/common.js"></script>
<!--背景图片自动更换-->
<script src="<%=request.getContextPath() %>/shark/js/supersized.3.2.7.min.js"></script>
<script src="<%=request.getContextPath() %>/shark/js/supersized-init.js"></script>
<!--表单验证-->
<script src="<%=request.getContextPath() %>/shark/js/jquery.validate.min.js?var1.14.0"></script>
</html>