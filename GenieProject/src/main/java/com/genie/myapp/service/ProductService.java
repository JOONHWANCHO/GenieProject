package com.genie.myapp.service;

import java.util.List;
import java.util.Map;

import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;

public interface ProductService{
    public List<ProductVO> product(Map<String, Object> map);
    public ProductVO getProduct(int no);

    public List<CartVO> getCart(CartVO cVO);
    public CartVO addCart(CartVO cVo);
    public boolean overlapProduct(CartVO cVo);
}