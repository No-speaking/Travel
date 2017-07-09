package com.flowers.travel.service.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.flowers.travel.model.OrdersModel;
import com.flowers.travel.service.IOrdersService;
@Service("ordersServiceImpl")
@Transactional
public class OrdersServiceImpl implements IOrdersService {
	private SessionFactory sf=null;
	@Autowired
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}
	
	@Override
	public void add(OrdersModel om) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().save(om);
	}

	@Override
	public List<OrdersModel> getAllList() throws Exception {
		// TODO Auto-generated method stub
		List<OrdersModel> list=sf.getCurrentSession().createQuery("from OrdersModel").list();
		//System.out.println(list+"1");
		return list;
	}

	@Override
	public void delete(OrdersModel om) throws Exception {
		// TODO Auto-generated method stub
		int a=10/0;
		sf.getCurrentSession().delete(om);
	}

	@Override
	public void modify(OrdersModel om) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().update(om);
	}

	@Override
	public OrdersModel getOrder(int ordersno) throws Exception {
		// TODO Auto-generated method stub
		return (OrdersModel) sf.getCurrentSession().get(OrdersModel.class, ordersno);
	}

	@Override
	public List<OrdersModel> getListAllWithPage(int rows, int page) {
		// TODO Auto-generated method stub
		Query q=sf.getCurrentSession().createQuery("from OrdersModel");
		q.setFirstResult((page-1)*rows);
		q.setMaxResults(rows);
		List<OrdersModel> list=q.list();
		return list;
	}

	@Override
	public int getCountByAll() throws Exception {
		// TODO Auto-generated method stub
		Query q= sf.getCurrentSession().createQuery("select count(*) from OrdersModel");
		Long count=(Long)q.uniqueResult();
		return count.intValue();
	}

	@Override
	public int getPageCountByAll(int rows) throws Exception {
		// TODO Auto-generated method stub
		Query q= sf.getCurrentSession().createQuery("select count(*) from OrdersModel");
		//q.setFirstResult((page-1)*rows);
		q.setMaxResults(rows);
		Long count=(Long)q.uniqueResult();
		int pageCount=0;
		if(count%rows!=0){
			pageCount=count.intValue()/rows+1;
		}
		else pageCount=count.intValue()/rows;
		return pageCount;
	}
	
	

}
