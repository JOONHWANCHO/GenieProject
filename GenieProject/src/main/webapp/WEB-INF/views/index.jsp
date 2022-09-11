<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<style>

.index {
	position: relative;
	width: 100%;
	height: 100vh;
	margin: 0;
	padding: 6% 15%;
	background: #f5f5f7;
	background-size: cover;
	background-position: center;
}
.wrapper{
	background: #fff;
	text-align: center;
	padding: 5em;
	border-radius: 20px;
	box-shadow: 0 0 10px #b4b4b4;
}
h1 {
	position: relative;
	margin: 0 0 .7em 0;
	color: #1d1d1f;
	font-size: 3.8em;
}
.home-text p{
	width: 80%;
	color: #6e6e73;
	font-size: 1.5em;
	font-weight: bold;
	margin-top: -.5em;
}
.home-btn{
	display: relative;
	font-size: .7em;
	padding: 2% 1.7%;
	background: #96aee0;
	color: #fff;
	border-radius: 50%;
	transition: ease .40s;
	margin-left: 36vw;
	margin-bottom: 10vh;
	
}
.home-btn:hover{
	background: #fff;
	transform: scale(1.1);
	box-shadow: 0 0 7px #278178;
	color: #96aee0;
}
</style>

<!--Genie 메인화면--->
<section class="index">
	<div class="wrapper">
		<h1>NOW IS THE PRESENT 2022</h1>
		<div class="home-text">
			<p>어떤 선물을 찾고 있나요?</p>
			<a href="/genie/genie_01" class="home-btn"><i class="fa-solid fa-gift fa-2xl"></i></a>
			<p>고민이 되신다면 AI추천서비스를 이용해보세요</p>
		</div>
	</div>
</section>