package com.website.cl.system.dao;


import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.website.cl.common.BaseDao;
import com.website.cl.system.domain.User;

public interface UserDao extends BaseDao<User>{
	
	@Select("select * from user where state = #{state}")
	public List<User> selectByState(Integer state);
}
