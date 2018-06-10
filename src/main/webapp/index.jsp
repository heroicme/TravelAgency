<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%--   <base href="<%=basePath%>"> --%>
<!-- 	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
	 -->
<title>嗨浙旅游官网</title>
<!--layui静态资源  -->
<link rel="stylesheet" href="${basePath}layui/css/layui.css">
<link rel="stylesheet" href="${basePath}layui/mycss/mycss.css">

<script src="${basePath}layui/jquery/jquery-1.7.2.min.js"></script>
<!--layui静态资源  -->
</head>
<body>
	<!-- 网站top部分 -->
	<div class="heard ">
		<div class="logo"></div>
		<div class="serch">


			<input class="serchbox" type="text" id="serchValue"></input>
			<div class="serchbutton">
				<button  id="serchButton"  type="button" class="layui-btn layui-icon layui-btn-lg layui-btn-normal">&#xe615;</button>
			</div>

		</div>
		<!-- 	<div class="login">
			<button class="layui-icon" style="font-size: 30px ">&#xe612;登录</button> 
			
			<button  class="layui-icon" style="font-size: 30px">&#xe6b2;注册</button>
		</div> -->
	</div>
	<ul class="layui-nav " lay-filter="">
	<li class="layui-nav-item placeholder layui-icon"><a
			href="home">&#xe715;首页</a></li>
		<li class="layui-nav-item "><a href="javascript:;">城市</a>
			<dl class="layui-nav-child">
				<!-- 二级菜单 -->
				<dd>
					<a href="getCityInfo?cityTn=0571">杭州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0576">台州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0573">嘉兴</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0580">舟山</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0574">宁波</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0575">绍兴</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0572">湖州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0577">温州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0579">金华</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0578">丽水</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0570">衢州</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item  placeholder1 layui-icon"><a
			href="allProducts">&#xe64a;游玩套餐</a>
			<dl class="layui-nav-child">
				<!-- 二级菜单 -->
				<dd>
					<a href="product?cityNum=0571">杭州</a>
				</dd>
				<dd>
					<a href="product?cityNum=0576">台州</a>
				</dd>
				<dd>
					<a href="product?cityNum=0573">嘉兴</a>
				</dd>
				<dd>
					<a href="product?cityNum=0580">舟山</a>
				</dd>
				<dd>
					<a href="product?cityNum=0574">宁波</a>
				</dd>
				<dd>
					<a href="product?cityNum=0575">绍兴</a>
				</dd>
				<dd>
					<a href="product?cityNum=0572">湖州</a>
				</dd>
				<dd>
					<a href="product?cityNum=0577">温州</a>
				</dd>
				<dd>
					<a href="product?cityNum=0579">金华</a>
				</dd>
				<dd>
					<a href="product?cityNum=0578">丽水</a>
				</dd>
				<dd>
					<a href="product?cityNum=0570">衢州</a>
				</dd>
			</dl>
			
			
			
			
			</li>
		<li class="layui-nav-item  layui-icon placeholder1"><a href="javascript:;">&#xe630;景点</a>
		<dl class="layui-nav-child">
				<!-- 二级菜单 -->
				<dd>
					<a href="getCityInfo?cityTn=0571">杭州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0576">台州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0573">嘉兴</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0580">舟山</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0574">宁波</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0575">绍兴</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0572">湖州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0577">温州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0579">金华</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0578">丽水</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0570">衢州</a>
				</dd>
			</dl>
		
		
		</li>
		<li class="layui-nav-item layui-icon placeholder1"><a href="javascript:;">&#xe6fc;娱乐</a>
		
		<dl class="layui-nav-child">
				<!-- 二级菜单 -->
				<dd>
					<a href="getCityInfo?cityTn=0571">杭州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0576">台州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0573">嘉兴</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0580">舟山</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0574">宁波</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0575">绍兴</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0572">湖州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0577">温州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0579">金华</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0578">丽水</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0570">衢州</a>
				</dd>
			</dl>
		
		</li>

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
						<a class=" layui-icon  "href="seeOrder?userNumber=${sessionScope.userOK.userId}">&#xe63c;订单</a>
					</dd>
					<dd>
						<a class=" layui-icon " href="${basePath}account.jsp">&#xe705;我的支付</a>
					</dd>
					
					<dd>
						<a class=" layui-icon " href="out">&#xe6b2;退出</a>
					</dd>
				</dl></li>

		</c:if>
	</ul>







	<!-- 必须等Html全部加载后进行渲染 -->
	<script src="${basePath}layui/layui.all.js"></script>
	<!-- 必须等Html全部加载后进行渲染 -->
	<!-- layui的渲染jquery -->
	<script>

</script>
	<!-- layui的渲染jquery -->



	<script src="${basePath}layui/myjs/homepage.js"></script>
<script src="${basePath}layui/myjs/serch.js"></script>


</body>
</html>
