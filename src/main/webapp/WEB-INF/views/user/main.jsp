<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>博客首页</title>

    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>

    <script type="text/javascript" src="${APP_PATH}/static/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/js/toastr.min.js"></script>
    <script charset="UTF-8" type="text/javascript" src="${APP_PATH}/static/js/page.js"></script>
<%--
    <script charset="UTF-8" type="text/javascript" src="${APP_PATH}/static/js/register.js"></script>
--%>
    <script type="text/javascript" src="${APP_PATH}/static/js/bootstrapValidator.min.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/js/login.js"></script>

    <link rel="stylesheet" href="${APP_PATH}/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${APP_PATH}/static/css/bootstrapValidator.min.css">
    <link rel="stylesheet" href="${APP_PATH}/static/css/toastr.css">
    <link rel="stylesheet" href="${APP_PATH}/static/css/my.css">

</head>
<body style="background: #FFFFFF">
    <!-- 导航栏 -->
    <jsp:include page="header.jsp"/>

    <jsp:include page="blogList.jsp"/>

    <%--<div class="outer-container" >
        <iframe src="blogList" id="blogListFrame"  scrolling="auto" frameBorder="0" style="width: 100%;height: 100%;margin-top:70px;"></iframe>
    </div>

    <div class="outer-container" frameborder="0" scrolling="no"  style="height:560px;margin-left: 1000px;margin-top: -625px">
        <iframe src="right" id="rightFrame" frameborder="0" style="height:560px;"></iframe>
    </div>--%>

</body>
</html>
