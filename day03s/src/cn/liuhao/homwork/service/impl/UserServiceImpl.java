package cn.liuhao.homwork.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import cn.liuhao.homwork.pojo.UserInfo;
import cn.liuhao.homwork.service.UserService;
import cn.liuhao.homwork.util.DBUtils;

public class UserServiceImpl implements UserService {

	@Override
	public boolean registerUser(UserInfo user) {
		String sql = "insert into userinfo values (default,?,?,?,?)";
		int count = DBUtils.udpate(sql, user.getUser_name(), user.getUser_password(), user.getType_id(),
				user.getUser_status());
		return count > 0 ? true : false;
	}

	@Override
	public Map<String, Object> loginUser(String user_name, String password) {
		String sql = "select * from userinfo where user_name=? and user_password=?";
		Map<String, Object> data = new HashMap<>();
		try {
			UserInfo user = DBUtils.queryOneToBean(sql, UserInfo.class, user_name, password);
			data.put("user", user);
			if (user == null)
				data.put("message", "failed");
			else
				data.put("message", "success");
		} catch (Exception e) {
			data.put("message", "failed");
		} finally {
			return data;
		}

	}

	@Override
	public Map<String, Object> getAllUsers() {
		Map<String, Object> data = new HashMap<>();
		try {
			String sql = "select * from userinfo";
			List<UserInfo> queryAllList = DBUtils.queryAllList(sql, UserInfo.class);
			data.put("userList", queryAllList);
			if (queryAllList == null)
				data.put("message", "failed");
			else
				data.put("message", "success");
		} catch (Exception e) {
			data.put("message", "failed");
		} finally {

		}

		return data;
	}

	@Override
	public boolean updateUserInfo(UserInfo user, HttpSession session) {

		String sql = "update userinfo set user_password=? where user_id=?";
		int count = DBUtils.udpate(sql, user.getUser_password(), user.getUser_id());
		if (count > 0) {
			return true;
		}
		return false;
	}

}
