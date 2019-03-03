package edu.xit.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.xit.ssm.mapper.OrdersMapper;
import edu.xit.ssm.mapper.OrdersMapper1;
import edu.xit.ssm.po.Orders;
import edu.xit.ssm.po.Shopcart;
import edu.xit.ssm.service.OrdersService;

public class OrdersServiceImpl implements OrdersService {

	@Autowired
	private OrdersMapper ordersMapper;
	@Autowired
	private OrdersMapper1 ordersMapper1;
	
	@Override
	public void insertSelective(Orders record) throws Exception {
		// TODO Auto-generated method stub
		
		ordersMapper.insertSelective(record);
	}
	
	@Override
	public List<Orders> selectOrders(Integer userId) throws Exception {
		// TODO Auto-generated method stub
		return ordersMapper1.selectOrders(userId);
	}
	
	@Override
	public List<Orders> selectOrders1() throws Exception {
		// TODO Auto-generated method stub
		return ordersMapper1.selectOrders1();
	}
	
	@Override
	public void updateOrderState(Orders record) throws Exception {
		// TODO Auto-generated method stub
		
		ordersMapper.updateByPrimaryKeySelective(record);
	}
	@Override
	public void deleteOrder(Integer id) throws Exception {
		// TODO Auto-generated method stub
		ordersMapper.deleteByPrimaryKey(id);
	}

}
