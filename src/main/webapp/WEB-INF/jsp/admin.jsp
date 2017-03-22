<%--
  Created by IntelliJ IDEA.
  User: developer
  Date: 2017/3/16
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>后台管理登陆</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="<%=request.getContextPath() %>/css/admin-login.css" rel='stylesheet' type='text/css' />
    <script src="/car/assets/js/jquery-1.7.2.min.js"></script>
    <script>$(document).ready(function(c) {
        $('.close').on('click', function(c){
            $('.login-form').fadeOut('slow', function(c){
                $('.login-form').remove();
            });
        });
    });
    </script>
</head>

<body>
<!--SIGN UP-->
<h1>登陆</h1>
<div class="login-form">
    <div class="close"> </div>
    <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
    </div>
    <div class="clear"> </div>
    <div class="avtar">
        <img src="/car/assets/images/avtar.png" />
    </div>
    <form action="admin" name="form1" method="post">
        <strong><h3 align="center"><div style="color:red">${error}</div></h3></strong>
        <input type="text" name="username" class="text" value="用户名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >
        <div class="key">
            <input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
        </div>

    </form>
    <div class="signin">
        <input type="submit" value="Login" onclick="document.form1.submit()">
    </div>
</div>

</body>
</html>
