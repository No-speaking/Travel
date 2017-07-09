package com.flowers.travel.controller;



import java.io.InputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.flowers.travel.model.ScenicSpotModel;
import com.flowers.travel.service.IScenicSpotService;
@Controller("scenicSpotPhotoShowAction")
@Scope("prototype")
public class ScenicSpotPhotoShowAction {
	private IScenicSpotService ss=null;
	private ScenicSpotModel sm=null;
	private String scenicname=null;
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
	
	public String getScenicname() {
		return scenicname;
	}
	public void setScenicname(String scenicname) {
		this.scenicname = scenicname;
	}
	public InputStream getInputStream() throws Exception
	{
		
		String change=new String(scenicname.getBytes("iso-8859-1"),"utf-8");
		//System.out.println(change+"转换");
		InputStream result=null;
		sm=ss.getScenicSpot(change);
		
		if(sm!=null&&sm.getPhname()!=null){
			result=sm.getPhoto().getBinaryStream();
		}
		//System.out.println(result+"2");
		//System.out.println(scenicname+"2");
	
		return result;
	}
	
	public String show() throws Exception
	{
		
		return "success";
	}
	

}
