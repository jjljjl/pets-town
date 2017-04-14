<%--
  Created by IntelliJ IDEA.
  User: Jiang
  Date: 2017/2/12
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>宠物乐园后台管理</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/css/bootstrap-theme.css"/>
    <script type="text/javascript" src="<%=request.getContextPath() %>/plateform/lib/jquery-3.1.1.min.js" ></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/js/bootstrap-paginator.js"></script>
</head>
<body>


<div class="panel-group">
    <div class="panel panel-primary">
        <div class="panel-heading">
            后台管理
        </div>
        <div class="panel-body">
    <!-- Nav tabs -->
            <ul class="nav nav-tabs" >
                <li role="presentation" class="active"><a href="background/user">用户管理</a></li>
                <li role="presentation"><a href="background/admin">管理员</a></li>
                <li role="presentation"><a href="background/showPets">商品管理</a></li>
                <li role="presentation"><a href="background/indexVideo">视频管理</a></li>
            </ul>
    <!-- Tab panes -->
        </div>
    </div>
</div>
</body>
</html>
