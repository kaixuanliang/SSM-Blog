<%--
  Created by IntelliJ IDEA.
  User: liangkaixuan
  Date: 2018/12/22
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>左侧边导航</title>

    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/js/admin.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${APP_PATH}/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${APP_PATH}/static/css/admin.css">



</head>
<body style="background-color: #F5F6F7;overflow-y: hidden">


<div class="panel-group" id="panelContainer" >
    <div class="panel panel-default">
        <div id="header3" class="panel-heading1" data-toggle="collapse" data-target="#sub1" data-parent="#panelContainer">
            <br>
            <br>
            <%--<i class="glyphicon glyphicon-list-alt"></i>
            <a href="#">br</a>
            <span class="glyphicon glyphicon-triangle-right pull-right"></span>--%>
        </div>
    </div>
    <div class="panel panel-default">
        <div id="header1" class="panel-heading" data-toggle="collapse" data-target="#sub1" data-parent="#panelContainer">
            <i class="glyphicon glyphicon-list-alt"></i>
            <a href="#">栏目菜单 1</a>
            <span class="glyphicon glyphicon-triangle-right pull-right"></span>
        </div>
        <div id="sub1" class="collapse panel-collapse">
            <div class="panel-body">
                <ul class="nav">
                    <li>
                        <a href="#"><span></span>添加栏目1</a>
                    </li>
                    <li>
                        <a href="#">添加栏目2</a>
                    </li>
                    <li>
                        <a href="#">添加栏目3</a>
                    </li>
                    <li>
                        <a href="#">添加栏目4</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div id="header2" class="panel-heading" data-toggle="collapse" data-target="#sub2" data-parent="#panelContainer">
            <i class="glyphicon glyphicon-leaf"></i>
            <a href="#">栏目菜单 2</a>
            <span class="glyphicon glyphicon-triangle-right pull-right"></span>
        </div>
        <div id="sub2" class="collapse panel-collapse">
            <div class="panel-body">
                <ul class="nav">
                    <li>
                        <a href="#">添加栏目1</a>
                    </li>
                    <li>
                        <a href="#">添加栏目2</a>
                    </li>
                    <li>
                        <a href="#">添加栏目3</a>
                    </li>
                    <li>
                        <a href="#">添加栏目4</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<%--<div>
    <nav class="navbar navbar-default navbar-static-top navbar-inverse" style="margin-left:200px;margin-top: -650px;width:auto">
        <div class="container">

        </div>
    </nav>
</div>--%>
<iframe frameborder="0" src="ceshi" id="lkx" style="margin-top: -700px;margin-left: 250px;width: 1050px;height:500px;background-color: #FFFFFF;">

</iframe>



</body>
</html>