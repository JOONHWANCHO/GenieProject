<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<style>
section{
	padding: 80px 18%;
}
.home {
	position: relative;
	width: 100%;
	height: 100vh;
	margin: 0;
    padding:6% 23%;

	/*background: url(../img/background.jpg);*/
	background: #d3f1ee;
	background-size: cover;
	background-position: center;
}
.home-text h1{
	font-size: 40px;
	line-height: 1.2;
	color: white;
	font-family: 'Paytone One', sans-serif;
	letter-spacing: 4px;
	margin-bottom: 20px;
}
.home-text p{
	color: #ffffffbf;
	font-size: 20px;
	font-weight: 400;
	line-height: 38px;
	margin-bottom: 50px;
}
.home-btn{
	display: inline-block;
	font-size: 16px;
	padding: 15px 30px;
	background: #ffffffbf;
	color: #48FFD5;
	border-radius: 4px;
	transition: ease .40s;
}
.home-btn:hover{
	background: var(--bg-color);
	transform: scale(1.1);
}

</style>

<script src="https://kit.fontawesome.com/8d73d915f1.js" crossorigin="anonymous"></script>

	<!--Genie 메인화면--->
	<section class="home" id="home">
		<div class="home-text">
			<h1>NOW IS THE PRESENT 2022</h1>
			<p>어떤 선물을 찾고 있나요?<br> 고민이 되신다면 AI추천서비스를 이용해보세요</p>
			<a href="/genie/genie_01" class="home-btn"><i class="fa-solid fa-gift fa-2xl"></i></a>
		</div>
	</section>