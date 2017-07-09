package com.flowers.travel.controller;

import java.io.InputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


import com.flowers.travel.model.UserModel;
import com.flowers.travel.service.IUserService;

@Controller("userPhotoShowAction")
@Scope("prototype")
public class UserPhotoShowAction {
	private IUserService us=null;
	private UserModel um=null;
	private String username=null;
	public IUserService getUs() {
		return us;
	}
	@Autowired
	public void setUs(IUserService us) {
		this.us = us;
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
	public InputStream getInputStream() throws Exception
	{
		
		String change=new String(username.getBytes("iso-8859-1"),"utf-8");
		//System.out.println(change+"转换");
		InputStream result=null;
		um=us.getUser(change);
		
		if(um!=null&&um.getPhname()!=null){
			result=um.getPhoto().getBinaryStream();
		}
		return result;
	}
	
	public String showuser() throws Exception
	{
		
		return "success";
	}
	
	

}
