package cn.liuhao.homwork.util;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.BasicRowProcessor;
import org.apache.commons.dbutils.GenerousBeanProcessor;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.alibaba.druid.pool.DruidDataSource;

public class DBUtils {
	// Ҫ���ӵ���������
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	// Ҫ���ӵ����ݿ���
	private static final String DATABASE = "db01";
	// Ҫ���ӵ����ݿ���û���
	private static final String USER = "root";
	// Ҫ���ӵ����ݿ������
	private static final String PWD = "123456";

	// Ҫ���ӵ�URL
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/" + DATABASE
			+ "?useUnicode=true&characterEncoding=UTF-8";
	// dbutils�в�ѯ����
	private static QueryRunner runner;

	static {
		DruidDataSource ds = new DruidDataSource();
		ds.setUrl(URL);
		ds.setUsername(USER);
		ds.setPassword(PWD);
		ds.setDriverClassName(DRIVER);
		runner = new QueryRunner(ds);
	}

	/**
	 * �����������޸ġ�ɾ������
	 * 
	 * @param sql
	 *            ���в�����SQL���
	 * @param param
	 *            ������Ӧ�Ĳ��������SQL�е�ռλ��
	 * @return SQLִ�к���Ӱ�����
	 */
	public static int udpate(String sql, Object... param) {
		try {
			return runner.update(sql, param);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	/**
	 * ��ѯ1�������װ��Bean����
	 * 
	 * @param sql
	 *            ���в�����SQL���
	 * @param clazz
	 *            �����װ��Bean����
	 * @param param
	 *            ������Ӧ�Ĳ��������SQL�е�ռλ��
	 * @return SQL�������Bean��������쳣�򷵻�null
	 */
	public static <T> T queryOneToBean(String sql, Class<T> clazz, Object... param) {
		try {
			BasicRowProcessor brp = new BasicRowProcessor(new GenerousBeanProcessor());
			return runner.query(sql, new BeanHandler<T>(clazz, brp), param);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ��ѯֻ��1�н���Ĳ����������װ��Map
	 * 
	 * @param sql
	 *            ���в�����SQL���
	 * @param param
	 *            ������Ӧ�Ĳ��������SQL�е�ռλ��
	 * @return SQL�������1�����ݷ�װ��Map�У�����쳣�򷵻�null
	 */
	public static Map<String, Object> queryOneToMap(String sql, Object... param) {
		try {
			return runner.query(sql, new MapHandler(), param);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * �ж��н���Ĳ�ѯ�����������װ��List��Ԫ��Ϊbean����
	 * 
	 * @param sql
	 *            sql ���в�����SQL���
	 * @param clazz
	 *            �����װ��Bean����
	 * @param param
	 *            ������Ӧ�Ĳ��������SQL�е�ռλ��
	 * @return SQL������Ķ������ݷ�װ��List�У�����쳣�򷵻�null
	 */
	public static <T> List<T> queryAllList(String sql, Class<T> clazz, Object... param) {
		try {
			BasicRowProcessor brp = new BasicRowProcessor(new GenerousBeanProcessor());
			return runner.query(sql, new BeanListHandler<T>(clazz, brp), param);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ��ѯ�ж��н���Ĳ����������װ��List�У�Ԫ��Ϊmap����
	 * 
	 * @param sql
	 *            ���в�����SQL���
	 * @param param
	 *            ������Ӧ�Ĳ��������SQL�е�ռλ��
	 * @return SQL������Ķ������ݷ�װ��List�У�����쳣�򷵻�null
	 */
	public static List<Map<String, Object>> queryAllMap(String sql, Object... param) {
		try {
			return runner.query(sql, new MapListHandler(), param);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}