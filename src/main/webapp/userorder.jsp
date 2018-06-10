<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!-- 获取请求参数 实现get请求分页-->
<%
	String as = request.getQueryString();
	String my = as;
	String myparam = null;
	String[] mp = my.split("&");
	myparam = "seeOrder?" + mp[0] + "&pn=";
	request.setAttribute("myparam", myparam);
%>






<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>嗨浙用户订单</title>
<link rel="stylesheet" href="${basePath}layui/css/layui.css">

<link
	href="${basePath}static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
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

					<dd>
						<a class=" layui-icon " href="out">&#xe6b2;退出</a>
					</dd>
				</dl></li>

		</c:if>

	</ul>
	<!-- 横向导航 -->

	<!-- 侧栏导航 -->
	<!-- <div class="userwrap">
		<div class="userbox">
			<ul class="layui-nav layui-nav-tree " lay-filter="test">
			</ul>
		</div>
	</div> -->






	<!-- 信息显示 -->
	<div class="userorderinfo">



		<table class="layui-table">
			<thead>
				<tr>
					<th></th>
					<th></th>
					<th>订单ID</th>
					<th>订单信息</th>
					<th>出发地点</th>
					<th>出发时间</th>
					<th>联系电话</th>
					<th>联系人</th>
					<th>付款金额</th>
					<th>订单状态</th>
					<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作</th>
				</tr>
			</thead>
			<tbody>
				<!--pageInfo.list 取出所有用户订单  -->
				<c:forEach items="${ pageInfo.list}" var="order">
					<tr>
						<td><input type="checkbox" /></td>
						<td><img src="${order.imgPath} " /></td>
						<td>${order.orderId}</td>
						<td>${order.orderTitle}</td>
						<td>${order.current }</td>
						<td>${order.goTime }</td>
						<td>${order.phone }</td>
						<td>${order.name}</td>
						<td id="payMoney">${order.totalPrice}</td>
						<td>${order.orderStatus}</td>
						<td><c:if test="${order.orderStatus=='未付款'}">


								<a href="order?payId=${order.orderId}"
									class="layui-btn layui-btn-xs"><i class="layui-icon ">&#xe608;</i>立即支付</a>
								<button statu="${order.orderStatus}" id="deleOrder"
									type="button" class="layui-btn layui-btn-xs"
									name="${order.orderId}">
									<i class="layui-icon ">&#xe608;</i>取消订单
								</button>


							</c:if> <c:if
								test="${order.orderStatus=='已付款'||order.orderStatus=='已完成'}">


								<button  name="${order.orderId}" oTitle="${order.orderTitle}" id="myComment"  type="button" class="layui-btn layui-btn-xs">
									<i class="layui-icon "  >&#xe608;</i>评价
								</button>
								<button statu="${order.orderStatus}" id="deleOrder"
									type="button" class="layui-btn layui-btn-xs"
									name="${order.orderId}">
									<i class="layui-icon ">&#xe608;</i>删除
								</button>


							</c:if></td>
					</tr>


				</c:forEach>
			</tbody>


		</table>

		<div class="layui-container">

			<div class="layui-row">
				<div class="layui-col-md6">当前第 ${pageInfo.pageNum }页,总${pageInfo.pages }
					页,总 ${pageInfo.total } 条记录</div>
				<div class="layui-col-md6">
					<div class="layui-btn-group ">
						<button class="layui-btn layui-btn-sm layui-btn-primary">
							<a href="${myparam}1">首页</a>
						</button>

						<!-- 连续显示3页码 一页8条记录 -->
						<c:forEach items="${pageInfo. navigatepageNums}" var="pageNums">
							<button class="layui-btn layui-btn-sm layui-btn-primary">
								<a href="${myparam}${pageNums}"><i class="layui-icon">${pageNums}</i></a>
							</button>
						</c:forEach>

						<button class="layui-btn layui-btn-sm layui-btn-primary">
							<a href="${myparam}${pageInfo.pages}">末页</a>
						</button>
					</div>
				</div>
			</div>


















		</div>

		<!-- 信息显示 -->


	</div>


	<!-- 评价modal -->
	<div class="modal fade" id="commentModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">我的点评</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">

					
						<form class="layui-form" id="commentForm">
						
							<div class="layui-form-item layui-form-text">
								<label class="layui-form-label">订单</label>
								<div class="layui-input-block">
									<h2 id="oTitle"></h2>
								</div>
							</div>
							<div class="layui-form-item layui-form-text">
								<label class="layui-form-label">评价</label>
								<div class="layui-input-block">
									<textarea id="comment" name="comment" placeholder="请对产品进行描述"
										class="layui-textarea"></textarea>
								</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-input-block">
									<button id="addComment" type="button" class="layui-btn">立即提交</button>
									<button type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>




















	<%-- <!-- 支付Modal -->
		<div class="modal fade" id="payModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="">
							支付订单:
							<sapn id=""></sapn>
						</h4>
					</div>
					<div class="modal-body">
					
                 <!--   <div id="payBack">支付金额(元)<h1 class="money">&nbsp;&nbsp;999 </h1></div> -->
<table class="layui-table">
			<thead>
				<tr>
					<th></th>
					<th>订单ID</th>
					<th>订单信息</th>
					<th>付款金额</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td ><img src="${order.imgPath} " id="1" /></td>
						<td id="2"></td>
						<td id="3"></td>
						<td id="4"></td>
					</tr>
			</tbody>
		</table>

						<div class="form-group"></div>
					</div>
					
					
					<div class="modal-footer">
						<button type="button" class="btn btn-default" id="close">关闭</button>
						<a class="btn btn-primary" id="" href="javaScript:;">确定支付</a>
					</div>
				</div>
			</div>
		</div>





 --%>











	<script type="text/javascript"
		src="${basePath}static/js/jquery-1.12.4.min.js"></script>

	<script
		src="${basePath}static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>


	<script src="${basePath}layui/myjs/userorder.js"></script>
	<%-- <div class="footer">
		<img src="${basePath}layui/images/footer.png" />
	</div> --%>
	<!-- 必须等Html全部加载后进行渲染 -->
	<script src="${basePath}layui/layui.all.js"></script>
	<!-- 必须等Html全部加载后进行渲染 -->
</body>
</html>
