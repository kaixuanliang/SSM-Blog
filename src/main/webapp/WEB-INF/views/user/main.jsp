<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>博客首页</title>
</head>
<body style="background: #F5F6F7">
    <!-- 导航栏 -->
    <jsp:include page="header.jsp"/>
    <br> <br> <br> <br>
    <!-- 博客列表页面 -->
    <jsp:include page="blogList.jsp"></jsp:include>
    <!-- 右侧公告栏 -->
    <div style="float:left">
        <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
