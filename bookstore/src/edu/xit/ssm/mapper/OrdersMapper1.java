package edu.xit.ssm.mapper;

import edu.xit.ssm.po.Orders;

import java.util.List;


public interface OrdersMapper1 {
	//查询所有订单信息
	public List<Orders> selectOrders(Integer userId) throws Exception;
	//查询所有订单信息-后台
	public List<Orders> selectOrders1() throws Exception;
}