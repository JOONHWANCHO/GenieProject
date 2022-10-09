package com.genie.myapp.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderVO {

    private String order_num;
    private String genie_id;

    private String recipient_name;
    private String recipient_phone;
    private String recipient_address;
    private String recipient_request;
    private String recipient_delivery_status;

    private int cart_num;
    private int product_id;
    private String product_name;
    private int order_qty;
    private int order_price;

    private String order_writedate;
    private String payment_method;

    private String month_day;
    private int total_sales;

    private int sold_counts;
    private String product_image1;
    private String product_category;

}
