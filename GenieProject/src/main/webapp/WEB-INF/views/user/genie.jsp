<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>
section{
	
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
.home p{
	margin:0;
	padding:1rem;
	
	font-family: "Noto Sans KR", sans-serif;
	font-size: 4rem;
	font-weight: 400;
	text-align: center;
	text-decoration: none;
	color: #fff;
	
	letter-spacing:3px;
}
.home span{
	align-items:center;
	text-align:center;
	padding:150px;
}
.home button{
	margin: 0;
	padding: 0.5rem 1rem;
	
	font-size: 2rem;
	font-weight: 400;
	text-decoration: none;
	
	display: inline-block;
	width: auto;
	
	border: none;
	border-radius: 4px;
	
	letter-spacing: 5px;
}	
</style>
<script>
</script>
</head>
	<section>
		<div class="home">
		<p>어떤분에게 선물할 계획이세요?</p>
		<span>
		<button>부모님</button>
		<button>배우자</button>
		<button>연인</button>
		<button>친구</button><br><br>
		<button>회사</button>
		<button>친인척</button>
		<button>스승</button>
		<button>가족</button>
		</span>
		</div>
	</section>
</body>
</html>