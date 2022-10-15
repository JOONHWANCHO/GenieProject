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
		
		
		if(logStatus.equals("N")) {
			//로그인상태일때
			return true;
		}else {
			//로그인 안된경우
		response.sendRedirect("/");
		return false;	
		}	
	}
}