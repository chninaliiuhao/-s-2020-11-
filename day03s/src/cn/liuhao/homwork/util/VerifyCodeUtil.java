package cn.liuhao.homwork.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public class VerifyCodeUtil {

	static int width = 200;

	static int height = 80;

	static int char_size = 4;

	static int font_size = 35;

	/**
	 * 根据数字生产验证码
	 */
	public static Map<String, Object> generateCodeImage() {

		Map<String, Object> result = new HashMap<>();

		// 1.创建空白图片
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		// 2.获取画笔
		Graphics graphics = image.getGraphics();
		// 3.设置矩形背景
		graphics.setColor(Color.LIGHT_GRAY);
		graphics.fillRect(0, 0, width, height);
		// 5.画随机字符
		Random ran = new Random();
		StringBuffer strb = new StringBuffer();
		for (int i = 0; i < char_size; i++) {
			// 取随机字符
			int n = ran.nextInt(9) + 1;
			// 设置颜色
			graphics.setColor(getRandomColor());
			// 设置字体大小
			graphics.setFont(new Font(null, Font.BOLD + Font.ITALIC, font_size));
			// 画
			graphics.drawString(n + "", i * width / char_size, height * 2 / 3);
			// 存取字符
			strb.append(n + "");
		}

		result.put("code", strb.toString());
		result.put("img", image);

		return result;
	}

	/**
	 * 获取随机颜色
	 * 
	 * @return
	 */
	public static Color getRandomColor() {
		Random random = new Random();
		return new Color(random.nextInt(256), random.nextInt(256), random.nextInt(256));
	}

	public static void main(String[] args) {

		Map<String, Object> result = generateCodeImage();
		String code = (String) result.get("code");
		System.out.println(code);
	}
}
