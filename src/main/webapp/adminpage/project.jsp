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
			<div class="layui-inline">
				<button id="addProjectM" type="button"
					class="layui-btn layui-btn-normal usersAdd_btn">添加项目</button>
			</div>
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
					<th>项目价格(元)</th>
					<th>所属城市编号</th>
					<th>销售量</th>
					<th>供应商</th>

					<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作</th>
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


	<!-- 查看产品项目modal -->
	<div class="modal fade" id="projectModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">游玩套餐修改框:</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">

						<form id="productForm">
							<input id="PID" type="hidden" name="productId" /> 图片地址<input
								id="1" name="imgPath" type="text"
								class="col-sm-12 control-label " /><br /> 项目标题<input id="2"
								name="productName" type="text" class="col-sm-12 control-label " /><br />
							价格(元)<input id="3" name="price" type="text"
								class="col-sm-12 control-label " /><br /> 项目描述<input id="4"
								name="productDesc" type="text" class="col-sm-12 control-label " /><br />
							项目类型<input id="5" name="type" type="text"
								class="col-sm-12 control-label " /><br />
						</form>

					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="close">关闭</button>
					<button type="button" class="btn btn-default" id="save">保存</button>
					<!-- <button type="button" class="btn btn-primary" id="pay"><a href="">确定付款</a></button> -->
				</div>
			</div>
		</div>
	</div>

	<!-- 添加产品项目modal -->
	<div class="modal fade" id="addprojectModal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">新建项目:</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">

<!-- 添加项目的表单 -->
						<form class="layui-form" id="addProjectForm">
							<div class="layui-form-item">
								<label class="layui-form-label">命名</label>
								<div class="layui-input-block">
									<input  id="PN"  type="text" name="productName" 
										placeholder="请输入产品名称(与其他已有不同命)"  class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<label    class="layui-form-label">价格</label>
								<div   class="layui-input-block">
									<input id="PP" type="text" name="price" 
										placeholder="请输入产品价格(元)"  class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">类型</label>
								<div    class="layui-input-block">
									<input id="PT" type="text" name="type" 
										placeholder="请输入产品类型"  class="layui-input">
								</div>
							</div>
                            <div class="layui-form-item">
								<label class="layui-form-label">地址 </label>
								<div    class="layui-input-block">
									<input  id="PPath" type="text" name="imgPath" 
										placeholder="请输入图片地址"  class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">区域</label>
								<div class="layui-input-block">
									<select name="cityNum" id="cityList"  >
									<option value="0576" >台州</option>
									<option value="0571" >杭州</option>
									<option value="0573" >嘉兴</option>
									<option value="0580" >舟山</option>
									<option value="0574" >宁波</option>
									<option value="0575" >绍兴</option>
									<option value="0572" >湖州</option>
									<option value="0577" >温州</option>
									<option value="0579" >金华</option>
									<option value="0578" >丽水</option>
									<option value="0570" >衢州</option>
									</select>
								</div>
							</div>



							<div class="layui-form-item layui-form-text">
								<label class="layui-form-label">描述</label>
								<div   class="layui-input-block">
									<textarea id="PDesc"   name="productDesc" placeholder="请对产品进行描述"
										class="layui-textarea"></textarea>
								</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-input-block">
									<button   id="addPro" type="button" class="layui-btn" >立即提交</button>
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
	

<script src="${basePath}layui/myjs/backstage_project.js"></script>
<script src="${basePath}layui/layui.all.js"></script>

</body>
</html>
