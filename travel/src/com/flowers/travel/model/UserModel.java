package com.flowers.travel.model;

import java.sql.Blob;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;


@Entity
@Table(name="users")
public class UserModel {
	@Id
	private String username=null;
	private String password=null;
	private Blob photo=null;
	private String phtype=null;
	private String phname=null;
	private String ugender=null;
	@OneToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER,optional=false)
	@PrimaryKeyJoinColumn
	private UserInfoModel userinfo=null;
	
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
	public String getUgender() {
		return ugender;
	}
	public void setUgender(String ugender) {
		this.ugender = ugender;
	}
	public UserInfoModel getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(UserInfoModel userinfo) {
		this.userinfo = userinfo;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
