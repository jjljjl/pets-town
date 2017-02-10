<%--
  Created by IntelliJ IDEA.
  User: developer
  Date: 2017/2/10
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
</head>
<body>
<form action="/user/login" method="post" id="myform">
    <input type="text" id="username" name="username"/>
    <input type="password" id="password" name="password"/>
    <input type="submit" value="提交" id="login" />
</form>
</body>

</html>
