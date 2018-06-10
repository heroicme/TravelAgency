package my.bean;

public class User {

	private Integer userId;// 用户id
	private String userName;// 用户姓名
	private String userPassword;// 用户密码
	private String email;// 邮箱
	private String gender;// 性别
	private String grade;// 会员等级
	private String loginTime;// 最近登录时间

	/**
	 * @return userId
	 */
	public Integer getUserId() {
		return userId;
	}

	/**
	 * @param userId
	 *            要设置的 userId
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	/**
	 * @return userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName
	 *            要设置的 userName
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return userPassword
	 */
	public String getUserPassword() {
		return userPassword;
	}

	/**
	 * @param userPassword
	 *            要设置的 userPassword
	 */
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	/**
	 * @return email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            要设置的 email
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return gender
	 */
	public String getGender() {
		return gender;
	}

	/**
	 * @param gender
	 *            要设置的 gender
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}

	/**
	 * @return grade
	 */
	public String getGrade() {
		return grade;
	}

	/**
	 * @param grade
	 *            要设置的 grade
	 */
	public void setGrade(String grade) {
		this.grade = grade;
	}

	/**
	 * @return loginTime
	 */
	public String getLoginTime() {
		return loginTime;
	}

	/**
	 * @param loginTime
	 *            要设置的 loginTime
	 */
	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}

	public User() {
	
	}

}
