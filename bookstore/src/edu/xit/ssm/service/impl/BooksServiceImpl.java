package edu.xit.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import edu.xit.ssm.mapper.BooksMapper;
import edu.xit.ssm.mapper.BooksMapper1;
import edu.xit.ssm.po.Books;
import edu.xit.ssm.service.BooksService;

public class BooksServiceImpl implements BooksService {

	@Autowired
	private BooksMapper1 booksMapper1;
	@Autowired
	private BooksMapper booksMapper;
	
	@Override
	public List<Books> selectBooks() throws Exception {
		// TODO Auto-generated method stub
		return booksMapper1.selectBooks();
	}

	@Override
	public Books selectBookById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return booksMapper.selectByPrimaryKey(id);
	}

	public List<Books> selectBookByName(String name) throws Exception {
		// TODO Auto-generated method stub
		return booksMapper1.selectBookByName(name);
	}

	@Override
	public void deleteByPrimaryKey(Integer id) throws Exception {
		// TODO Auto-generated method stub
		booksMapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public void updateByPrimaryKey(Books book) throws Exception {
		// TODO Auto-generated method stub
		booksMapper.updateByPrimaryKeySelective(book);
	}

	@Override
	public void insertSelective(Books record) throws Exception {
		
		booksMapper.insertSelective(record);
	}

	
}
