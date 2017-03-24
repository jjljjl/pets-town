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
</head>
<body>
<form action="ChannelManageAction.a" method="post" enctype="multipart/form-data"
      class="form-horizontal" id="basic_validate" novalidate="novalidate">
    <div class="control-group">
        <label class="control-label">频道名称:</label>
        <div class="controls">
            <input style="width:180px" type="text" name="channelName">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="s2">频道类型:</label>
        <div class="controls">
            <select  style="width:200px;" name="channelType"  id="s2">
                <app:dictselect dictType="1105"/>
            </select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">频道信号源:</label>
        <div class="controls">
            <input style="width:180px" type="text" name="channelSignal" onblur="checkChannelSignal('',this.value)">
            <span id="showMsg" style="color: red"></span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">频道logo地址:</label>
        <div class="controls">
            <input type="file" name="fileContent" id="fileContent">
        </div>
    </div>
    <div class="form-actions" style="padding-left: 180px;">
        <button type="submit" name="doAddChannelInfo" class="btn btn-primary">
            <i class="icon-ok icon-white"></i>保存</button>&nbsp;&nbsp;
        <button type="button" class="btn btn-primary cancelBtn">
            <i class="icon-remove icon-white"></i>取消</button>
    </div>
</form>
</body>
</html>
