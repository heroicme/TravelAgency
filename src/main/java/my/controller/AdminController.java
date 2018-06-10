package my.controller;

import my.bean.Admin;
import my.bean.Msg;
import my.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class AdminController {

	
	
	@Autowired
	private AdminService  adminService;
	@RequestMapping(value="/adminCheck", method=RequestMethod.POST)
	@ResponseBody
	public Msg adminCheck(Admin admin,HttpSession session ){
		Msg msg=adminService.adminCheck(admin);
		if(msg.getCode()==100){
			
	session.setAttribute("adminOK", msg.getExtend().get("adminOK"));
			
		}
		
		return msg;
		
	}
	
	@RequestMapping("/manage")
	public String  toManage(){
		

		return "/adminpage/managemain";
		
	}
	
	
	
	
	
	// 管理员退出
	@RequestMapping("/adminOut")
	public String Out(HttpSession session) {

		session.removeAttribute("adminOK");

		return "/login";
	}
	
	// 更新个人信息
			@RequestMapping(value = "/editAdminInfo", method = RequestMethod.POST)
			@ResponseBody
			public Msg editMyInfo(Admin admin,HttpSession session) {
				adminService.editMyInfo(admin);
				
	            session.setAttribute("adminOK",admin);


				return Msg.success();

			}
		
	
	
	
	
	public AdminController() {
		// TODO 自动生成的构造函数存根
	}

}
