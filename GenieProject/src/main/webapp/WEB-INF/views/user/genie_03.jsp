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
}
.genie_03 p{
	padding: 60px;
	font-size: 40px;
	text-align: center;
	color: #fff;
}
#button:hover{
	color:#56D8FF;
	transition: .4s;
	transform: scale(1.1);
}

#button{
	border: none;
	font-size: 40px;
	margin: 10px;
	padding:10px;
	color: #48FFD5;
	border-radius: 9px;
	transition: ease .40s;
}

.box button{
	margin:0 auto;
	text-align:center;
}

.box{
	align-items:center;
	text-align:center;
	padding:150px;
}
</style>

<section class="home">
	<div class="genie_03">
		<p>선물받는분의 성별은 어떻게 되시나요?</p>
		<div class="box">
		<a href="/user/genie_04"><input type ="button" id="button" value ="남자"></a>
		<a href="/user/genie_04"><input type ="button" id="button" value ="여자"></a>
		<a href="/user/genie_04"><input type ="button" id="button" value ="남여공용"></a>
		</div>
	</div>
</section>
