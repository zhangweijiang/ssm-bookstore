package edu.xit.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import edu.xit.ssm.mapper.UsersMapper;
import edu.xit.ssm.mapper.UsersMapper1;
import edu.xit.ssm.po.Users;
import edu.xit.ssm.service.UsersService;

public class UsersServiceImpl implements UsersService {

	@Autowired
	private UsersMapper1 usersMapper1;
	@Autowired
	private UsersMapper usersMapper;
	
	@Override
	public List<Users> selectUsers() throws Exception {
		// TODO Auto-generated method stub
		return usersMapper1.selectUsers();
	}

	@Override
	public void insertUser(Users user) throws Exception {
		// TODO Auto-generated method stub
		usersMapper.insertSelective(user);
	}

	@Override
	public void updateUser(Users user) throws Exception {
		// TODO Auto-generated method stub
		usersMapper.updateByPrimaryKeySelective(user);
	}

	@Override
	public void deleteUser(Integer id) throws Exception {
		// TODO Auto-generated method stub
		usersMapper.deleteByPrimaryKey(id);
	}

}
