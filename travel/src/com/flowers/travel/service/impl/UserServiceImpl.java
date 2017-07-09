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

import com.flowers.travel.model.UserModel;
import com.flowers.travel.service.IUserService;
@Service("userServiceImpl")
@Transactional
public class UserServiceImpl implements IUserService {

	private SessionFactory sf=null;
	@Autowired
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}
	
	@Override
	public void add(UserModel um) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().save(um);
	}

	@Override
	public void modify(UserModel um) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().update(um);
	}

	@Override
	public void delete(UserModel um) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().delete(um);
	}

	@Override
	public boolean validate(String username, String password) throws Exception {
		// TODO Auto-generated method stub
		boolean result=false;
		String hql="select count(um.username) from UserModel um where um.username=:username and um.password=:password";
		Query query=sf.getCurrentSession().createQuery(hql);
		query.setString("username",username);
		query.setString("password", password);
		Long lcount=(Long)query.uniqueResult();
		if(lcount!=null&&lcount>0){
			result=true;
		}
		return result;
	}

	@Override
	public UserModel getUser(String username) throws Exception {
		// TODO Auto-generated method stub
		return  (UserModel) sf.getCurrentSession().get(UserModel.class, username);
	}


	@Override
	public void add(UserModel um, File photo, String filename, String contentType) throws Exception {
		// TODO Auto-generated method stub
		um.setPhname(filename);
		um.setPhtype(contentType);
		InputStream fin=new FileInputStream(photo);
		Blob blobphoto=sf.getCurrentSession().getLobHelper().createBlob(fin, fin.available());
		um.setPhoto( blobphoto);
		sf.getCurrentSession().save(um);
	}

	@Override
	public List<UserModel> getAllList() throws Exception {
		// TODO Auto-generated method stub
		return sf.getCurrentSession().createQuery("from UserModel").list();

	}

	@Override
	public void delete(String username) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modify(UserModel um, File photo, String filename, String contentType) throws Exception {
		// TODO Auto-generated method stub
		um.setPhname(filename);
		um.setPhtype(contentType);
		InputStream fin=new FileInputStream(photo);
		Blob blobphoto=sf.getCurrentSession().getLobHelper().createBlob(fin, fin.available());
		um.setPhoto( blobphoto);
		sf.getCurrentSession().update(um);
	}

}
