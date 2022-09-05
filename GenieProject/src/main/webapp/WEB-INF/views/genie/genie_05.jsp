<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jspf"%>
<style>
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
.grid-container{
	display: grid;
	grid-template-columns: repeat(4, 1fr);
}
.genie_02 h2{
	margin-bottom: 2em;
	color: #1a534e;
	width: 28ch;
	animation: typing 2s steps(28), blink .5s step-end infinite alternate;
  	white-space: nowrap;
	overflow: hidden;
	border-right: .09em solid;
}
@keyframes typing {
  from {
    width: 0
  }
}
@keyframes blink {
  50% {
    border-color: transparent
  }
}
.button a{
	float: left;
	background-color: #fff;
	color: #1a534e;
	margin: 1%;
	padding: .8em 1.8em;
	font-size: 1.7em;
	font-weight: bold;
	border-radius: 25px;
}
.button a:hover{
	background-color: #f3e7b1;
} 
</style>

<section class="home">
	<div class="genie_02">
		<h2>어떤 특별한 날에 드릴 선물인가요?</h2>
	</div>
		<div class="gird-container">
			<div class="button">
				<a href="/">생일</a>
			</div>
			<div class="button">
				<a href="/">기념일</a>
			</div>
			<div class="button">
				<a href="/">백일</a>
			</div>
			<div class="button">
				<a href="/">집들이</a>
			</div>
			<div class="button">
				<a href="/">서프라이즈</a>
			</div>
			<div class="button">
				<a href="/">응원</a>
			</div>
			<div class="button">
				<a href="/">감사</a>
			</div>
			<div class="button">
				<a href="/">결혼</a>
			</div>
			<div class="button">
				<a href="/">출산</a>
			</div>
			<div class="button">
				<a href="/">임신</a>
			</div>
			<div class="button">
				<a href="/">개업</a>
			</div>
			<div class="button">
				<a href="/">위로</a>
			</div>
		</div>
	</div>
</section>
