package edu.xit.ssm.mapper;

import java.util.List;

import edu.xit.ssm.po.Manager;

public interface ManagerMapper1 {
	
	//查询管理员
	public List<Manager> selectManagers() throws Exception;
	
}
