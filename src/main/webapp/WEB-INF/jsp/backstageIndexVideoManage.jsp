<%--
  Created by IntelliJ IDEA.
  User: developer
  Date: 2017/4/12
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台宠物管理</title>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/css/bootstrap-theme.css"/>
    <script type="text/javascript" src="<%=request.getContextPath() %>/plateform/lib/jquery-3.1.1.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath() %>/plateform/bootstrap-3.3.7-dist/js/bootstrap-paginator.js"></script>
    <link href="<%=request.getContextPath() %>/css/backgroud-manage.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="panel-group">
    <div class="panel panel-primary">
        <div class="panel-heading">
            后台管理
        </div>
        <div class="panel-body">
            <jsp:include page="TheBackstageToolbar.jsp"></jsp:include>
            <div role="tabpanel" class="tab-pane active" id="user">
                <table class="table table-bordered table-hover">
                    <button type="button" class="btn btn-success btn-sm" style="margin-top: 20px" data-toggle="modal" data-target="#myModal">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
                    </button>
                    <div id="queryDiv">
                        <input id="textInput" type="text" placeholder="请输入视频名称">
                        <button id="queryButton" class="btn btn-primary" type="button">查询</button>
                    </div>
                    <tr>
                        <td class="active">ID</td>
                        <td class="active">视频ID</td>
                        <td class="active">视频名称</td>
                        <td class="active">视频地址</td>
                        <td class="active">封面地址</td>
                        <td class="active">上传时间</td>
                    </tr>
                    <tbody id="tableBody" class="tab-content">
                </table>
                <div id="bottomTab">
                </div>
                </table>
            </div>
        </div><!-- end of panel-footer -->
    </div><!-- end of panel -->
</div>

<%----------------------------添加按钮事件-----------------------------------%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">添加视频</h4>
            </div>
            <div class="modal-body">
                <form action="<%=request.getContextPath() %>/addVideos" method="post" id="addPetsForm" enctype="multipart/form-data">
                    <label for="petName1">视频名称</label>
                    <input type="text" class="form-control" id="petName1"  name="videoName">
                    <br>
                    <label for="exampleInputFile">选择图片</label>
                    <input type="file" id="exampleInputFile" name = "videoImage" class="form-control">
                    <label for="exampleInputVideo">选择视频</label>
                    <input type="file" id="exampleInputVideo" name = "video" class="form-control">
                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary" onclick="addVideo()">保存</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
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
            var userName = $("#textInput").val(); //取内容
            buildTable(userName, page, PAGESIZE);//默认每页最多10条
        }
    }

    //生成表格
    function buildTable(userName, pageNumber, pageSize) {
        $(function () {
            var url = urlRootContext + "/videos"; //请求的网址
            var reqParams = {'userName': userName, 'pageNumber': pageNumber, 'pageSize': pageSize};//请求数据
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
                            var userName = $("#textInput").val(); //取内容
                            buildTable(userName, page, PAGESIZE);//默认每页最多10条
                        }
                    }
                    $('#bottomTab').bootstrapPaginator("setOptions", newoptions); //重新设置总页面数目
                    var dataList = data.dataList;
                    $("#tableBody").empty();//清空表格内容
                    if (dataList.length > 0) {
                        $(dataList).each(function () {//重新生成
                            $("#tableBody").append('<tr>');
                            $("#tableBody").append('<td id="selectId">' + this.id + '</td>');
                            $("#tableBody").append('<td>' + this.videoId + '</td>');
                            $("#tableBody").append('<td>' + this.videoName + '</td>');
                            $("#tableBody").append('<td>' + this.videoUrl + '</td>');
                            $("#tableBody").append('<td>' + this.videoImage + '</td>');
                            $("#tableBody").append('<td>' + this.createdOn.toString()+ '</td>');
                            $("#tableBody").append('</tr>');

                        });
                    } else {
                        $("#tableBody").append('<tr><th colspan ="5"><center>查询无数据</center></th></tr>');
                    }
                },
                error: function (e) {
                    alert("查询失败:" + e);
                }
            });
        });
    }

    //渲染完就执行
    $(function () {

        //生成底部分页栏
        $('#bottomTab').bootstrapPaginator(options);

        buildTable("", 1, 10);//默认空白查全部

        //创建结算规则
        $("#queryButton").bind("click", function () {
            var userName = $("#textInput").val();
            buildTable(userName, 1, PAGESIZE);
        });
    });
    function deleteUser() {
        var petId = $("#selectId")[0].textContent;
        window.location.href = urlRootContext + "/delete/pets?petId=" + petId;
    }
    function addVideo() {
        var form1 = document.getElementById("addPetsForm");
        var inputs = form1.getElementsByTagName("input");
        var count = 0;
        $(inputs).each(function () {
            if (this.value == "") {
                count++;
            }else{
                count=count;
            }
        })
        if(count>0){
            $("#addPetsForm").append('<p style="color: red; margin-left: 120px;margin-top: 10px">' + "请正确填写表单" + '</p>');
        }else {
            form1.submit()
        }
    }

</script>
</body>
</html>


