package com.flowers.travel.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.flowers.travel.model.ScenicSpotModel;
import com.flowers.travel.model.UserInfoModel;
import com.flowers.travel.service.IUserInfoService;
@Service("userInfoServiceImpl")
@Transactional
public class UserInfoServiceImpl implements IUserInfoService {
	private SessionFactory sf=null;
	@Autowired
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}
	@Override
	public void add(UserInfoModel um) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().save(um);
	}

	@Override
	public void modify(UserInfoModel um) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().update(um);
	}

	@Override
	public void delete(UserInfoModel um) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().delete(um);
	}

	@Override
	public UserInfoModel getUserInfo(String username) throws Exception {
		// TODO Auto-generated method stub
		return (UserInfoModel) sf.getCurrentSession().get(UserInfoModel.class, username);
	}

	@Override
	public List<UserInfoModel> getListByAll() throws Exception {
		// TODO Auto-generated method stub
		List<UserInfoModel> list=sf.getCurrentSession().createQuery("from UserInfoModel").list();
		//System.out.println(list+"1");
		return list;
	}

	@Override
	public List<UserInfoModel> getListByIdentity(String username) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
