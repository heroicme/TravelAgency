package my.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import my.bean.Admin;
import my.bean.Msg;
import my.bean.User;
import my.dao.AdminMapper;
@Service
public class AdminService {

	@Autowired
	private AdminMapper adminMapper;
	
	public Msg adminCheck(Admin admin) {
		
		int count=adminMapper.adminCheck(admin);
		
		if(count==0){
			
		return	Msg.fail();
			
			
		}else{
			admin=adminMapper.getAdmin(admin);
			
			//如果不为0则该管理员存在返回信息
			return Msg.success().add("adminOK", admin);
			
			
		}
		
		
		
	}

	public void editMyInfo(Admin admin) {
		adminMapper.editMyInfo(admin);
		
	}

}
