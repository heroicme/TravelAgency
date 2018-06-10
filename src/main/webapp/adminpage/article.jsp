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

<title>My JSP 'project.jsp' starting page</title>
<link
	href="${basePath}static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">


</head>

<body>

	<!-- 信息显示 -->
	<div class="userorderinfo1">



		<blockquote class="layui-elem-quote news_search">
			<div class="layui-inline">
				<div class="layui-input-inline">
					<input type="text" id="serchP" placeholder="请输入项目名称"
						class="layui-input search_input">
				</div>
				<button type="button" class="layui-btn search_btn" id="serchProduct">查询</button>
			</div>
			<!-- <div class="layui-inline">
				<button id="addProjectM" type="button"
					class="layui-btn layui-btn-normal usersAdd_btn">添加项目</button>
			</div> -->
			<!-- <div class="layui-inline">
				<a class="layui-btn layui-btn-danger batchDel">批量删除</a>
			</div> -->

		</blockquote>



		<table class="layui-table" id="product_tbl">
			<thead>
				<tr>
					<th></th>
					<th>ID</th>
					<th>项目图片</th>
					<th>项目标题</th>
					

					<th>通知公告</th>
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

	</div>


	<!-- 查看产品通知公告modal -->
	<div class="modal fade" id="projectModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">通知公告:</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">

					<form class="layui-form" id="commentForm">
					 <input  id="tipId"  type="hidden" name="tipId" /> 
					
					
					<div class="layui-form-item layui-form-text">
								<label class="layui-form-label">特色</label>
								<div class="layui-input-block">
									<textarea id="feature" name="feature" placeholder="请对产品特色进行描述"
										class="layui-textarea"></textarea>
								</div>
							</div>
							<div class="layui-form-item layui-form-text">
								<label class="layui-form-label">线路</label>
								<div class="layui-input-block">
									<textarea id="pDesc" name="pDesc" placeholder="请对产品线路描述"
										class="layui-textarea"></textarea>
								</div>
							</div>
						<div class="layui-form-item layui-form-text">
								<label class="layui-form-label">费用</label>
								<div class="layui-input-block">
									<textarea id="cost" name="cost" placeholder="请对产品费用描述"
										class="layui-textarea"></textarea>
								</div>
							</div>
							
							<div class="layui-form-item layui-form-text">
								<label class="layui-form-label">须知</label>
								<div class="layui-input-block">
									<textarea id="notice" name="notice" placeholder="请对产品须知描述"
										class="layui-textarea"></textarea>
								</div>
							</div>
							
							<div class="layui-form-item layui-form-text">
								<label class="layui-form-label">游客评论</label>
								<div class="layui-input-block">
									<textarea id="ordercomment" name="comment" placeholder="游客评论"
										class="layui-textarea"></textarea>
								</div>
							</div>
							
							
							
							
							
							
							
							
							<div class="layui-form-item">
								<div class="layui-input-block">
									<button id="addDesc" type="button" class="layui-btn">立即提交</button>
									<button type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</div>
						</form>

					</div>

				</div>
				
			</div>
		</div>
	</div>

	





	<!-- 信息显示 -->
	<script type="text/javascript"
		src="${basePath}static/js/jquery-1.12.4.min.js"></script>
	<script
		src="${basePath}static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	

<script src="${basePath}layui/myjs/article.js"></script>
<script src="${basePath}layui/layui.all.js"></script>

</body>
</html>