package com.flowers.travel.service;

import java.util.List;

import com.flowers.travel.model.RouteModel;

public interface IRouteService {
	public void add(RouteModel rm) throws Exception;// 增加路线方法
	public void addRouteType(String routename, String[] routeTypeNos) throws Exception;//增加路线与景点的关联数据。
	public List<RouteModel> getAllList() throws Exception;// 取得所有路线性质列表
	//删除路线
	public void delete(RouteModel rm) throws Exception;
	//修改员工
	public void modify(RouteModel rm) throws Exception;
	public void modify(String routename, String[] routeTypeNos) throws Exception;
	public RouteModel getRoute(String routename) throws Exception;
	public String[] getScenicsWithStringByRoute(String routename) throws Exception;

}
