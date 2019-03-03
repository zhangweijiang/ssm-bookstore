package edu.xit.ssm.service;

import java.util.List;

import edu.xit.ssm.po.Orders;
import edu.xit.ssm.po.Shopcart;

public interface OrdersService {
	
	public void insertSelective(Orders record) throws Exception;
	//查询订单所有信息
	public List<Orders> selectOrders(Integer userId) throws Exception;
	
	//查询订单所有信息-后台
	public List<Orders> selectOrders1() throws Exception;
	
	//更新订单状态
	public void updateOrderState(Orders record) throws Exception;
	
	//通过id删除订单
	public void deleteOrder(Integer id) throws Exception;
}
