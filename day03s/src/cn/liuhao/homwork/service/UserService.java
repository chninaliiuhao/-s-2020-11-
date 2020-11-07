package cn.liuhao.homwork.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import cn.liuhao.homwork.pojo.UserInfo;

/**
 * 
 * 描述用户相关功能
 * 
 * @author 刘浩
 *
 */
public interface UserService {

	/**
	 * 
	 * 根据传递的userinfo参数注册一个用户
	 * 
	 * @param user
	 * @return
	 */
	public boolean registerUser(UserInfo user);

	/**
	 * 
	 * 根据传递的用户名，密码，来验证数据的合法性
	 * 
	 * 成功:message=success，并且将查询的到userInfo返回
	 * 
	 * 失败：message=failed，给用户提醒
	 * 
	 * @param user_name
	 * @param password
	 * @return
	 */
	public Map<String, Object> loginUser(String user_name, String password);

	/**
	 * 获取所有的用户信息
	 * 
	 * @return
	 */
	public Map<String, Object> getAllUsers();

	/**
	 * 根据id修改传递过来的用户信息
	 * 
	 * 并且将修改以后的用户信息更新到session中
	 * 
	 * @param user
	 * @param session
	 * @return
	 */
	public boolean updateUserInfo(UserInfo user, HttpSession session);

}
