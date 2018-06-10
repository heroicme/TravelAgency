<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	java.util.Date currentTime = new java.util.Date();//得到当前系统时间  

	String str_date1 = formatter.format(currentTime); //将日期时间格式化  
	String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式  
	request.setAttribute("time", str_date1);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="${basePath}index.jsp" flush="true"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>预定页面</title>
<script type="text/javascript"
	src="${basePath}static/js/jquery-1.12.4.min.js"></script>
<link
	href="${basePath}static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${basePath}static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>

<body>

	<div class="reserve">
		<div class="reservewrap">


			<div class="reservetitle">
				<span>${pro.productName}</span>
			</div>


			<div class="reserveleft">
				<img src="${pro.imgPath}" />
			</div>

			<div class="reserveright">

				<div class="layui-row">
					<div class="layui-col-md3 layui-icon ">
						价格&#xe65e;<span>${pro.price }</span>
					</div>
					<div class="layui-col-md4 layui-icon">
						销售量<span>${pro.sales} </span>
					</div>
					<div class="layui-col-md4 layui-icon">
						满意度 :<span>${pro.satisfaction} </span>
					</div>
				</div>

			</div>


			<form id="userOrder">
				<input type="hidden" name="orderStatus" value="未付款" /> <input
					type="hidden" name="imgPath" value="${pro.imgPath}" /> <input
					id="payTime" type="hidden" name="orderTime" value="${time}" /> <input
					type="hidden" name="orderTitle" value="${pro.productName}" /> <input
					type="hidden" name="totalPrice" value="${pro.price}" /> <input
					type="hidden" name="userNumber"
					value="${sessionScope.userOK.userId}" id="loginId" />
				<div class="reservedate">
					出发日期: <input type="text" id="test1" name="goTime" /> 出发人数：<input
						type="text" id="oNums" name="goNums" /> 出发城市: <select
						name="current">
						<option value="台州">&nbsp;&nbsp;&nbsp;台州&nbsp;&nbsp;&nbsp;</option>
						<option value="杭州">&nbsp;&nbsp;&nbsp;杭州&nbsp;&nbsp;&nbsp;</option>
						<option value="嘉兴">&nbsp;&nbsp;&nbsp;嘉兴&nbsp;&nbsp;&nbsp;</option>
						<option value="宁波">&nbsp;&nbsp;&nbsp;宁波&nbsp;&nbsp;&nbsp;</option>
						<option value="绍兴">&nbsp;&nbsp;&nbsp;绍兴&nbsp;&nbsp;&nbsp;</option>
						<option value="温州">&nbsp;&nbsp;&nbsp;温州&nbsp;&nbsp;&nbsp;</option>
						<option value="舟山">&nbsp;&nbsp;&nbsp;舟山&nbsp;&nbsp;&nbsp;</option>
						<option value="衢州">&nbsp;&nbsp;&nbsp;衢州&nbsp;&nbsp;&nbsp;</option>
						<option value="金华">&nbsp;&nbsp;&nbsp;金华&nbsp;&nbsp;&nbsp;</option>
						<option value="丽水">&nbsp;&nbsp;&nbsp;丽水&nbsp;&nbsp;&nbsp;</option>
						<option value="湖州">&nbsp;&nbsp;&nbsp;湖州&nbsp;&nbsp;&nbsp;</option>


					</select>



				</div>

				<div class="reservesure">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 姓名:<input type="text"
						name="name" id="oName" /> 联系人电话:<input type="text" name="phone"
						id="oPhone" />
					<button id="submitOrder" class="layui-btn layui-bg-red"
						type="button">提交订单</button>

					<!-- 改成查看订单 -->
					<button id="payOrder" class="layui-btn layui-bg-red" type="button">查看订单</button>
				</div>





			</form>
		</div>


	</div>



	<!-- 确认订单Modal -->
	<div class="modal fade" id="orderModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">
						订单信息:
						<sapn id="proInfo">${pro.productName}</sapn>
					</h4>
				</div>
				<div class="modal-body">





					<div class="form-group">
						<label class="col-sm-12 control-label layui-icon">&#xe612;订单用户：${sessionScope.userOK.userName}</label><br />
						<label class="col-sm-12 control-label layui-icon">&#xe6b2;订单编号：<span
							id="2"></span></label><br /> <label
							class="col-sm-12 control-label layui-icon">&#xe611;联系姓名：<span
							id="7"></span></label><br /> <label
							class="col-sm-12 control-label layui-icon">&#xe63b;联系电话：<span
							id="6"></span></label><br /> <label
							class="col-sm-12 control-label layui-icon">&#xe62e;出发地点：<span
							id="3"></span></label><br /> <label
							class="col-sm-12 control-label layui-icon">&#xe628;出发时间：<span
							id="4"></span></label><br /> <label
							class="col-sm-12 control-label layui-icon">&#xe613;出游人数：<span
							id="5"></span></label><br /> <label
							class="col-sm-12 control-label layui-icon">&#xe65e;订单总价：<span
							id="8"></span></label>

					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="close">关闭</button>
					<a class="btn btn-primary" id="pay"
						href="seeOrder?userNumber=${sessionScope.userOK.userId}">前去付款</a>
					<!-- <button type="button" class="btn btn-primary" id="pay"><a href="">确定付款</a></button> -->
				</div>
			</div>
		</div>
		
	
	</div>
	<div class=" tips layui-tab layui-tab-card ">
  <ul class="layui-tab-title layui-bg-black" id="pTips">
    <li class="layui-this">产品特色</li>
    <li>线路介绍</li>
    <li>费用说明</li>
    <li>预定须知</li>
    <li>游客点评</li>
  </ul>
  <div class="layui-tab-content" style="height: 500px; width:50%;">
    <div class="layui-tab-item layui-show"><img src="${basePath}layui/images/productTip/feature.png"/><br/>
    
   
    
    <span class="ptip">  ${pTip.feature }</span>
    
    
    
    </div>
    <div class="layui-tab-item"><img src="${basePath}layui/images/productTip/desc.png"/><br/>
    
    <span class="ptip"> ${pTip.pDesc }</span>
    
    
    </div>
    <div class="layui-tab-item"><img src="${basePath}layui/images/productTip/cost.png"/><br/>
    
    <span class="ptip"> ${pTip.cost } </span>
    </div>
    <div class="layui-tab-item"><img src="${basePath}layui/images/productTip/notice.png"/><br/>
    
    
    <span class="ptip">  ${pTip.notice }</span>
    
    </div>
    <div class="layui-tab-item"><img src="${basePath}layui/images/productTip/comment.png"/><br/>
    
    
    
    <span class="ptip">  ${pTip.comment }</span>
    
    </div>
    
  </div>
</div>

	<script src="${basePath}layui/myjs/reserve.js"></script>
	<!-- 必须等Html全部加载后进行渲染 -->
	<script src="${basePath}layui/layui.all.js"></script>
	<!-- 必须等Html全部加载后进行渲染 -->
	<script type="text/javascript">
	
	
	
		layui.use('laydate', function() {
			var laydate = layui.laydate;
	
			//执行一个laydate实例
			laydate.render({
				elem : '#test1' //指定元素
			});
		});
	</script>
</body>
</html>
