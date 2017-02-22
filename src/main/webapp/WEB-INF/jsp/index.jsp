<%@ page contentType="text/html;charset=UTF-8" language="java" %><html>
<!DOCTYPE html>

<head>
    <title>登陆页面</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/user/login" method="post" id="myform">
    <input type="text" id="username" name="username"/>
    <input type="password" id="password" name="password"/>
    <input type="submit" value="提交" id="login" />
</form>
</body>

</html>
