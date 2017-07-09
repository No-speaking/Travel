package com.flowers.travel.service;

public interface IIPService {
	 public boolean checkIP(String ip) throws Exception;
	 //返回true表示IP要阻断，返回false表示允许访问的IP

}
