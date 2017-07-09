package com.flowers.travel.model;


import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;




@Entity
@Table(name="route")
public class RouteModel {
	@Id
	private String routename=null;
	private double routeprice=0;
	private String routeintro=null;
	private int routeday=0;
	private String routetraffic=null;
	@ManyToMany
	@JoinTable(name="relevance",joinColumns={ @JoinColumn  (name="routename")},
				inverseJoinColumns={@JoinColumn(name="scenicname")})
	private Set<ScenicSpotModel> scenics=null;
	@OneToMany(mappedBy="route")
	private Set<OrdersModel>  orders=null;
	
	public Set<OrdersModel> getOrders() {
		return orders;
	}
	public void setOrders(Set<OrdersModel> orders) {
		this.orders = orders;
	}
	public String getRoutename() {
		return routename;
	}
	public void setRoutename(String routename) {
		this.routename = routename;
	}
	public double getRouteprice() {
		return routeprice;
	}
	public void setRouteprice(double routeprice) {
		this.routeprice = routeprice;
	}
	public String getRouteintro() {
		return routeintro;
	}
	public void setRouteintro(String routeintro) {
		this.routeintro = routeintro;
	}
	
	public int getRouteday() {
		return routeday;
	}
	public void setRouteday(int routeday) {
		this.routeday = routeday;
	}
	public String getRoutetraffic() {
		return routetraffic;
	}
	public void setRoutetraffic(String routetraffic) {
		this.routetraffic = routetraffic;
	}
	public Set<ScenicSpotModel> getScenics() {
		return scenics;
	}
	public void setScenics(Set<ScenicSpotModel> scenics) {
		this.scenics = scenics;
	}

	
	

}
