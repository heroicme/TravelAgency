package my.dao;

import my.bean.Admin;

public interface AdminMapper {

	int adminCheck(Admin admin);

	Admin getAdmin(Admin admin);

	void editMyInfo(Admin admin);

}
