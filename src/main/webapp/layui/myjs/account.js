$(document).ready(function() {


	//判断该用户是否开通账户

	$.ajax({
		url : "http://localhost:8080/TravelAgency/checkAccount",
		data : "aId=" + $("#openId").val(),
		type : "POST",
		success : function(result) {

			if (result.code == 200) {

				var sure = confirm("无可用账户，是否立即创建");
				if (sure == true) {

					createAccount();


				} else {

					history.back();
				}





			} else {
				var ac = result.extend.list;
				//显示账户数据
				$.each(ac, function(index, item) {

					if (item.accountType == "支付宝") {
						$("#zfbM").text();
						$("#zfbM").text(item.accountMoney);

					} else {
						$("#wxM").text();
						$("#wxM").text(item.accountMoney);

					}



				});


			}




		}
	});






	function createAccount() {
		$.ajax({
			url : "http://localhost:8080/TravelAgency/createAccount",
			data : "aId=" + $("#openId").val(),
			type : "POST",
			success : function(result) {

				if (result.code == 100) {

					alert("账户已开通,初始密码12345");

				}


			}
		});





	}

$("#updateAccount").click(function(){
	
	
	$.ajax({
		url : "http://localhost:8080/TravelAgency/updateAccount",
		data : $("#myAccount").serialize(),
		type : "POST",
		success : function(result) {

			if (result.code == 100) {

				alert("充值成功");
window.location="http://localhost:8080/TravelAgency/account.jsp";
			}

			else{
				alert("密码错误重新输入");
				
				
			}

		}
	});
	
	
	
	
	
});






$("#editPayPass").click(function(){
	
	
	$("#byMymodal2").removeClass("modalclose");
	
	$("#xiugai").val("");
	
	
});




$("#mymodalclose").click(function(){


$("#byMymodal2").addClass("modalclose");

});




$("#updatePassword").click(function(){


$.ajax({
	url : "http://localhost:8080/TravelAgency/updatePayPassword",
	type : "POST",
	data : $("#editForm").serialize(),
	success : function(result) {
		if(result.code==100)
	
		{alert("修改密码成功");
		$("#byMymodal2").addClass("modalclose");
		
		
		}
	}
});











});



























});