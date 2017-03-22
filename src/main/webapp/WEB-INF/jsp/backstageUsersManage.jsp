<%--
  Created by IntelliJ IDEA.
  User: developer
  Date: 2017/3/22
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台用户管理</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/css/bootstrap-theme.css"/>
    <script type="text/javascript" src="<%=request.getContextPath() %>/plateform/lib/jquery-3.1.1.min.js" ></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/js/bootstrap-paginator.js"></script>
    <style type="text/css">
        #queryDiv {
            margin-right: auto;
            margin-left: auto;
            width:600px;
        }
        #textInput {
            margin-top: 10px;
        }

        td {
            width:150px;
            height:40px;
            padding-left: 10px;
            border: solid 2px gainsboro;
        }
        #bottomTab{
            position:fixed;
            bottom: 200px;
            left: 400px;
        }
        #bottomTab  ul
        {
            list-style-type:none;
            margin:0;
            padding:0;
        }
        #bottomTab li{
            display:inline;
            margin-left: 5px;
        }

    </style>
</head>
<body>
<div class="panel-group">
    <div class="panel panel-primary">
        <div class="panel-heading">
            后台管理
        </div>
        <div class="panel-body">
            <ul class="nav nav-tabs" >
                <li role="presentation" class="active"><a href="user">用户管理</a></li>
                <li role="presentation"><a href="admin">管理员</a></li>
                <li role="presentation"><a href="#">商品管理</a></li>
            </ul>
            <div role="tabpanel" class="tab-pane active" id="user">
                <table class="table table-bordered table-hover" >
                    <div id = "queryDiv">
                        <input id = "textInput" type="text" placeholder="请输入用户名" >
                        <button id = "queryButton" class="btn btn-primary" type="button">查询</button>
                    </div>
                    <tr>
                        <td class="active">uId</td>
                        <td class="active">用户名</td>
                        <td class="active">密码</td>
                        <td class="active">邮箱</td>
                        <td class="active">电话号码</td>
                        <td class="success">操作</td>
                    </tr>
                    <tbody id ="tableBody" class="tab-content">
                </table>
                <div id="bottomTab" >
                </div>
                </table>
            </div>
        </div><!-- end of panel-footer -->
    </div><!-- end of panel -->
</div>
<script type='text/javascript'>
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
        size:"normal",
        alignment:"center",
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
                    return  page;
            }
        },
        onPageClicked: function (e, originalEvent, type, page) {
            var userName = $("#textInput").val(); //取内容
            buildTable(userName,page,PAGESIZE);//默认每页最多10条
        }
    }

    //生成表格
    function buildTable(userName,pageNumber,pageSize) {
        $(function () {
            var url =  urlRootContext + "/lists"; //请求的网址
            var reqParams = {'userName':userName, 'pageNumber':pageNumber,'pageSize':pageSize};//请求数据
            $.ajax({
                type:"POST",
                url:url,
                data:reqParams,
                async:false,
                dataType:"json",
                success: function(data){
                    if(data.isError == false) {
                        // options.totalPages = data.pages;
                        var newoptions = {
                            currentPage: 1,  //当前页数
                            totalPages: data.pages==0?1:data.pages,  //总页数
                            size:"normal",
                            alignment:"center",
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
                                        return  page;
                                }
                            },
                            onPageClicked: function (e, originalEvent, type, page) {
                                var userName = $("#textInput").val(); //取内容
                                buildTable(userName,page,PAGESIZE);//默认每页最多10条
                            }
                        }
                        $('#bottomTab').bootstrapPaginator("setOptions",newoptions); //重新设置总页面数目
                        var dataList = data.dataList;
                        $("#tableBody").empty();//清空表格内容
                        if (dataList.length > 0 ) {
                            $(dataList).each(function(){//重新生成
                                $("#tableBody").append('<tr>');
                                $("#tableBody").append('<td>' + this.id + '</td>');
                                $("#tableBody").append('<td>' + this.userName + '</td>');
                                $("#tableBody").append('<td>' + this.password + '</td>');
                                $("#tableBody").append('<td>' + this.telphone+ '</td>');
                                $("#tableBody").append('<td>' + this.email + '</td>');
                                $("#tableBody").append('<td>   <button type="button" id="deleteUser" class="btn btn-danger">'+
                                       ' <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除'+
                                       ' </button></td>');
                                $("#tableBody").append('</tr>');
                            });
                        } else {
                            $("#tableBody").append('<tr><th colspan ="4"><center>查询无数据</center></th></tr>');
                        }
                    }else{
                        alert(data.errorMsg);
                    }
                },
                error: function(e){
                    alert("查询失败:" + e);
                }
            });
        });
    }

    //渲染完就执行
    $(function() {

        //生成底部分页栏
        $('#bottomTab').bootstrapPaginator(options);

        buildTable("",1,10);//默认空白查全部

        //创建结算规则
        $("#queryButton").bind("click",function(){
            var userName = $("#textInput").val();
            buildTable(userName,1,PAGESIZE);
        });
    });
</script>
</body>
</html>
