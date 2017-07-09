package com.flowers.travel.model;




import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name="userinfo")
public class UserInfoModel {
	@Id
	@GenericGenerator(name="foreignKey",
	strategy="foreign",
	parameters=@Parameter(value="user",name="property"))
	@GeneratedValue(generator="foreignKey")
	@Column(name="username")
	private String username=null;
	private String uaddr=null;
	@OneToOne(cascade=CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private UserModel  user=null;
	
	public String getUaddr() {
		return uaddr;
	}
	public void setUaddr(String uaddr) {
		this.uaddr = uaddr;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public UserModel getUser() {
		return user;
	}
	public void setUser(UserModel user) {
		this.user = user;
	}



}
