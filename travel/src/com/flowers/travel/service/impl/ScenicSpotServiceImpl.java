package com.flowers.travel.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.flowers.travel.model.ScenicSpotModel;
import com.flowers.travel.service.IScenicSpotService;
@Service("scenicSpotServiceImpl")
@Transactional
public class ScenicSpotServiceImpl implements IScenicSpotService {
	private SessionFactory sf=null;
	@Autowired
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}

	@Override
	public List<ScenicSpotModel> getAllList() throws Exception {
		// TODO Auto-generated method stub
		List<ScenicSpotModel> list=sf.getCurrentSession().createQuery("from ScenicSpotModel").list();
		//System.out.println(list+"1");
		return list;
		
		
	}

	@Override
	public void add(ScenicSpotModel sm) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().save(sm);
	}

	@Override
	public void modify(ScenicSpotModel sm) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().update(sm);
	}

	@Override
	public void delete(ScenicSpotModel sm) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().delete(sm);
	}

	@Override
	public ScenicSpotModel getScenicSpot(String scenicname) throws Exception {
		// TODO Auto-generated method stub
		return (ScenicSpotModel) sf.getCurrentSession().get(ScenicSpotModel.class, scenicname);
		
	}

	@Override
	public void add(ScenicSpotModel sm, File photo, String filename, String contentType) throws Exception {
		// TODO Auto-generated method stub
		sm.setPhname(filename);
		sm.setPhtype(contentType);
		InputStream fin=new FileInputStream(photo);
		Blob blobphoto=sf.getCurrentSession().getLobHelper().createBlob(fin, fin.available());
		sm.setPhoto( blobphoto);
		sf.getCurrentSession().save(sm);
	}

	@Override
	public void modify(ScenicSpotModel sm, File photo, String filename, String contentType) throws Exception {
		// TODO Auto-generated method stub
		sm.setPhname(filename);
		sm.setPhtype(contentType);
		InputStream fin=new FileInputStream(photo);
		Blob blobphoto=sf.getCurrentSession().getLobHelper().createBlob(fin, fin.available());
		sm.setPhoto( blobphoto);
		sf.getCurrentSession().update(sm);
	}

	@Override
	public void delete(String scenicname) throws Exception {
		// TODO Auto-generated method stub
		//sf.getCurrentSession().createQuery("*");
	}


}
