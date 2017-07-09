package com.flowers.travel.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.flowers.travel.model.UserModel;
import com.flowers.travel.service.IUserService;
import com.flowers.travel.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;

@Controller("userLoginController")
@Scope("prototype")
public class UserLoginController {
	private IUserService us=new UserServiceImpl();
	private UserModel um=null;
	
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
	 public String login() throws Exception
		{
			if(us.validate(um.getUsername(), um.getPassword())){
				
				UserModel umm=us.getUser(um.getUsername());
				//非耦合方式
				ActionContext ac=ActionContext.getContext();
				Map<String,Object> session=ac.getSession();
				session.put("umm", umm);	
				return "success";
			}
			else{
				
				return "failure";
			}
			
		}
	
}
