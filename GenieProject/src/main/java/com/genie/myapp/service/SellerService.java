package com.genie.myapp.service;

import com.genie.myapp.vo.SellerProductVO;
import com.genie.myapp.vo.SellerVO;

public interface SellerService {
	
	//아이디 중복검사
	public int idCheck(String seller_id);
	//seller 회원가입
	public int sellerWrite(SellerVO vo);
	//seller 상품등록
	public int productWrite(SellerProductVO vo);
}
