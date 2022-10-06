package com.genie.myapp.service;

import java.util.List;
import java.util.Map;

import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.LikeVO;
import com.genie.myapp.vo.PagingVO;
import com.genie.myapp.vo.ProductVO;
import com.genie.myapp.vo.SellerVO;


public interface ProductService{
    public List<ProductVO> listProduct(ProductVO pVO);
    public ProductVO getProduct(int no);

    public int addCart(CartVO cvo);
    public List<CartVO> getCart(String genie_id);

    public SellerVO getSeller(int product_id);
    public List<ProductVO> selectProduct(Map<String, Object> map);
    
    public int delProduct(List<Integer> cart_num, String genie_id);

    public void hitCount(int product_id);

    //구매완료 후, 장바구니에서 삭제
    public int delCart(String cvo);

    //구매 완료 후, myorder로 넘기기
    public int myorder(String genie_id, CartVO cvo, String imp_uid);

    //메인 화면 페이징 
    public List<ProductVO> mainAllSelect(PagingVO pVO);

    // 상세페이지 좋아요 수 가져오기
    public ProductVO likeStatus(int product_id);

    // 상세페이지 logid 좋아요 확인
    public LikeVO likeCheck(int product_id, String genie_id);
}   