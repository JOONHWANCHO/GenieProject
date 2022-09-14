  package com.genie.myapp.service;

import java.util.List;

import com.genie.myapp.vo.OrderVO;

public interface SellerService {

    // 주문목록 
    public List<OrderVO> sellerOrder(OrderVO vo);

}
