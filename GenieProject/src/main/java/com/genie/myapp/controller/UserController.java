package com.genie.myapp.controller;

import java.nio.charset.Charset;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.UserService;
import com.genie.myapp.vo.UserVO;


@Controller
@RequestMapping("/user/*")
public class UserController {
	@Inject
	UserService service;

	@GetMapping("login")
	public ModelAndView adminLogin() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/login");
		return mav;
	}


	//회원가입 폼으로 이동
	@GetMapping("UserForm")
	public ModelAndView UserForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/UserForm");
		return mav;
	}

	 //아이디 중복검사
	@GetMapping("idCheck")
	public ModelAndView idCheck(String userid) {
		ModelAndView mav = new ModelAndView();
		
		
		//DB조회  : 아이디가 존재하는지 확인
		 int cnt = service.idCheck(userid);
		 
		 mav.addObject("idCnt",cnt);
		 mav.addObject("userid",userid);
		
		mav.setViewName("member/idCheck");
		return mav;
	}

	//회원 가입하기
	@PostMapping("UserWrite") 
	public ResponseEntity<String> memberWrite(UserVO vo) {
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=utf-8");
		
		try {//회원가입 성공
			String msg = "<script>";
			msg += "alert('회원가입이 성공하였습니다.');";
			msg += "location.href='/user/login'";
			msg += "</script>";
			entity = new ResponseEntity<String>(msg,headers,HttpStatus.OK);

		}catch(Exception e) {//회원등록 실패 
			String msg = "<script>";
			msg += "alert('회원가입이 실패하였습니다.');";
			msg += "history.back()";
			msg += "</script>";
			entity = new ResponseEntity<String>(msg,headers,HttpStatus.BAD_REQUEST);
			
			e.printStackTrace();
		}
		return entity;
	}
	@PostMapping("loginOK")
	public ModelAndView loginOk(UserVO vo, HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		UserVO logVO = service.loginOk(vo);
	
		if(logVO != null) {//로그인 성공
			session.setAttribute("logId", logVO.getUser_id());
			session.setAttribute("logStatus","Y");
			mav.setViewName("redirect:/");
			
		}else {//로그인 실패
			
			mav.setViewName("redirect:/login");
		}
		return mav;
	}

	@GetMapping("logout")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		session.invalidate();
		mav.setViewName("redirect:/");
		
		return mav;
	}

	@GetMapping("UserEdit")
	public ModelAndView memberEdit(HttpSession session) {
		String userid = (String)session.getAttribute("logId");
		
		UserVO vo = service.getUser(userid);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("vo",vo); // 회원정보가 들어있는vo
		mav.setViewName("user/UserEdit");
			
		return mav;
	}
	//회원정보 수정 DB
	@PostMapping("UserEditOk")
	public ResponseEntity<String> memberEditOk(UserVO vo) {// @RequestParam, @ReturnValue
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=UTF-8");
		
		
		String msg = "<script>";
		int cnt = service.UserEditOk(vo);
			
		if(cnt>0) {//수정됨
			msg+="alert('회원정보가 수정되었습니다.');";
		}else {//수정못함
			msg+="alert('회원 정보 수정이 실패하였습니다.');";	
		}
		msg+="location.href='/user/UserEdit';</script>";
		
		entity = new ResponseEntity<String>(msg,headers, HttpStatus.OK);
		return entity;
	}
}


