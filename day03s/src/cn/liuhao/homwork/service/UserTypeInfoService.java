package cn.liuhao.homwork.service;

import java.util.List;

import cn.liuhao.homwork.pojo.UserTypeInfo;

public interface UserTypeInfoService {

	/**
	 * 获取所有的用户类型
	 * 
	 * @return
	 */
	public List<UserTypeInfo> getAllUserType();

	/**
	 * 根据类型id获取类型信息
	 * 
	 * @param type_id
	 * @return
	 */
	public UserTypeInfo getUserType(int type_id);

}
