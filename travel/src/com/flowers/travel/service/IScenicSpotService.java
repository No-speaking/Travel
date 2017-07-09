package com.flowers.travel.service;

import java.io.File;
import java.util.List;
import com.flowers.travel.model.ScenicSpotModel;


public interface IScenicSpotService {
	public List<ScenicSpotModel> getAllList() throws Exception;// 取得所有景点列表
	//增加景点
	public void add(ScenicSpotModel sm) throws Exception;
	//修改景点
	public void modify(ScenicSpotModel sm) throws Exception;
	//删除景点
	public void delete(ScenicSpotModel sm) throws Exception;
	//删除景点
		public void delete(String scenicname) throws Exception;
	//取得指定景点
	public ScenicSpotModel getScenicSpot(String scenicname) throws Exception;
	//增加景点（带图片）
	public void add(ScenicSpotModel sm, File photo, String filename,String contentType) throws Exception;
	//修改景点（带图片）
	public void modify(ScenicSpotModel sm, File photo, String filename,String contentType) throws Exception;



}
