package com.flowers.travel.controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.flowers.travel.model.UserInfoModel;
import com.flowers.travel.model.UserModel;
import com.flowers.travel.service.IUserService;
import com.flowers.travel.service.impl.UserServiceImpl;

@Controller("userProcessController")
@Scope("prototype")
public class UserProcessController {
	private IUserService us=new UserServiceImpl();
	private UserModel um=null;
	private UserInfoModel uim=null;
	private File photo=null;
	private String photoFileName=null;
	private String photoContentType=null;
	
	public UserInfoModel getUim() {
		return uim;
	}
	public void setUim(UserInfoModel uim) {
		this.uim = uim;
	}
	public File getPhoto() {
		return photo;
	}
	public void setPhoto(File photo) {
		this.photo = photo;
	}
	public String getPhotoFileName() {
		return photoFileName;
	}
	public void setPhotoFileName(String photoFileName) {
		this.photoFileName = photoFileName;
	}
	public String getPhotoContentType() {
		return photoContentType;
	}
	public void setPhotoContentType(String photoContentType) {
		this.photoContentType = photoContentType;
	}
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
	public String adduser() throws Exception{
		
		if(photoFileName==null||photoFileName.trim().length()==0){
			uim.setUser(um);
			um.setUserinfo(uim);
			us.add(um);
		}
		else{
			uim.setUser(um);
			um.setUserinfo(uim);
			us.add(um, photo, photoFileName, photoContentType);
		}
		return "success";

	}
	//修改方法
		public String modifyuser() throws Exception
		{
			
			//String change=new String(scenicname.getBytes("iso-8859-1"),"utf-8");
			if(photoFileName==null||photoFileName.trim().length()==0){
				//sm.setScenicname(change);
				uim.setUser(um);
				um.setUserinfo(uim);

				us.modify(um);
				
			}
			else{
				uim.setUser(um);
				um.setUserinfo(uim);
				us.modify(um, photo, photoFileName, photoContentType);
			}
			return "success";
		}

}
