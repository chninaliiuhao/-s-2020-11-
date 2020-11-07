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
	 * ��������������֤��
	 */
	public static Map<String, Object> generateCodeImage() {

		Map<String, Object> result = new HashMap<>();

		// 1.�����հ�ͼƬ
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		// 2.��ȡ����
		Graphics graphics = image.getGraphics();
		// 3.���þ��α���
		graphics.setColor(Color.LIGHT_GRAY);
		graphics.fillRect(0, 0, width, height);
		// 5.������ַ�
		Random ran = new Random();
		StringBuffer strb = new StringBuffer();
		for (int i = 0; i < char_size; i++) {
			// ȡ����ַ�
			int n = ran.nextInt(9) + 1;
			// ������ɫ
			graphics.setColor(getRandomColor());
			// ���������С
			graphics.setFont(new Font(null, Font.BOLD + Font.ITALIC, font_size));
			// ��
			graphics.drawString(n + "", i * width / char_size, height * 2 / 3);
			// ��ȡ�ַ�
			strb.append(n + "");
		}

		result.put("code", strb.toString());
		result.put("img", image);

		return result;
	}

	/**
	 * ��ȡ�����ɫ
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
