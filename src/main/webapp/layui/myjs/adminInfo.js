$(document).ready(function(){
	
	

	
	
	$("#submitMyInfo").click(function(){
		
		var unInfo = $("#unInfo").val();
		if (unInfo.length == 0) {
			alert("请填写昵称");
			return false;
		}
		var upInfo = $("#upInfo").val();
		if (upInfo.length == 0) {
			alert("请填写密码");
			return false;
		}
		
		$.ajax({
			
			type:"POST",
			data:$("#editMyInfo").serialize(),
			url:"http://localhost:8080/TravelAgency/editAdminInfo",
			success:function(result){
				
				if(result.code==100){
					
					alert("修改成功")
				window.location="http://localhost:8080/TravelAgency/adminpage/adminInfo.jsp"
					
				}
				
				
			}
			
			
			
			
			
			
		});
		
		
	
		
	
		
		
		
		
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
});