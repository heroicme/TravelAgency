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

<c:if test="${sessionScope.adminOK!=null }">
		<div class="panel_box row">
			<div class="panel col">
				 <a href="${basePath}adminpage/order.jsp">
				<div class="panel_icon">
						<i class="layui-icon" data-icon="&#xe63a;">&#xe63a;</i>
					</div>
					<div class="panel_word newMessage">
						<span></span> <cite>管理订单</cite>
					</div>
				</a> 
			</div>
			<div class="panel col">
				 <a href="${basePath}adminpage/user.jsp"> 
			 	
					<div class="panel_icon" style="background-color:#FF5722;">
						<i class="iconfont icon-dongtaifensishu"
							data-icon="icon-dongtaifensishu"></i>
					</div>
					<div class="panel_word userAll">
						<span></span> <cite>管理用户</cite>
					</div>
				 </a> 
			</div>

			<div class="panel col">
				 <a href="${basePath}adminpage/project.jsp"> 
					<div class="panel_icon" style="background-color:#5FB878;">
						<i class="layui-icon" data-icon="&#xe64a;">&#xe64a;</i>
					</div>
					<div class="panel_word imgAll">
						<span></span> <cite>管理项目</cite>
					</div>
				</a> 
			</div>
			<div class="panel col">
				 <a href="${basePath}adminpage/article.jsp"> 
					<div class="panel_icon" style="background-color:#F7B824;">
						<i class="iconfont icon-wenben" data-icon="icon-wenben"></i>
					</div>
					<div class="panel_word waitNews">
						<span></span> <cite>通知公告</cite>
					</div>
				 </a> 
			</div>

		</div>



</c:if>





	</div>




























	

	<!-- 必须等Html全部加载后进行渲染 -->
	<script src="${basePath}layui/layui.all.js"></script>
	<!-- 必须等Html全部加载后进行渲染 -->
</body>
</html>
