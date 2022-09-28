package com.genie.myapp.controller;

import javax.inject.Inject;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.MbtiService;
import com.genie.myapp.vo.SellerProductVO;

@RestController
@RequestMapping("/")
public class MbtiController {
	
	@Inject
	MbtiService service;
	ModelAndView mav;
	
	//mbti 메인페이지
	@GetMapping("mbti/mbtiMain")
	public ModelAndView genieMbti() {
		mav = new ModelAndView();
		mav.setViewName("mbti/mbtiMain");
		return mav;
	}
	
	//mbti 상품 리스트
	@GetMapping("mbti/{mbti}")
	public ModelAndView mbtiList(@PathVariable("mbti") String mbti) {
		mav = new ModelAndView();
		//System.out.println(mbti);
		
		mav.addObject("plist", service.getProduct(mbti));
		//mav.addObject("pvo", pvo);
		mav.setViewName("mbti/mbtiList");
		
		return mav;
	}
	
	//상품 정렬
	@GetMapping("mbti/{mbti}/{sortType}")
	public ModelAndView mbtiList(@PathVariable("mbti") String mbti, @PathVariable("sortType") String sortType) {
		mav = new ModelAndView();
		System.out.println(mbti);
		System.out.println(sortType);
		
		if(sortType.equals("pricelist")) {//가격낮은순
			mav.addObject("plist", service.pricelist(mbti));
		}else if(sortType.equals("pricelistdesc")) {//가격높은순
			mav.addObject("plist", service.pricelistdesc(mbti));
		}else if(sortType.equals("recentlist")) {//최신순
			mav.addObject("plist", service.recentlist(mbti));
		}else {//좋아요순
			mav.addObject("plist", service.likelist(mbti));
		}
		
		mav.setViewName("mbti/mbtiList");
		
		return mav;
	}
}
