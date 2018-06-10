$(document).ready(function(){
	
	
	
	var cityId=$("#cityNum").val();
	to_page(1,cityId,"JD");//默认显示该城市的景点
	
	
	
	$("#tpMenu img").click(function(){
	
		var type=$(this).attr("id");
		to_page(1,cityId,type);
		
		
	});
	
	
	function to_page(pn,cityId,type) {
		$.ajax({
			url : "http://localhost:8080/TravelAgency/survey",//获取相应的信息（景点，文化。。。）
			data : "pn="+pn+"&type="+type+"&cityId="+cityId,
			type : "GET",
			success : function(result) {

				//1、解析并显示数据
				build_survey_table(result);
			/*	//2、解析并显示分页信息
				build_page_info(result);
				//3、解析显示分页条数据
				build_page_nav(result);*/
			}
		});
	}

	
	
	/*<li class="layui-timeline-item">
	<i class="layui-icon layui-timeline-axis">&#xe63f;</i>
	
		<div class="layui-timeline-content ">
			<h2 class="layui-timeline-title ">西湖</h2>

			<h3 >开放时间：全天 景点地址:杭州</h3>

			<h3 >景点概况：</h3>


			<img alt="西湖" src="${basePath}layui/images/place/hzjd.png" />

		</div>
		
		
		</li>
	*/
	
	
	//ajax动态构建order表
	function build_survey_table(result) {
		$("#scenic").empty();
		var survey = result.extend.pageInfo.list;
		$.each(survey, function(index, item) {
			
			var li=$("<li></li>").addClass("layui-timeline-item");
			
			var li2=$("<li class='layui-icon layui-timeline-axis'>&#xe63f;</li>");
			
			var div=$("<div></div>").addClass("layui-timeline-content");
			var title=$("<h2></h2>").addClass("layui-timeline-title").text(item.sName);
			
			var time=$("<h3></h3>").text("  "+item.sTime+"   "+item.sAddress);
			
			var desc=$("<h3></h3>").text(item.sDesc);
			var img=$("<img/>").attr("src",item.sPath);
			
			var divBox=	div.append(title).append(time).append(desc).append(img);
			li.append(li2).append(divBox).appendTo($("#scenic"));
	
		   img.click(function(){
			   
			   window.location.href = "http://localhost:8080/TravelAgency/product?productName="+item.sName;
			   
		   });
			
		});
		


		
	
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
});