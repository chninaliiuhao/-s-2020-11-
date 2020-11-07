package cn.liuhao.homwork.service.impl;

import java.util.ArrayList;
import java.util.List;

import cn.liuhao.homwork.pojo.Book;
import cn.liuhao.homwork.service.BookService;
import cn.liuhao.homwork.util.DBUtils;

public class BookServiceImpl implements BookService {

	@Override
	public List<Book> getAllBooks(String key) {

		List<Book> list = new ArrayList<>();

		if (key == null) {
			String sql = "select * from huihui";
			list = DBUtils.queryAllList(sql, Book.class);
		} else {
			key = "%" + key + "%";
			String sql = "select * from huihui where book_name like ?";
			list = DBUtils.queryAllList(sql, Book.class, key);
		}

		return list;
	}

	@Override
	public List<Book> getBooks(int pageIndex, int countSize, String key, String sort, int minPrice, int maxPrice) {

		// ÆðÊ¼Êý
		int start = (pageIndex - 1) * countSize;
		if (sort == null)
			sort = "asc";
		if (maxPrice == 0)
			maxPrice = 99999999;
		List<Book> list = new ArrayList<>();
		if (key == null) {
			String sql = "";

			if (sort.equals("asc"))
				sql = "select * from huihui where book_price>? and book_price<? order by book_price asc limit ?,?;";
			else
				sql = "select * from huihui where book_price>? and book_price<? order by book_price desc limit ?,?;";

			list = DBUtils.queryAllList(sql, Book.class, minPrice, maxPrice, start, countSize);
		} else {
			key = "%" + key + "%";
			String sql = "";
			if (sort.equals("asc"))
				sql = "select * from huihui where book_name like ? and  book_price>? and book_price<? order by book_price asc limit ?,?";
			else
				sql = "select * from huihui where book_name like ? and  book_price>? and book_price<? order by book_price desc limit ?,?";
			list = DBUtils.queryAllList(sql, Book.class, key, minPrice, maxPrice, start, countSize);
		}

		return list;
	}

	@Override
	public int getBooksCount(String key) {
		int count = 0;

		if (key == null) {
			count = this.getAllBooks(null).size();
		} else {
			count = this.getAllBooks(key).size();
		}

		return count;
	}

	@Override
	public int getBooksCount(String key, int minPirce, int maxPirce) {

		if (key == null)
			key = "%%";
		else
			key = "%" + key + "%";

		String sql = "select * from huihui where book_name like ? and book_price>? and book_price<?";

		return DBUtils.queryAllList(sql, Book.class, key, minPirce, maxPirce).size();
	}

}
