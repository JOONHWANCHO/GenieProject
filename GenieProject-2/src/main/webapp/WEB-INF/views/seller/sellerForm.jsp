<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
section{
	padding: 80px 18%;
}
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

<section class="home">
	<div class="container">
		<h1>업체 회원가입</h1>
		<form method="post" action="/seller/sellerWrite" id="sellerFrm">
			<ul>
				<li>아이디</li>
				
			</ul>
		</form>
	</div>		
</section>
