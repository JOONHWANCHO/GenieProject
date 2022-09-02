<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    $(function(){
        $("#logFrm").submit(function(){
            if($("#userid").val()==""){
                alert("아이디를 입력하세요..");
				$("#userid").focus();
                return false;
            }
            if($("#userpwd").val()==""){
                alert("비밀번호를 입력하세요..");
				$("#userpwd").focus();
                return false;
            }
                return true;
        });
    });
</script>
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
	.container{
		padding:30px;
		width:600px;
		height:700px;
		background-color:white;
		margin:0 auto;
		font-size:20px;
		box-sizing: border-box;
	}
	.tab {
		width:100%;
		height:100px;
		font-size:30px;
	}
	.tab>li:nth-child(2n+1){
		width:50%;
		text-align:center;
		float:left
	}
	.tab>li:nth-child(2n+2){
		width:50%;
		text-align:center;
		float:right;
	}
	#login{
		padding:10px 100px 10px 100px;
		display:block;
		margin:50px auto;
		font-size: 30px;
		background: #56D8FF;
		color: #fff;
		border-radius: 10px;
		transition: ease .40s;
	}
	.loginForm{
		width:400px;
		height:400px;
		margin:30px auto;
		padding:10px;
		margin-top:0;
	}
	#idForm p,#passwordForm p {
		padding:20px;
		padding-left:0;
	}
	
	#userid, #userpwd{
		width:100%;
		height:50px;
		border-radius:15px;
		font-size:30px;
		padding:20px;			
	}
	
	#login:hover{
		background: #56D8FF;
		color: #48FFD5;
		transform: scale(1.1);
	}
</style>
</head>
<section class="home">
	<div class="container">
		<div class="tab">
			<li><a href="/login">로그인</a></li>
			<li><a href="/user/memberform">회원가입</a></li>
		</div>
		<form method="get" action="#" id="logFrm">
			<ul class="loginForm">
				<div id="idForm">
					<p>아이디</p>
					<input type="text" id="userid" name="userid" placeholder="아이디를 입력하세요">
				</div>
				<div id="passwordForm">
					<p>비밀번호</p>
					<input type="password" id="userpwd" name="userpwd" placeholder="비밀번호를 입력하세요">
				</div>
				 <li><input type = "submit" id="login" value = "로그인"/></li>
			</ul>
		</form>
	</div>	
</section>
</html>