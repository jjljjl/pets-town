<%--
  Created by IntelliJ IDEA.
  User: developer
  Date: 2017/4/25
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>已购买</title>
    <jsp:include page="TheImportFile.jsp"></jsp:include>
</head>
<body>
<jsp:include page="TheIndexHeadPage.jsp"></jsp:include>
<hr class="nav-hr"/>
<div class="container" style="margin-top: 20px">
    <ul class="nav nav-tabs" >
        <li role="presentation" class="active"><a href="allOrder">所有商品</a></li>
        <li role="separator"><a href="purchasedOrder">已买商品</a></li>
    </ul>
</div>

</body>
</html>
