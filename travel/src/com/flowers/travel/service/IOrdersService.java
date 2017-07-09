package com.flowers.travel.service;

import java.util.List;


import com.flowers.travel.model.OrdersModel;


public interface IOrdersService {
	public void add(OrdersModel om) throws Exception;// 增加订单方法
	public List<OrdersModel> getAllList() throws Exception;// 取得所有路线性质列表
	//删除路线
	public void delete(OrdersModel om) throws Exception;
	//修改员工
	public void modify(OrdersModel om) throws Exception;
	public OrdersModel getOrder(int ordersno) throws Exception;
	public List<OrdersModel> getListAllWithPage(int rows,int page);//取得所有订单列表，分页方式
	public int getCountByAll() throws Exception;// 取得所有订单个数
	public int getPageCountByAll(int rows) throws Exception; //取得所有订单页数
}
