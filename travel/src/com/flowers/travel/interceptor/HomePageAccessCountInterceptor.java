package com.flowers.travel.interceptor;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
@Controller("HomePageAccessCountInterceptor")
public class HomePageAccessCountInterceptor  extends AbstractInterceptor{
	int count=0;
	public String intercept(ActionInvocation ai) throws Exception {
		
		ServletContext application=ServletActionContext.getServletContext();
		application.setAttribute("count", ++count);
		return ai.invoke();
	}
		

}
