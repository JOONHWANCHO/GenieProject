<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

</style>
<script>
</script>
</head>
<nav>
	<ul>
		<li><a href="/user/cart">장바구니</a></li>
		<li><a href="/user/login">로그인</a></li>
		<li><a href="/user/memberform">회원가입</a></li>
	</ul>
</nav>
<section>
	<div class="home">
		
	</div>

</section>

</html>