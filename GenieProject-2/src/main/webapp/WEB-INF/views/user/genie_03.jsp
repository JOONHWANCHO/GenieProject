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
	margin:0;
	padding:120px 80px 50px 80px;
	
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
	padding:100px;
}
#button{
	margin: 10px 40px;
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
	<div class="genie_03">
		<p>선물받는분의 성별은 어떻게 되시나요?</p>
		<div class="box">
			<a href="/user/genie_04"><input type ="button" id="button" value ="남자"></a>
			<a href="/user/genie_04"><input type ="button" id="button" value ="여자"></a>
			<a href="/user/genie_04"><input type ="button" id="button" value ="남여공용"></a>
		</div>
	</div>
</section>
