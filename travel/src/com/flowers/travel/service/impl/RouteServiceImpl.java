package com.flowers.travel.service.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.flowers.travel.model.RouteModel;
import com.flowers.travel.model.ScenicSpotModel;
import com.flowers.travel.service.IRouteService;
@Service("routeServiceImpl")
@Transactional
public class RouteServiceImpl implements IRouteService {
	private SessionFactory sf=null;
	@Autowired
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}

	@Override
	public void add(RouteModel rm) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().save(rm);
	}

	@Override
	public void addRouteType(String routename, String[] routeTypeNos) throws Exception {
		// TODO Auto-generated method stub
		RouteModel rm=(RouteModel) sf.getCurrentSession().get(RouteModel.class, routename);
		for(String scenicname:routeTypeNos){
			ScenicSpotModel sm=(ScenicSpotModel) sf.getCurrentSession().get(ScenicSpotModel.class, scenicname);
			rm.getScenics().add(sm);
		}
	}

	@Override
	public List<RouteModel> getAllList() throws Exception {
		// TODO Auto-generated method stub
		
		return sf.getCurrentSession().createQuery("from RouteModel").list();
	}

	@Override
	public void delete(RouteModel rm) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().delete(rm);
	}

	@Override
	public void modify(RouteModel rm) throws Exception {
		// TODO Auto-generated method stub
		
		
		sf.getCurrentSession().update(rm);
	}

	@Override
	public RouteModel getRoute(String routename) throws Exception {
//		// TODO Auto-generated method stub
//		System.out.println(routename+"hahaha");
//		String hql="select rm from RouteModel rm inner join rm.scenics sm where rm.routename=:routename";
//		Query query=sf.getCurrentSession().createQuery(hql);
//		query.setString("routename", routename);
//		RouteModel rm=(RouteModel) query.list();
//		System.out.println(rm+"heihei");
		return (RouteModel) sf.getCurrentSession().get(RouteModel.class, routename);
		
	}

	@Override
	public String[] getScenicsWithStringByRoute(String routename) throws Exception {
		// TODO Auto-generated method stub
		String[] slist=null;
		String hql="select sm.scenicname from RouteModel rm inner join rm.scenics sm where rm.routename=:routename";
		Query query=sf.getCurrentSession().createQuery(hql);
		query.setString("routename",routename);
		List<String> list=query.list();
		if(list!=null&&list.size()>0){
			slist=new String[list.size()];
			for(int i=0;i<list.size();i++){
				slist[i]=list.get(i);
			}
			
		}
		
		return slist;
	}

	@Override
	public void modify(String routename, String[] routeTypeNos) throws Exception {
		// TODO Auto-generated method stub
		
	}

	

}
