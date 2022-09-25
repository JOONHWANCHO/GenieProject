package com.genie.myapp.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.ProductService;
import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;
import com.genie.myapp.vo.TagVO;

@RestController
@RequestMapping("/")
public class ProductController{
	
	@Autowired
	ProductService service;
	ModelAndView mav = null;
	Map<String, Object> map = null;

	//제품 리스트보기
	@GetMapping("product")
	public ModelAndView product(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", service.product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("/product");

		return mav;
	}

	//제폼 상세페이지
	@GetMapping("product_detail")
	public ModelAndView product_detail(@RequestParam("product_id") int product_id) {

		mav = new ModelAndView();
		mav.addObject("pvo", service.getProduct(product_id));
		//mav.addObject("svo", service.getSeller(product_id));
		mav.setViewName("/product_detail");

		return mav;
	}
// -----------------------------------------------------------장바구니---------------------------------------------------------------//
	@GetMapping("cart")
	public ModelAndView cart(CartVO cVO) {
		
		mav = new ModelAndView();
		mav.addObject("clist", service.getCart(cVO));
		mav.addObject("cvo", cVO);
		mav.setViewName("/cart");

		return mav;
	}

	@PostMapping("addCart")
	public ModelAndView addCart(CartVO cVO){

		mav = new ModelAndView();


		return mav;
	}

	//---------------------------------------------- 지니페이지 상품 정보 검색 ----------------------------------------------------------//
	@PostMapping("selectProduct")
	public ModelAndView selectProduct(ProductVO pvo, TagVO tvo) {
		
		map = new HashMap<String, Object>();
		map.put("p", pvo);
		map.put("t", tvo);
		
		mav = new ModelAndView();
		mav.addObject("plist",service.selectProduct(map));
		mav.addObject("pvo",pvo);
		mav.setViewName("/product");
		
		return mav;
	}
	
}