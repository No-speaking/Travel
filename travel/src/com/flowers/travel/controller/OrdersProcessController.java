package com.flowers.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.flowers.travel.model.OrdersModel;
import com.flowers.travel.model.RouteModel;
import com.flowers.travel.service.IOrdersService;
import com.flowers.travel.service.IRouteService;
import com.opensymphony.xwork2.ActionSupport;

@Controller("ordersProcessController")
@Scope("prototype")
public class OrdersProcessController extends ActionSupport{
	private IOrdersService os=null;
	private OrdersModel om=null;
	private int ordersno=0;
	public IOrdersService getOs() {
		return os;
	}
	@Autowired
	public void setOs(IOrdersService os) {
		this.os = os;
	}
	public OrdersModel getOm() {
		return om;
	}
	public void setOm(OrdersModel om) {
		this.om = om;
	}
	public int getOrdersno() {
		return ordersno;
	}
	public void setOrdersno(int ordersno) {
		this.ordersno = ordersno;
	}
	//修改方法
	public String modify() throws Exception
	{		
		os.modify(om);	
		return "success";
	}
	//删除方法
	public String delete() throws Exception
	{
		os.delete(om);
		return "success";
	}
	//增加方法
	public String add() throws Exception
	{
		os.add(om);
		return "success";
	}


}
