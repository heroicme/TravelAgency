$(document).ready(function() {


	to_page(1);


	function to_page(pn) {
		
		var key=$("#serchU").val();
		key=key.replace(/\s/g,"");//去掉所有空格
		if(key.length==0){
		
		$.ajax({
			url : "http://localhost:8080/TravelAgency/users",
			data : "pn=" + pn,
			type : "GET",
			success : function(result) {

				//1、解析并显示用户数据
				build_user_table(result);
				//2、解析并显示分页信息
				build_page_info(result);
				//3、解析显示分页条数据
				build_page_nav(result);
			}
		});}
		
		else{
			$.ajax({
				url : "http://localhost:8080/TravelAgency/sercheUsers",
				data : "pn=" + pn+"&key="+key,
				type : "GET",

				success : function(result) {

					//1、解析并显示用户数据
					build_user_table(result);
					//2、解析并显示分页信息
					build_page_info(result);
					//3、解析显示分页条数据
					build_page_nav(result);
				}
			});
			
			
			
			
			
			
			
			
		}
		
		
		
		
		
	}


	//ajax动态构建user表
	function build_user_table(result) {

		//清空table表格
		$("#user_tbl tbody").empty();
		var users = result.extend.pageInfo.list;
		$.each(users, function(index, item) {
			var checkBoxTd = $("<td><input type='checkbox' /></td>");
			var userIdTd = $("<td></td>").append(item.userId);
			var userNameTd = $("<td></td>").append(item.userName);
			var genderTd = $("<td></td>").append(item.gender);
			var emailTd = $("<td></td>").append(item.email);
			var gradeTd = $("<td></td>").append(item.grade);
			var loginTimeTd = $("<td></td>").append(item.loginTime);

			var seeBtn = $("<button></button>").addClass("layui-btn layui-btn-xs seeBtn")
				.append($("<i></i>").addClass("layui-icon")).append("查看");
			//为编辑按钮添加一个自定义的属性，来表示当前用户id
			seeBtn.attr("seeId", item.userId);
			var delBtn = $("<button></button>").addClass("layui-btn layui-btn-xs delBtn")
				.append($("<i></i>").addClass("layui-icon")).append("删除");
			//为删除按钮添加一个自定义的属性来表示当前删除的用户id
			delBtn.attr("delId", item.userId);
			var btnTd = $("<td></td>").append(seeBtn).append(" ").append(delBtn);
			//var delBtn = 
			//append方法执行完成以后还是返回原来的元素
			$("<tr></tr>").append(checkBoxTd)
				.append(userIdTd)
				.append(userNameTd)
				.append(genderTd)
				.append(emailTd)
				.append(gradeTd)
				.append(loginTimeTd)
				.append(btnTd)
				.appendTo("#user_tbl tbody");
		});



		//为动态生成的button按钮添加事件
		$(".seeBtn").on("click", function() {
			/*alert($(this).attr("seeId"));*/
			seeUserInfo($(this).attr("seeId"));
			$("#byMymodal").removeClass("modalclose");
			
		});
		$(".delBtn").on("click", function() {
			/*alert($(this).attr("delId"));*/
		deleteUser($(this).attr("delId"));
			to_page(result.extend.pageInfo.pageNum);
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




	//删除用户
	function deleteUser(id) {
		var sure = confirm("确定删除该用户");
		if (sure == true) {
			$.ajax({
				type : "GET",
				data : "userId="+id,
				url : "http://localhost:8080/TravelAgency/deleteUser",
				success : function(result) {

					if (result.code == 200) {
						alert("该用户有订单，无法删除");

					}
					else{  alert("删除成功");

					
					}


				}
			});


		}


	}
//查看用户具体信息
	function seeUserInfo(id){
		
		$("#byMymodal h3").empty();
		$.ajax({
			type : "GET",
			data : "userId="+id,
			url : "http://localhost:8080/TravelAgency/seeUser",
			success : function(result) {

			
				$("#1").text("用户ID-----"+result.extend.user.userId);
				$("#2").text("用户名称 -----"+result.extend.user.userName);
				$("#3").text("用户性别-----"+result.extend.user.gender);
				$("#4").text("用户邮箱----- "+result.extend.user.email);
				$("#5").text("用户登录时间 -----"+result.extend.user.loginTime);
				$("#6").text("用户等级 -----"+result.extend.user.grade);
			}
		});
		
		
		
		
		
		
		
		
	}



$("#mymodalclose").click(function(){
	
	
	$("#byMymodal").addClass("modalclose");
	
});







//搜素用户框
$("#serchUser").click(function(){
	
	
	to_page(1);
	
	
});









});