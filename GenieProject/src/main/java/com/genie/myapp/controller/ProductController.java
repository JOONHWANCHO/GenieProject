package com.genie.myapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.ProductService;
import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;

@RestController
@RequestMapping("/")
public class ProductController{

	@Autowired
	ProductService service;
	ModelAndView mav = null;

	//제품 리스트보기
	@GetMapping("product")
	public ModelAndView product(ProductVO PVO) {
		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("/product");
		return mav;
	}

	@GetMapping("cart")
	public ModelAndView cart(CartVO cVO) {
		mav = new ModelAndView();
		mav.addObject("clist", service.Cart(cVO));
		mav.addObject("cvo", cVO);
		mav.setViewName("/cart");
		return mav;
	}
	
}