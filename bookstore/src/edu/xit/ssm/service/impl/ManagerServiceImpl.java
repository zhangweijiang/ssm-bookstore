package edu.xit.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import edu.xit.ssm.mapper.ManagerMapper1;
import edu.xit.ssm.po.Manager;
import edu.xit.ssm.service.ManagerService;

public class ManagerServiceImpl implements ManagerService {

	@Autowired
	private ManagerMapper1 managerMapper1;
	
	@Override
	public List<Manager> selectManagers() throws Exception {
		// TODO Auto-generated method stub
		return managerMapper1.selectManagers();
	}

}
