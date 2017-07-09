package com.flowers.travel.service;

import java.util.List;


import com.flowers.travel.model.UserInfoModel;


public interface IUserInfoService {
	//增加用户
	public void add(UserInfoModel uim) throws Exception;	
	
	//修改用户
	public void modify(UserInfoModel uim) throws Exception;
	
	//删除用户
	public void delete(UserInfoModel uim) throws Exception;
	
	//通过id查询用户
	public UserInfoModel getUserInfo(String username) throws Exception;
	
	//取得所有的用户列表
	public List<UserInfoModel> getListByAll() throws Exception;
	
	//取得指定身份的用户列表
	public List<UserInfoModel> getListByIdentity(String username) throws Exception;
}
