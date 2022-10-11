package com.genie.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@EnableWebSecurity
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Bean
	public BCryptPasswordEncoder encodePwd() {
		return new BCryptPasswordEncoder();
	}
    
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		
		http.authorizeRequests()
			.antMatchers("/**").permitAll()
			.antMatchers("/admin/**").hasRole("ADMIN")
			.antMatchers("/seller/**").hasAnyRole("ADMIN, SELLER")
			.antMatchers("/user/**").hasRole("USER")
			.anyRequest().permitAll()
		.and()
			.formLogin()
			.loginPage("/login") // 인증 필요한 페이지 접근시 이동페이지
			.loginProcessingUrl("/login")
			//.successHandler(loginSuccess)
			//.failureHandler(loginFail)
		.and()
			.logout()
			.logoutSuccessUrl("/")
		;
		
	}
}
