<%--
  Created by IntelliJ IDEA.
  User: developer
  Date: 2017/3/24
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/css/bootstrap-theme.css"/>
    <script type="text/javascript" src="<%=request.getContextPath() %>/plateform/lib/jquery-3.1.1.min.js" ></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/js/bootstrap-paginator.js"></script>
</head>
<body>
<div class="container">
    <table  class="table"  id="tableBody">

        <tr>
            <td class="success">订单名称</td>
            <td class="success">商品详情</td>
            <td class="success">价格</td>
            <td class="success">数量</td>
            <td class="success">总金额</td>
        </tr>


    </table>
</div>

<script type='text/javascript'>
    $(document).ready(function() {
            $("#tableBody").append("<tr><td>sdshf</td>" +
                    "<td>sdshf</td>" +
                    "<td>sdshf</td>" +
                    "<td>sdshf</td>" +

                    "</tr>")

    })
</script>
</body>
</html>
