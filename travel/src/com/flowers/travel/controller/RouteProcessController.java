package com.flowers.travel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.flowers.travel.model.RouteModel;
import com.flowers.travel.service.IRouteService;



@Controller("routeProcessController")
@Scope("prototype")
public class RouteProcessController {
	private IRouteService rs=null;
	private RouteModel rm=null;
	private String[]routeTypeNos=null;
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
	public String[] getRouteTypeNos() {
		return routeTypeNos;
	}
	public void setRouteTypeNos(String[] routeTypeNos) {
		this.routeTypeNos = routeTypeNos;
	}
	public String add() throws Exception
	{
		rs.add(rm);
		rs.addRouteType(rm.getRoutename(), routeTypeNos);
		return "success";
	}
	//修改方法
		public String modify() throws Exception
		{
			
			rs.modify(rm);	
			if(routeTypeNos!=null){
				rs.addRouteType(rm.getRoutename(), routeTypeNos);
			}
			return "success";
		}
		//删除方法
		public String delete() throws Exception
		{
			rs.delete(rm);
			return "success";
		}

	

}
