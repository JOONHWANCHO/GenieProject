package com.genie.myapp.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartVO {

    private int cart_num;
    private String genie_id;
    private int product_id;
    private int cart_price;
    private int cart_qty;
    private String cart_writedate;
    private String product_image1;
    private String product_name;
    private int product_quantity;
    private int product_price;
    private List<Integer> cartList;

}