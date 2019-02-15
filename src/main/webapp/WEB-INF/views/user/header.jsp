<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>博客导航栏</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
	<script type="text/javascript" src="${APP_PATH}/static/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="${APP_PATH}/static/js/toastr.min.js"></script>

	<script charset="UTF-8" type="text/javascript" src="${APP_PATH}/static/js/register.js"></script>
	<script type="text/javascript" src="${APP_PATH}/static/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript" src="${APP_PATH}/static/js/login.js"></script>

	<link rel="stylesheet" href="${APP_PATH}/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${APP_PATH}/static/css/bootstrapValidator.min.css">
	<link rel="stylesheet" href="${APP_PATH}/static/css/toastr.css">
	<link rel="stylesheet" href="${APP_PATH}/static/css/my.css">
</head>

<body style="background: #FFFFFF">
	<div>
		<nav class="navbar navbar-fixed-top navbar-inverse">
			<div class="container"  style="text-align:center">
				<div class="navbar-header">
					<a class="active navbar-brand" href="javascript:void(0)" id="homePage" onclick="toBlogList()">SSM-Blog首页</a>
				</div>

				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">文章分类<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:void(0)" class="text-center" onclick="toBlogList()">C语言</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#" class="text-center">C++</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#" class="text-center">Java</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#" class="text-center">Web</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#" class="text-center">SSM</a></li>
                            </ul>
                        </li>

						<li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">资源下载<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="javascript:void(0)" onclick="lkxTest()" class="text-center">软件资源</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#" class="text-center">视频资源</a></li>
							</ul>
                        </li>

						<li><a href="#">网站地图</a></li>
						<li><a href="#">时间轴</a></li>
					</ul>
					<div class="navbar-form navbar-right">
						<!-- 如果用户登录之后隐藏这两个按钮 -->
 						<c:if test="${empty sessionScope.loginEmail}">
 							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#loginModal" id="loginBtn">登录</button>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#registerModal" id="resBtn">注册</button>		
						</c:if>
						<c:if test="${not empty sessionScope.loginEmail}">
							<input class="button_round dropdown-toggle" type="image" src="static/images/avatar.png" data-toggle="dropdown">
							<ul class="dropdown-menu" role="menu">
								<li><a href="personalPage" ><i class="glyphicon glyphicon-user text-center"><strong class="text-center">个人主页</strong></i></a></li>
								<li class="divider"></li>
								<li><a href="#"><i class="glyphicon glyphicon-cog text-center"><strong>资料设置</strong></i></a></li>
								<li class="divider"></li>
								<li><a href="writeBlog"><i class="glyphicon glyphicon-pencil text-center"><strong>发表博客</strong></i></a></li>
								<li class="divider"></li>
								<li><a href="javascript:void(0)"  onclick="resetForm()"><i class="glyphicon glyphicon-off text-center"><strong>退出博客</strong></i></a></li>
							</ul>
						</c:if>
					</div>
					<div class="navbar-form navbar-right">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="请输入想要查找的资源">
						</div>
						<button type="button" class="btn btn-primary" id="searchButton">搜索</button>
					</div>	
				</div>
			</div>
		</nav>
	</div>

	
	<!-- 登录模态框 -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">
                        <img src="static/images/login.png">
                    </h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="loginForm">
						<div class="form-group has-success has-feedback">
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon">邮箱：</span>
									<input type="email" class="form-control input-lg" id="loginEmail" name="loginEmail" iara-describedby="inputGroupSuccess2Status">
								</div>
							</div>
						</div>
						<div class="form-group has-feedback has-success">
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon">密码：</span>
									<input type="password" class="form-control input-lg" id="loginPassword" name="loginPassword" aria-describedby="inputGroupSuccess2Status">
								</div>
							</div>
						</div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" value="">记住密码
                            </label>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default btn-lg" id="resetLoginButton" onclick="resetForm()">关闭</button>
                            <button type="submit" class="btn btn-primary btn-lg" id="loginButton" onclick="login()">登录</button>
                        </div>
					</form>
				</div>

			</div>
		</div>
	</div>
	
	
	
	<!-- 注册模态框 -->
	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel1">
						<img src="static/images/register.png">
					</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="registerForm">
						<div class="form-group has-success has-feedback">
							<div class="row" style="margin-left: 0px">
								<div class="col-sm-8" id="registerEmailDiv">
									<div class="input-group" >
										<span class="input-group-addon">邮箱号码：</span>
										<input type="email" name="email" class="form-control input-lg" id="registerEmail" aria-describedby="inputGroupSuccess2Status">
									</div>
								</div>
								<div class="col-sm-2">
									<button type="submit" class="btn btn-primary btn-lg" id="submitCheckCode">发送邮箱验证码</button>
								</div>
							</div>
						</div>
						<div class="form-group has-success has-feedback">
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon">&nbsp;验&nbsp;证&nbsp;码：</span>
									<input type="text" class="form-control input-lg" id="checkCode" name="checkCode" aria-describedby="inputGroupSuccess2Status">
								</div>
							</div>
						</div>
						<div class="form-group has-success has-feedback">
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon">设置密码：</span>
									<input type="password" name="password" class="form-control input-lg" id="settingPassword" aria-describedby="inputGroupSuccess2Status">
								</div>
							</div>
						</div>
						<div class="form-group has-success has-feedback">
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon">重复密码：</span>
									<input type="password" name="repeatPassword" class="form-control input-lg" id="repeatPassword" aria-describedby="inputGroupSuccess2Status">
								</div>
							</div>
						</div>
                        <div class="modal-footer form-group">
                            <button type="button" class="btn btn-default btn-lg" id="resetRegisterButton" data-dismiss="modal" onclick="resetForm()">关闭</button>
                            <button type="submit" class="btn btn-primary btn-lg" id="registerButton" >注册</button>
                        </div>
					</form>
				</div>

			</div>
		</div>
	</div>

<%--
	<jsp:include page="blogList.jsp"/>
--%>


</body>

</html>