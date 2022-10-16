package com.genie.myapp.Config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class ServerConfigure implements WebMvcConfigurer {

	@Autowired
	@Qualifier("AdminInterceptor")
	HandlerInterceptor AdminInterceptor;

	@Autowired
	@Qualifier("SellerInterceptor")
	HandlerInterceptor SellerInterceptor;

	@Autowired
	@Qualifier("UserInterceptor")
	HandlerInterceptor UserInterceptor;

	@Autowired
	@Qualifier("LogoutInterceptor")
	HandlerInterceptor LogoutInterceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {

		registry.addInterceptor(UserInterceptor)//로그인 했을 때
		.addPathPatterns("/user/**","/order/**")//가능한 경로
		.order(1);
		
		registry.addInterceptor(SellerInterceptor)
		.addPathPatterns("/seller/**")
		.order(2);
		
		registry.addInterceptor(AdminInterceptor)
		.addPathPatterns("/admin/**")
		.order(3);
	
		registry.addInterceptor(LogoutInterceptor)// 로그인이 안되어 있을때
		.addPathPatterns("/login")
		.order(4);//안되게

	}
}
