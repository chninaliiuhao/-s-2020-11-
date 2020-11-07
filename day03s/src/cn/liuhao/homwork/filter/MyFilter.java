package cn.liuhao.homwork.filter;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.liuhao.homwork.pojo.UserInfo;
import cn.liuhao.homwork.service.impl.UserServiceImpl;

@WebFilter("/*")
public class MyFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		request.setCharacterEncoding("utf-8");

		// 检查用户的访问的url
		String requestURI = request.getRequestURI();
		if (requestURI.equals("/project/login.jsp") || requestURI.equals("/project/register.jsp")
				|| requestURI.equals("/project/alert.jsp") || requestURI.equals("/project/verifyCode")
				|| requestURI.equals("/project/loginCheck") || requestURI.equals("/project/registerCheck")) {
			chain.doFilter(request, response);
			return;
		}

		// 过滤静态资源
		String[] list = { "css", "js", "png", "jpg" };
		for (String item : list) {
			boolean yes = requestURI.endsWith(item);
			if (yes) {
				chain.doFilter(request, response);
				return;
			}
		}

		// 检查用户权限
		HttpSession session = request.getSession();
		UserInfo user = (UserInfo) session.getAttribute("user");
		// 检查session
		if (user != null) {
			chain.doFilter(request, response);
			return;
		}

		// 没有session
		// 检查是否存在cookie
		String user_name = "", user_pwd = "";
		Cookie[] cookies = request.getCookies();

		// 新会话，没有cookie跳转页面重新登录
		if (cookies == null || cookies.length == 1) {
			response.sendRedirect("/project/login.jsp");
			return;
		}

		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("user_name")) {
				user_name = URLDecoder.decode(cookie.getValue(), "gbk");
				continue;
			}
			if (cookie.getName().equals("user_pwd")) {
				user_pwd = URLDecoder.decode(cookie.getValue(), "utf-8");
				continue;
			}
		}

		// 如果session被清除，重新跳转至登录页面
		if (user_name.equals("") || user_pwd.equals("")) {
			response.sendRedirect("/project/login.jsp");
			return;
		}

		// 从cookie取出用户数据
		if (!user_name.equals("") && !user_pwd.equals("")) {

			user = (UserInfo) new UserServiceImpl().loginUser(user_name, user_pwd).get("user");
			session.setAttribute("user", user);

			chain.doFilter(request, response);
			return;
		}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
	}

}
