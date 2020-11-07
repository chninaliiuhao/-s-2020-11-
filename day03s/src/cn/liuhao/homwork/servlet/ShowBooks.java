package cn.liuhao.homwork.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liuhao.homwork.pojo.BookTable;

/**
 * Servlet implementation class showBooks
 */
@WebServlet("/showBooks")
public class ShowBooks extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ShowBooks() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int pageIndex = 0;
		int pageSize = 0;
		String key = null;
		String sort = "asc";
		int minPrice = 0;
		int maxPrice = 0;

		if (req.getParameter("pageIndex") == null)
			pageIndex = 1;
		else {
			pageIndex = Integer.parseInt(req.getParameter("pageIndex"));
			if (pageIndex == 0)
				pageIndex = 1;
		}

		if (req.getParameter("pageSize") == null)
			pageSize = 20;
		else
			pageSize = Integer.parseInt(req.getParameter("pageSize"));

		if (req.getParameter("key") == null)
			key = "";
		else
			key = req.getParameter("key");

		if (req.getParameter("sort") == null)
			sort = "asc";
		else
			sort = req.getParameter("sort");

		if (req.getParameter("minPrice") == null)
			minPrice = 0;
		else
			minPrice = Integer.parseInt(req.getParameter("minPrice"));

		if (req.getParameter("maxPrice") == null)
			maxPrice = 99999;
		else
			maxPrice = Integer.parseInt(req.getParameter("maxPrice"));

		BookTable bookTable = new BookTable(pageIndex, pageSize, key, sort, minPrice, maxPrice);
		req.setAttribute("bookTable", bookTable);
		req.getRequestDispatcher("showBooks.jsp").forward(req, resp);
	}

}
