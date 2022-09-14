package com.genie.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.genie.myapp.dao.SellerDAO;
import com.genie.myapp.vo.OrderVO;

@Service
public class SellerServiceImpl implements SellerService {
	
	@Inject
	SellerDAO dao;

	@Override
	// 주문목록
	public List<OrderVO> sellerOrder(OrderVO vo) {
		return dao.sellerOrder(vo);
	}
}
