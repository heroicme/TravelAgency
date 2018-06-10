<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${basePath}manage.jsp" flush="true" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>
<script src="${basePath}layui/layui.all.js"></script>
</head>

<body>

	<!--首页  -->
	<div class="homepage">


<div id="myPInfo">
		<table class="layui-table">
			<colgroup>
				<col width="150">
				<col width="200">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th>管理员编号</th>
					<th>昵称</th>
					
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${sessionScope.adminOK.adminId}</td>
					<td>${sessionScope.adminOK.adminName}</td>
				</tr>

			</tbody>
		</table>
		<form class="layui-form" id="editMyInfo">
			<input type="hidden" name="adminId"
				value="${sessionScope.adminOK.adminId}" />
			<div class="layui-form-item">
				<label class="layui-form-label">昵称</label>
				<div class="layui-input-inline">
					<input type="text" name="adminName" class="layui-input" id="unInfo"
						value="${sessionScope.adminOK.adminName}">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">密码框</label>
				<div class="layui-input-inline">
					<input id="upInfo" value="${sessionScope.adminOK.adminPassword}"
						type="password" name="adminPassword" class="layui-input">
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

























	</div>



























<script type="text/javascript"
		src="${basePath}static/js/jquery-1.12.4.min.js"></script>
	

	<!-- 必须等Html全部加载后进行渲染 -->
	<script src="${basePath}layui/layui.all.js"></script>
	<!-- 必须等Html全部加载后进行渲染 -->
	<script src="${basePath}layui/myjs/adminInfo.js"></script>
</body>
</html>
