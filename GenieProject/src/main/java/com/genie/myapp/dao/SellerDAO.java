package com.genie.myapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.genie.myapp.vo.OrderVO;

@Mapper
@Repository
public interface SellerDAO {

    // 주문목록
    List<OrderVO> sellerOrder(OrderVO vo);

}
