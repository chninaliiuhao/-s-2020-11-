package cn.liuhao.homwork.service.impl;

import java.util.List;

import cn.liuhao.homwork.pojo.UserTypeInfo;
import cn.liuhao.homwork.service.UserTypeInfoService;
import cn.liuhao.homwork.util.DBUtils;

public class UserTypeInfoServiceImpl implements UserTypeInfoService {

	@Override
	public List<UserTypeInfo> getAllUserType() {

		String sql = "select * from usertypeinfo";

		return DBUtils.queryAllList(sql, UserTypeInfo.class);
	}

	@Override
	public UserTypeInfo getUserType(int type_id) {
		String sql = "select * from usertypeinfo where type_id=?";

		return DBUtils.queryOneToBean(sql, UserTypeInfo.class, type_id);
	}

}
