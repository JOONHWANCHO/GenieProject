<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<link rel="stylesheet" href="/js_css/product_style.css" type="text/css"/>
<script src="/js_css/product_js.js"></script>

<section class="product ">
    <div class="bubbles">
        <h1>상품리스트</h1>
    </div>

    <div class="grid-container">
        <c:forEach var="pvo" items="${plist}">
        <div class="wrapper">
            <div class="product-list">
                <a class="product-title" href="/product_detail"><i class="fa-solid fa-magnifying-glass"></i></a>
                <div class="item">
                    <img src="${pvo.product_image1}">
                </div>
            </div>
            <ul>
                <li>${pvo.genie_id}</li>
                <li>${pvo.product_name}</li>
                <li>${pvo.product_price}원</li>
            </ul>
        </div>
        </c:forEach>
    </div>
</section>
