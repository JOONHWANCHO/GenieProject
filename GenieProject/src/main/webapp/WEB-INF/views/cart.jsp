<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>

<style>
.wrapper{
    background-color: #ddd;
    width: 100%;
    height: 100vh;
    margin:0;
    padding: 3em 13em;
}
.cart{
    background-color: #fff;
    width: auto;
    height: 100%;
    margin: 0;
    box-shadow: 0 0 15px #278178;
    font-weight: bold;
    border-radius: 10px;
}
.cart h1{
    padding: 1em;
}
.cart-product{
    display: flex;
    flex-wrap: wrap;
    flex-direction: row;
}
.money{
    padding: 1em;
    display: flex;
    align-items: flex-end;
    background-color: red;
    border-radius: 10px;
}
</style>

<div class="wrapper">
    <div class="cart">
        <h1><i class="fa-solid fa-cart-plus"></i><a href="#">장바구니</a></h1>
        <div class="cart-product">
            <ul>
                <li>상품이미지</li>
                <li>상품정보</li>
                <li>수량</li>
                <li>상품가격</li>
            </ul>
        </div>
        <div class="money">
            <a href="/">결제하기</a>
        </div>
    </div>
</div>