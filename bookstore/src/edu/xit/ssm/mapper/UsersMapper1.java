package edu.xit.ssm.mapper;

import java.util.List;

import edu.xit.ssm.po.Users;

public interface UsersMapper1 {
	
	//查询所有用户
	public List<Users> selectUsers() throws Exception;
	
	
}
