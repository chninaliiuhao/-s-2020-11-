package cn.liuhao.homwork.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.liuhao.homwork.service.impl.UserServiceImpl;

/**
 * Servlet implementation class ShowUsers
 */
@WebServlet("/ShowUsers")
public class ShowUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShowUsers() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse repsonse)
			throws ServletException, IOException {
		Map<String, Object> data = new UserServiceImpl().getAllUsers();
		HttpSession session = request.getSession();
		request.setAttribute("list", data.get("userList"));
		request.getRequestDispatcher("/show.jsp").forward(request, repsonse);
	}
}
