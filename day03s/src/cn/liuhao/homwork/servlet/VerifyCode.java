package cn.liuhao.homwork.servlet;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.liuhao.homwork.util.VerifyCodeUtil;

/**
 * Servlet implementation class VerifyCode
 */
@WebServlet("/verifyCode")
public class VerifyCode extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VerifyCode() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * 从此接口获取一张验证码，并且将验证码放入session中
	 */
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/image;charset=utf8");

		Map<String, Object> result = VerifyCodeUtil.generateCodeImage();
		String code = (String) result.get("code");
		HttpSession session = req.getSession();
		session.setAttribute("verfiycode", code);
		BufferedImage img = (BufferedImage) result.get("img");
		ImageIO.write(img, "png", resp.getOutputStream());
	}

}
