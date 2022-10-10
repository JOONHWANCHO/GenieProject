package com.genie.myapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.OrderService;
import com.genie.myapp.service.UserService;

import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.OrderVO;

@RestController
@RequestMapping("/order/*")
public class OrderController {

	@Autowired
	UserService userService;

	@Autowired
	OrderService orderService;

    @Autowired
	PlatformTransactionManager transactionManager;
	
	@Autowired
	TransactionDefinition definition;
	
	TransactionStatus status;
	
	ModelAndView mav = null;

    // --------------------------------------------상품
	// 결제페이지-----------------------------------------------------
	@GetMapping("payment")
	public ModelAndView payment(HttpSession session, CartVO cvo) {

		String genie_id = (String) session.getAttribute("logId");
		//System.out.println("주문정보 받아온 것 cvo : " + cvo.toString());

		List<CartVO> vo = orderService.getOrder(cvo);
		//System.out.println("주문정보 이동 vo : " + vo.toString());

		mav = new ModelAndView();
		mav.addObject("plist", vo);
		mav.addObject("uvo", userService.getUser(genie_id));
		mav.setViewName("/order/payment");

		return mav;
	}

	@GetMapping("orderCompletion")
	public ResponseEntity<String> orderCompletion(OrderVO ovo) {

		orderService.afterPayment(ovo);
		//orderService.afterOrderCart(ovo);
		return new ResponseEntity<String>(HttpStatus.OK);
	}

	@GetMapping("completion")
	public ModelAndView completion(OrderVO ovo) {

		System.out.println(ovo.toString());
		mav = new ModelAndView();

		mav.addObject("olist", ovo);
		mav.setViewName("/order/completion");

		return mav;
	}
    
}
