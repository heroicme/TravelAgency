<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>嗨浙后台管理</title>
<link rel="stylesheet"  href="${basePath}layui/css/layui.css">
<link rel="stylesheet"  href="${basePath}layui/mycss/mycss.css">
<link rel="stylesheet"  href="${basePath}layui/mycss/font_eolqem241z66flxr.css" media="all" />
<link rel="stylesheet"  href="${basePath}layui/mycss/main.css" media="all" />
</head>

<body>
	
	<!-- 横向导航 -->
	<ul class="layui-nav ">
		<li class="layui-nav-item "><a href="${basePath}adminpage/managemain.jsp">嗨浙后台管理</a></li>
       
			<c:if test="${sessionScope.adminOK==null}">
			<li id="adminID" class="layui-nav-item layui-icon placeholder2">
				<a href="login"> &#xe612;你好，请登录</a>
			</li>
			
		</c:if>

		<c:if test="${sessionScope.adminOK!=null}">
			<li class="layui-nav-item layui-icon placeholder6">&#xe612;管理员:${sessionScope.adminOK.adminName}

				<dl class="layui-nav-child">

					<dd>
						<a class=" layui-icon  "href="${basePath}adminpage/adminInfo.jsp">&#xe63c;个人资料</a>
					</dd>
					<dd>
						<a class=" layui-icon " href="${basePath}adminpage/adminInfo.jsp">&#xe705;修改密码</a>
					</dd>
					
					<dd>
						<a class=" layui-icon " href="adminOut">&#xe6b2;退出</a>
					</dd>
				</dl></li>
		</c:if>

	</ul>
	<!-- 横向导航 -->

	<!-- 侧栏导航 -->
	<div class="userwrap">
	
	
	<%-- <div class="wblogo layui-anim layui-anim-fadein"><img  class="adapt"src="${basePath}layui/images/adminlogo.png"/></div> --%>
	
	
		<div class="userbox">
			<ul class="layui-nav layui-nav-tree " lay-filter="test">

				<li class="layui-nav-item layui-nav-itemed"><a
					href="${basePath}adminpage/managemain.jsp"><i class="layui-icon"
						style="font-size: 20px; color: write;">&#xe63c;</i>后台首页</a></li>
				<li class="layui-nav-item layui-nav-itemed"><a
					href="javascript:;"><i class="layui-icon"
						style="font-size: 20px; color: write;">&#xe612;</i>个人中心</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="${basePath}adminpage/adminInfo.jsp">个人资料</a>
						</dd>
						<dd>
							<a href="${basePath}adminpage/adminInfo.jsp">密码设置</a>
						</dd>

					</dl></li>



				<li class="layui-nav-item layui-nav-itemed"><a
					href="javascript:;"><i class="layui-icon"
						style="font-size: 20px; color: write;">&#xe63b;</i>系统参数</a></li>
			</ul>
		</div>
	</div>

	<!-- 侧栏导航 -->






























	<%-- <div class="footer">
		<img src="${basePath}layui/images/footer.png" />
	</div> --%>
	<!-- 必须等Html全部加载后进行渲染 -->
	<script src="${basePath}layui/layui.all.js"></script>
	<!-- 必须等Html全部加载后进行渲染 -->
</body>
</html>
