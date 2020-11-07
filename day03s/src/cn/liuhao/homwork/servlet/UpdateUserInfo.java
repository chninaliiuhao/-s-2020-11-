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
 * Servlet implementation class UpdateUserInfo
 */
@WebServlet("/UpdateUserInfo")
public class UpdateUserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateUserInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int user_id = Integer.parseInt(request.getParameter("user_id"));
		String user_name = request.getParameter("user_name");
		String user_password = request.getParameter("user_password");
		UserInfo user = (UserInfo) request.getSession().getAttribute("user");

		if (user_password == null || user_password.equals("")) {
			user_password = user.getUser_password();
		}

		boolean updateInfo = new UserServiceImpl().updateUserInfo(new UserInfo(user_id, user_name, user_password),
				request.getSession());

		if (updateInfo) {
			Message message = new Message("�޸���Ϣ", "�޸��û���Ϣ�ɹ���������ת����¼ҳ�棬�����µ�¼", "/project/exitSystem");
			HttpSession session = request.getSession();
			session.setAttribute("message", message);
			response.sendRedirect("/project/alert.jsp");
			return;
		} else {
			Message message = new Message("�޸���Ϣ", "�޸��û���Ϣʧ�ܣ���ǰ�û��϶࣬���Ե�Ƭ�̣�������ת����ҳ", "/project/showBooks");
			HttpSession session = request.getSession();
			session.setAttribute("message", message);
			response.sendRedirect("/project/alert.jsp");
			return;
		}
	}
}
