<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<style>

.home {
	position: relative;
	width: 100%;
	height: 100vh;
	margin: 0;
	padding:6% 13%;

	/*background: url(../img/background.jpg);*/
	background: #d3f1ee;
	background-size: cover;
	background-position: center;
}
h1 {
	position: relative;
	margin: 1em 0 0;
	color: #96aee0;
	font-size:4em;
}
.home-text p{
	color: #91ddd6;
	font-size:  2em;
	font-weight: 400;
	line-height: 38px;
	margin: 1em 0;
}
.home-btn{
	display: inline-block;
	font-size: 1em;
	padding: 3%;
	background: #ffffffbf;
	color: #96aee0;
	border-radius: 100%;
	transition: ease .40s;
	box-shadow: 0 0 15px #278178;
}
.home-btn:hover{
	background: var(--bg-color);
	transform: scale(1.1);
}
</style>

<script src="https://kit.fontawesome.com/8d73d915f1.js" crossorigin="anonymous"></script>

	<!--Genie 메인화면--->
	<section class="home" id="home">
		<h1>NOW IS THE PRESENT 2022</h1>
		<div class="home-text">
			<p>어떤 선물을 찾고 있나요?</p>
			<p>고민이 되신다면 AI추천서비스를 이용해보세요</p>
			<a href="/genie/genie_01" class="home-btn"><i class="fa-solid fa-gift fa-2xl"></i></a>
		</div>
	</section>