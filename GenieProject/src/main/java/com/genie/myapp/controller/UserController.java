package com.genie.myapp.controller;

import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.MailService;
import com.genie.myapp.service.UserService;
import com.genie.myapp.vo.UserVO;


@Controller
@RequestMapping("/user/*")
public class UserController {

	@Inject
	UserService service;

	@Autowired
	private MailService mailService;

	ModelAndView mav;

	@GetMapping("login")
	public ModelAndView adminLogin() {
		mav = new ModelAndView();
		mav.setViewName("user/login");
		return mav;
	}

	@PostMapping("loginOK")
	public ModelAndView loginOk(UserVO vo, HttpSession session) {
		
		mav = new ModelAndView();
		UserVO logVO = service.loginOk(vo);
	
		if(logVO != null) {//로그인 성공
			session.setAttribute("logId", logVO.getUser_id());
			session.setAttribute("logName", logVO.getUser_name());
			session.setAttribute("logStatus","Y");
			mav.setViewName("redirect:/");
			
		}else {//로그인 실패
			
			mav.setViewName("redirect:/login");
		}
		return mav;
	}

	@GetMapping("logout")
	public ModelAndView logout(HttpSession session) {
		mav = new ModelAndView();
		session.invalidate();
		mav.setViewName("redirect:/");
		
		return mav;
	}

	//회원가입 폼으로 이동
	@GetMapping("Registration")
	public ModelAndView RegistragionForm() {
		mav = new ModelAndView();
		mav.setViewName("/user/Registration");
		return mav;
	}

	 //아이디 중복검사
	@GetMapping("idCheck")
	public ModelAndView idCheck(String user_id) {
		mav = new ModelAndView();
		
		//DB조회  : 아이디가 존재하는지 확인
		int cnt = service.idCheck(user_id);
		 
		mav.addObject("idCnt",cnt);
		mav.addObject("user_id",user_id);
		mav.setViewName("user/idCheck");

		return mav;
	}

	//회원 가입하기
	@PostMapping("UserWrite") 
	public ResponseEntity<String> UserWrite(UserVO vo) {

		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=utf-8");
		
		try {//회원가입 성공
			int result = service.UserWrite(vo);

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

//////////////////////////////////////////////////////////

	//마이페이지
	@GetMapping("MyPage")
	public ModelAndView MyPage(HttpSession session) {
		String user_id = (String)session.getAttribute("logId"); 

		UserVO vo = service.getUser(user_id);
		mav = new ModelAndView();
		mav.addObject("vo",vo);
		mav.setViewName("/user/MyPage");
	
		return mav;
	}
  
	//회원정보 수정 DB
	@PostMapping("UserEditOk")
	public ResponseEntity<String> UserEditOk(UserVO vo) {
		
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
		msg+="location.href='/user/MyPage';</script>";
		
		entity = new ResponseEntity<String>(msg,headers, HttpStatus.OK);

		return entity;
	}

	//주문목록/배송조회
	@GetMapping("MyOrderList")
	public ModelAndView MyOrderList(HttpSession session) {
		String user_id = (String)session.getAttribute("logId");

		UserVO vo = service.getUser(user_id);
		mav = new ModelAndView();
		mav.addObject("vo",vo);
		mav.setViewName("/user/MyOrderList");
	
		return mav;
	}

	//배송지 관리
	@GetMapping("MyDeliveryList") 
	public ModelAndView MyDeliveryLIst(HttpSession session) {
		String user_id = (String)session.getAttribute("logId");

		UserVO vo = service.getUser(user_id);
		new ModelAndView();
		mav.addObject("vo",vo);
		mav.setViewName("/user/MyDeliveryList");
	
		return mav;
	}
  
	//나의 문의사항 
	@GetMapping("MyInquiryList") 
	public ModelAndView MyInquiryList(HttpSession session) {
		String user_id = (String)session.getAttribute("logId");

		UserVO vo = service.getUser(user_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo",vo);
		mav.setViewName("/user/MyInquiryList");
	
		return mav;
	}
  
	////////////////////////////////////////////////////////////////////

	@GetMapping("PwdEdit")
	public ModelAndView PwdChange(HttpSession session) {
		
		String user_id = (String)session.getAttribute("logId"); 
		UserVO vo = service.getUser(user_id);
		
		mav = new ModelAndView();
		mav.addObject("vo",vo);
		mav.setViewName("/user/PwdEdit");
		
		return mav;
	}

	@PostMapping("PwdEditOk")
	public ResponseEntity<String> PwdEditOk(UserVO vo) {
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=UTF-8");
		
		String msg = "<script>";
		int cnt = service.PwdEditOk(vo);
		
		if(cnt>0) {//수정됨
			msg+="alert('비밀번호가 수정되었습니다.');";
		}else {//수정못함
			msg+="alert('비밀번호 수정이 실패하였습니다.');";	
		}
		msg+="window.close();</script>";
		
		entity = new ResponseEntity<String>(msg,headers, HttpStatus.OK);

		return entity;
	}
////////////////////////////////////////////////////////////////

	@GetMapping("FindId")
	public ModelAndView FindId() {
		mav = new ModelAndView();
		mav.setViewName("/user/FindId");

		return mav;
	}

	// 메일로 아이디 보내기
	@PostMapping("/user/sendUserId")
	public ResponseEntity<Object> sendEmail(String user_email){
		List<String> user_name =service.FindId(user_email);
	
		if(user_name.size() != 0) {
			mailService.sendUserId(user_email, user_name);
		}
		return new ResponseEntity<Object>(HttpStatus.OK);
	}

	@GetMapping("FindPwd")
	public ModelAndView FindPwd() {
		mav = new ModelAndView();
		mav.setViewName("/user/FindPwd");

		return mav;
	}

	@PostMapping("/user/password_auth")
	public ResponseEntity<Object> authenticateUser(String user_name, HttpSession session) {

    	Map<String, Object> authStatus = new HashMap<>();
		authStatus.put("username", user_name);
		authStatus.put("status", false);
		
		session.setMaxInactiveInterval(300);
		session.setAttribute("authStatus", authStatus);

		return new ResponseEntity<Object>(user_name, HttpStatus.OK);
	}
	
	@GetMapping("/user/password_authOk")
	public String auth(String user_name, HttpSession session) {
		Map<String, Object> authStatus = (Map<String, Object>) session.getAttribute("authStatus");
		if(authStatus == null || !user_name.equals(authStatus.get("user_name"))) {
			return "redirect:/user/FindPwd";
		}
		
		return "user/FindPwd_auth";
	}

	@GetMapping("/user/pwd_emailCheck")
	public ResponseEntity<Boolean> emailCheck(String user_name, String user_email){
    boolean emailCheck = mailService.emailCheck(user_name, user_email);

    	return new ResponseEntity<Boolean>(emailCheck, HttpStatus.OK);
	}
}

	/////////////////////////////////////////////////////////////////////
