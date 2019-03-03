package edu.xit.ssm.mapper;

import java.util.List;

import edu.xit.ssm.po.Books;

public interface BooksMapper1 {
	
	//查询所有书籍
	public List<Books> selectBooks() throws Exception;
	
	//根据模糊书名查询书籍
	public List<Books> selectBookByName(String name) throws Exception;
	
}
