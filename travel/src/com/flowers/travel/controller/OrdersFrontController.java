package com.flowers.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.flowers.travel.model.OrdersModel;
import com.flowers.travel.model.RouteModel;
import com.flowers.travel.service.IOrdersService;
import com.flowers.travel.service.IRouteService;


@Controller("ordersFrontController")
@Scope("prototype")
public class OrdersFrontController {
	private IOrdersService os=null;
	private IRouteService rs=null;
	private RouteModel rm=null;
	private OrdersModel om=null;
	private List<OrdersModel> oml=null;
	private List<RouteModel> rml=null;
	private int ordersno=0;
	private int page=1;
	private int rows=5;
	private int count=0;
	private int pageCount=0;
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public IOrdersService getOs() {
		return os;
	}
	@Autowired
	public void setOs(IOrdersService os) {
		this.os = os;
	}
	public IRouteService getRs() {
		return rs;
	}
	@Autowired
	public void setRs(IRouteService rs) {
		this.rs = rs;
	}
	public RouteModel getRm() {
		return rm;
	}
	public void setRm(RouteModel rm) {
		this.rm = rm;
	}
	public OrdersModel getOm() {
		return om;
	}
	public void setOm(OrdersModel om) {
		this.om = om;
	}
	public List<OrdersModel> getOml() {
		return oml;
	}
	public void setOml(List<OrdersModel> oml) {
		this.oml = oml;
	}
	public List<RouteModel> getRml() {
		return rml;
	}
	public void setRml(List<RouteModel> rml) {
		this.rml = rml;
	}
	public int getOrdersno() {
		return ordersno;
	}
	public void setOrdersno(int ordersno) {
		this.ordersno = ordersno;
	}
	
	public String routetoview() throws Exception
	{
		rml=rs.getAllList();
		System.out.print(rml.size());
		//oml=os.getAllList();
		return "success";
	}
	
	public String tomain() throws Exception{
		//rml=rs.getAllList();
		
		count=os.getCountByAll();
		pageCount=os.getPageCountByAll(rows);
		if(page>pageCount){
			page=pageCount;
		}
		if(page<1){
			page=1;
		}
		
		oml=os.getListAllWithPage(rows, page);
		
		
		return "success";
		
		
		
		//oml=os.getAllList();
		//System.out.println("路线"+oml.size());
		//return "success";
	}
	//
	public String toview() throws Exception{
		//String change=new String(routename.getBytes("iso-8859-1"),"utf-8");
		om=os.getOrder(ordersno);
		return "toview";
	}
	
	public String toadd() throws Exception{
		
		return "toadd";
	}
	//
	public String tomodify() throws Exception{
		//String change=new String(routename.getBytes("iso-8859-1"),"utf-8");
		rml=rs.getAllList();
		om=os.getOrder(ordersno);
		return "tomodify";
	}	
	
	public String todelete() throws Exception{
		//String change=new String(ordersno.getBytes("iso-8859-1"),"utf-8");
		om=os.getOrder(ordersno);
		return "todelete";
	}


}
