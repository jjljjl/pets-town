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
                        <input id="textInput" type="text" placeholder="请输入宠物名">
                        <button id="queryButton" class="btn btn-primary" type="button">查询</button>
                    </div>
                    <tr>
                        <td class="active">ID</td>
                        <td class="active">宠物名称</td>
                        <td class="active">价格</td>
                        <td class="active">年龄</td>
                        <td class="active">类型</td>
                        <td class="active">图片</td>
                        <td class="success">修改</td>
                        <td class="danger">删除</td>
                        <td class="success">添加详细图片</td>
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
                <h4 class="modal-title" id="myModalLabel">添加宠物</h4>
            </div>
            <div class="modal-body">
              <form action="<%=request.getContextPath() %>/addPets" method="post" id="addPetsForm" enctype="multipart/form-data">
                  <label for="petName1">名称</label>
                  <input type="text" class="form-control" id="petName1"  name="petName">
                  <label for="petPrice1">价格</label>
                  <input type="text" class="form-control" id="petPrice1" name = "petPrice">
                  <label for="petAge1">年龄</label>
                  <input type="text" class="form-control" id="petAge1"  name = "petAge">
                  <label for="petType1" >类型</label>
                  <select class="form-control" id="petType1" name="petType">
                      <option value="0" >泰迪犬</option>
                      <option value="1" >比熊犬</option>
                      <option value="2" >金毛犬</option>
                  </select>
                  <br>
                  <label for="exampleInputFile">选择图片</label>
                  <input type="file" id="exampleInputFile" name = "petImage" class="form-control">
              </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary" onclick="addPets()">保存</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel1">添加宠物</h4>
            </div>
            <div class="modal-body">
                <form action="<%=request.getContextPath() %>/addImage" method="post" id="addPetsForm1" enctype="multipart/form-data">
                    <input type="hidden" id="hid" value="" name="pId">
                    <label for="exampleInputFile1">选择图片1</label>
                    <input type="file" id="exampleInputFile1" name = "petImage" class="form-control">

                    <label for="exampleInputFile2">选择图片2</label>
                    <input type="file" id="exampleInputFile2" name = "petImage" class="form-control">


                    <label for="exampleInputFile3">选择图片3</label>
                    <input type="file" id="exampleInputFile3" name = "petImage" class="form-control">


                    <label for="exampleInputFile4">选择图片4</label>
                    <input type="file" id="exampleInputFile4" name = "petImage" class="form-control">
                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary" onclick="addImage()">保存</button>
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
            var url = urlRootContext + "/pets"; //请求的网址
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
                                $("#tableBody").append('<td>' + this.petName + '</td>');
                                $("#tableBody").append('<td>' + this.petPrice + '</td>');
                                $("#tableBody").append('<td>' + this.petAge + '</td>');
                                if(this.petType == 0){
                                    $("#tableBody").append('<td>' + "泰迪犬" + '</td>');
                                }else if(this.petType == 1){
                                    $("#tableBody").append('<td>' + "比熊犬" + '</td>');
                                }else if(this.petType == 2){
                                    $("#tableBody").append('<td>' + "金毛" + '</td>');
                                }

                                $("#tableBody").append('<td>' + this.petImage + '</td>');
                                $("#tableBody").append('<td>    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modifyModal">'+
                                       ' <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改'+
                                        '</button></td>');
                                $("#tableBody").append('</tr>');
                                $("#tableBody").append('<td>   <button type="button" id="deleteU" class="btn btn-danger" onclick="deleteUser('+this.id+')">' +
                                        ' <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除' +
                                        ' </button></td>');
                                $("#tableBody").append('<td> <button type="button" class="btn btn-success btn-sm" onclick="saveId('+this.id+')"  data-toggle="modal" data-target="#myModal1">'+
                                        '<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加'+
                                        '</button></td> ');
                                $("#tableBody").append('</tr>');
                            });
                        } else {
                            $("#tableBody").append('<tr><th colspan ="4"><center>查询无数据</center></th></tr>');
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
    function deleteUser(id) {

        window.location.href = urlRootContext + "/delete/pets?petId=" + id;
    }
        function addPets() {
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


          var s=0;
          function saveId(id){
              s=id;

          }

    function addImage(){
        var form1 = document.getElementById("addPetsForm1");
        $("#hid").val(s);
        form1.submit();
    }



</script>
</body>
</html>


