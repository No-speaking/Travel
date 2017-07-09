package com.flowers.travel.interceptor;

import java.util.Map;

import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
//登录检查拦截器
@Controller("LoginCheckInteceptor")
public class LoginCheckInteceptor implements Interceptor {

	@Override
	public void destroy() {
		System.out.println("登录检查拦截器销毁方法。。。");

	}

	@Override
	public void init() {
		System.out.println("登录检查拦截器初始化方法。。。");

	}

	@Override
	public String intercept(ActionInvocation ai) throws Exception {
		System.out.println("登录检查拦截器拦截方法。。。");
		
		ActionContext ac=ActionContext.getContext();
		Map<String,Object> session=ac.getSession();
		if(session.get("umm")==null){
			return "login";
		}
		else{
			String result=ai.invoke();
			return result;
		}
		
		
		
		
	}

}
