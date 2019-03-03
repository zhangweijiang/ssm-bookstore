package edu.xit.ssm.service;

import java.util.List;



import edu.xit.ssm.po.Shopcart;

public interface ShopcartService {
	
	//查询购物车所有信息
	public List<Shopcart> selectCarts(Integer id) throws Exception;
	//添加到购物车
	public void insertToCart(Shopcart shopcart) throws Exception;
	//通过id删除购物车
	public void deleteCart(Integer id) throws Exception;
	//通过book_id删除购物车信息
	public void deleteByBookId(Integer userId) throws Exception;
}
