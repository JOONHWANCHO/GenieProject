<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
.home{
	position: relative;
	width: 100%;
	height: 100vh;
	/*background: url(../img/background.jpg);*/
	background: linear-gradient(to top, #56D8FF, #48FFD5);
	background-size: cover;
	background-position: center;
	display: grid;
	grid-template-columns: repeat(1, 1fr);
	align-items: center;
}
.genie_04 p{
	margin:0;
	padding:1rem;
	
	font-size: 50px;
	font-weight: 400;
	text-align: center;
	text-decoration: none;
	color: #fff;
	
	letter-spacing:3px;
}
.box{
	align-items:center;
	text-align:center;
	padding:150px;
}
#button{
	margin: 10px;
	padding: 0.5rem 1rem;
	
	color:#48FFD5;
	font-size: 2rem;
	font-weight: 400;
	text-decoration: none;
	
	display: inline-block;
	width: auto;
	
	border: none;
	border-radius: 10px;
	letter-spacing: 5px;
}

#button:hover{
	color:#56D8FF;
	transition: .4s;
	transform: scale(1.1);
}
</style>

<section class="home">
	<div class="genie_04">
		<p>선물주시는 분의 나이가 어떻게 되시나요?</p>
		<div class="box">
			<a href="/"><input type ="button" id="button" value ="10대"></a>
			<a href="/"><input type ="button" id="button" value ="20~30대"></a>
			<a href="/"><input type ="button" id="button" value ="30~40대"></a>
			<a href="/"><input type ="button" id="button" value ="50대이상"></a>
		</div>
	</div>
</section>
