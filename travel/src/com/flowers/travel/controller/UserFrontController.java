package com.flowers.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.flowers.travel.model.UserModel;
import com.flowers.travel.service.IUserService;

@Controller("userFrontController")
@Scope("prototype")
public class UserFrontController {
	private IUserService us=null;
	private List<UserModel> UserList=null;
	private UserModel um=null;
	private String username=null;
	public IUserService getUs() {
		return us;
	}
	@Autowired
	public void setUs(IUserService us) {
		this.us = us;
	}
	public List<UserModel> getUserList() {
		return UserList;
	}
	public void setUserList(List<UserModel> userList) {
		UserList = userList;
	}
	public UserModel getUm() {
		return um;
	}
	public void setUm(UserModel um) {
		this.um = um;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String tomain() throws Exception{
		UserList=us.getAllList();
		return "success";
	}
	//
	public String toview() throws Exception{
		String change=new String(username.getBytes("iso-8859-1"),"utf-8");
		um=us.getUser(change);
		return "toview";
	}

	

	

}
