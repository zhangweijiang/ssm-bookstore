package edu.xit.ssm.service;

import java.util.List;

import edu.xit.ssm.po.Manager;

public interface ManagerService {

	//查询管理员
	public List<Manager> selectManagers() throws Exception;
	
}
