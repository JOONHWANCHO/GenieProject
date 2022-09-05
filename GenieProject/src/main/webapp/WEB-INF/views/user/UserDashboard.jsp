<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jspf" %>
<script src="https://kit.fontawesome.com/8d73d915f1.js" crossorigin="anonymous"></script>

<style>

body {
  line-height: 1.5;
  min-height: 100vh;
  font-family: "Be Vietnam Pro", sans-serif;
  /* background: #f2f2f2; */
  background: #d3f1ee;
	background-size: cover;
	background-position: center;
  
}
.responsive-wrapper {
  width: 100%;
  margin: 0;
  padding: 1% 12%;
}
.content {
  display: flex;
  align-items: flex-start;
}
.content-panel {
  display: flex;
  flex-direction: column;
  width: 25%;
  margin-right: 1em;
  background-color: white;
  color: #1f635c;
  box-shadow: 0 0 15px #278178;
  font-weight: bold;
  border-radius: 10px;
}
.content-panel h3{
  padding: 2.8em;
}
.content-panel>ul{
  margin: 0;
  padding: 0;
}
.content-panel>ul>li{
  padding: 1em;
  font-size: 14px; 
}
.content-panel>ul>li>i{
  margin: 0 1em; 
}
.content-panel>ul>li:last-child{
  margin-bottom: 3em;
}
.content-main-top {
    padding:10px;
    background: white;
    width: 100%;
    height: 200px;
    margin-bottom: 30px;
    border-radius: 8px;
}

.content-main-top p{
  margin-top: 0;
  margin-bottom: .5rem;
  font-weight: 500;
  line-height: 1.2;
}

.content-main {
  padding-bottom: 6rem;
  flex-grow: 1;
}

.card-grid {
  display: grid;
  grid-template-columns: repeat(1, 1fr);
  -moz-column-gap: 1.5rem;
       column-gap: 1.5rem;
  row-gap: 1.5rem;
}
@media (min-width: 600px) {
  .card-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}
@media (min-width: 1200px) {
  .card-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

.card, .content-main-top {
  border-radius: 8px;
  overflow: hidden;
  display: flex;
  flex-direction: column;
  background-color: white;
  color: #1f635c;
  box-shadow: 0 0 15px #278178;
  flex-direction: column;
}

/* .card {
  background-color: #fff;
  border-radius: 8px;
  overflow: hidden;
  display: flex;
  flex-direction: column;
} */

.card-header {
  display: flex;
  align-items: flex-start;
  justify-content: space-between;
  padding: 1.5rem 1.25rem 1rem 1.25rem;
}
.card-header div {
  display: flex;
  align-items: center;
}
.card-header div span {
  width: 40px;
  height: 40px;
  border-radius: 8px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
}
.card-header div span img {
  max-height: 100%;
}
.card-header div h3 {
  margin-left: 0.75rem;
  font-weight: 500;
}

.card-body {
  padding: 1rem 1.25rem;
  font-size: 0.875rem;
}

.card-footer {
  margin-top: auto;
  padding: 1rem 1.25rem;
  display: flex;
  align-items: center;
  justify-content: flex-end;
  border-top: 1px solid var(--c-border-primary);
}
.card-footer a {
  color: #3e3e3e;
  text-decoration: none;
  font-weight: 500;
  font-size: 0.875rem;
}
</style>

<div class="responsive-wrapper">
  <div class="content">
    <div class="content-panel">
      <h3>${vo.user_id}님</h3>
        <ul class="fa-ul">
          <li><i class="fa-solid fa-circle-user"></i><a href="#">회원정보 확인/수정</a></li>
          <li><i class="fa-solid fa-cart-plus"></i><a href="#">주문목록/배송조회</a></li>
          <li><i class="fa-brands fa-shopify"></i><a href="#">찜 리스트</a></li>
          <li><i class="fa-solid fa-clipboard"></i><a href="#">나의 문의사항</a></li>
        </ul>
    </div>
    <div class="content-main">
      <div class="content-main-top">
        <p>관리자 관련 정보를 한번에 볼 수 있는 Dashboard</p>
      </div>
      <div class="card-grid">
        <article class="card">
          <div class="card-header">
            <div>
              <span><img src="https://pngimg.com/uploads/circle/circle_PNG23.png" /></span>
              <h3>입점요청</h3>
            </div>

          </div>
          <div class="card-body">
            <h3>알라딘</h3>
            <p>G2208001</p>
          </div>
          <div class="card-body">
            <h3>자스민</h3>
            <p>G2208001</p>
          </div>
          <div class="card-body">
            <h3>자파</h3>
            <p>G2208001</p>
          </div>
          <div class="card-footer">
            <a href="#">더 보기</a>
          </div>
        </article>
        <article class="card">
          <div class="card-header">
            <div>
              <span><img src="https://pngimg.com/uploads/circle/circle_PNG23.png" /></span>
              <h3>주요사항</h3>
            </div>
          </div>
          <div class="card-body">
            <h3>입점요청 100건</h3>
            <p>G2208001</p>
          </div>
          <div class="card-body">
            <h3>상품배송지연</h3>
            <p>G2208001</p>
          </div>
          <div class="card-body">
            <h3>입점문의</h3>
            <p>G2208001</p>
          </div>
          <div class="card-footer">
            <a href="#">더 보기</a>
          </div>
        </article>
      </div>
    </div>
  </div>
</div>