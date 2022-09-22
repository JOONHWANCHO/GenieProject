<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<link rel="stylesheet" href="/js_css/index_style.css" type="text/css"/>

<!--Genie 메인화면--->
<section class="index">
   <div class="index-list">      
      <a href="/genie"><img src="/image/banner_western_simple.png"></a>
   </div>

   <div class="category">
      <h1>카테고리</h1>
      <div class="category-list">
         <span><a href="/product?product_category=생일"><img src="https://url.kr/se94dy"><br>생일</a></span>
         <span><a href="/product?product_category=기념일"><img src="https://url.kr/2hgow3"><br>기념일</a></span>
         <span><a href="/product?product_category=기념일"><img src="https://url.kr/6g4pda">명절</a></span>
         <span><a href="/category/houses"><img src="https://url.kr/2g7qkc"></a><br>집들이</span>
         <span><a href="/category/surprise"><img src="https://url.kr/a6ec3n"></a><br>서프라이즈</span>
         <span><a href="/category/cheer"><img src="https://url.kr/yc92uk"></a><br>응원</span>
         <span><a href="/category/camping"><img src="https://url.kr/54t3sv"></a><br>캠핑</span>
         <span><a href="/category/pet"><img src="https://url.kr/gvwdne"></a><br>반려동물</span>
         <span><a href="/category/exercise"><img src="https://url.kr/mnhsv1"></a><br>운동</span>
         <span><a href="/category/kidult"><img src="https://url.kr/j2te9d"></a><br>키덜트</span>
         <span><a href="/category/cooking"><img src="https://url.kr/6p5217"></a><br>요리</span>
         <span><a href="/category/homeparty"><img src="https://url.kr/a4851u"></a><br>홈파티</span>
      </div>
   </div>
   
   <div class="ranking-list">
      <h1>고민될 땐 선물랭킹!<h1>
      <div>
         <a href="/product"><img src="/image/gender_female_long.png"></a>
         <a href="/product"><img src="/image/gender_all_long.png"></a>
         <a href="/product"><img src="/image/gender_male_long.png"></a>
      </div>
   <div>

   <div class="best-tag">
      <h1># 모두의 인기 태그</h1>
      <div class="tag-button">
         <button>#연인</button>
         <button>#생일</button>
         <button>#20대</button>
         <button>#남여공용</button>
         <button>#부모님</button>
         <button>#회사동료</button>
         <button>#결혼</button>
         <button>#mbti</button>
      </div>
   </div>

   <div class="recommend">
      <div class="box1">금주의 추천상품</div>
      <a href="/product" class="box2"></a>
      <a href="/product" class="box3"></a>
      <a href="/product" class="box4"></a>
      <div class="box5" style="font-size: 2rem;"><a href="/">브랜드1 상품명</a></div>
      <div class="box6" style="font-size: 1.5rem;"><a href="/">브랜드1 가격</a></div>
      <div class="box7" style="font-size: 2rem;"><a href="/">브랜드2 상품명</a></div>
      <div class="box8" style="font-size: 1.5rem;"><a href="/">브랜드2 가격</a></div>
   </div>
</section>