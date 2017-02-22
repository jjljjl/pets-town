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
</head>
<body>
<div>

    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#user" aria-controls="home" role="tab" data-toggle="tab">用户管理</a></li>
        <li role="presentation"><a href="#order" aria-controls="profile" role="tab" data-toggle="tab">订单管理</a></li>
        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Messages</a></li>
        <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Settings</a></li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="user">
            <table class="table table-hover">

                <tr>
                    <td class="active">uId</td>
                    <td class="active">用户名</td>
                    <td class="active">密码</td>
                    <td class="active">邮箱</td>
                    <td class="active">电话号码</td>

                </tr>
            </table>
        </div>
        <div role="tabpanel" class="tab-pane" id="order">
            <table class="table table-hover">

            <tr>
                <td class="active">oId</td>
                <td class="active"></td>
                <td class="active">密码</td>
                <td class="active">邮箱</td>
                <td class="active">电话号码</td>
            </tr>
        </table>
        </div>
        <div role="tabpanel" class="tab-pane" id="messages">...</div>
        <div role="tabpanel" class="tab-pane" id="settings">...</div>
    </div>

</div>
</body>
</html>
