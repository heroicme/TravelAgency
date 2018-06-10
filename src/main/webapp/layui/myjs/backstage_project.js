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
			var delBtn = $("<button></button>").addClass("layui-btn layui-btn-xs delBtn")
				.append($("<i></i>").addClass("layui-icon")).append("删除");
			//为删除按钮添加一个自定义的属性来表示当前删除的用户id
			delBtn.attr("delId", item.productId);
			var btnTd = $("<td></td>").append(seeBtn).append(" ").append(delBtn);
			//var delBtn = 
			//append方法执行完成以后还是返回原来的元素
			$("<tr></tr>").append(checkBoxTd)
				.append(productIdTd)
				.append(imgPathTd)
				.append(productNameTd)
				.append(priceTd)
				.append(cityNumTd)
				.append(salesTd)
				.append(supplerTd)
				.append(btnTd)
				.appendTo("#product_tbl tbody");
		});



		//为动态生成的button按钮添加事件
		$(".seeBtn").on("click", function() {
			/*alert($(this).attr("seeId"));*/
			modify($(this).attr("seeId"));
			
		});
		$(".delBtn").on("click", function() {
			/*alert($(this).attr("delId"));*/
			
			var yesorNO=deleteProduct($(this).attr("delId"));
			if(yesorNO==false){
				to_page(result.extend.pageInfo.pageNum);
				
			}
			else{
alert("删除成功");
				to_page(1);}
		
	
			
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



//修改项目
	function modify(id){
	
		$("#productForm input").val("");
		$.ajax({
			type : "GET",
			url : "http://localhost:8080/TravelAgency/getProduct",
			data : "productId=" + id,
			success : function(result) {
				$("#PID").attr("value",result.extend.product.productId);
			$("#1").val(result.extend.product.imgPath);
			$("#2").val(result.extend.product.productName);
			$("#3").val(result.extend.product.price);
			$("#4").val(result.extend.product.productDesc);
			$("#5").val(result.extend.product.type);
				
				
				
				
			}
		});
		
		
		
		$("#projectModal").modal({
			backdrop : "static"
		});
			
	
		
		
	}

	
	
	$("#save").click(function(){
		
		
		
		$.ajax({
			type : "POST",
			url : "http://localhost:8080/TravelAgency/updateProduct",
			data :$("#productForm").serialize(), 
			success : function(result) {
			
				alert("修改成功");
				$("#projectModal").modal("hide");
			
				to_page(1);
				
			}
		});
		
	
});
	
	


	$("#close").click(function(){
		
		
				$("#projectModal").modal("hide");

		
	});


	

	//删除产品
	function deleteProduct(id) {
		var sure = confirm("确定删除该项目");

		if (sure == true) {
			$.ajax({
				type : "GET",
				url : "http://localhost:8080/TravelAgency/deleteProduct",
				data : "productId=" + id,
				success : function(result) {

					
				}
			});

		}
		else{
			
			return false;
			
		}


	}

	
	//打开添加项目模态框
	$("#addProjectM").click(function(){
		$("#addprojectModal").modal({
			backdrop : "static"
		});
	});
	

	//添加项目
	$("#addPro").click(function(){
		var PN = $("#PN").val();
		if (PN.length == 0) {
			alert("请填写项目名称");
			return false;
		}
		var PP = $("#PP").val();
		if (PP.length == 0) {
			alert("请填写项目价格");
			return false;
		}
		var PT= $("#PT").val();
		if (PT.length == 0) {
			alert("请填写项目类型");
			return false;
		}
		var PPath= $("#PPath").val();
		if (PPath.length == 0) {
			alert("请输入项目图片地址");
			return false;
		}
		
		
		var PDesc = $("#PDesc").val();
		if (PDesc.length == 0) {
			alert("请填写项目介绍");
			return false;
		}
		
		
		$.ajax({
			type : "POST",
			url : "http://localhost:8080/TravelAgency/addProduct",
			data : $("#addProjectForm").serialize(),
			success : function(result) {
			}
		});
		$("#addprojectModal").modal("hide");
		alert("添加成功");
		to_page(1);
	});
	
	
  //搜素框
	$("#serchProduct").click(function(){
		
		
		
		to_page(1);
		
		
		
		
	});
	
	
	
	
	




});