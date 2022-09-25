package com.genie.myapp.service;

import java.util.List;
import java.util.Map;

import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;
import com.genie.myapp.vo.SellerVO;

public interface ProductService{
    public List<ProductVO> product(ProductVO pVO);
    public ProductVO getProduct(int no);
    public SellerVO getSeller(int no);

    public List<CartVO> getCart(CartVO cVO);
    public CartVO addCart(CartVO cVo);
    public boolean overlapProduct(CartVO cVo);

    public List<ProductVO> selectProduct(Map<String, Object> map);
}   