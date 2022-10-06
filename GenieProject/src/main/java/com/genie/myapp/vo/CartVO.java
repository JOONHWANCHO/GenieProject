package com.genie.myapp.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartVO{
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
	private List<Integer> noList;

	
	@Override
	public String toString() {
		return "CartVO [cart_num=" + cart_num + ", genie_id=" + genie_id + ", product_id=" + product_id
				+ ", cart_price=" + cart_price + ", cart_qty=" + cart_qty + ", cart_writedate=" + cart_writedate
				+ ", product_image1=" + product_image1 + ", product_name=" + product_name + ", product_quantity="
				+ product_quantity + ", product_price=" + product_price + ", noList=" + noList + "]";
	}
	
}