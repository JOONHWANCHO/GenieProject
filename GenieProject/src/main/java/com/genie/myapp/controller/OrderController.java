package com.genie.myapp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.AdminService;
import com.genie.myapp.service.ProductService;
import com.genie.myapp.service.SellerService;
import com.genie.myapp.service.UserService;

import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.OrderVO;

@RestController
@RequestMapping("order")
public class OrderController {

    @Autowired
	ProductService productService;

	@Autowired
	SellerService sellerService;

	@Autowired
	UserService userService;

	@Autowired
	AdminService adminService;

	ModelAndView mav = null;
	Map<String, Object> map = null;

    @Autowired
	PlatformTransactionManager transactionManager;

	@Autowired
	TransactionDefinition definition;

	TransactionStatus status;


    // --------------------------------------------상품
	// 결제페이지-----------------------------------------------------
	@GetMapping("payment")
	public ModelAndView payment(HttpSession session, CartVO cvo) {

		String genie_id = (String) session.getAttribute("logId");
		//System.out.println("주문정보 받아온 것 cvo : " + cvo.toString());

		List<CartVO> vo = productService.getOrder(cvo);
		//System.out.println("주문정보 이동 vo : " + vo.toString());

		mav = new ModelAndView();
		mav.addObject("plist", vo);
		mav.addObject("uvo", userService.getUser(genie_id));
		mav.setViewName("/payment");

		return mav;
	}

	@GetMapping("orderCompletion")
	public ModelAndView orderCompletion(OrderVO ovo) {

		mav=new ModelAndView();

		int afterPayment = productService.afterPayment(ovo);
		//int afterOrderCart = productService.afterOrderCart(ovo);
		mav.addObject("ol",ovo);
		mav.setViewName("/completion");

		return mav;

	}

	// @GetMapping("completion")
	// public ModelAndView completion(HttpSession session) {

	// 	String genie_id = (String)session.getAttribute("logId");
	// 	List<OrderVO> orderList =userService.getOrder(genie_id);

	// 	mav = new ModelAndView();

	// 	mav.addObject("olist", orderList);
	// 	mav.setViewName("completion");

	// 	return mav;
	// }
    
}
