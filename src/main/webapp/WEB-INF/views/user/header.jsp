<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>博客导航栏</title>

    <script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="${APP_PATH}/static/bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="${APP_PATH}/static/bootstrap/js/bootstrap.min.js"></script>
    <script charset="UTF-8" type="text/javascript" src="${APP_PATH}/static/js/register.js"></script>
</head>

<body style="background: #FFFFFF">
	<div>
		<nav class="navbar navbar-fixed-top navbar-inverse">
			<div class="container"  style="text-align:center">
				<div class="navbar-header">
					<a class="active navbar-brand" href="main">SSM-Blog首页</a>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="test">博客频道<span class="sr-only"></span></a></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">资源下载<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
						<li><a href="#">网站用户地图</a></li>
						<li><a href="#">时间轴</a></li>
					</ul>
					<div class="navbar-form navbar-right">		
					 ${sessionScope.blogUser.email}
						<!-- 如果用户登录之后隐藏这两个按钮 -->
 						<c:if test="${empty sessionScope.blogUser.email}">
 							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#loginModal" id="loginBtn">登录</button>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#registerModal" id="resBtn">注册</button>		
						</c:if>
						<c:if test="${not empty sessionScope.blogUser.email}">
							<button class="button_round dropdown-toggle" data-toggle="dropdown"><img src="static/images/timg.jpg" style="width:40px"></button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="personalPage" ><i class="glyphicon glyphicon-user"><strong>个人主页</strong></i></a></li>
								<li class="divider"></li>
								<li><a href="#"><i class="glyphicon glyphicon-cog"><strong>资料设置</strong></i></a></li>
								<li class="divider"></li>
								<li><a href="writeBlog"><i class="glyphicon glyphicon-pencil"><strong>发表博客</strong></i></a></li>
								<li class="divider"></li>
								<li><a href="#"><i class="glyphicon glyphicon-off"><strong>退出博客</strong></i></a></li>
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
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel"><img src="static/images/login.jpg"></h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="loginForm">
						<div class="form-group  has-feedback" id="divemail">
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon">邮箱：</span>
									<input type="text" class="form-control input-lg" id="loginEmail" name="loginEmail" iara-describedby="inputGroupSuccess2Status">
								</div>
								<span class="glyphicon form-control-feedback" aria-hidden="true" id="spanemail"></span>
								<span id="checkLoginEmail" class="sr-only"></span>
							</div>
						</div>
						<div class="form-group has-feedback" id="divpassword">
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon">密码：</span>
									<input type="password" class="form-control input-lg" id="loginPassword" name="loginPassword" aria-describedby="inputGroupSuccess2Status">
								</div>
								<span class="glyphicon form-control-feedback" aria-hidden="true" id="spanpassword"></span>
								<span id="checkLoginPassword" class="sr-only">(success)</span>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="reset" class="btn btn-default btn-lg" id="resetLoginButton">重置</button>
					<button type="button" class="btn btn-primary btn-lg" id="loginButton">登录</button>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<!-- 注册模态框 -->
	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel1">
						<img src="static/images/register.jpg">
					</h4>
				</div>
				<div class="modal-body" id="registerForm">
					<form class="form-horizontal" >
						<div class="form-group has-success has-feedback">
							<div class="row" style="margin-left: 0px">
								<div class="col-sm-8" id="registerEmailDiv">
									<div class="input-group" >
										<span class="input-group-addon">邮箱号码：</span>
										<input type="email" class="form-control input-lg" id="registerEmail" aria-describedby="inputGroupSuccess2Status">
									</div>
									<span class="form-control-feedback" aria-hidden="false"></span>
									<span id="checkRegisterEmail" class="sr-only">(success)</span>
								</div>
								<div class="col-sm-2">
									<button type="button" class="btn btn-primary btn-lg" id="submitCheckCode">发送邮箱验证码</button>
								</div>
							</div>
						</div>
						<div class="form-group has-success has-feedback">
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon">&nbsp;验&nbsp;证&nbsp;码：</span>
									<input type="text" class="form-control input-lg" id="checkCode" aria-describedby="inputGroupSuccess2Status">
								</div>
								<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
								<span id="ccheckCode" class="sr-only">(success)</span>
							</div>
						</div>
						<div class="form-group has-success has-feedback">
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon">设置密码：</span>
									<input type="password" class="form-control input-lg" id="settingPassword" aria-describedby="inputGroupSuccess2Status">
								</div>
								<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
								<span id="checkSettingPassword" class="sr-only">(success)</span>
							</div>
						</div>
						<div class="form-group has-success has-feedback">
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon">重复密码：</span>
									<input type="password" class="form-control input-lg" id="repeatPassword" aria-describedby="inputGroupSuccess2Status">
								</div>
								<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
								<span id="checkRepeatPassword" class="sr-only">(success)</span>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="reset" class="btn btn-default btn-lg" id="resetRegisterButton">重置</button>
					<button type="button" class="btn btn-primary btn-lg" id="registerButton">注册</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>