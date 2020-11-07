package cn.liuhao.homwork.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import cn.liuhao.homwork.pojo.UserInfo;

/**
 * 
 * �����û���ع���
 * 
 * @author ����
 *
 */
public interface UserService {

	/**
	 * 
	 * ���ݴ��ݵ�userinfo����ע��һ���û�
	 * 
	 * @param user
	 * @return
	 */
	public boolean registerUser(UserInfo user);

	/**
	 * 
	 * ���ݴ��ݵ��û��������룬����֤���ݵĺϷ���
	 * 
	 * �ɹ�:message=success�����ҽ���ѯ�ĵ�userInfo����
	 * 
	 * ʧ�ܣ�message=failed�����û�����
	 * 
	 * @param user_name
	 * @param password
	 * @return
	 */
	public Map<String, Object> loginUser(String user_name, String password);

	/**
	 * ��ȡ���е��û���Ϣ
	 * 
	 * @return
	 */
	public Map<String, Object> getAllUsers();

	/**
	 * ����id�޸Ĵ��ݹ������û���Ϣ
	 * 
	 * ���ҽ��޸��Ժ���û���Ϣ���µ�session��
	 * 
	 * @param user
	 * @param session
	 * @return
	 */
	public boolean updateUserInfo(UserInfo user, HttpSession session);

}
