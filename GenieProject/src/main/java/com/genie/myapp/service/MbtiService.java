package com.genie.myapp.service;

import java.util.List;

import com.genie.myapp.vo.SellerProductVO;

public interface MbtiService {
	
	//상품목록 - MBTI 
	public List<SellerProductVO> getProduct(String mbti);
	//상품목록 - 가격낮은순
	public List<SellerProductVO> pricelist(String mbti);
	//상품목록 - 가격높은순
	public List<SellerProductVO> pricelistdesc(String mbti);
	//상품목록 - 최신순
	public List<SellerProductVO> recentlist(String mbti);
	//상품목록 - 좋아요순
	public List<SellerProductVO> likelist(String mbti);
}
