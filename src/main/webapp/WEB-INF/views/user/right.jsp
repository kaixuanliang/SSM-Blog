<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>右侧公告栏</title>

	<%
		pageContext.setAttribute("APP_PATH", request.getContextPath());
	%>

	<script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.1.1.min.js"></script>
	<link rel="stylesheet" href="${APP_PATH}/static/bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="${APP_PATH}/static/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${APP_PATH}/static/css/my.css">
</head>
<body class="inner-container">
	<table class="table table-bordered" style="width: 270px;">
		<tr>
			<td style="background: #3D4450">
				<strong>
					<font color="#FFFFFF">公告</font>
				</strong>
			</td>
		</tr>
		<tr>
			<td style="background: #FFFFFF">
				<font color="green">为了维护博客良好的秩序，请大家不要发表不适言论</font>
			</td>
		</tr>
	</table>
	<table class="table table-bordered" style="width: 270px; margin-bottom: 50px">
		<tr>
			<td style="background: #3D4450">
				<strong>
					<font color="#FFFFFF">开发者简介</font>
				</strong>
			</td>
		</tr>
		<tr>
			<td style="background: #FFFFFF">姓名：老梁</td>
		</tr>
		<tr>
			<td style="background: #FFFFFF">职业：软件开发工程师</td>
		</tr>
		<tr>
			<td style="background: #FFFFFF">QQ：2926996881</td>
		</tr>
		<tr>
			<td style="background: #FFFFFF">邮箱：liangkaixuan996@qq.com</td>
		</tr>
		<tr>
			<td style="background: #FFFFFF; text-align: center">微信公众号
				<img src="static/images/wechat.jpg" style="width: 220px">
			</td>
		</tr>
	</table>
</body>
</html>