<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="zh-CN">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>用户注册</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/shark/css/style.css">
<script type="text/javascript">
    function formSubmit() {
        var form1 = document.getElementById("registerForm");
        form1.submit();
    }
</script>
<body>

<div class="register-container">
    <h1>欢迎来到宠物商城</h1>

    <div class="connect">
        <p>宠物商城，给你别样选择</p>
    </div>

    <form action="<%=request.getContextPath() %>/register" method="post" id="loginForm" name="form1">
        <div>
            <input type="text" name="username" class="username" placeholder="您的用户名" autocomplete="off"/>
        </div>
        <div>
            <input type="password" name="password" class="password" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" />
        </div>
        <div>
            <input type="password" name="confirm_password" class="confirm_password" placeholder="再次输入密码" oncontextmenu="return false" onpaste="return false" />
        </div>
        <div>
            <input type="text" name="telphone" class="phone_number" placeholder="输入手机号码" autocomplete="off" id="number"/>
        </div>
        <div>
            <input type="email" name="email" class="email" placeholder="输入邮箱地址" oncontextmenu="return false" onpaste="return false" />
        </div>
        <button id="submit" type="submit">注 册</button>

    </form>
    <div>

        <span style="color: red">${msg}</span>

    </div>
    <a href="toLog">
        <button type="button" class="register-tis">已经有账号？</button>
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