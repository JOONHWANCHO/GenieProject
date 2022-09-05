package com.genie.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
		
    @GetMapping("adminLogin")
		public ModelAndView adminLogin() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/adminLogin");
			return mav;
		}
		
		@GetMapping("adminMain")
		public ModelAndView adminMain() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/adminMain");
			return mav;
		}
	
}
