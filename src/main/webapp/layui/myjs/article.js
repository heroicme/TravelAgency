$(document).ready(function() {

	to_page(1);


	function to_page(pn) {
		
		var key=$("#serchP").val();
		key=key.replace(/\s/g,"");//去掉所有空格
		if(key.length==0){
		
		$.ajax({
			url : "http://localhost:8080/TravelAgency/products",
			data : "pn=" + pn,
			type : "GET",
			success : function(result) {

				//1、解析并显示订单数据
				build_product_table(result);
				//2、解析并显示分页信息
				build_page_info(result);
				//3、解析显示分页条数据
				build_page_nav(result);
			}
		});}
		else{
			
			
			$.ajax({
				url : "http://localhost:8080/TravelAgency/serchProduct",
				data : "pn=" + pn+"&key="+key,
				type : "GET",
				success : function(result) {

					//1、解析并显示订单数据
					build_product_table(result);
					//2、解析并显示分页信息
					build_page_info(result);
					//3、解析显示分页条数据
					build_page_nav(result);
				}
			});
			
			
			
			
			
			
			
			
			
		}
	}



	//ajax动态构建product表
	function build_product_table(result) {

		//清空table表格
		$("#product_tbl tbody").empty();
		var products = result.extend.pageInfo.list;
		$.each(products, function(index, item) {
			var checkBoxTd = $("<td><input type='checkbox' /></td>");
			
			var productIdTd = $("<td></td>").append(item.productId);
			
			var imgPathTd = $("<img>").attr("src", item.imgPath);
			
			var productNameTd = $("<td></td>").append(item.productName);
			var priceTd = $("<td></td>").append(item.price);
			
			var cityNumTd = $("<td></td>").append(item.cityNum);
			
			var salesTd = $("<td></td>").append(item.sales);
			
			var supplerTd = $("<td></td>").append(item.supplier);

			var seeBtn = $("<button></button>").addClass("layui-btn layui-btn-xs seeBtn")
				.append($("<i></i>").addClass("layui-icon")).append("修改");
			//为编辑按钮添加一个自定义的属性，来表示当前用户id
			seeBtn.attr("seeId", item.productId);
		/*	var delBtn = $("<button></button>").addClass("layui-btn layui-btn-xs delBtn")
				.append($("<i></i>").addClass("layui-icon")).append("删除");*/
			//为删除按钮添加一个自定义的属性来表示当前删除的用户id
			/*delBtn.attr("delId", item.productId);*/
			var btnTd = $("<td></td>").append(seeBtn)/*.append(" ").append(delBtn)*/;
			//var delBtn = 
			//append方法执行完成以后还是返回原来的元素
			$("<tr></tr>").append(checkBoxTd)
				.append(productIdTd)
				.append(imgPathTd)
				.append(productNameTd)
				.append(btnTd)
				.appendTo("#product_tbl tbody");
		});



		//为动态生成的button按钮添加事件
		$(".seeBtn").on("click", function() {
			/*alert($(this).attr("seeId"));*/
			modify($(this).attr("seeId"));
			
		});
	
		
		
		
	}

	//分页信息
	/*<div class="layui-col-md6">当前第 ${pageInfo.pageNum }页,总${pageInfo.pages }
	页,总 ${pageInfo.total } 条记录</div>*/
	function build_page_info(result) {
		$("#pInfo").empty();
		$("#pInfo").append("当前" + result.extend.pageInfo.pageNum + "页,总" +
			result.extend.pageInfo.pages + "页,总" +
			result.extend.pageInfo.total + "条记录");


	}


	//分页导航


	//"<button class='layui-btn layui-btn-sm layui-btn-primary'>首页</button>"
	//"<button class='layui-btn layui-btn-sm layui-btn-primary'><i class='layui-icon'>&#xe603;</i></button>"

	function build_page_nav(result) {
		$("#pnavInfo").empty();



		var firstPage = $("<button></button>").addClass("layui-btn layui-btn-sm layui-btn-primary").text("首页");
		firstPage.click(function() {
			to_page(1);

		});
		/*var prePage=$("<button class='layui-btn layui-btn-sm layui-btn-primary'><i class='layui-icon'>&#xe603;</i></button>");*/

		$("#pnavInfo").append(firstPage);

		//遍历出导航页
		$.each(result.extend.pageInfo.navigatepageNums, function(index, item) {
			//"<button class='layui-btn layui-btn-sm layui-btn-primary'><button/>").append("<i class='layui-icon'></i>").text(item)
			var page = $("<button></button>").addClass("layui-btn layui-btn-sm layui-btn-primary").append("<i></i>").addClass("layui-icon").text(item);

			$("#pnavInfo").append(page);
			page.click(function() {
				to_page(item)
			});

		});


		/* var nextPage=$("<button class='layui-btn layui-btn-sm layui-btn-primary'><i class='layui-icon'>&#xe602;</i></button>");*/

		var lastPage = $("<button class='layui-btn layui-btn-sm layui-btn-primary'>末页</button>");
		$("#pnavInfo").append(lastPage);

		lastPage.click(function() {

			to_page(result.extend.pageInfo.pages);


		});

	}



//修改通知公告
	function modify(id){
	
		$("#commentForm textarea").val("");
		$("#tipId").val("");
		$.ajax({
			type : "GET",
			url : "http://localhost:8080/TravelAgency/getProductTip",
			data : "productId=" + id,
			success : function(result) {
				$("#tipId").val(result.extend.ptip.tipId);
				$("#feature").val(result.extend.ptip.feature);
				$("#pDesc").val(result.extend.ptip.pDesc);
				$("#cost").val(result.extend.ptip.cost);
				$("#notice").val(result.extend.ptip.notice);
				$("#ordercomment").val(result.extend.ptip.comment);
				
				
			}
		});
		
		
		
		$("#projectModal").modal({
			backdrop : "static"
		});
			
	
		
		
	}

	
	
	$("#addDesc").click(function(){
		
		
		
		$.ajax({
			type : "POST",
			url : "http://localhost:8080/TravelAgency/updateProductTip",
			data :$("#commentForm").serialize(), 
			success : function(result) {
			
				alert("修改成功");
				$("#projectModal").modal("hide");
			
				to_page(1);
				
			}
		});
		
	
});
	
	


	


	

	
	
  //搜素框
	$("#serchProduct").click(function(){
		
		
		
		to_page(1);
		
		
		
		
	});
	
	
	
	
	




});