package cn.liuhao.homwork.service;

import java.util.List;

import cn.liuhao.homwork.pojo.UserTypeInfo;

public interface UserTypeInfoService {

	/**
	 * ��ȡ���е��û�����
	 * 
	 * @return
	 */
	public List<UserTypeInfo> getAllUserType();

	/**
	 * ��������id��ȡ������Ϣ
	 * 
	 * @param type_id
	 * @return
	 */
	public UserTypeInfo getUserType(int type_id);

}
