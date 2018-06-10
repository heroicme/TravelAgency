<%@ page language="java" import="java.util.*"
		 contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<jsp:include page="${basePath}manage.jsp" flush="true" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">

	<title>My JSP 'order.jsp' starting page</title>


</head>

<body>

<!-- 信息显示 -->
<div class="userorderinfo1">
	<blockquote class="layui-elem-quote news_search">
		<div class="layui-inline">
			<div class="layui-input-inline">
				<input type="text" id="serchOrderName" placeholder="请输入订单名"
					   class="layui-input search_input">
			</div>
			<a class="layui-btn search_btn" id="serchOrder">查询</a>
		</div>
		<!-- <div class="layui-inline">
            <a class="layui-btn layui-btn-normal usersAdd_btn">批量审核</a>
        </div>
        <div class="layui-inline">
            <a class="layui-btn layui-btn-danger batchDel">批量删除</a>
        </div> -->
	</blockquote>

	<table class="layui-table" id="order_tbl">
		<thead>
		<tr>
			<th></th>
			<th>ID</th>
			<th>订单图片</th>
			<th>订单标题</th>
			<th>下单用户ID</th>
			<th>付款金额</th>
			<th>订单状态</th>
			<th>下单时间</th>
			<th>联系人</th>
			<th>电话</th>
			<th>出发时间</th>
			<th>出发地点</th>
			<th>人数</th>
			<th>用户评价</th>
			<th>操作</th>

		</tr>
		</thead>
		<tbody>


		<tr>

		</tr>





		</tbody>


	</table>

	<div class="layui-container">

		<div class="layui-row">
			<div class="layui-col-md6" id="pInfo"></div>
			<div class="layui-col-md6" id="pnavInfo"></div>
		</div>
	</div>






















	<!-- 信息显示 -->
	<script type="text/javascript"
			src="${basePath}static/js/jquery-1.12.4.min.js"></script>

	<script src="${basePath}layui/myjs/backstage_order.js"></script>
</div>
</body>
</html>
