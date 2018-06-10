$(document).ready(function(){
	
	$(document).on("click","#deleOrder",function(){
		
		var sure=confirm("确定删除该订单");
		var status=$(this).attr("statu");
		var deleId=	$(this).attr("name");
		if(sure==true&&status=="已完成"||sure==true&&status=="未付款"){
			$.ajax({
				
				type:"GET",
				url:"http://localhost:8080/TravelAgency/delOrder",
				data:"deleId="+deleId,
				success:function(result){
					alert("删除成功");
					window.location = "http://localhost:8080/TravelAgency/seeOrder?userNumber=1";
				}
				
				
			});
	
		}
		else if(sure==true&&status=="已付款"){
			
			alert("订单正在处理，无法删除");
			
		}
		
		
		
		
		
		
	});
	
	
	
	
		
	
	
	
	
$(document).on("click","#myComment",function(){
	$("#oTitle").empty();
	$("#comment").val("");
	var deleId=	$(this).attr("name");
	var oTitle=	$(this).attr("oTitle");
	
	
	$("#oTitle").text(oTitle);
	$("#commentModal").modal({
		
		
		backdrop : "static"
		
		
	});
	
	$("#addComment").click(function(){
		
		var id=$("#myComment").attr("name");
		var comment=$("#comment").val();
	
		$.ajax({
			
			type:"POST",
			data:"id="+id+"&comment="+comment,
			url:"http://localhost:8080/TravelAgency/addComment",
			success:function(){
				
				alert("评论成功");
				$("#commentModal").modal("hide");
					
					
				
					
					
			
				
			}
			
	
			
		});
		
		
		
		
		
	});
	
	
	
	
	
	
	
	
	
});	
	
	
	
	
});