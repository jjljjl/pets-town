<%--
  Created by IntelliJ IDEA.
  User: developer
  Date: 2017/4/17
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <jsp:include page="TheImportFile.jsp"></jsp:include>
</head>
<body>
<jsp:include page="TheIndexHeadPage.jsp"></jsp:include>
<hr class="nav-hr"/>
<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <a class="navbar-text" href="#" ><img src="/pets-town/img/index/person-image.png" class='img-circle' style="width: 50px;height:50px;"></a>
        <a class="navbar-brand" href="#" style="color: red">${sessionScope.user.userName}</a>
    </div>
</nav>
<div class="container">
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#telphone" aria-controls="home" role="tab" data-toggle="tab" style="color: maroon;font-weight: bold">手机号and邮箱</a></li>
        <li role="presentation"><a href="#passworld" aria-controls="profile" role="tab" data-toggle="tab" style="color: maroon;font-weight: bold">修改密码</a></li>

    </ul>

    <div class="tab-content" style="margin-top: 30px">

        <div role="tabpanel" class="tab-pane active" id="telphone">
            <div class="row">
                <div class="col-md-6">

                    <table class="table">
                        <tr></tr>
                        <tr>
                            <td style="color: maroon">手机号：</td>
                            <td>${sessionScope.user.telphone}</td>
                            <td><a href="#" style="color: #1E53C4" onclick="changeThings()">修改</a></td>
                        </tr>
                        <tr >
                            <td colspan="3">
                                <form id="change-telphone" name="form1" action="<%=request.getContextPath() %>/changeTelphone" method="post" >
                                    <div class="form-group">
                                        <input type="hidden" name="username" value="${sessionScope.user.userName}">
                                        <label for="exampleInputTelphone" >手机号</label>
                                        <input type="text" class="form-control" id="exampleInputTelphone" placeholder="手机号" name="telphone">
                                    </div>
                                    <div id="contents"></div>
                                    <button type="button" class="btn  btn-primary" onclick="submitForm()">确定</button>

                                    <button type="submit" class="btn btn-default" onclick="clearStype()">取消</button>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: darkred">邮箱：</td>
                            <td>${sessionScope.user.email}</td>
                            <td><a href="#" style="color: #1E53C4" onclick="changeThing1()">修改</a></td>
                        </tr>
                        <tr >
                            <td colspan="3">
                                <form id="change-email" name="form1" action="<%=request.getContextPath() %>/changeEmail" method="post" >
                                    <div class="form-group">
                                        <input type="hidden" name="username" value="${sessionScope.user.userName}">
                                        <label for="exampleInputEmail1" >邮箱</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="邮箱" name="email">
                                    </div>
                                    <div id="msg-content"></div>
                                    <button type="button" class="btn  btn-primary" onclick="submitForm1()">确定</button>

                                    <button type="submit" class="btn btn-default" onclick="clearStype1()">取消</button>
                                </form>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="passworld">
            <div class="row">
                <div class="col-md-6">
                    <form method="post" action="changePwd" id="change-pwd">
                        <div class="form-group">
                            <input type="hidden" name="username" value="${sessionScope.user.userName}">
                            <label for="exampleInputPassword1">原密码</label>
                            <input type="password" class="form-control" id="exampleInputPassword" placeholder="原密码" name="oldPwd">
                        </div>
                        <div class="msg-oldPwd">

                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">新密码</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="新密码" name = "newPwd">
                        </div>
                        <div class="msg-newPwd">

                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">确认密码</label>
                            <input type="password" class="form-control" id="exampleInputPassword2" placeholder="确认密码" name = "confirmPwd">
                        </div>
                        <div class="msg-confirmPwd">

                        </div>
                        <button type="submit" class="btn btn-primary" id="send">确认</button>
                        <button type="reset" class="btn btn-default">重置</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>
