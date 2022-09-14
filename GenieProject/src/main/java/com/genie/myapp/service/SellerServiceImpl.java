package com.genie.myapp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.genie.myapp.dao.SellerDAO;
import com.genie.myapp.vo.SellerVO;

@Service
public class SellerServiceImpl implements SellerService {
	
	@Inject
	SellerDAO dao;

	@Override
	public int idCheck(String seller_id) {
		return dao.idCheck(seller_id);
	}

	@Override
	public int sellerWrite(SellerVO vo) {
		return dao.sellerWrite(vo);
	}
}
