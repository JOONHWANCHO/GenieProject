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
	public String getOrder_num() {
		return order_num;
	}
	public void setOrder_num(String order_num) {
		this.order_num = order_num;
	}
	public String getGenie_id() {
		return genie_id;
	}
	public void setGenie_id(String genie_id) {
		this.genie_id = genie_id;
	}
	public String getRecipient_name() {
		return recipient_name;
	}
	public void setRecipient_name(String recipient_name) {
		this.recipient_name = recipient_name;
	}
	public String getRecipient_phone() {
		return recipient_phone;
	}
	public void setRecipient_phone(String recipient_phone) {
		this.recipient_phone = recipient_phone;
	}
	public String getRecipient_address() {
		return recipient_address;
	}
	public void setRecipient_address(String recipient_address) {
		this.recipient_address = recipient_address;
	}
	public String getRecipient_request() {
		return recipient_request;
	}
	public void setRecipient_request(String recipient_request) {
		this.recipient_request = recipient_request;
	}
	public String getRecipient_delivery_status() {
		return recipient_delivery_status;
	}
	public void setRecipient_delivery_status(String recipient_delivery_status) {
		this.recipient_delivery_status = recipient_delivery_status;
	}
	public int getCart_num() {
		return cart_num;
	}
	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getOrder_qty() {
		return order_qty;
	}
	public void setOrder_qty(int order_qty) {
		this.order_qty = order_qty;
	}
	public int getOrder_price() {
		return order_price;
	}
	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}
	public String getOrder_writedate() {
		return order_writedate;
	}
	public void setOrder_writedate(String order_writedate) {
		this.order_writedate = order_writedate;
	}
	public String getPayment_method() {
		return payment_method;
	}
	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}
	public String getMonth_day() {
		return month_day;
	}
	public void setMonth_day(String month_day) {
		this.month_day = month_day;
	}
	public int getTotal_sales() {
		return total_sales;
	}
	public void setTotal_sales(int total_sales) {
		this.total_sales = total_sales;
	}
	public int getSold_counts() {
		return sold_counts;
	}
	public void setSold_counts(int sold_counts) {
		this.sold_counts = sold_counts;
	}
	public String getProduct_image1() {
		return product_image1;
	}
	public void setProduct_image1(String product_image1) {
		this.product_image1 = product_image1;
	}
	public String getProduct_category() {
		return product_category;
	}
	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}

}
