package edu.xit.ssm.service;

import java.util.List;

import edu.xit.ssm.po.Books;

public interface BooksService {
	
	//查询所有书籍
	public List<Books> selectBooks() throws Exception;
	
	//根据id查询书籍
	public Books selectBookById(Integer id) throws Exception;
	
	//根据模糊书名查询书籍
	public List<Books> selectBookByName(String name) throws Exception;
	
	//根据id删除书籍
	public void deleteByPrimaryKey(Integer id) throws Exception;
	
	//根据id更新书籍
	public void updateByPrimaryKey(Books book) throws Exception;
	
	//添加书籍信息
	public void insertSelective(Books record) throws Exception;
	
}
