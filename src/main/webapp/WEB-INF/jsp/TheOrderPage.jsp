<%--
  Created by IntelliJ IDEA.
  User: developer
  Date: 2017/4/13
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>订单详情</title>
    <jsp:include page="TheImportFile.jsp"></jsp:include>
</head>
<body>
<jsp:include page="TheIndexHeadPage.jsp"></jsp:include>


<hr class="nav-hr"/>
<div class="panel-heading">
    <ol class="breadcrumb" >
        <li style="color: #1d7db1;font-weight: bold">订单详情</li>
    </ol>
</div>
<div class="container">
    <table class="table">
        <tr>
            <td class="success">订单名称</td>
            <td class="success">商品详情</td>
            <td class="success">价格</td>
            <td class="success">数量</td>
            <td class="success">总金额</td>
        </tr>
        <tr>
            <td class="active">${requestScope.showPets.petName}</td>
            <td class="active"><img src="${requestScope.showPets.petImage}" style="width: 100px;height: 100px"/></td>
            <td class="active">${requestScope.showPets.petPrice}</td>
            <td class="active">
                <div class="input-group" style="width: 70px">
                    <div class="input-group-addon" onclick="deleteCount()">-</div>
                    <input type="text" class="form-control"  style="width:40px;align-content: center" value="1" id="exampleInputAmount" >
                    <div class="input-group-addon" onclick="addCount()">+</div>
                </div>
            </td>
            <td class="active" ><fieldset disabled><input type="text" class="form-control" style="width: 80px;color: red"  id="allSale" ></fieldset></td>

        </tr>
    </table>

    <div  class="col-md-3 col-md-offset-10" style="margin-top: 100px">
        <button type="button" class="btn btn-primary" onclick="submitOrder()">提交订单</button>

    </div>

</div>

<%-- <c:forEach items="${showPets}" var="item" >
     userId:<c:out value="${item.id}"/>
     <br>
     username:<c:out value="${item.petName}"/>
     <br>
 </c:forEach>--%>


<jsp:include page="TheIndexFoodPage.jsp"></jsp:include>
<script type='text/javascript'>
    var urlRootContext = (function () {
        var strPath = window.document.location.pathname;
        var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);
        return postPath;
    })();
    $("#allSale").val(${requestScope.showPets.petPrice})
function deleteCount(){
        var count =  $("#exampleInputAmount").val();
        if(count>0){
            count--;
            $("#exampleInputAmount").val(count)
        }else{
            count=0;
            $("#exampleInputAmount").val(count)
        }
        var price = ${requestScope.showPets.petPrice};
        var allSale = price* count;
        console.log(allSale)
        $("#allSale").val(allSale)

    }
    function addCount(){
        var count =  $("#exampleInputAmount").val();
        count++;
        $("#exampleInputAmount").val(count)
        var price = ${requestScope.showPets.petPrice};
        var allSale = price* count;
        $("#allSale").val(allSale)

    }

    function submitOrder(){
        var count = $("#exampleInputAmount").val()
        window.location.href = urlRootContext+"/submit/order?id="+'${requestScope.showPets.id}'+"&count="+count;
    }

</script>
</body>
</html>
