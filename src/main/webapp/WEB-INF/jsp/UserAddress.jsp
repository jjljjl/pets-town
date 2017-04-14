<%--
  Created by IntelliJ IDEA.
  User: developer
  Date: 2017/4/13
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>收货地址</title>
    <jsp:include page="TheImportFile.jsp"></jsp:include>
</head>
<body>
<jsp:include page="TheIndexHeadPage.jsp"></jsp:include>
<hr class="nav-hr"/>
<div class="panel-heading">
    <ol class="breadcrumb" >
        <li style="color: #1d7db1;font-weight: bold">收货地址填写</li>
    </ol>
</div>
<div class="container">

    <form>

            <div data-toggle="distpicker">
                <label for="localAddress">所在地区</label>
                <ul class="list-inline" id ="localAddress">
                    <li><label class="sr-only" for="province1">Province</label>
                        <select class="form-control" id="province1"></select>
                    </li>
                    <li> <label class="sr-only" for="city1">City</label>
                        <select class="form-control" id="city1"></select>
                    </li>
                    <li><label class="sr-only" for="district1">District</label>
                        <select class="form-control" id="district1"></select>
                    </li>
                </ul>
            </div>

        <div class="form-group">
            <label for="fullAddress">详细地址</label>
            <textarea class="form-control" rows="3" id="fullAddress" placeholder="建议您如实填写详细地址，例如街道名称，门牌号"></textarea>
        </div>
        <div class="form-group">
            <label for="postCode">邮政编码</label>
            <input type="text" class="form-control" placeholder="如果您写不清楚邮递区号，请写000000" id="postCode">
        </div>
        <div class="form-group">
            <label for="receiptName">收货人姓名</label>
            <input type="text" class="form-control" placeholder="长度不超过25个" id="receiptName">
        </div>
        <div class="form-group">
            <label for="telphone">手机号码</label>
            <input type="text" class="form-control" placeholder="请填写真实号码" id="telphone">
        </div>
        <button type="submit" class="btn btn-primary">保存</button>
    </form>

    </div>
<jsp:include page="TheIndexFoodPage.jsp"></jsp:include>
</body>
</html>
