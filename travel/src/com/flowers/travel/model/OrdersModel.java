package com.flowers.travel.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="orders")
public class OrdersModel {
	@Id
	private int ordersno=0;
	private double ordersprice=0;
	private int orderscount=0;
	private String ordersname=null;
	private String ordersid=null;
	private String orderstell=null;
	private Date orderdate=null;
	@ManyToOne
	@JoinColumn(name="routename")
	private RouteModel route=null;
	
	
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	public int getOrdersno() {
		return ordersno;
	}
	public void setOrdersno(int ordersno) {
		this.ordersno = ordersno;
	}
	public double getOrdersprice() {
		return ordersprice;
	}
	public void setOrdersprice(double ordersprice) {
		this.ordersprice = ordersprice;
	}
	public int getOrderscount() {
		return orderscount;
	}
	public void setOrderscount(int orderscount) {
		this.orderscount = orderscount;
	}
	public String getOrdersname() {
		return ordersname;
	}
	public void setOrdersname(String ordersname) {
		this.ordersname = ordersname;
	}
	public String getOrdersid() {
		return ordersid;
	}
	public void setOrdersid(String ordersid) {
		this.ordersid = ordersid;
	}
	public String getOrderstell() {
		return orderstell;
	}
	public void setOrderstell(String orderstell) {
		this.orderstell = orderstell;
	}
	public RouteModel getRoute() {
		return route;
	}
	public void setRoute(RouteModel route) {
		this.route = route;
	}
	
}
