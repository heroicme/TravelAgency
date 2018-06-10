package my.bean;

public class Order {

	
	private int orderId;
	private int  totalPrice;
	private Integer userNumber;//存放当前用户id
	private String orderTitle;
	private String goTime;
	private int goNums;//出发人数
	private String current;//出发地点
	private String phone;
	private String name;
	private String orderTime;//下单时间
	private String orderStatus;//订单状态 (是否付款)
	private String imgPath;//订单图片地址
	private int payById;//被支付的相应账户
	private String comment;//用户对该订单服务评论与项目满意度有关
	
	/**
	 * @return comment
	 */
	public String getComment() {
		return comment;
	}
	/**
	 * @param comment 要设置的 comment
	 */
	public void setComment(String comment) {
		this.comment = comment;
	}
	/**
	 * @return payById
	 */
	public int getPayById() {
		return payById;
	}
	/**
	 * @param payById 要设置的 payById
	 */
	public void setPayById(int payById) {
		this.payById = payById;
	}
	/**
	 * @return imgPath
	 */
	public String getImgPath() {
		return imgPath;
	}
	/**
	 * @param imgPath 要设置的 imgPath
	 */
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	/**
	 * @return orderTime
	 */
	public String getOrderTime() {
		return orderTime;
	}
	/**
	 * @param orderTime 要设置的 orderTime
	 */
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	/**
	 * @return orderStatus
	 */
	public String getOrderStatus() {
		return orderStatus;
	}
	/**
	 * @param orderStatus 要设置的 orderStatus
	 */
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	/**
	 * @return orderId
	 */
	public int getOrderId() {
		return orderId;
	}
	/**
	 * @param orderId 要设置的 orderId
	 */
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	/**
	 * @return totalPrice
	 */
	public int getTotalPrice() {
		return totalPrice;
	}
	/**
	 * @param totalPrice 要设置的 totalPrice
	 */
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	/**
	 * @return userNumber
	 */
	public Integer getUserNumber() {
		return userNumber;
	}
	/**
	 * @param userNumber 要设置的 userNumber
	 */
	public void setUserNumber(Integer userNumber) {
		this.userNumber = userNumber;
	}
	/**
	 * @return orderTitle
	 */
	public String getOrderTitle() {
		return orderTitle;
	}
	/**
	 * @param orderTitle 要设置的 orderTitle
	 */
	public void setOrderTitle(String orderTitle) {
		this.orderTitle = orderTitle;
	}
	/**
	 * @return goTime
	 */
	public String getGoTime() {
		return goTime;
	}
	/**
	 * @param goTime 要设置的 goTime
	 */
	public void setGoTime(String goTime) {
		this.goTime = goTime;
	}
	/**
	 * @return goNums
	 */
	public int getGoNums() {
		return goNums;
	}
	/**
	 * @param goNums 要设置的 goNums
	 */
	public void setGoNums(int goNums) {
		this.goNums = goNums;
	}
	/**
	 * @return current
	 */
	public String getCurrent() {
		return current;
	}
	/**
	 * @param current 要设置的 current
	 */
	public void setCurrent(String current) {
		this.current = current;
	}
	/**
	 * @return phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @param phone 要设置的 phone
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/**
	 * @return name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name 要设置的 name
	 */
	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
