<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
	<script type="text/javascript"
	src="${basePath}static/js/jquery-1.12.4.min.js"></script>
<link
	href="${basePath}static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${basePath}static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script src="${basePath}layui/myjs/userorder.js"></script>


  </head>
  <button>123</button>
<button id="payMoney" type="button">确认支付</button>
<span id="payMoney123"  type="button">忘记密码</span>
  <body>
 
<input  type="checkbox"/>

<button class="payButton">123</button>
<!-- 支付Modal -->
	

<!-- Modal -->
<div class="modal fade" id="payModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
 
<button class="layui-btn">一个标准的按钮</button>
 
  </body>
</html>
    