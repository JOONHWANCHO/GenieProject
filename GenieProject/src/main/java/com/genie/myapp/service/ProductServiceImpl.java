package com.genie.myapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.genie.myapp.dao.ProductDAO;
import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;
import com.genie.myapp.vo.SellerVO;

@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    ProductDAO dao;

	@Override
	public List<ProductVO> product(ProductVO pVO) {
		return dao.product(pVO);
	}
	
	@Override
	public ProductVO getProduct(int no) {
		return dao.getProduct(no);
	}

	@Override
	public List<ProductVO> selectProduct(Map<String, Object> map) {
		return dao.selectProduct(map);
	}

	@Override
	public List<CartVO> getCart(CartVO cVO) {
		return dao.getCart(cVO);
	}

	@Override
	public SellerVO getSeller(int product_id) {
		return dao.getSeller(product_id);
	}



}