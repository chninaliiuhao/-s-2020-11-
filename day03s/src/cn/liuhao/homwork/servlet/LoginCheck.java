package cn.liuhao.homwork.servlet;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.liuhao.homwork.pojo.Message;
import cn.liuhao.homwork.pojo.UserInfo;
import cn.liuhao.homwork.service.impl.UserServiceImpl;

@WebServlet("/loginCheck")
public class LoginCheck extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * ����û���������
	 * 
	 * ����Ƿ������������½
	 */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String user_name = request.getParameter("username");
		String user_pwd = request.getParameter("pwd");
		String verifycode = request.getParameter("verifycode");
		String rdio = request.getParameter("rdio");

		// �ǿ���֤
		if (user_name.trim().equals("") || user_pwd.trim().equals("") || verifycode.trim().equals("")) {

			Message message = new Message("��¼��Ϣ", "���벻��Ϊ�գ��û��������룬��֤�룩", "/project/login.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("message", message);
			response.sendRedirect("/project/alert.jsp");
			return;
		}

		// ��֤��ȶ�
		String code = (String) request.getSession().getAttribute("verfiycode");

		if (!verifycode.equals(code)) {

			Message message = new Message("��¼��Ϣ", "��֤�������������������</br>�ص���¼��ҳˢ�»�ȡ�µ���֤��", "/project/login.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("message", message);
			response.sendRedirect("/project/alert.jsp");
			return;

		}

		// ��֤�û��Ϸ���
		Map<String, Object> loginUser = new UserServiceImpl().loginUser(user_name, user_pwd);
		String message = (String) loginUser.get("message");
		if (message.equals("failed")) {

			Message messages = new Message("��¼��Ϣ", "�û����������������ʹ����ȷ���˻�", "/project/login.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("message", messages);
			response.sendRedirect("/project/alert.jsp");
			return;
		}
		UserInfo user = (UserInfo) loginUser.get("user");
		// ���û����ݴ���session
		request.getSession().setAttribute("user", user);

		// �������½
		if (rdio == null) {

		} else {
			@SuppressWarnings("deprecation")
			Cookie cookie01 = new Cookie("user_name", URLEncoder.encode(user_name));
			cookie01.setMaxAge(60 * 60 * 24 * 7);

			@SuppressWarnings("deprecation")
			Cookie cookie02 = new Cookie("user_pwd", URLEncoder.encode(user_pwd));
			cookie02.setMaxAge(60 * 60 * 24 * 7);

			response.addCookie(cookie01);
			response.addCookie(cookie02);
		}

		response.sendRedirect("/project/showBooks");
	}

}
