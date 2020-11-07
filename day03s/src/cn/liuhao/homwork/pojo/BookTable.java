package cn.liuhao.homwork.pojo;

import java.util.List;

import cn.liuhao.homwork.service.impl.BookServiceImpl;

public class BookTable {

	private int pageindex;

	private int pagesize;

	private int totalNumber;

	private int totalPage;

	private String key;

	private String sort;

	private int minPrice;

	private int maxPrice;

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	private List<Book> books;

	public int getPageindex() {
		return pageindex;
	}

	public void setPageindex(int pageindex) {
		this.pageindex = pageindex;
	}

	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public int getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public int getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(int minPrice) {
		this.minPrice = minPrice;
	}

	public int getMaxPrice() {
		return maxPrice;
	}

	public void setMaxPrice(int maxPrice) {
		this.maxPrice = maxPrice;
	}

	public BookTable(int pageindex, int pagesize, String key, String sort, int minPrice, int maxPrice) {
		super();
		this.pageindex = pageindex;
		this.pagesize = pagesize;
		this.key = key;
		this.maxPrice = maxPrice;
		this.minPrice = minPrice;
		this.sort = sort;

		this.books = new BookServiceImpl().getBooks(pageindex, pagesize, this.key, this.sort, this.minPrice,
				this.maxPrice);

		// 获取按条件筛选的数据
		if (this.key == null || this.key.equals(""))
			this.totalNumber = new BookServiceImpl().getBooksCount(this.key, this.minPrice, this.maxPrice);
		else
			this.totalNumber = new BookServiceImpl().getBooksCount(this.key);

		if (this.totalNumber % this.pagesize > 0) {
			this.totalPage = this.totalNumber / this.pagesize + 1;
		} else {
			this.totalPage = this.totalNumber / this.pagesize;
		}

		if (this.pageindex > this.totalPage)
			this.pageindex = 1;
		else if (this.pageindex <= 0)
			this.pageindex = 1;
	}

}
