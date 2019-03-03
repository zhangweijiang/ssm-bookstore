package edu.xit.ssm.mapper;

import java.util.List;

import edu.xit.ssm.po.Shopcart;

public interface ShopcartMapper1 {
		//查询所有购物车信息
		public List<Shopcart> selectCarts(Integer userId) throws Exception;
		public int deleteByBookId(Integer id) throws Exception;
}
