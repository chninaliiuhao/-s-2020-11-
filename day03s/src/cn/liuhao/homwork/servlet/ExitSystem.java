package cn.liuhao.homwork.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ExitSystem
 */
@WebServlet("/exitSystem")
public class ExitSystem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ExitSystem() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * 取消cookie
	 * 
	 * 取消session
	 * 
	 */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Cookie[] cookies = request.getCookies();

		for (Cookie cookie : cookies) {
			response.addCookie(new Cookie(cookie.getName(), ""));
		}

		request.getSession().setAttribute("user", null);

		response.sendRedirect("/project/login.jsp");
	}

}
