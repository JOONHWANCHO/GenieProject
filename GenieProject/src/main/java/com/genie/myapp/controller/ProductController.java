package com.genie.myapp.controller;

import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.AdminService;
import com.genie.myapp.service.ProductService;
import com.genie.myapp.service.SellerService;
import com.genie.myapp.service.UserService;
import com.genie.myapp.vo.AdminVO;
import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.PagingVO;
import com.genie.myapp.vo.ProductVO;
import com.genie.myapp.vo.TagVO;

@RestController
@RequestMapping("/")
public class ProductController {

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

	@GetMapping("/")
	public ModelAndView index(AdminVO vo, ProductVO PVO, PagingVO pVO) {

		mav = new ModelAndView();
		mav.addObject("tlist", adminService.adminTag(vo));
		mav.addObject("plist", productService.listProduct(PVO));
		mav.addObject("pvo", PVO);
		// pVO.setTotalRecord(productService.mainAllSelect(PVO));
		mav.setViewName("/index");

		return mav;
	}

	// 제품 리스트보기
	@GetMapping("product")
	public ModelAndView product(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", productService.listProduct(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("/product");

		return mav;
	}

	// 제폼 상세페이지
	@GetMapping("product_detail")
	public ModelAndView product_detail(@RequestParam("product_id") int product_id, HttpSession session) {
		mav = new ModelAndView();
		String genie_id = (String) session.getAttribute("logId");

		productService.hitCount(product_id);
		mav.addObject("pvo", productService.getProduct(product_id));
		mav.addObject("svo", productService.getSeller(product_id));
		mav.addObject("lvo", productService.likeStatus(product_id));
		mav.addObject("cvo", productService.likeCheck(product_id, genie_id));
		mav.setViewName("/product_detail");

		return mav;
	}

	// ---------------------------------------------- 지니페이지 상품 정보 검색
	// ----------------------------------------------------------//
	@PostMapping("selectProduct")
	public ModelAndView selectProduct(ProductVO pvo, TagVO tvo) {

		map = new HashMap<String, Object>();
		map.put("p", pvo);
		map.put("t", tvo);

		mav = new ModelAndView();
		mav.addObject("plist", productService.selectProduct(map));
		mav.setViewName("/product");

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

	// --------------------------------------------상품
	// 결제페이지-----------------------------------------------------
	@GetMapping("payment")
	public ModelAndView payment(HttpSession session, CartVO cvo) {

		String genie_id = (String) session.getAttribute("logId");
		//System.out.println("주문정보 받아온 것 cvo : " + cvo.toString());

		//장바구니 정보를 결제/주문 페이지로 이동
		List<CartVO> vo = productService.getOrder(cvo);
		//System.out.println("주문정보 이동 vo : " + vo.toString());

		mav = new ModelAndView();
		mav.addObject("plist", vo);
		mav.addObject("uvo", userService.getUser(genie_id));
		mav.setViewName("/payment");

		return mav;
	}

	@PostMapping("orderCompletion")
	public ModelAndView orderCompletion(CartVO cvo, @RequestParam("order_num") String order_num) {

		System.out.println(order_num);

		mav= new ModelAndView();
		status = transactionManager.getTransaction(definition);

		try {

			//myorder테이블로 insert
			int afterPayment = productService.afterPayment(cvo,order_num);

			//장바구니 데이터 삭제 delete
			int afterOrderCart = productService.afterOrderCart(cvo);

			transactionManager.commit(status);

			mav.setViewName("/completion");

		} catch (Exception e) {
			
			transactionManager.rollback(status);
			e.printStackTrace();
		}

		return mav;

	}

	@GetMapping("completion")
	public ModelAndView completion(ProductVO PVO) {

		mav = new ModelAndView();
		mav.setViewName("completion");

		return mav;
	}

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

}