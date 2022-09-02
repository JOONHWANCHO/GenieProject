<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
.home {
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
.genie_01 p{
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
<script>
document.body.scrollTop = document.body.scrollHeight;
</script>

<section class="home">
	<div class="genie_01">
		<p>어떤분에게 선물할 계획이세요?</p>
		<div class="box">
			<a href="/genie/genie_02"><input type ="button" id="button" value ="부모님"></a>
			<a href="/genie/genie_02"><input type ="button" id="button" value ="배우자"></a>
			<a href="/genie/genie_02"><input type ="button" id="button" value ="연인"></a>
			<a href="/genie/genie_02"><input type ="button" id="button" value ="친구"></a>
			<a href="/genie/genie_02"><input type ="button" id="button" value ="회사"></a>
			<a href="/genie/genie_02"><input type ="button" id="button" value ="친인척"></a>
			<a href="/genie/genie_02"><input type ="button" id="button" value ="스승"></a>
			<a href="/genie/genie_02"><input type ="button" id="button" value ="가족"></a>
		</div>
	</div>
</section>
