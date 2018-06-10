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

<title>充值页面</title>
<link rel="stylesheet" href="${basePath}layui/css/layui.css">
<link rel="stylesheet" href="${basePath}layui/mycss/mycss.css">
<script type="text/javascript" src="${basePath}static/js/jquery-1.12.4.min.js"></script>
</head>

<body>

<input  type="hidden" value=""/>

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
					<a href="${basePath}myInfo.jsp">个人资料</a>
				</dd>
				<dd>
					<a href="${basePath}myInfo.jsp">密码修改</a>
				</dd>

			</dl></li>


		<li class="layui-nav-item "><a href="javascript:;"><i
				class="layui-icon" style="font-size: 20px; color: write;">&#xe735;</i>我的支付</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">现金账户</a>
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
						<a class=" layui-icon  "href="seeOrder?userNumber=${sessionScope.userOK.userId}">&#xe63c;订单</a>
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
	<input  id="openId" type="hidden" value="${sessionScope.userOK.userId}"/>
	<!-- 横向导航 -->

	<!-- 侧栏导航 -->
	<!-- <div class="userwrap">
		<div class="userbox">
			<ul class="layui-nav layui-nav-tree " lay-filter="test">
			</ul>
		</div>
	</div> -->
	












<div class="rechargeWrap">



<form class="layui-form" id="myAccount">
<input name="accountUserId" value="${sessionScope.userOK.userId}" type="hidden"/>
 <div class="layui-form-item">
    <label class="layui-form-label">我的余额</label>
   <img src="${basePath}layui/images/zfbzf.png"/><span id="zfbM"></span>
   <img src="${basePath}layui/images/wxzf.png"/><span id="wxM"></span>
   
   </div>
 <div class="layui-form-item">
    <label class="layui-form-label">充值金额</label>
    <div class="layui-input-inline">
      <input type="text" name="accountMoney"  placeholder="请输入"  class="layui-input"/>
    </div></div>
  <div class="layui-form-item">
    <label class="layui-form-label">充值密码</label>
    <div class="layui-input-inline">
      <input type="password" name="accountPassword"  placeholder="请输入密码"  class="layui-input"/>
    </div>
   
  </div>
 
  
  
  <div class="layui-form-item">
    <label class="layui-form-label">充值方式</label>
     <div class="layui-input-block">
     <img src="${basePath}layui/images/zfbzf.png"/> <input type="radio" name="accountType" value="支付宝" checked>
    <img src="${basePath}layui/images/wxzf.png"/><input type="radio" name="accountType" value="微信" >
   </div>
  </div>
 
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn"  type="button" id="updateAccount">确定</button>
      <button  id="editPayPass"  type="button" class="layui-btn layui-btn-primary" >忘记密码</button>
    </div>
  </div>
</form> 

</div>







<!--修改支付密码  -->
<div id="byMymodal2" class="modalclose">
	<br/>

	<form class="layui-form" id="editForm">
		<input type="hidden" name="accountUserId" value="${sessionScope.userOK.userId}" />
			<div class="layui-form-item">
				<label class="layui-form-label">修改密码</label>
				<div class="layui-input-inline">
					<input  id="xiugai"  type="password" name="accountPassword"
						placeholder="请输入新密码"  class="layui-input" /> <span
						class="layui-icon" ></span>
				</div>

			</div>

			<div class="layui-form-item">
				<label class="layui-form-label">账户类别</label>
				<div class="layui-input-block">
					<input type="radio" name="accountType" value="支付宝" checked><img
						src="${basePath}layui/images/zfbzf.png" /> <input type="radio"
						name="accountType" value="微信"><img
						src="${basePath}layui/images/wxzf.png" />
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label"></label>
				<div class="layui-input-block">
<button   id="updatePassword" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal" type="button">确定</button>
	
<button   id="mymodalclose" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal" type="button">关闭</button>


</div></div>

		</form>
	
	
	
	
	</div>











<script src="${basePath}layui/myjs/account.js"></script>

	<script src="${basePath}layui/layui.all.js"></script>

</body>
</html>
