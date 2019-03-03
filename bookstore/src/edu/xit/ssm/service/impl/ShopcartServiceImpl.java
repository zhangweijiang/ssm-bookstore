package edu.xit.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import edu.xit.ssm.mapper.BooksMapper1;
import edu.xit.ssm.mapper.ShopcartMapper;
import edu.xit.ssm.mapper.ShopcartMapper1;
import edu.xit.ssm.po.Books;
import edu.xit.ssm.po.Shopcart;
import edu.xit.ssm.service.ShopcartService;

public class ShopcartServiceImpl implements ShopcartService {
	
	@Autowired
	private ShopcartMapper1 shpcartMapper1;
	
	@Autowired
	private ShopcartMapper shopcartMapper;
	
	@Override
	public void insertToCart(Shopcart shopcart) throws Exception {
		// TODO Auto-generated method stub
		
		shopcartMapper.insertSelective(shopcart);
	}
	
	@Override
	public List<Shopcart> selectCarts(Integer userId) throws Exception {
		// TODO Auto-generated method stub
		return shpcartMapper1.selectCarts(userId);
	}
	
	@Override
	public void deleteCart(Integer id) throws Exception {
		// TODO Auto-generated method stub
		shopcartMapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public void deleteByBookId(Integer id) throws Exception {
		// TODO Auto-generated method stub
		shpcartMapper1.deleteByBookId(id);
	}
	
	/*@Override
	public void deleteAllCart(Shopcart shopcart) throws Exception {
		// TODO Auto-generated method stub
		
	}*/
}
