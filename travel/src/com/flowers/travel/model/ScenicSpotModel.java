package com.flowers.travel.model;


import java.sql.Blob;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="scenicspots")
public class ScenicSpotModel {
	@Id
	private String scenicname=null;
	private String scenicintr=null;
	private double scenicticket=0;
	private Blob photo=null;
	private String phtype=null;
	private String phname=null;
	private String scenictime=null;
	@ManyToMany(mappedBy="scenics")
	private Set<RouteModel> routes=null;
	public String getScenicname() {
		return scenicname;
	}
	public void setScenicname(String scenicname) {
		this.scenicname = scenicname;
	}
	public String getScenicintr() {
		return scenicintr;
	}
	public void setScenicintr(String scenicintr) {
		this.scenicintr = scenicintr;
	}
	public double getScenicticket() {
		return scenicticket;
	}
	public void setScenicticket(double scenicticket) {
		this.scenicticket = scenicticket;
	}
	
	public String getScenictime() {
		return scenictime;
	}
	public void setScenictime(String scenictime) {
		this.scenictime = scenictime;
	}
	public Set<RouteModel> getRoutes() {
		return routes;
	}
	public void setRoutes(Set<RouteModel> routes) {
		this.routes = routes;
	}
	public Blob getPhoto() {
		return photo;
	}
	public void setPhoto(Blob photo) {
		this.photo = photo;
	}
	public String getPhtype() {
		return phtype;
	}
	public void setPhtype(String phtype) {
		this.phtype = phtype;
	}
	public String getPhname() {
		return phname;
	}
	public void setPhname(String phname) {
		this.phname = phname;
	}
	

}
