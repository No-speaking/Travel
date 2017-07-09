package com.flowers.travel.service;

import java.io.File;
import java.util.List;

import com.flowers.travel.model.UserInfoModel;
import com.flowers.travel.model.UserModel;

public interface IUserService {
		public void add(UserModel um,File photo,String filename,String contentType) throws Exception;
		public List<UserModel> getAllList() throws Exception;// 取得所有景点列表
		//增加景点
		public void add(UserModel um) throws Exception;
		//修改景点
		public void modify(UserModel um) throws Exception;
		//删除景点
		public void delete(UserModel um) throws Exception;
		//删除景点
		public void delete(String username) throws Exception;
		//取得指定景点
		public UserModel getUser(String username) throws Exception;
		//修改景点（带图片）
		public void modify(UserModel um, File photo, String filename,String contentType) throws Exception;
		//验证用户是否合法
		public boolean validate(String username,String password) throws Exception;
}
