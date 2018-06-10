package my.dao;

import my.bean.Account;
import my.bean.Order;
import my.bean.Products;
import my.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

	public List<User> getAll();

	public User userCheck(User user);

	public int uCheck(String userName);

	public void save(User us);

	public void saveOrder(Order order);

	public Order getCurrentOrder(String time);

	public List<Order> getOrders(int userNum);

	public Order order(Integer payId);

	public int payCheck(Account account);

	public void update(int balanced);

	public Account getInfo(Account account);

	public void update(Account acc);

	public Order getOrder(Account account);

	public void updateOrderStatus(Order ord);

	public List<Order> getAllOrders();

	public void updateTime(User user);

	public Order getOrderById(int oId);

	public void updateStatus(Order ord);

	public void deleteOrder(int oId);

	public void delOrder(int deleId);

	public int uOrder(int id);

	public void delUser(int id);

	public User seeUser(int id);

	public void createAccount(int id);

	public List<Account> checkAccount(int id);

	public Order checkStatus(int oId);

	public void modifyPassword(User user);

	public void editMyInfo(User user);

	public List<Order> serchOrders(String key1);

	public List<User> sercheUsers(String key);

	public Products getCurrenProduct(Order ord);

	public int getCurrenNum(Order ord);

	public void updateCurrenNum(Products ps);

	public void addComment(@Param("id") int id, @Param("comment") String comment);

	public void updatePayPassword(Account acc);

	

	

	

}
