$(document).ready(function() {

	
	
	
		
		
		 $("#submitOrder").css("display","inline");
	
	
	
//订单的必填选项
	$("#submitOrder").click(function() {
		var oDate = $("#test1").val();
		if (oDate.length == 0) {
			alert("请选择出发日期");
			return false;
		}
		var oNums = $("#oNums").val();
		if (oNums.length == 0) {
			alert("请选择出出游人数");
			return false;
		}
		var oName = $("#oName").val();
		if (oName.length == 0) {
			alert("请填写联系人姓名");
			return false;
		}
		var oPhone = $("#oPhone").val();
		if (oPhone.length == 0) {
			alert("请填写联系电话");
			return false;
		}

		//判断是否登录	
		var login = $("#loginId").val();
		if (login.length != 0) {
			//保存订单
			$.ajax({
				url : "http://localhost:8080/TravelAgency/saveOrder",
				type : "POST",
				data : $("#userOrder").serialize(),
				success : function(result) {
					if (result.code == 100) {
						alert("订单提交成功");
           $("#payOrder").css("display","inline");
           $("#submitOrder").css("display","none");
					}
				}
			});

		} else {
			alert("请先登录");
			window.location = "http://localhost:8080/TravelAgency/login";

		}
	});






$("#payOrder").click(function(){
	$("lable span").text("");
	//后回显订单信息
	$("#orderModal").modal({
		backdrop : "static"
	});
	var paytime=$("#payTime").val();
	$.ajax({
		url : "http://localhost:8080/TravelAgency/pay",
		type : "POST",
		data : "time="+paytime,
		success : function(result) {
			
			if(result.code==100)
{			
$("#2").text(""+result.extend.backOrder.orderId);//转化成字符串否则只是显示json
$("#3").text(""+result.extend.backOrder.current);
$("#4").text(""+result.extend.backOrder.goTime);
$("#5").text(""+result.extend.backOrder.goNums);
$("#6").text(""+result.extend.backOrder.phone);
$("#7").text(""+result.extend.backOrder.name);
$("#8").text(""+result.extend.backOrder.totalPrice);
}
		}
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
});





$("#close").click(function(){
	
	//后回显订单信息
			$("#orderModal").modal("hide");
	
});
//支付模态框










});