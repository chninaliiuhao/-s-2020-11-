package cn.liuhao.homwork.service;

import java.util.List;

import cn.liuhao.homwork.pojo.Book;

public interface BookService {

	/**
	 * 获取所有的book信息
	 * 
	 * 
	 * 可以根据指定key模糊匹配,也可以不填
	 * 
	 * @return
	 */
	public List<Book> getAllBooks(String key);

	/**
	 * 根据pageNumber与pageNumber获取books
	 * 
	 * 可以根据指定key模糊匹配,也可以不填
	 * 
	 * @param pageNumber
	 * @param countSize
	 * @return
	 */
	default List<Book> getBooks(int pageIndex, int countSize, String key, String sort, int minPrice, int maxPrice) {
		return null;
	}

	/**
	 * 获取总数量
	 * 
	 * 可以根据key的值进行模糊匹配，也可以不填key
	 * 
	 * @return
	 */
	public int getBooksCount(String key);

	/**
	 * 获取按指定价格，指定关键字的结果集的数量
	 * 
	 * @param key
	 * @param minPirce
	 * @param maxPirce
	 * @return
	 */
	public int getBooksCount(String key, int minPirce, int maxPirce);

}
