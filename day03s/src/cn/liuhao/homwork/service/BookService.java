package cn.liuhao.homwork.service;

import java.util.List;

import cn.liuhao.homwork.pojo.Book;

public interface BookService {

	/**
	 * ��ȡ���е�book��Ϣ
	 * 
	 * 
	 * ���Ը���ָ��keyģ��ƥ��,Ҳ���Բ���
	 * 
	 * @return
	 */
	public List<Book> getAllBooks(String key);

	/**
	 * ����pageNumber��pageNumber��ȡbooks
	 * 
	 * ���Ը���ָ��keyģ��ƥ��,Ҳ���Բ���
	 * 
	 * @param pageNumber
	 * @param countSize
	 * @return
	 */
	default List<Book> getBooks(int pageIndex, int countSize, String key, String sort, int minPrice, int maxPrice) {
		return null;
	}

	/**
	 * ��ȡ������
	 * 
	 * ���Ը���key��ֵ����ģ��ƥ�䣬Ҳ���Բ���key
	 * 
	 * @return
	 */
	public int getBooksCount(String key);

	/**
	 * ��ȡ��ָ���۸�ָ���ؼ��ֵĽ����������
	 * 
	 * @param key
	 * @param minPirce
	 * @param maxPirce
	 * @return
	 */
	public int getBooksCount(String key, int minPirce, int maxPirce);

}
