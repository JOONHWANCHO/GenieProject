package com.genie.myapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;

@Mapper
@Repository
public interface ProductDAO{
    //상품정보리스트에서 상품정보 가져오기
    public List<ProductVO> Product(ProductVO pVO);
    //장바구니 가져오기(상품포함)
    public List<CartVO> getCart(CartVO cVO);
    //장바구니에 상품 넣기
    public CartVO addCart(CartVO cVo);
    //장바구니에 있는지 확인
    public boolean overlapProduct(CartVO cVo);
}
