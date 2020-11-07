package cn.liuhao.homwork.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.liuhao.homwork.pojo.Message;
import cn.liuhao.homwork.pojo.UserInfo;
import cn.liuhao.homwork.service.impl.UserServiceImpl;

/**
 * Servlet implementation class RegisterCheck
 */
@WebServlet("/registerCheck")
public class RegisterCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterCheck() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String user_name = request.getParameter("user_name");
		String user_pwd = request.getParameter("user_pwd");
		String user_pwd_confirm = request.getParameter("user_pwd_confirm");
		String verifycode = request.getParameter("verifycode");

		// �ǿ���֤
		if (user_name.equals("") || user_pwd.equals("") || verifycode.equals("")) {

			Message message = new Message("ע����Ϣ", "�û��������룬��֤������Ϊ������������", "/project/register.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("message", message);
			response.sendRedirect("/project/alert.jsp");
			return;
		}

		// ������֤
		if (!user_pwd.equals(user_pwd_confirm)) {

			Message message = new Message("ע����Ϣ", "�����������벻һ�£�������ȷ������", "/project/register.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("message", message);
			response.sendRedirect("/project/alert.jsp");
			return;
		}

		// ��֤��ȶ�
		String code = (String) request.getSession().getAttribute("verfiycode");
		if (!verifycode.equals(code)) {

			Message message = new Message("ע����Ϣ", "��֤��ȶԴ�����������д", "/project/register.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("message", message);
			response.sendRedirect("/project/alert.jsp");
			return;
		}

		// ���
		UserInfo user = new UserInfo();
		user.setUser_name(user_name);
		user.setUser_password(user_pwd);
		user.setUser_status("�¿��û�");
		user.setType_id(2);
		if (new UserServiceImpl().registerUser(user)) {

			Message message = new Message("ע����Ϣ", "ע��ɹ�", "/project/login.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("message", message);
			response.sendRedirect("/project/alert.jsp");
			return;
		} else {

			Message message = new Message("ע����Ϣ", "ע��ʧ��", "/project/register.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("message", message);
			response.sendRedirect("/project/alert.jsp");
			return;
		}
	}

}
