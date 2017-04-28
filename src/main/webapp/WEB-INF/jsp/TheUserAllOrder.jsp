<%--
  Created by IntelliJ IDEA.
  User: developer
  Date: 2017/4/25
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有订单</title>
    <script type="text/javascript" src="<%=request.getContextPath() %>/plateform/lib/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/css/bootstrap-theme.css"/>
    <script type="text/javascript"
            src="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/js/bootstrap-paginator.js"></script>
</head>
<body>
<jsp:include page="TheIndexHeadPage.jsp"></jsp:include>
<hr class="nav-hr"/>
<div class="container" style="margin-top: 20px">
    <ul class="nav nav-tabs" >
        <li role="presentation" class="active"><a href="allOrder">所有商品</a></li>
        <li role="presentation"><a href="purchasedOrder">已买商品</a></li>
    </ul>


        <table class="table" id="tableBody" style="margin-top: 20px">
            <tr>
                <td class="success">订单名称</td>
                <td class="success">商品详情</td>
                <td class="success">价格</td>
                <td class="success">数量</td>
                <td class="success">总金额</td>
                <td class="success">操作</td>
            </tr>
        </table>

    <div id="bottomTab">
    </div>


</div>
<<script type='text/javascript'>
    //获取当前项目的路径
    var urlRootContext = (function () {
        var strPath = window.document.location.pathname;
        var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);
        return postPath;
    })();

    var PAGESIZE = 10;
    var options = {
        currentPage: 1,  //当前页数
        totalPages: 10,  //总页数，这里只是暂时的，后头会根据查出来的条件进行更改
        size: "normal",
        alignment: "center",
        itemTexts: function (type, page, current) {
            switch (type) {
                case "first":
                    return "第一页";
                case "prev":
                    return "前一页";
                case "next":
                    return "后一页";
                case "last":
                    return "最后页";
                case "page":
                    return page;
            }
        },
        onPageClicked: function (e, originalEvent, type, page) {
            buildTable( page, PAGESIZE);//默认每页最多10条
        }
    }

    //生成表格
    function buildTable( pageNumber, pageSize) {

        $(function () {
            var url = urlRootContext + "/show/userCart"; //请求的网址
            var reqParams = { 'pageNumber': pageNumber, 'pageSize': pageSize};//请求数据
            $.ajax({
                type: "POST",
                url: url,
                data: reqParams,
                async: false,
                dataType: "json",
                success: function (data) {
                    // options.totalPages = data.pages;
                    var newoptions = {
                        currentPage: data.pageNo,  //当前页数
                        totalPages: data.pages == 0 ? 1 : data.pages,  //总页数
                        size: "normal",
                        alignment: "center",
                        itemTexts: function (type, page, current) {
                            switch (type) {
                                case "first":
                                    return "第一页";
                                case "prev":
                                    return "前一页";
                                case "next":
                                    return "后一页";
                                case "last":
                                    return "最后页";
                                case "page":
                                    return page;
                            }
                        },
                        onPageClicked: function (e, originalEvent, type, page) {
                            buildTable(page, PAGESIZE);//默认每页最多10条
                        }
                    }
                    $('#bottomTab').bootstrapPaginator("setOptions", newoptions); //重新设置总页面数目
                    var dataList = data.dataList;
                    if (dataList.length > 0) {
                        $(dataList).each(function () {//重新生成
                            $("#tableBody").append("<tr>" +
                                           " <td >"+this.petName+"</td>"+
                                    " <td><img src="+this.petImage+"  style='width: 100px;height: 100px'></td>"+
                                    " <td><img src='/pets-town/img/index/coin.png'>  "+ this.petPrice+"</td>"+
                                    " <td><div class='input-group' style='width: 70px'>"+
                            "<div class='input-group-addon' onclick='deleteCount()'>-</div>"+
                                    "<input type='text' class='form-control'  style='width:45px;align-content: center' value="+this.sumCount+" id='exampleInputAmount' >"+
                                    "<div class='input-group-addon' onclick='addCount()'>+</div>"+
                                   " </div></td>"+
                                    " <td style='color: red'> <img src='/pets-town/img/index/money-bage.png'>  "+ this.sumPrice+"</td>"+
                                    " <td><a href='' >立即购买</a><br/><a href='delete/order?id="+this.id+"' class='text-danger'>删除订单</a></td>"+
                                    "</tr>");

                        });
                    }
                },
                error: function (e) {
                    alert("查询失败:" + e);
                }
            });
        });
    }
    $(function () {

        //生成底部分页栏
        $('#bottomTab').bootstrapPaginator(options);

        buildTable( 1, 10);//默认空白查全部
    });
</script>
</body>
</html>
