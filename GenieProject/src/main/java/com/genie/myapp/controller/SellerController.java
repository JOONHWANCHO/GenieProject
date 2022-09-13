package com.genie.myapp.controller;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.SellerService;

@RestController
@RequestMapping("/seller/*")
public class SellerController {
	
	@Inject
	SellerService service;
	
	ModelAndView mav = null;
	
	//업체 회원가입 폼 보기
	@GetMapping("sellerForm")
	public ModelAndView sellerForm() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerForm");
		return mav;
	}
	// Seller
	@GetMapping("sellerHome")
	public ModelAndView sellerHome() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerHome");
		return mav;
	}

	// Seller 홈
	@GetMapping("sellerMain")
	public ModelAndView sellerMain() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerMain");
		return mav;
	}
	
	// Seller 주문관리 
	@GetMapping("sellerOrder")
	public ModelAndView sellerOrder() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerOrder");
		return mav;
	}
	
	// Seller 매출관리
	@GetMapping("sellerSales")
	public ModelAndView sellerSales() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerSales");
		return mav;
	}
	
	//업체 상품등록 폼 보기
	@GetMapping("productForm")
	public ModelAndView productForm() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerProductForm");
		return mav;
	}
	
	//seller 상품관리 페이지
	@GetMapping("sellerProduct")
	public ModelAndView sellerProduct() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerProduct");
		return mav;
	}
	
	//아이디 중복검사
	@GetMapping("sellerIdCheck")
	public ModelAndView sellerIdCheck(String seller_id) {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerIdCheck");
		return mav;
	}
}
