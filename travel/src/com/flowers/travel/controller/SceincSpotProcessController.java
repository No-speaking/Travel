package com.flowers.travel.controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.flowers.travel.model.ScenicSpotModel;
import com.flowers.travel.service.IScenicSpotService;
import com.opensymphony.xwork2.ActionSupport;

@Controller("sceincSpotProcessController")
@Scope("prototype")
public class SceincSpotProcessController  extends ActionSupport{
	private IScenicSpotService ss=null;
	private ScenicSpotModel sm=null;
	private File photo=null;
	private String photoFileName=null;
	private String photoContentType=null;
	
	public IScenicSpotService getSs() {
		return ss;
	}
	@Autowired
	public void setSs(IScenicSpotService ss) {
		this.ss = ss;
	}
	public ScenicSpotModel getSm() {
		return sm;
	}
	public void setSm(ScenicSpotModel sm) {
		this.sm = sm;
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
	
	
	public void validate() {
		System.out.println("编程验证。。。");
		
		
		if(sm.getScenicname()==null||sm.getScenicname().trim().length()==0)
		{
			this.addFieldError("sm.scenicname", "景点名称为空");
		}
		if(sm.getScenicintr()==null||sm.getScenicintr().trim().length()==0)
		{
			this.addFieldError("sm.scenicintr", "景点介绍为空");
		}
		if(sm.getScenictime()==null||sm.getScenictime().trim().length()==0)
		{
			this.addFieldError("sm.scenictime", "营业时间为空");
		}
		if(sm.getScenicticket()<0||sm.getScenicticket()>10000)
		{
			this.addFieldError("sm.scenicticket", "门票在0-10000之间");
		}
	}
	
	
	//修改方法
	public String modify() throws Exception
	{
		System.out.println("修改后处理"+sm.getScenicname());
		//String change=new String(scenicname.getBytes("iso-8859-1"),"utf-8");
		if(photoFileName==null||photoFileName.trim().length()==0){
			//sm.setScenicname(change);
			System.out.println("修改后处理111"+sm.getScenicname());
			ss.modify(sm);
		}
		else{
			ss.modify(sm, photo, photoFileName, photoContentType);
		}
		return "success";
	}
	//删除方法
	public String delete() throws Exception
	{
		System.out.println("shanchu后处理"+sm.getScenicname());
		ss.delete(sm);
		return "success";
	}
	//增加方法
	public String add() throws Exception
	{
		if(photoFileName==null||photoFileName.trim().length()==0){
			ss.add(sm);
		}
		else{
			ss.add(sm, photo, photoFileName, photoContentType);
		}
		return "success";
	}

}
