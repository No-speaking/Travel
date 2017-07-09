package com.flowers.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.flowers.travel.model.OrdersModel;
import com.flowers.travel.model.RouteModel;
import com.flowers.travel.model.ScenicSpotModel;
import com.flowers.travel.service.IOrdersService;
import com.flowers.travel.service.IRouteService;
import com.flowers.travel.service.IScenicSpotService;



@Controller("routeFrontController")
@Scope("prototype")
public class RouteFrontController {
	private IScenicSpotService ss=null;
	private IRouteService rs=null;
	private ScenicSpotModel sm=null;
	private RouteModel rm=null;
	private List<ScenicSpotModel> sml=null;
	private List<RouteModel> rml=null;
	private String routename=null;
	private List<OrdersModel> oml=null;
	private IOrdersService os=null;
	private String[] scenics=null;
	
	public String[] getScenics() {
		return scenics;
	}
	public void setScenics(String[] scenics) {
		this.scenics = scenics;
	}
	public IOrdersService getOs() {
		return os;
	}
	@Autowired
	public void setOs(IOrdersService os) {
		this.os = os;
	}
	public List<OrdersModel> getOml() {
		return oml;
	}
	public void setOml(List<OrdersModel> oml) {
		this.oml = oml;
	}
	public String getRoutename() {
		return routename;
	}
	public void setRoutename(String routename) {
		this.routename = routename;
	}
	public IScenicSpotService getSs() {
		return ss;
	}
	@Autowired
	public void setSs(IScenicSpotService ss) {
		this.ss = ss;
	}
	public IRouteService getRs() {
		return rs;
	}
	@Autowired
	public void setRs(IRouteService rs) {
		this.rs = rs;
	}
	public ScenicSpotModel getSm() {
		return sm;
	}
	public void setSm(ScenicSpotModel sm) {
		this.sm = sm;
	}
	public RouteModel getRm() {
		return rm;
	}
	public void setRm(RouteModel rm) {
		this.rm = rm;
	}
	public List<ScenicSpotModel> getSml() {
		return sml;
	}
	public void setSml(List<ScenicSpotModel> sml) {
		this.sml = sml;
	}
	public List<RouteModel> getRml() {
		return rml;
	}
	public void setRml(List<RouteModel> rml) {
		this.rml = rml;
	}
	public String scenictoview() throws Exception
	{
		sml=ss.getAllList();
		System.out.print(sml.size());
		rml=rs.getAllList();
		return "success";
	}
	
	public String tomain() throws Exception{
		rml=rs.getAllList();
		sml=ss.getAllList();
		System.out.println("路线"+rml.size());
		return "success";
	}
	//
	public String toview() throws Exception{
		String change=new String(routename.getBytes("iso-8859-1"),"utf-8");
		rm=rs.getRoute(change);
		
		sml=ss.getAllList();
		scenics=rs.getScenicsWithStringByRoute(change);
		return "toview";
	}
	
	public String toadd() throws Exception{
		
		return "toadd";
	}
	//
	public String tomodify() throws Exception{
		String change=new String(routename.getBytes("iso-8859-1"),"utf-8");
		sml=ss.getAllList();
		scenics=rs.getScenicsWithStringByRoute(change);	
		rm=rs.getRoute(change);
		return "tomodify";
	}	
	
	public String todelete() throws Exception{
		String change=new String(routename.getBytes("iso-8859-1"),"utf-8");
		rm=rs.getRoute(change);
		return "todelete";
	}

}
