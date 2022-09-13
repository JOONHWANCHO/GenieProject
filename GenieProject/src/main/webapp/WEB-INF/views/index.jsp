<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<style>
/* ---------------------뒤에 회색배경설정----------------------- */
.index {
	position: relative;
	width: 100%;
	/* height: 100vh; */
	margin: 0;
	padding: 3% 15%;
	background: #f5f5f7;
}
/* --------------첫번째 하얀부분 설정---------------- */
.index-list {
	background: #fff;
	padding: 2em 19em;
	border-radius: 20px;
	box-shadow: 0 0 10px #b4b4b4;
}
/* ------------첫번째 h1문구 설정(NOW IS THE PRESENT 2022)------------ */
.index-list h1 {
	position: relative;
	margin-bottom: 1.5em;
	color: #1d1d1f;
	font-size: 2em;
}
/* ------------두번째 부재 설정(어떤 선물을 찾고 있나요? 고민이 되신다면 AI추천서비스를 이용해보세요)-------------- */
.index-text p {
	color: #6e6e73;
	font-size: 1em;
	font-weight: bold;
	margin-top: -1em;
}
/* -------------------선물상자 버튼설정----------------- */
.index-btn {
	display: relative;
	font-size: 1.3em;
	padding: .5em;
	background: #96aee0;
	color: #fff;
	border-radius: 10px;
	transition: ease .40s;
	margin-left: 24vw;
}
.index-btn:hover {
	background: #fff;
	transform: scale(1.1);
	box-shadow: 0 0 7px #b4b4b4;
	color: #96aee0;
}
/* --------------------------------------------------------------------------- */
/* --------------------카테고리 설정--------------------- */
.category h2{
	margin: 2em;
	text-align: center;
}
.category-list{
	display: grid;
	grid-template-columns: 10vw 10vw 10vw 10vw 10vw 10vw;
	justify-content: space-evenly;
	align-content: space-evenly;
	gap: 2em;
}
.category-list div{
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 1em;
	font-weight: bold;
	padding: 1em;
	height: 20vh;
	background: #fff;
	border-radius: 20px;
	box-shadow: 0 0 10px #b4b4b4;
}
</style>

<!--Genie 메인화면--->
<section class="index">
	<div class="index-list">
		<h1>NOW IS THE PRESENT 2022</h1>
		<div class="index-text">
			
			<p>어떤 선물을 찾고 있나요?<a href="/genie/genie_01" class="index-btn"><i class="fa-solid fa-robot"></i></a></p>
			<p>고민이 되신다면 AI추천서비스를 이용해보세요</p>
		</div>
	</div>
	<div class="category">
		<h2>Category</h2>
		<div class="category-list">
			<a href="#"><div>생일</div></a>
			<a href="#"><div>기념일</div></a>
			<a href="#"><div>명절</div></a>
			<a href="#"><div>집들이</div></a>
			<a href="#"><div>서프라이즈</div></a>
			<a href="#"><div>응원</div></a>
			<a href="#"><div>캠핑</div></a>
			<a href="#"><div>반려동물</div></a>
			<a href="#"><div>운동</div></a>
			<a href="#"><div>키덜트</div></a>
			<a href="#"><div>요리</div></a>
			<a href="#"><div>홈파티</div></a>
		</div>
	</div>
</section>