package com.genie.myapp.controller;

import java.nio.charset.Charset;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.AdminService;
import com.genie.myapp.vo.AdminVO;
import com.genie.myapp.vo.UserVO;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
		
	@Autowired
	AdminService service;
	ModelAndView mav = null;
	
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

		@GetMapping("adminPro")
		public ModelAndView adminPro() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/adminPro");
			return mav;
		}
		
		//@GetMapping("adminCategoryTag")
		//public ModelAndView adminCategoryTag() {
		//	ModelAndView mav = new ModelAndView();
		//	mav.setViewName("admin/adminCategoryTag");
		//	return mav;
		//}
		
		//카테고리 
		@GetMapping("adminCategoryTag")
		public ModelAndView adminCategoryTag(AdminVO VO) {
			mav = new ModelAndView();
			System.out.println(VO.toString());
			mav.addObject("list", service.adminCategoryTag(VO));
			mav.addObject("VO", VO);
			mav.setViewName("admin/adminCategoryTag");
			return mav;
		}

		//태그
		@GetMapping("adminTag")
		public ModelAndView adminTag(AdminVO VO) {
			mav = new ModelAndView();
			System.out.println(VO.toString());
			mav.addObject("list", service.adminTag(VO));
			mav.addObject("VO", VO);
			mav.setViewName("admin/adminTag");
			return mav;
		}

		//adminIndex
		@GetMapping("adminIndex")
		public ModelAndView adminIndex() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/adminIndex");
			return mav;
		}

		//adminDetail
		@GetMapping("adminDetail")
		public ModelAndView adminDetail() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/adminDetail");
			return mav;
		}
		
		
		
		
		
		// =======================================
		
		// admember 페이지 이동
		@GetMapping("admember")
		public ModelAndView admember() {
			mav = new ModelAndView();
			mav.addObject("admember", service.userAllSelect());
			mav.setViewName("admin/admember");
			return mav;
		}	
		
		// 선택된 유저의 정보 수정 폼
		@GetMapping("admemberPop")
		public ModelAndView admemberPop(@RequestParam("genie_id") String genie_id) {
			ModelAndView mav = new ModelAndView();
			mav.addObject("vo", service.getadmember(genie_id));
			mav.setViewName("admin/admemberPop");
			return mav;
		}
		
		// 유저 DB 업데이트
		@PostMapping("admemberPopEdit")
		public ResponseEntity<String> admemberPopEdit(UserVO vo){
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
			headers.add("Content-Type", "text/html; charset-UTF-8");
			String msg = "<script>";
			try {
				service.admemberPopEdit(vo);
				msg += "alert('수정완료되었습니다. 정보관리 페이지로 이동합니다.');";
				msg += "location.href='/admin/admemberPop?genie_id="+vo.getGenie_id()+"';";
						
			}catch(Exception e){
				e.printStackTrace();
				msg += "alert('수정 실패하였습니다.');";
				msg += "history.go(-1);";
			}
			msg += "</script>";
			
			return new ResponseEntity<String>(msg, headers, HttpStatus.OK);
		}
		
}