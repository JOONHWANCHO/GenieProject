package com.genie.myapp.vo;

public class OrderVO {
    
    private int order_num;
    private String user_id;
    private int product_id;
    private String recipent_name;
    private String recipent_phone;
    private String recipent_address;
    private String recipent_request;
    private String recipent_delivery_status;
    private int order_price;
    private int order_qty;
    private String order_writedate;

    @Override
    public String toString() {
        return "OrderVO [order_num=" + order_num + ", order_price=" + order_price + ", order_qty=" + order_qty
                + ", order_writedate=" + order_writedate + ", product_id=" + product_id + ", recipent_address="
                + recipent_address + ", recipent_delivery_status=" + recipent_delivery_status + ", recipent_name="
                + recipent_name + ", recipent_phone=" + recipent_phone + ", recipent_request=" + recipent_request
                + ", user_id=" + user_id + "]";
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getOrder_price() {
        return order_price;
    }

    public void setOrder_price(int order_price) {
        this.order_price = order_price;
    }

    public int getOrder_qty() {
        return order_qty;
    }

    public void setOrder_qty(int order_qty) {
        this.order_qty = order_qty;
    }

    public int getOrder_num() {
        return order_num;
    }

    public void setOrder_num(int order_num) {
        this.order_num = order_num;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getRecipent_name() {
        return recipent_name;
    }

    public void setRecipent_name(String recipent_name) {
        this.recipent_name = recipent_name;
    }

    public String getRecipent_phone() {
        return recipent_phone;
    }

    public void setRecipent_phone(String recipent_phone) {
        this.recipent_phone = recipent_phone;
    }

    public String getRecipent_address() {
        return recipent_address;
    }

    public void setRecipent_address(String recipent_address) {
        this.recipent_address = recipent_address;
    }

    public String getRecipent_request() {
        return recipent_request;
    }

    public void setRecipent_request(String recipent_request) {
        this.recipent_request = recipent_request;
    }

    public String getRecipent_delivery_status() {
        return recipent_delivery_status;
    }

    public void setRecipent_delivery_status(String recipent_delivery_status) {
        this.recipent_delivery_status = recipent_delivery_status;
    }

    public String getOrder_writedate() {
        return order_writedate;
    }

    public void setOrder_writedate(String order_writedate) {
        this.order_writedate = order_writedate;
    }

    
    
}
