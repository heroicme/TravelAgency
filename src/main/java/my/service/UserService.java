package my.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import my.bean.Account;
import my.bean.Msg;
import my.bean.Order;
import my.bean.Products;
import my.bean.User;
import my.dao.UserMapper;

@Service
public class UserService {

	public UserService() {
	}

	@Autowired
	private UserMapper userMapper;

	public List<User> getAll() {

		return userMapper.getAll();
	}

	public Msg userCheck(User user) {
		// 返回的是从数据库匹配的用户userMapper.userCheck(user)
		if (userMapper.userCheck(user) != null) {
			return Msg.success().add("uLogin", userMapper.userCheck(user));

		} else {
			return Msg.fail();

		}

	}

	public Msg uCheck(String userName) {

		int count = userMapper.uCheck(userName);
		if (count != 0) {

			return Msg.fail();

		} else {

			return Msg.success();

		}

	}
	// 保存注册用户资料

	public Msg userSave(User user) {

		userMapper.save(user);

		return Msg.success();
	}

	public void saveOrder(Order order) {
		userMapper.saveOrder(order);

	}

	public Order getCurrentOrder(String time) {

		return userMapper.getCurrentOrder(time);
	}

	public List<Order> getOrders(int userNum) {
		// TODO 自动生成的方法存根
		return userMapper.getOrders(userNum);
	}

	public Order order(Integer payId) {
		// TODO 自动生成的方法存根
		return userMapper.order(payId);
	}

	public Msg payCheck(Account account) {
		int balance = 0;// 初始化应付款
		int balanced = 0;// 初始化付款后余额
		Account acc = userMapper.getInfo(account);// 获取账户信息
		Order ord = userMapper.getOrder(account);// 获取订单信息
		int num = userMapper.payCheck(account);
		if (num == 0) {
			return Msg.fail();
		}

		else {
			// 账户余额
			// 表单传过来的是应付金额account.getAccountMoney()
			balance = acc.getAccountMoney();
			// 支付后余额
			balanced = balance - account.getAccountMoney();
			if (balanced < 0) {
				Msg msg = new Msg();
				// 错误码为300表示余额不足;
				msg.setCode(300);
				return msg;
			} else {
				
			
				
				
				acc.setAccountMoney(balanced);
				userMapper.update(acc);

				ord.setOrderStatus("已付款");
				ord.setPayById(acc.getAccountId());// 获得对应用户的支付类型 (支付宝 或者微信)
				userMapper.updateOrderStatus(ord);
				
			Products ps=userMapper.getCurrenProduct(ord);//通过订单获取该产品
				  int  pnums= userMapper.getCurrenNum(ord);  //获取销售量            
				     ps.setSales(pnums);  //更新销售量
				     userMapper.updateCurrenNum(ps); //更新数据库
				return Msg.success().add("myorder", ord.getUserNumber());
				
				
				
				
				

			}

		}

	}

	public List<Order> getAllOrders() {
		// TODO 自动生成的方法存根
		return userMapper.getAllOrders();
	}

	public void updateTime(User user) {

		userMapper.updateTime(user);
	}

	public Msg orderAudit(int oId) {
		Order ord = userMapper.getOrderById(oId);
		if (ord.getOrderStatus().equals("未付款")) {

			return Msg.fail();

		} else {
			ord.setOrderStatus("已完成");
			userMapper.updateStatus(ord);// 更新订单的状态为已完成
			return Msg.success();

		}

	}

	public Msg deleteOrder(int oId) {
		userMapper.deleteOrder(oId);
		return Msg.success();
	}

	public void delOrder(int deleId) {
		userMapper.delOrder(deleId);

	}

	public Msg delUser(int id) {
		// 查询该用户是否有订单 有则无法删除
		int orderNum = userMapper.uOrder(id);
		if (orderNum != 0) {
			return Msg.fail();
		} else {

			userMapper.delUser(id);
			return Msg.success();

		}

	}

	public User seeUser(int id) {

		return userMapper.seeUser(id);
	}

	public void createAccount(int id) {
		userMapper.createAccount(id);

	}

	public Msg checkAccount(int id) {

		List<Account> list = userMapper.checkAccount(id);

		if (list.size() == 0) {

			return Msg.fail();

		} else {

			return Msg.success().add("list", list);

		}

	}

	public Msg updateAccount(Account ac) {

		Account acc = userMapper.getInfo(ac);// 获取账户信息
		if (acc == null) {
			return Msg.fail();

		} else {
			int money = acc.getAccountMoney() + ac.getAccountMoney();
			ac.setAccountMoney(money);
			userMapper.update(ac);

			return Msg.success();
		}

	}

	public Msg checkStatus(int oId) {

		Order od = userMapper.checkStatus(oId);
		if (od.getOrderStatus().equals("已付款") )
				{

			return Msg.fail();

		} else {
			return Msg.success();
		}

	}

	public void modifyPassword(User user) {
		userMapper.modifyPassword(user);
		
	}

	public void editMyInfo(User user) {
		userMapper.editMyInfo(user);
		
	}

	public List<Order> serchOrders(String key1) {
		
		return userMapper.serchOrders(key1);
	}

	public List<User> sercheUsers(String key) {
		// TODO 自动生成的方法存根
		return userMapper.sercheUsers(key);
	}

	public void addComment(int id, String comment) {
		userMapper.addComment(id, comment);
		
	}

	public void updatePayPassword(Account acc) {
		userMapper.updatePayPassword(acc);
		
	}

}
