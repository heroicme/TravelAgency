$(document).ready(function() {

	//1.登录界面的js
	//点击登录按钮发送异步请求 校验用户名与密码 如果出错提示 用户名或密码错误
	$("#loginbutton").click(function() {
		$.ajax({
			url : "http://localhost:8080/TravelAgency/loginCheck",
			type : "POST",
			data : $("#loginForm").serialize(),
			success : function(result) {
				if (result.code == 200) {
					$(".loginTip").empty();
					$(".loginTip").append("&#xe69c;用户名或密码错误");
				} else {
					//跳转到主页homepage.jsp
					window.location = "http://localhost:8080/TravelAgency/updateLoginTime";
				}
			}
		});
	});

	//2.注册按钮,异步请求判断用户是否可用
	$("#registerbutton").click(function() {
		$("#userInput").val("");
		$("#mssg").text("");
		$('#myModal').modal({
			backdrop : "static"
		});







	});

	$("#userInput").change(function() {

		$("#mssg").text("");
		var userName = this.value;
		$.ajax({
			url : "http://localhost:8080/TravelAgency/userNameCheck",
			type : "POST",
			data : "userName=" + userName,
			success : function(result) {

				if (result.code == 200) {

					$("#mssg").text("用户名已被注册");

				} else {

					$("#mssg").text("用户名可用");
				}



			}
		});




	});

	$("#saveUser").click(function() {
		var userInput = $("#userInput").val();
		if (userInput.length == 0) {
			alert("请填写用户名");
			return false;
		}
		var inputPassword = $("#inputPassword").val();
		if (inputPassword.length == 0) {
			alert("请填写密码");
			return false;
		}
		var inputemail = $("#inputemail").val();
		if (inputemail.length == 0) {
			alert("请填写邮箱");
			return false;
		}
	
		
		
		if ($("#mssg").text() == "用户名可用") {
			
			
			
			

			$.ajax({
				url : "http://localhost:8080/TravelAgency/userSave",
				type : "POST",
				data : $("#register").serialize(),
				success : function(result) {
					if (result.code == 100) {
						alert("注册成功，请登录");

						$('#myModal').modal("hide");


					}

				}
			});



		}else{
			
			alert("用户名已被注册");
			
		}

	});

//管理员登录
	$("#adminLogin").click(function (){
		
		$.ajax({
			url : "http://localhost:8080/TravelAgency/adminCheck",
			type : "POST",
			data : $("#adminForm").serialize(),
			success : function(result) {
				if (result.code == 200) {
					$(".adminloginTip").empty();
					$(".adminloginTip").append("&#xe69c;用户名或密码错误");
				} else {
					//跳转到后台主页managemain.jsp
					window.location = "http://localhost:8080/TravelAgency/manage";
				}
			}
		});
		
		
		
		
		
		
		
		
		
		
		
		
		
	});




	//3.再次点击输入框是清空错误提示
	$("input").mousedown(function() {
		$(".loginTip").empty();
		$(".adminloginTip").empty();
	});

	
	//修改用户密码
	$("#forgetPass").click(function(){
		
		$('#modifyPass').modal({
			backdrop : "static"
		});
		
		
		
		
	});
	
	$("#modifyuser").change(function() {

		$("#modifymssg").text("");
		var userName = this.value;
		$.ajax({
			url : "http://localhost:8080/TravelAgency/userNameCheck",
			type : "POST",
			data : "userName=" + userName,
			success : function(result) {

				if (result.code == 200) {

					$("#modifymssg").text("用户名正确");

				} else {

					$("#modifymssg").text("用户名不正确");
				}



			}
		});
	
	});
	//modifyUser修改密码.
	
	
	$("#modifyUser").click(function() {
		if ($("#modifymssg").text() == "用户名正确") {

			$.ajax({
				url : "http://localhost:8080/TravelAgency/modifyPassword",
				type : "POST",
				data : $("#modify").serialize(),
				success : function(result) {
					if (result.code == 100) {
						alert("修改成功，请登录");

						$('#modifyPass').modal("hide");


					}

				}
			});
	
		}
		});
	
	
	
	
	


});