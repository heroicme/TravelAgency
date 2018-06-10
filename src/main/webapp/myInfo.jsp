<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>我的资料</title>
<link rel="stylesheet" href="${basePath}layui/css/layui.css">
<link rel="stylesheet" href="${basePath}layui/mycss/mycss.css">

</head>

<body>



	<div class="heard"></div>
	<!-- 横向导航 -->
	<ul class="layui-nav ">
		<li class="layui-nav-item "><a href="home">首页</a></li>

		<li class="layui-nav-item "><a href="javascript:;"><i
				class="layui-icon" style="font-size: 20px; color: write;">&#xe63c;</i>我的订单</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="seeOrder?userNumber=${sessionScope.userOK.userId}">旅游订单</a>
				</dd>


			</dl></li>
		<li class="layui-nav-item "><a href="javascript:;"><i
				class="layui-icon" style="font-size: 20px; color: write;">&#xe612;</i>个人中心</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">个人资料</a>
				</dd>
				<dd>
					<a href="javascript:;">密码修改</a>
				</dd>

			</dl></li>


		<li class="layui-nav-item "><a href="javascript:;"><i
				class="layui-icon" style="font-size: 20px; color: write;">&#xe735;</i>我的支付</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="${basePath}account.jsp">现金账户</a>
				</dd>

			</dl></li>



		<c:if test="${sessionScope.userOK==null}">
			<li id="userID" class="layui-nav-item layui-icon placeholder2">
				<a href="login"> &#xe612;你好，请登录</a>
			</li>
			<li class="layui-nav-item layui-icon"><a href="login">&#xe6b2;注册</a></li>

		</c:if>

		<c:if test="${sessionScope.userOK!=null}">
			<li class="layui-nav-item layui-icon placeholder2">&#xe612;你好，${sessionScope.userOK.userName}</li>
			<li class="layui-nav-item "><a href="javascript:;">我的嗨浙</a>
				<dl class="layui-nav-child">
					<dd>
						<a class=" layui-icon  "
							href="seeOrder?userNumber=${sessionScope.userOK.userId}">&#xe63c;订单</a>
					</dd>
					<dd>
						<a class=" layui-icon " href="${basePath}account.jsp">&#xe705;我的支付</a>
					</dd>
					<!-- <dd>
						<a class=" layui-icon " href="javascript:;">&#xe705;我的游记</a>
					</dd> -->
					<dd>
						<a class=" layui-icon " href="out">&#xe6b2;退出</a>
					</dd>
				</dl></li>

		</c:if>



	</ul>



	<div id="myPInfo">
		<table class="layui-table">
			<colgroup>
				<col width="150">
				<col width="200">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th>用户编号</th>
					<th>昵称</th>
					<th>性别</th>
					<th>邮箱</th>
					<th>登录情况</th>
					<th>VIP等级</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${sessionScope.userOK.userId}</td>
					<td>${sessionScope.userOK.userName}</td>
					<td>${sessionScope.userOK.gender}</td>
					<td>${sessionScope.userOK.email}</td>
					<td>${sessionScope.userOK.loginTime}</td>
					<td>${sessionScope.userOK.grade}</td>
				</tr>

			</tbody>
		</table>
		<form class="layui-form" id="editMyInfo">
			<input type="hidden" name="userId"
				value="${sessionScope.userOK.userId}" /> <input type="hidden"
				name="loginTime" value="${sessionScope.userOK.loginTime}" /> <input
				type="hidden" name="grade" value="${sessionScope.userOK.grade}" />
			<div class="layui-form-item">
				<label class="layui-form-label">昵称</label>
				<div class="layui-input-inline">
					<input type="text" name="userName" class="layui-input" id="unInfo"
						value="${sessionScope.userOK.userName}">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">密码框</label>
				<div class="layui-input-inline">
					<input id="upInfo" value="${sessionScope.userOK.userPassword}"
						type="password" name="userPassword" class="layui-input">
				</div>

			</div>

			<div class="layui-form-item">
				<label class="layui-form-label">邮箱</label>
				<div class="layui-input-inline">
					<input id="emInfo" value="${sessionScope.userOK.email}" type="text"
						name="email" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">性别</label>
				<div class="layui-input-inline">
					<input type="radio" name="gender" checked="checked" value="男"
						class="layui-input">男 <input type="radio" name="gender"
						value="女" class="layui-input">女
				</div>
			</div>

			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn " type="button" id="submitMyInfo">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>


	</div>






















	<script type="text/javascript"
		src="${basePath}static/js/jquery-1.12.4.min.js"></script>

	<script src="${basePath}layui/myjs/myInfo.js"></script>
	<script src="${basePath}layui/layui.all.js"></script>

</body>
</html>

