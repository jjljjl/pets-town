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
<table  border="1px red solid" >
   <tr >
       <td >你好啊</td>
       <tbody class="tab-content" id="tableBody"></tbody>
   </tr>
    <tr>
       <th>不好啊</th>
        <tbody class="tab-content" id="tableBodys"></tbody>
    </tr>



</table>
<script type='text/javascript'>
    $(document).ready(function() {
            $("#tableBody").append("<tr><td>sdshf</td></tr>")
           $("#tableBodys").append("<tr><td>哈哈哈哈</td></tr>")
    })
</script>
</body>
</html>
