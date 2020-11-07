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
	// 要连接的驱动类型
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	// 要连接的数据库名
	private static final String DATABASE = "db01";
	// 要连接的数据库的用户名
	private static final String USER = "root";
	// 要连接的数据库的密码
	private static final String PWD = "123456";

	// 要连接的URL
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/" + DATABASE
			+ "?useUnicode=true&characterEncoding=UTF-8";
	// dbutils中查询对象
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
	 * 进行新增、修改、删除操作
	 * 
	 * @param sql
	 *            进行操作的SQL语句
	 * @param param
	 *            操作对应的参数，替代SQL中的占位符
	 * @return SQL执行后受影响的行
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
	 * 查询1个对象封装成Bean对象
	 * 
	 * @param sql
	 *            进行操作的SQL语句
	 * @param clazz
	 *            结果封装的Bean类型
	 * @param param
	 *            操作对应的参数，替代SQL中的占位符
	 * @return SQL操作后的Bean对象，如果异常则返回null
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
	 * 查询只有1行结果的操作，结果封装成Map
	 * 
	 * @param sql
	 *            进行操作的SQL语句
	 * @param param
	 *            操作对应的参数，替代SQL中的占位符
	 * @return SQL操作后的1行内容封装到Map中，如果异常则返回null
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
	 * 有多行结果的查询操作，结果封装成List，元素为bean类型
	 * 
	 * @param sql
	 *            sql 进行操作的SQL语句
	 * @param clazz
	 *            结果封装的Bean类型
	 * @param param
	 *            操作对应的参数，替代SQL中的占位符
	 * @return SQL操作后的多行内容封装到List中，如果异常则返回null
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
	 * 查询有多行结果的操作，结果封装成List中，元素为map类型
	 * 
	 * @param sql
	 *            进行操作的SQL语句
	 * @param param
	 *            操作对应的参数，替代SQL中的占位符
	 * @return SQL操作后的多行内容封装到List中，如果异常则返回null
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