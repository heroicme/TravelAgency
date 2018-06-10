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
<%--  <base href="<%=basePath%>"> --%>
<!-- <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page"> -->
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="${basePath}layui/jquery/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.menubox').click(function() {

			$('.menutext').removeClass("menutextclick");

			$('.menutext', this).addClass("menutextclick");


		});
/* 
		$('.layui-bg-black').click(function() {



			$('.textStyle').slideToggle("slow");


		}); */




	});
</script>



<!--layui静态资源  -->
<link rel="stylesheet" href="${basePath}layui/css/layui.css">
<link rel="stylesheet" href="${basePath}layui/mycss/mycss.css">
<!--layui静态资源  -->
<title>HI浙江旅行社欢迎你</title>
</head>

<body class="placeBC">

	<!-- 各省信息top -->
	<div class="placeTop">
		<div class="layui-container">
			<ul class="infoRight layui-nav">

				<li class="layui-nav-item layui-icon"><a href="home">&#xe609;魅力之乡</a>
				
				<dl class="layui-nav-child">
				<!-- 二级菜单 -->
				
				
				<dd>
					<a href="getCityInfo?cityTn=0571">杭州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0576">台州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0573">嘉兴</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0580">舟山</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0574">宁波</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0575">绍兴</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0572">湖州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0577">温州</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0579">金华</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0578">丽水</a>
				</dd>
				<dd>
					<a href="getCityInfo?cityTn=0570">衢州</a>
				</dd>
			</dl>
				
		
				
				</li>
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
								<a class=" layui-icon  " href="seeOrder?userNumber=${sessionScope.userOK.userId}">&#xe63c;订单</a>
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
		</div>
	</div>
	<!-- 各省信息top -->

	<div class="placeWrap">

		<!-- 各省风景点 动态显示 -->
		<div class="placeOne">


			<div class="layui-carousel" id="test1">
				<div carousel-item>
					<c:forEach items="${cityNav}" var="nav">
						<div class="imgStyle">
							<img src="${nav.pPath}" />
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- 各省风景点 动态显示 -->



		<div class="placeLogo1"></div>
		<!-- 图片与城市介绍 -->
		<div class="info1">
			<div class="infoimage ">
				<img src="${cityTitle.pPath}" />
			</div>
			<div class="infotext">
				<div class="layui-bg-black">
					<h1>简介</h1>
				</div>


				<div class="textStyle">${cityTitle.pDesc}</div>





			</div>


		</div>
		<!-- 表格介绍 -->
		<div class="table1">

			<!-- 从数据库获取各个景点信息 -->
			<table class="layui-table">
				<tr>
					<td>中文名称</td>
					<td>${cityInfo.cityCn}</td>
					<td>外文名称</td>
					<td>${cityInfo.cityEn}</td>
				</tr>
				<tr>
					<td>别 名</td>
					<td>${cityInfo.cityOn}</td>
					<td>行政区类别</td>
					<td>${cityInfo.cityCategory}</td>
				</tr>
				<tr>
					<td>所属地区</td>
					<td>${cityInfo.cityFrom}</td>
					<td>下辖地区</td>
					<td>${cityInfo.cityArea}</td>
				</tr>
				<tr>
					<td>政府驻地</td>
					<td>${cityInfo.cityGm}</td>
					<td>电话区号</td>
					<td>${cityInfo.cityTn}</td>
				</tr>
			</table>
		</div>

		<!-- 从数据库获取各个景点信息 -->

		<!--点击图片导航菜单  -->
		<div class="placemenu" id="tpMenu">

        <input id="cityNum" type="hidden" value="${cityInfo.cityTn}"/>
			<div class="menubox menu0">
				<img id="JD"
					src="${basePath}layui/images/placemenu1.png" />
				<div class="menutext">景点</div>
			</div>

			<div class="menubox menu1">
				 <img  id="MS"
					src="${basePath}layui/images/placemenu2.jpg" />
				<div class="menutext">美食</div>
			</div>

			<div class="menubox menu2">
				 <img id="YL"
					src="${basePath}layui/images/placemenu3.png" />
				<div class="menutext">娱乐</div>
			</div>

			<div class="menubox menu3">
				<img id="RW"
					src="${basePath}layui/images/placemenu4.jpg" />
				<div class="menutext">人物</div>
			</div>
			<div class="menubox menu4">
				<img   id="WH"
					src="${basePath}layui/images/placemenu5.jpg" />
				<div class="menutext paclewz">文化</div>
			</div>
			<div class="menubox menu5">
				<img   id="LS"
					src="${basePath}layui/images/placemenu6.png" />
				<div class="menutext">历史</div>
			</div>



		</div>
		<!--点击图片导航菜单  -->




		<!--从数据库获取各景点数据  -->

		<div class="placedata">
			<br /> <br /> <br />
			<ul class="layui-timeline" id="scenic">
			
			
			
			


<%-- 	<li class="layui-timeline-item">
				<i class="layui-icon layui-timeline-axis">&#xe63f;</i>
					<div class="layui-timeline-content ">
						<h2 class="layui-timeline-title ">西湖</h2>

						<h3 >开放时间：全天 景点地址:杭州</h3>

						<h3 >景点概况：1、杭州最著名的景点，西湖的荷花很漂亮，泛舟湖面也是不错的选择。在这里能够看到绚丽的日落和漂亮的音乐喷泉。不推荐节假日的时候去，人太多。2、 西湖有十景：苏堤春晓、曲院风荷、平湖秋月、断桥残雪、花港观鱼、柳浪闻莺、三潭印月、双峰插云、雷峰夕照、南屏晚钟。湖中有三岛：三潭印月，湖心亭，阮公墩。最著名的就是三潭印月了，一元人民币背景图案，建议乘船游玩。3、 最佳季节：3-5月、9-11月。3-5月是最适合漫步苏堤踏青赏花；9-11月秋高气爽，满陇桂雨的桂花飘香十里。不推荐盛夏季节，超过30℃的高温炙烤下，会减少游玩的兴致。4、 建议游玩：3-6小时5、 门票：无6、 开放时间：全天7、 地址：浙省杭州市西湖区西湖风景区8、交通： 较便利，可选择地铁，公交，出租等多种方式，附近地铁站有凤起路站和龙翔桥站 (地铁1号线)；有多条公交线路，可以选择在钱塘门外，六公园，少年宫，小车桥，断桥站下，打车较便利。。 </h3>


						<img alt="西湖" src="${basePath}layui/images/place/hzjd.png" />

					</div>
					</li> --%>






			</ul>







		</div>







		<!--从数据库获取各景点数据  -->




	</div>

	<!-- 必须等Html全部加载后进行渲染 -->
	<script src="${basePath}layui/layui.all.js"></script>
	<!-- 必须等Html全部加载后进行渲染 -->
	<!-- layui的渲染jquery -->
	<script>
		layui.use('carousel', function() {
			var carousel = layui.carousel;
			//建造实例
			carousel.render({
				elem : '#test1',
				width : '100%', //设置容器宽度
				arrow : 'always' //始终显示箭头
			//,anim: 'updown' //切换动画方式
			});
		});
	</script>
	
	<script src="${basePath}layui/myjs/scenery.js" ></script>
	
	
	
	<!-- layui的渲染jquery -->
</body>
</html>