</div>
<jsp:include page="TheIndexFoodPage.jsp"></jsp:include>
<script type="text/javascript">
    $(document).ready(function () {
        $("#change-telphone").hide()
        $("#change-email").hide()
    })
    function changeThings(){
        $("#change-telphone").toggle()
    }
    function changeThing1(){
        $("#change-email").toggle()
    }
    function clearStype(){
        $("#contents").remove();
        $("#change-telphone").hide()

    }
    function clearStype1(){
        $("#msg-content").remove();
        $("#change-email").hide()
    }
    function submitForm1(){
        var s = $("#exampleInputEmail1")[0].value
        var oldEmail = '${sessionScope.user.email}';
        var reg =/\w+[@]{1}\w+[.]\w+/;
        if(s==""){
            $("#msg-content").append("<p style='color: maroon' >请输入邮箱！</p>");
            return false;
        } else if(s==oldEmail){
            $("#msg-content").append("<p style='color: maroon'>该邮箱与原邮箱相同，请重新输入！</p>");
            return false;
        }else if(!reg.test(s)){
            $("#msg-content").append("<p style='color: maroon'>该邮箱格式不对，请重新输入！</p>");
            return false;
        }else{
            $("#change-email").submit();
            alert("修改成功，下次登陆有效");
        }
    }

    function submitForm(){
        var s = $("#exampleInputTelphone")[0].value
        var oldTelphone = ${sessionScope.user.telphone};
        var reg =/^[1][3,4,5,7,8][0-9]{9}$/;
        if(s==""){
            $("#contents").append("<p style='color: maroon'>请输入号码！</p>");
            return false;
        } else if(s==oldTelphone){
            $("#contents").append("<p style='color: maroon'>该号码与原号码相同，请重新输入！</p>");
            return false;
        }else if(!reg.test(s)){
            $("#contents").append("<p style='color: maroon'>该号码格式不对，请重新输入！</p>");
            return false;
        }else{
            $("#change-telphone").submit();
            alert("修改成功，下次登陆有效");
        }
    }


    $(function(){
        var truePwd = '${sessionScope.user.password}'
        $('form :input').blur(function(){
            var $parent = $(this).parent();
            $parent.find(".formtips").remove();
            //原密码
            if( $(this).is('#exampleInputPassword') ){
                if( this.value=="" || this.value.length < 6 ){
                    var errorMsg='密码格式错误，不能为空且至少6位！';
                    $parent.append('<span class="formtips onError" style="color: darkred">'+errorMsg+'</span>');
                }else if(this.value!=truePwd){
                    var errorMsg='原密码输入错误！';
                    $parent.append('<span class="formtips onError" style="color: darkred">'+errorMsg+'</span>');
                }
            }

            if( $(this).is('#exampleInputPassword1') ){
                if( this.value=="" || this.value.length < 6 ){
                    var errorMsg='密码格式错误，不能为空且至少6位！';
                    $parent.append('<span class="formtips onError" style="color: darkred">'+errorMsg+'</span>');
                }else if(this.value== $("#exampleInputPassword")[0].value){
                    var errorMsg='与原密码相同!';
                    $parent.append('<span class="formtips onError" style="color: darkred">'+errorMsg+'</span>');
                }
            }
            if( $(this).is('#exampleInputPassword2') ){
                if( this.value=="" || this.value.length < 6 ){
                    var errorMsg='密码格式错误，不能为空且至少6位！';
                    $parent.append('<span class="formtips onError" style="color: darkred">'+errorMsg+'</span>');
                }else if (this.value!= $("#exampleInputPassword1")[0].value){
                    var errorMsg='与新密码不一致';
                    $parent.append('<span class="formtips onError" style="color: darkred">'+errorMsg+'</span>');
                }
            }

        }).keyup(function(){
            $(this).triggerHandler("blur");
        }).focus(function(){
            $(this).triggerHandler("blur");
        });//end blur

        $('#send').click(function(){
            $("#change-pwd").submit();
            alert("修改成功，下次登陆有效");
        });


    })
</script>
</body>
</html>
