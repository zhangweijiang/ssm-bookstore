package edu.xit.ssm.service;

import java.util.List;

import edu.xit.ssm.po.Users;


public interface UsersService {
	//查询所有用户
	public List<Users> selectUsers() throws Exception;

	//注册新用户
	public void insertUser(Users user) throws Exception;

	//更新用户信息
	public void updateUser(Users user) throws Exception;
	
	//删除用户信息
	public void deleteUser(Integer id) throws Exception;
}
