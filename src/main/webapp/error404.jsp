<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="${basePath}layui/mycss/mycss.css">
    <title>抱歉出错了</title>
    
	

  </head>
  
  <body > 
   
   <a href="home"><img class="adapt" src="${basePath}layui/images/404error.png"  title="点击返回首页"/></a>
   
   
  </body>
</html>
