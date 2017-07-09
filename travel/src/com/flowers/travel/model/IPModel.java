package com.flowers.travel.model;

import javax.persistence.*;

@Entity
@Table(name="IPS")
public class IPModel {
	@Id
	
	private String ip=null;

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}
	
	

}

