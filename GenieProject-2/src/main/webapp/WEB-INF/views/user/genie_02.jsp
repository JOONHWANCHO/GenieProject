<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
.genie_02 p{
	padding:60px;
	color:#fff;
	font-size: 50px;
	text-align: center;
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
	<div class="genie_02">
		<p>선물 예산은 얼마정도로 생각하고 계세요?</p>
		<div class="box">
			<a href="/user/genie_03"><input type ="button" id="button" value ="1만원"></a>
			<a href="/user/genie_03"><input type ="button" id="button" value ="2만원"></a>
			<a href="/user/genie_03"><input type ="button" id="button" value ="5만원"></a>
			<a href="/user/genie_03"><input type ="button" id="button" value ="10만원"></a>
			<a href="/user/genie_03"><input type ="button" id="button" value ="20만원"></a>
			<a href="/user/genie_03"><input type ="button" id="button" value ="30만원"></a>
			<a href="/user/genie_03"><input type ="button" id="button" value ="40만원"></a>
			<a href="/user/genie_03"><input type ="button" id="button" value ="50만원"></a>
		</div>
	</div>
</section>
