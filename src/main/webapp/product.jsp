<%@ page language="java" import="java.*"
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
	if (my == null) {

		myparam = "allProducts?pn=";

	}  else if(my.length()<5){

			myparam = "allProducts?pn=";
		}
 else  {
 String[] mp=my.split("&");
 myparam = "product?"+mp[0]+"&pn=";  }
	request.setAttribute("myparam", myparam);
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="${basePath}index.jsp" flush="true"></jsp:include>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>产品列表</title>



</head>

<body>




	<div class="productwrap">
		<div class="productsort">
			<div class="layui-row">
				<!-- <div class="layui-col-md4 layui-icon">
					<a href="javaScript:;"> 销售量&#xe625;</a>
				</div>
				<div class="layui-col-md4 layui-icon">
					<a href="javaScript:;"> 满意度&#xe625;</a>
				</div>
				<div class="layui-col-md4 layui-icon">
					<a href="javaScript:;">价格&#xe625;</a>
				</div> -->
			</div>

		</div>



		<div class="productlist">

			<c:forEach items="${pInfo.list}" var="product">
				<div class="products">
					<div class="pimg">
						<img src="${product.imgPath}" />
					</div>
					<div class="ptitle">
						<a href="reserve?num=${product.productId}">${product.productName}</a>
					</div>

					<div class="ptext">
						包含景点：${product.productDesc}<br />供应商:${product.supplier}
					</div>
					<div class="price layui-icon">
						&#xe65e;<span>${product.price}</span> <br />
						<h4>满意度 :${product.satisfaction}</h4>
						<h4>已售:${product.sales}</h4>
					</div>
				</div>





			</c:forEach>
			<div class="layui-container">

				<div class="layui-row">
					<div class="layui-col-md6">当前第 ${pInfo.pageNum }页,总${pInfo.pages }
						页,总 ${pInfo.total } 条记录</div>
					<div class="layui-col-md6">
						<div class="layui-btn-group ">


							<button class="layui-btn layui-btn-sm layui-btn-primary">
								<a href="${myparam}1">首页</a>
							</button>




							<!-- 连续显示3页码 一页5条记录 -->
							<c:forEach items="${pInfo. navigatepageNums}" var="pageNums">
								<button class="layui-btn layui-btn-sm layui-btn-primary">
									<a href="${myparam}${pageNums}"><i class="layui-icon">${pageNums}</i></a>
								</button>
							</c:forEach>

							<button class="layui-btn layui-btn-sm layui-btn-primary">
								<a href="${myparam}${pInfo.pages}">末页</a>
							</button>
						</div>
					</div>
				</div>
			</div>

		</div>






	</div>







	</div>




	<!-- 必须等Html全部加载后进行渲染 -->
	<script src="${basePath}layui/layui.all.js"></script>
	<!-- 必须等Html全部加载后进行渲染 -->
</body>
</html>
