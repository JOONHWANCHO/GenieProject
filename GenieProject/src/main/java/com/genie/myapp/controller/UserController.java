package com.genie.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user/*")
public class UserController {

	@GetMapping("MemberForm")
	public ModelAndView MemberForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/MemberForm");
		return mav;
	}

	@GetMapping("idCheck") //아이디 중복검사
	public ModelAndView idCheck(String user_id) {
		ModelAndView mav = new ModelAndView();
		
		//DB조회  : 아이디가 존재하는지 확인
		 //int cnt = service.idCheck(user_id);
		 
		 //mav.addObject("idCnt",cnt);
		 mav.addObject("user_id",user_id);
		
		mav.setViewName("member/idCheck");
		return mav;
	}
}


