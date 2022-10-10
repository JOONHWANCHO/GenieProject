package com.genie.myapp.controller;

import java.nio.charset.Charset;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
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
import com.genie.myapp.vo.ProductVO;



@RestController
@RequestMapping("/")
public class GenieController{
	
	
	ModelAndView mav=null;

	@Autowired
	ProductService productService;

	@Autowired
	SellerService sellerService;

	@Autowired
	UserService userService;

	@Autowired
	AdminService adminService;

		// ----------------------------- 제품 리스트 보이기 index
	// -----------------------------------//
	@GetMapping("index")
	public ModelAndView productList(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", productService.listProduct(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("/index");

		return mav;
	}


	@GetMapping("genie")
	public ModelAndView genie() {
		mav = new ModelAndView();
		mav.setViewName("/genie");
		return mav;
	}

	@GetMapping("login")
	public ModelAndView adminLogin() {
		mav = new ModelAndView();
		mav.setViewName("/login");
		return mav;
	}

	// -----------------------------------------------------------장바구니---------------------------------------------------------------//
	@GetMapping("cart")
	public ModelAndView cart(CartVO cvo, HttpSession session) {

		String genie_id = (String) session.getAttribute("logId");
		List<CartVO> cartList = productService.getCart(genie_id);
		// System.out.print(cartList);

		mav = new ModelAndView();
		mav.addObject("clist", cartList);
		mav.setViewName("/cart");

		return mav;
	}

	@PostMapping("addCart")
	public ResponseEntity<String> addCart(CartVO cvo) {

		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text", "html", Charset.forName("UTF-8")));
		headers.add("Content-Type", "text/html; charset=utf-8");

		try {

			int addCart = productService.addCart(cvo);
			//System.out.print(addCart);

			String msg = "<script>";
			msg += "alert('장바구니에 추가되었습니다.');";
			msg += "location.href='/cart';";
			msg += "</script>";
			entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);

		} catch (Exception e) {

			String msg = "<script>";
			msg += "alert('장바구니 추가 에러');";
			msg += "history.back()";
			msg += "</script>";

			entity = new ResponseEntity<String>(msg, headers, HttpStatus.BAD_REQUEST);

			e.printStackTrace();
		}

		return entity;
	}

	@PostMapping("updateCart")
	public ResponseEntity<String> updateCart(CartVO cvo) {

		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text", "html", Charset.forName("UTF-8")));
		headers.add("Content-Type", "text/html; charset=utf-8");

		try {
			//System.out.println(cvo.toString());
			int addCart = productService.updateCart(cvo);
			//System.out.println("장바구니 추가" + addCart);

			entity = new ResponseEntity<String>(headers, HttpStatus.OK);

		} catch (Exception e) {

			entity = new ResponseEntity<String>(headers, HttpStatus.BAD_REQUEST);

			e.printStackTrace();
		}

		return entity;
	}

	// 장바구니에서 제품 삭제
	@GetMapping("delCart")
	public int delCart(HttpSession session, int cart_num) {
		String genie_id = (String) session.getAttribute("logId");
		return productService.delCart(cart_num, genie_id);

	}

	// 장바구니에서 제품 삭제
	@GetMapping("delMultiCart")
	public ModelAndView delMultiCart(HttpSession session, CartVO cvo) {

		mav = new ModelAndView();
		//System.out.println(" 제품 삭제 cvo 정보 " + cvo.toString());
		// String genie_id = (String)session.getAttribute("logId");
		int cnt = productService.delMultiCart(cvo);

		//System.out.println("지워진 상품 : " + cnt);
		mav.setViewName("redirect:/cart");
		return mav;
	}


	
}