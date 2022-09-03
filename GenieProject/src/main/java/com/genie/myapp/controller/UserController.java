package com.genie.myapp.controller;

import java.nio.charset.Charset;

import javax.servlet.http.HttpSession;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



import com.genie.myapp.vo.UserVO;


@Controller
@RequestMapping("/user/*")
public class UserController {
	//@Inject
	//UserService service;

	@GetMapping("UserForm")
	public ModelAndView UserForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/UserForm");
		return mav;
	}

	@GetMapping("idCheck") //아이디 중복검사
	public ModelAndView idCheck(String user_id) {
		ModelAndView mav = new ModelAndView();
		
		//DB조회  : 아이디가 존재하는지 확인
		//int cnt = service.idCheck(user_id); 
		//mav.addObject("idCnt",cnt);
		mav.addObject("user_id",user_id);
		mav.setViewName("user/idCheck");
		return mav;
	}

	// @PostMapping("loginOK")
	// public ModelAndView loginOk(UserVO vo, HttpSession session) {
		
	// 	ModelAndView mav = new ModelAndView();
		
	// 	UserVO logVO = service.loginOk(vo);
	
	// 	if(logVO != null) {//로그인 성공
	// 		session.setAttribute("logId", logVO.getUser_id());
	// 		session.setAttribute("logStatus","Y");
	// 		mav.setViewName("redirect:/");
			
	// 	}else {//로그인 실패
	// 		mav.setViewName("redirect:login");
	// 	}
	// 	return mav;
	// }
	//로그아웃
	@GetMapping("logout")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		session.invalidate();
		mav.setViewName("redirect:/");
		
		return mav;
	}

	//회원정보 수정 폼
	@GetMapping("UserEdit")
	public ModelAndView userEdit(HttpSession session) {
		//String userid = (String)session.getAttribute("logId");
		
		//UserVO vo = service.getuser(userid);
		ModelAndView mav = new ModelAndView();
		
		//mav.addObject("vo",vo); // 회원정보가 들어있는vo
		mav.setViewName("user/userEdit");
			
		return mav;
	}

			//회원정보 수정 DB
	@PostMapping("UserEditOk")
	public ResponseEntity<String> userEditOk(UserVO vo) {// @RequestParam, @ReturnValue
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=UTF-8");
		
		
		// String msg = "<script>";
		// int cnt = service.userEditOk(vo);
			
		// if(cnt>0) {//수정됨
		// 	msg+="alert('회원정보가 수정되었습니다.');";
		// }else {//수정못함
		// 	msg+="alert('회원정보가 수정실패하였습니다.');";	
		// }
		// msg+="location.href='/user/userEdit';</script>";
		
		// entity = new ResponseEntity<String>(msg,headers, HttpStatus.OK);
		return entity;
	}
}


