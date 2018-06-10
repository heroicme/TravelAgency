$(document).ready(function() {
//用户支付订单
	$("#myPay").click(function() {
		$.ajax({
			url : "http://localhost:8080/TravelAgency/payCheck",
			type : "POST",
			data : $("#payForm").serialize(),
			success : function(result) {
				if (result.code == 200) {
					$("#payTip").empty();
					$("#payTip").append("&#xe69c;密码错误");
				} else {
					if (result.code == 300) {
						$("#payTip").empty();
						$("#payTip").append("&#xe69c;余额不足");
					} else {
						
window.location.href = 
	"http://localhost:8080/TravelAgency/seeOrder?userNumber=" + result.extend.myorder;

					}
				}
			}
		});









	});




	$("#payPass").mousedown(function() {
		$("#payTip").empty();
	});


	/*$("#payReset").click(function() {
		$("#payTip").empty();
	});*/

	
	
	
	$("#editPayPass").click(function(){
		
		
		$("#byMymodal1").removeClass("modalclose");
		$("#xiugai").val("");
	});
	



$("#mymodalclose").click(function(){
	
	
	$("#byMymodal1").addClass("modalclose");
	
});
	
	
	
	
$("#updatePassword").click(function(){
	
	
	$.ajax({
		url : "http://localhost:8080/TravelAgency/updatePayPassword",
		type : "POST",
		data : $("#editForm").serialize(),
		success : function(result) {
			if(result.code==100)
		
			{alert("修改密码成功");
			$("#byMymodal1").addClass("modalclose");
			
			
			}
		}
	});
	
	
	
	
	
	
	
	
	
	
	
});
	
	
	
	
	
	
	
	
	
	
	
	
	





});