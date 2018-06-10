$(document).ready(function() {

	to_page(1);


	
	
	
	
	function to_page(pn) {
		var key=$("#serchOrderName").val();
		key=key.replace(/\s/g,"");//去掉所有空格
		if(key.length==0){
		$.ajax({
			url : "http://localhost:8080/TravelAgency/orders",
			data : "pn=" + pn,
			type : "GET",
			success : function(result) {

				//1、解析并显示订单数据
				build_order_table(result);
				//2、解析并显示分页信息
				build_page_info(result);
				//3、解析显示分页条数据
				build_page_nav(result);
			}
		});
		}
		else{
			
			$.ajax({
				url : "http://localhost:8080/TravelAgency/serchOrders",
				data : "pn="+pn+"&key="+key,
				type : "GET",
				success : function(result) {

					//1、解析并显示订单数据
					build_order_table(result);
					//2、解析并显示分页信息
					build_page_info(result);
					//3、解析显示分页条数据
					build_page_nav(result);
				}
			});
			
			
			
			
			
			
			
			
		}
		
		
		
	}



	//ajax动态构建order表
	function build_order_table(result) {

		//清空table表格
		$("#order_tbl tbody").empty();
		var orders = result.extend.pageInfo.list;
		$.each(orders, function(index, item) {
			var checkBoxTd = $("<td><input type='checkbox' /></td>");
			var orderIdTd = $("<td></td>").append(item.orderId);
			var imgPathTd = $("<img>").attr("src", item.imgPath);
			var orderNameTd = $("<td></td>").append(item.orderTitle);
			var userTd = $("<td></td>").append(item.userNumber);
			var totalTd = $("<td></td>").append(item.totalPrice);
			var statusTd = $("<td></td>").append(item.orderStatus);
			var orderTimeTd = $("<td></td>").append(item.orderTime);

			var nameTd = $("<td></td>").append(item.name);
			var phoneTd = $("<td></td>").append(item.phone);

			var goTimeTd = $("<td></td>").append(item.goTime);

			var goNumsTd = $("<td></td>").append(item.goNums);
			var currentTd = $("<td></td>").append(item.current);

			var commentTd = $("<td></td>").append(item.comment);

			var seeBtn = $("<button></button>").addClass("layui-btn layui-btn-xs seeBtn")
				.append($("<i></i>").addClass("layui-icon")).append("审核");
			//为编辑按钮添加一个自定义的属性，来表示当前用户id
			seeBtn.attr("seeId", item.orderId);
			var delBtn = $("<button></button>").addClass("layui-btn layui-btn-xs delBtn")
				.append($("<i></i>").addClass("layui-icon")).append("删除");
			//为删除按钮添加一个自定义的属性来表示当前删除的用户id
			delBtn.attr("delId", item.orderId);
			var btnTd = $("<td></td>").append("&nbsp;&nbsp;").append(seeBtn).append(delBtn);


			//var delBtn = 
			//append方法执行完成以后还是返回原来的元素
			$("<tr></tr>").append(checkBoxTd)
				.append(orderIdTd)
				.append(imgPathTd)
				.append(orderNameTd)
				.append(userTd)
				.append(totalTd)
				.append(statusTd)
				.append(orderTimeTd)
				.append(nameTd)
				.append(phoneTd)
				.append(goTimeTd)
				.append(currentTd)
				.append(goNumsTd)
				.append(commentTd)
				.append(btnTd)
				.appendTo("#order_tbl tbody");
		});



		//为动态生成的button按钮添加事件
		$(".seeBtn").on("click", function() {
			/*alert($(this).attr("seeId"));*/
		orderAudit($(this).attr("seeId"));
		
		to_page(result.extend.pageInfo.pageNum);
		});
		$(".delBtn").on("click", function() {
			/*alert($(this).attr("delId"));*/
			var yesorNO=deleteOrder($(this).attr("delId"));
			if(yesorNO==false){
				to_page(result.extend.pageInfo.pageNum);
				
			}
			else{
/*alert("删除成功");*/
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



	//订单审核
	function orderAudit(id) {
		
		$.ajax({
			type : "GET",
			url : "http://localhost:8080/TravelAgency/orderAudit",
			data : "orderId=" + id,
			success : function(result) {

				if (result.code == 100) {

					alert("订单处理成功");
					


				} else {

					alert("该订单未付款，无法处理");

				}




			}
		});


	}



	//删除订单
	function deleteOrder(id) {
		var sure = confirm("确定删除该订单");

		if (sure == true) {
			
			
			$.ajax({
				type : "GET",
				url : "http://localhost:8080/TravelAgency/deleteOrder",
				data : "orderId="+id,
				success : function(result) {
					if(result.code==200){
						
						alert("订单未完成，无法删除");
						
						
					}

					
				}
			});

		}
		else{
			
			return false;
			
		}


	}



//搜素框功能
	$("#serchOrder").click(function(){
//var k=	$("#serchOrderName").val();//去掉所有空格
	//k=	k.replace(/\s/g,"");
		//alert(k);
		to_page(1);
	
		
		
	});












});