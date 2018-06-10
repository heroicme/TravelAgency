<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="${basePath}manage.jsp" flush="true" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>查看全部用户信息</title>



</head>

<body>



	<!-- 信息显示 -->
	<div class="userorderinfo1">
		<blockquote class="layui-elem-quote news_search">
			<div class="layui-inline">
				<div class="layui-input-inline">
					<input type="text" id="serchU" placeholder="请输入用户名"
						class="layui-input search_input">
				</div>
				<a class="layui-btn search_btn"  id="serchUser">查询</a>
			</div>
			<!-- <div class="layui-inline">
				<a class="layui-btn layui-btn-normal usersAdd_btn">添加用户</a>
			</div> -->
			<!-- <div class="layui-inline">
				<a class="layui-btn layui-btn-danger batchDel">批量删除</a>
			</div> -->

		</blockquote>

		<table class="layui-table" id="user_tbl">
			<thead>
				<tr>
					<th></th>
					<th>ID</th>
					<th>用户名</th>
					<th>性别</th>
					<th>邮箱</th>
					<th>会员等级</th>
					<th>最近登录时间</th>

					<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作</th>
				</tr>
			</thead>
			<tbody>
         
          <%--  <tr> 
           
           <td><input type="checkbox" /></td>
					<td>${user.userId }</td>
					<td>${user.userName }</td>
					<td>${user.gender }</td>
					<td>${user.email }</td>
					<td>${user.grade }</td>
					<td>${user.loginTime }</td>
            
            <td>
						<button class="layui-btn layui-btn-xs">
							<i class="layui-icon">&#xe608;</i> 查看
						</button>
						<button class="layui-btn layui-btn-xs">
							<i class="layui-icon">&#xe640;</i> 删除
						</button>
					</td>
					
					
					
            </tr> --%>
            
            
            
           
            
            
            
            
            
            
            
            
            


			</tbody>


		</table>

		<div class="layui-container">

			<div class="layui-row" >
				 <div class="layui-col-md6" id="pInfo"></div> 
				<div class="layui-col-md6"  id="pnavInfo" >
				
						
						
						
						<%-- <button class="layui-btn layui-btn-sm layui-btn-primary">
							首页
						</button>
						<button class="layui-btn layui-btn-sm layui-btn-primary">
							<i class="layui-icon">&#xe603;</i>
						</button>
						
						
						
						<!-- 连续显示3页码 一页8条记录 -->
						<c:forEach items="${pageInfo. navigatepageNums}" var="pageNums">
							<button class="layui-btn layui-btn-sm layui-btn-primary">
								<i class="layui-icon">${pageNums}</i>
							</button>
						</c:forEach>
						
						
						
						
						<button class="layui-btn layui-btn-sm layui-btn-primary">
							<i class="layui-icon">&#xe602;</i>
						</button>
						<button class="layui-btn layui-btn-sm layui-btn-primary">
							<a href="javascript:;">末页</a>
						</button> --%>
					
				</div>
			</div>
		</div>

		<!-- 信息显示 -->

	</div>
	
	<div id="byMymodal" class="modalclose">
	<br/>
	<h3 id="1">用户ID</h3><br/>
	<h3 id="2">用户名称</h3><br/>
	<h3 id="3">用户性别</h3><br/>
	<h3 id="4">用户邮箱</h3><br/>
	<h3 id="5">用户等级</h3><br/>
	<h3 id="6">用户登录时间</h3><br/><br/><br/>
	
	<button  id="mymodalclose" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal" type="button">关闭</button>
	
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
<script type="text/javascript" src="${basePath}static/js/jquery-1.12.4.min.js"></script>
	
		<script src="${basePath}layui/myjs/backstage_user.js"></script>
</body>
</html>
