package my.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import my.bean.Account;
import my.bean.Msg;
import my.bean.Order;
import my.bean.User;
import my.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	// 获取所有用户并进行分页
	@RequestMapping("/users")
	@ResponseBody
	public Msg getAll(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 从pn传过来的值开始 默认第1页 ，每页8条数据
		PageHelper.startPage(pn, 8);
		List<User> users = userService.getAll();
		// 连续显示3页数据
		PageInfo page = new PageInfo(users, 3);
		return Msg.success().add("pageInfo", page);

	}

	// 跳转到登录注册页面
	@RequestMapping("/login")
	public String login() {
		return "/login";
	}

	// 登录(AJAX)
	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	@ResponseBody
	public Msg loginCheck(User user, HttpSession session) {
		Msg msg = userService.userCheck(user);
		if (msg.getExtend().get("uLogin") != null) {
			session.setAttribute("userOK", msg.getExtend().get("uLogin"));
		}
		return msg;
	}

	// 返回首页
	@RequestMapping(value = "/home")

	public String toHomepage() {

		return "/homepage";

	}

	// 用户退出
	@RequestMapping("/out")
	public String Out(HttpSession session) {

		session.removeAttribute("userOK");

		return "/homepage";
	}

	// 用户名是否可用
	@RequestMapping(value = "/userNameCheck", method = RequestMethod.POST)
	@ResponseBody
	public Msg uCheck(@RequestParam("userName") String userName) {

		Msg msg = userService.uCheck(userName);

		return msg;
	}

	@RequestMapping(value = "/userSave", method = RequestMethod.POST)
	@ResponseBody
	public Msg uCheck(User user) {

		Msg msg = userService.userSave(user);

		return msg;
	}
	@RequestMapping(value = "/modifyPassword", method = RequestMethod.POST)
	@ResponseBody
	public Msg modifyPassword(User user) {

		userService.modifyPassword(user);

		return Msg.success();
	}





	// 保存用户订单
	@RequestMapping(value = "/saveOrder", method = RequestMethod.POST)
	@ResponseBody
	public Msg saveOrder(Order order, Map<String, Object> map) {

		userService.saveOrder(order);
		return Msg.success();

	}

	// 查看订单按钮
	@RequestMapping(value = "/pay", method = RequestMethod.POST)
	@ResponseBody
	public Msg payOrder(@RequestParam("time") String time) {

		Order currentOrder = userService.getCurrentOrder(time);

		return Msg.success().add("backOrder", currentOrder);
	}

	@RequestMapping("/myOrder")
	public String toOrderPage() {

		return "/userorder";
	}

	@RequestMapping("/seeOrder")
	public String seeOrder(@RequestParam("userNumber") int userNum,
						   @RequestParam(value = "pn", defaultValue = "1") Integer pn, Map<String, Object> map) {
		PageHelper.startPage(pn, 3);
		List<Order> list = userService.getOrders(userNum);
		PageInfo page = new PageInfo(list, 3);
		map.put("pageInfo", page);

		return "/userorder";
	}

	/*
	 * @RequestMapping("/toOrder") public String toOrder(){
	 *
	 *
	 * return "/userorder";
	 *
	 * }
	 */

	@RequestMapping(value = "/order")

	public String order(@RequestParam("payId") Integer payId, Map<String, Object> map) {

		Order order = userService.order(payId);
		map.put("order", order);
		return "/pay";

	}

	@RequestMapping(value = "/payCheck", method = RequestMethod.POST)
	@ResponseBody
	public Msg payCheck(Account account) {

		Msg msg = userService.payCheck(account);

		return msg;
	}
	// 支付成功后返回订单页面

	// 后台订单相关
	@RequestMapping("/orders")
	@ResponseBody
	public Msg getOrders(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {

		// 从pn传过来的值开始 默认第1页 ，每页8条数据
		PageHelper.startPage(pn, 4);
		List<Order> orders = userService.getAllOrders();
		// 连续显示3页数据
		PageInfo page = new PageInfo(orders, 3);
		return Msg.success().add("pageInfo", page);

	}
	//搜素功能
	@RequestMapping("/serchOrders")
	@ResponseBody
	public Msg serchOrders(@RequestParam(value = "pn", defaultValue = "1") Integer pn,@RequestParam(value = "key", required=false) String key) {

		// 从pn传过来的值开始 默认第1页 ，每页8条数据
		PageHelper.startPage(pn, 4);
		String key1="%"+key+"%";
		List<Order> orders = userService.serchOrders(key1);
		// 连续显示3页数据
		PageInfo page = new PageInfo(orders, 3);
		return Msg.success().add("pageInfo", page);

	}










	@RequestMapping("/updateLoginTime")
	public String updateTime(HttpSession session) {
		User user = (User) session.getAttribute("userOK");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date loginTime = new Date();
		String logintime = formatter.format(loginTime);
		user.setLoginTime(logintime);
		userService.updateTime(user);
		return "/homepage";

	}

	// 审核订单 订单状态变为 已完成
	@RequestMapping("/orderAudit")
	@ResponseBody
	public Msg audit(@RequestParam("orderId") int oId) {

		Msg msg = userService.orderAudit(oId);
		return msg;
	}

	// 删除订单
	@RequestMapping("/deleteOrder")
	@ResponseBody
	public Msg deleteOrder(@RequestParam("orderId") int oId) {

		Msg  msg1  = userService.checkStatus(oId);//如果订单已付款 未完成不能删除
		if(msg1.getCode()==200){

			return msg1;
		}else{
			Msg msg = userService.deleteOrder(oId);
			return msg;}
	}

	// 前端用户删除订单
	@RequestMapping("/delOrder")
	@ResponseBody
	public Msg delOrder(@RequestParam("deleId") int deleId) {

		userService.delOrder(deleId);

		return Msg.success();
	}

	// 后台删除用户 如果用户有订单存在 无法删除
	@RequestMapping("/deleteUser")
	@ResponseBody
	public Msg deleteUser(@RequestParam("userId") int id) {

		Msg msg = userService.delUser(id);

		return msg;
	}

	// 后台查看用户
	@RequestMapping("/seeUser")
	@ResponseBody
	public Msg seeUser(@RequestParam("userId") int id) {
		User u = userService.seeUser(id);
		return Msg.success().add("user", u);
	}

	// 开通账户
	@RequestMapping(value = "/createAccount", method = RequestMethod.POST)
	@ResponseBody
	public Msg createAccount(@RequestParam("aId") int id) {

		userService.createAccount(id);

		return Msg.success();

	}

	// 检查账户是否开通 返回已开通账户余额
	@RequestMapping(value = "/checkAccount", method = RequestMethod.POST)
	@ResponseBody
	public Msg checkAccount(@RequestParam("aId") int id) {

		Msg msg = userService.checkAccount(id);

		return msg;

	}

	// 充值
	@RequestMapping(value = "/updateAccount", method = RequestMethod.POST)
	@ResponseBody
	public Msg checkAccount(Account ac) {
		Msg msg = userService.updateAccount(ac);

		return msg;

	}

	// 更新个人信息
	@RequestMapping(value = "/editMyInfo", method = RequestMethod.POST)
	@ResponseBody
	public Msg editMyInfo(User user,HttpSession session) {
		userService.editMyInfo(user);

		session.setAttribute("userOK", user);


		return Msg.success();

	}


	@RequestMapping("/sercheUsers")
	@ResponseBody
	public Msg sercheUsers(@RequestParam(value="pn",defaultValue="1")int pn,@RequestParam(value="key")String key){
		PageHelper.startPage(pn, 8);
		key="%"+key+"%";
		List<User> list=userService.sercheUsers(key);
		PageInfo page=new PageInfo(list, 3);
		return Msg.success().add("pageInfo", page);
	}






	// 用户添加评论
	@RequestMapping(value = "/addComment", method = RequestMethod.POST)
	@ResponseBody
	public Msg addComment(@RequestParam("id") int id,@RequestParam("comment") String comment) {

		userService.addComment(id,comment);

		return Msg.success();

	}


	// 用户修改支付密码
	@RequestMapping(value = "/updatePayPassword", method = RequestMethod.POST)
	@ResponseBody
	public Msg updatePayPassword(Account acc) {

		userService.updatePayPassword(acc);

		return Msg.success();

	}




}
