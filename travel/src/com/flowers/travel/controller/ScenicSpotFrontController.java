package com.flowers.travel.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.flowers.travel.model.ScenicSpotModel;
import com.flowers.travel.service.IScenicSpotService;

@Controller("scenicSpotFrontController")
@Scope("prototype")
public class ScenicSpotFrontController{
	private IScenicSpotService ss=null;
	private List<ScenicSpotModel> scenicSpotList=null;
	private ScenicSpotModel sm=null;
	private String scenicname=null;
	public IScenicSpotService getSs() {
		return ss;
	}
	@Autowired
	public void setSs(IScenicSpotService ss) {
		this.ss = ss;
	}
	public List<ScenicSpotModel> getScenicSpotList() {
		return scenicSpotList;
	}
	public void setScenicSpotList(List<ScenicSpotModel> scenicSpotList) {
		this.scenicSpotList = scenicSpotList;
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
	
	
	
	
	
	public String tomain() throws Exception{
		scenicSpotList=ss.getAllList();
		return "success";
	}
	//
	public String toview() throws Exception{
		String change=new String(scenicname.getBytes("iso-8859-1"),"utf-8");
		sm=ss.getScenicSpot(change);
		return "toview";
	}
	
	public String toadd() throws Exception{
		
		return "toadd";
	}
	//
	public String tomodify() throws Exception{
		String change=new String(scenicname.getBytes("iso-8859-1"),"utf-8");
		sm=ss.getScenicSpot(change);
		return "tomodify";
	}	
	
	public String todelete() throws Exception{
		String change=new String(scenicname.getBytes("iso-8859-1"),"utf-8");
		sm=ss.getScenicSpot(change);
		return "todelete";
	}
	

	

}
