package com.flowers.travel.service.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flowers.travel.model.IPModel;
import com.flowers.travel.service.IIPService;
@Service("IPService")
public class IPServiceImpl implements IIPService {
    private SessionFactory sf=null;
	
	@Autowired
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}
	

	@Override
	public boolean checkIP(String ip) throws Exception {
		// TODO Auto-generated method stub
		boolean result=false;
		Session session=sf.openSession();
		Transaction tx=session.beginTransaction();
		System.out.print(session.get(IPModel.class, ip));
//		if(session.get(IPModel.class, ip)==null){
//			result=true;
//		}
		
		
		String hql="select count(*)from IPModel im where im.ip=:ip";
		Query query=session.createQuery(hql);
		query.setString("ip", ip);
		Long count=(Long)query.uniqueResult();
		if(count==0){
			result=true;
		}
		tx.commit();
		session.close();
		return result;
		
	}

	
}
