<%-- <%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
   
	<link rel="stylesheet" href="${basePath}layui/mycss/font_eolqem241z66flxr.css" media="all" />
	<link rel="stylesheet" href="${basePath}layui/mycss/main.css" media="all" />
    <link rel="stylesheet" href="${basePath}layui/css/layui.css">
<link rel="stylesheet" href="${basePath}layui/mycss/mycss.css">
	
  </head>
  
  <body class="">
	<div class="panel_box row">
		<div class="panel col">
			<a href="${basePath}adminpage/order.jsp">
				<div class="panel_icon">
					<i class="layui-icon" data-icon="&#xe63a;">&#xe63a;</i>
				</div>
				<div class="panel_word newMessage">
					<span></span>
					<cite>管理订单</cite>
				</div>
			</a>
		</div>
		<div class="panel col">
			<a href="${basePath}adminpage/user.jsp" >
				<div class="panel_icon" style="background-color:#FF5722;">
					<i class="iconfont icon-dongtaifensishu" data-icon="icon-dongtaifensishu"></i>
				</div>
				<div class="panel_word userAll">
					<span></span>
					<cite>管理用户</cite>
				</div>
			</a>
		</div>
		<div class="panel col">
			<a href="javascript:;" >
				<div class="panel_icon" style="background-color:#009688;">
					<i class="layui-icon" data-icon="&#xe613;">&#xe613;</i>
				</div>
				<div class="panel_word userAll">
					<span></span>
					<cite>功能未定</cite>
				</div>
			</a>
		</div>
		<div class="panel col">
			<a href="${basePath}adminpage/project.jsp" >
				<div class="panel_icon" style="background-color:#5FB878;">
					<i class="layui-icon" data-icon="&#xe64a;">&#xe64a;</i>
				</div>
				<div class="panel_word imgAll">
					<span></span>
					<cite>管理项目</cite>
				</div>
			</a>
		</div>
		<div class="panel col">
			<a href="${basePath}adminpage/article.jsp" >
				<div class="panel_icon" style="background-color:#F7B824;">
					<i class="iconfont icon-wenben" data-icon="icon-wenben"></i>
				</div>
				<div class="panel_word waitNews">
					<span></span>
					<cite>管理文章</cite>
				</div>
			</a>
		</div>
		<div class="panel col max_panel">
			<a href="javascript:;" >
				<div class="panel_icon" style="background-color:#2F4056;">
					<i class="iconfont icon-text" data-icon="icon-text"></i>
				</div>
				<div class="panel_word allNews">
					<span></span>
					<em>功能未定</em>
					<cite>文章列表</cite>
				</div>
			</a>
		</div>
	</div>
	
	

	<!-- 必须等Html全部加载后进行渲染 -->
	
	<script src="${basePath}layui/layui.all.js"></script>
	<!-- 必须等Html全部加载后进行渲染 -->
	
</body>
</html> --%>