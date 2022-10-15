package com.genie.myapp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component("LogoutInterceptor")
public class LogoutIntercetor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		
		String logStatus = (String)session.getAttribute("logStatus"); // 로그인 여부 확인
		
		if(logStatus.equals("Y")) {

			response.sendRedirect("/");
			return true;
			
		}else {

			response.sendRedirect("/login");
			return false;	
		}	
	}
}