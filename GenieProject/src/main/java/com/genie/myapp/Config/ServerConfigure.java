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
	@Qualifier("BasicInterceptor")
	HandlerInterceptor BasicInterceptor;

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
		registry.addInterceptor(BasicInterceptor).excludePathPatterns("/**");

		registry.addInterceptor(UserInterceptor)
		.addPathPatterns("/user/**");

		registry.addInterceptor(SellerInterceptor)
		.addPathPatterns("/seller/**");

		registry.addInterceptor(AdminInterceptor)
		.addPathPatterns("/admin/**");

		// registry.addInterceptor(LogoutInterceptor)
		// .addPathPatterns("/login");




	}
}
