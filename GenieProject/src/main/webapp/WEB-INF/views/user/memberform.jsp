<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
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
		height:1000px;
		background-color:white;
		margin:0 auto;
		font-size:20px;
		box-sizing: border-box;
        overflow:auto;
	}
	.tab {
		width:100%;
		height:50px;
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
		height:1000px;
		margin:30px auto;
        margin-top:0;
		padding:10px;
        padding-bottom:30px;
	}
	#idForm p, #passwordForm p,#phoneForm p,#addrForm p, #emailForm p,#user_gender p,#user_detailaddr p{
		padding:10px;
        padding-left:0;
	}
	#user_id, #user_pwd, #user_addr, #user_email,#user_detailaddr{
		width:100%;
		height:50px;
		border-radius:15px;
		font-size:30px;
		padding:20px;			
	}
    #user_phone_num1,#user_phone_num2,#user_phone_num3{
        width:29%;
		height:50px;
		border-radius:15px;
		text-align:center;
		font-size:20px;
    }
    #user_zipcode{
        width:33%;
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
    #address_kakao{
        padding:10px;
		display:inline-block;
		font-size: 15px;
		background: #56D8FF;
		color: #fff;
		border-radius: 10px;
		transition: ease .40s;
    }
</style>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function(){
		document.getElementById("address_kakao").addEventListener("click", function(){ 
			//카카오 지도 발생
			new daum.Postcode({
				oncomplete: function(data) { //선택시 입력값 세팅
					document.getElementById("user_zipcode").value = data.zonecode; 
					document.getElementById("user_addr").value = data.address; 
				}
			}).open();
		});
	}
</script>
<script>
	 $(function(){
       	$("#logFrm").submit(function(){

			// 아이디, 비밀번호
            if($("#user_id").val()==""){
                alert("아이디를 입력하세요");
				$("#user_id").focus();
                return false;
            }
            if($("#user_pwd").val()==""){
                alert("비밀번호를 입력하세요");
				$("#user_pwd").focus();
                return false;
            }

			// 전화번호
			if($("#user_phone_num1").val()==""){
                alert("전화번호를 입력하세요");
				$("#user_phone_num1").focus();
                return false;
            }
			if($("#user_phone_num2").val()==""){
                alert("전화번호를 입력하세요");
				$("user_phone_num2").focus();
                return false;
            }
			if($("#user_phone_num3").val()==""){
                alert("전화번호를 입력하세요");
				$("#user_phone_num3").focus();
                return false;
            }

			// 우편번호
			if($("#user_zipcode").val()==""){
                alert("우편번호를 선택하세요");
				$("#user_zipcode").focus();
                return false;
            }
			if($("#user_addr").val()==""){
                alert("주소를 입력하세요");
				$("#user_addr").focus();
                return false;
            }
			if($("#user_detailaddr").val()==""){
                alert("주소를 입력하세요");
				$("#user_detailaddr").focus();
                return false;
            }

			// 이메일
			if($("#user_email").val()==""){
                alert("이메일을 입력하세요..");
				$("#user_email").focus();
                return false;
            }
        return true;
        });
    });
</script>
</head>
<section class="home">
		<div class="container">
			<div class="tab">
				<li><a href="/login">로그인</a></li>
				<li><a href="/user/MemberForm">회원가입</a></li>
			</div>
			<form method="get" action="/" id="logFrm">
				<ul class="loginForm">
					<div id="idForm">
						<p>아이디</p>
						<input type="text" id="user_id" name="user_id" placeholder="아이디를 입력하세요">
					</div>
					<div id="passwordForm">
						<p>비밀번호</p>
						<input type="password" id="user_pwd" name="user_pwd" placeholder="비밀번호를 입력하세요">
					</div>
                    <div id="phoneForm">
						<p>휴대폰 번호</p>
                        <select id = "user_phone_num1" name = "user_phone_num1" size = "1">
							<option value="">선택하세요</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>-
				        <input type ="text" name = "user_phone_num2" id ="user_phone_num2" maxlength = "4"/> -
			 	        <input type ="text" name = "user_phone_num3" id ="user_phone_num3" maxlength = "4"/>
					</div>
                    <div id="emailForm">
						<p>이메일</p>
						<input type="email" id="user_email" name="user_email" placeholder="이메일을 입력하세요">
					</div>
                    <div id="addrForm">
                        <p>우편번호</p>
                        <p><input type ="text" name = "user_zipcode" id ="user_zipcode"/>
                            <input type = "button" value = "우편번호찾기" id = "address_kakao"/><br/>
                        <p>주소</p>
                        <p><input type = "text" name = "user_addr" id ="user_addr" style = "width=90%"/></p>
                        <p>상세주소</p>
                        <p><input type ="text" name = "user_detailaddr" id ="user_detailaddr"/></p>	

                    <div id="user_gender">
						<p>성별</p>
						<input type="radio" name="radio_male" id="radio_male"><label for="radio_male">남성</label>
                        <input type="radio" name="radio_female" id="radio_female"><label for="radio_female">여성</label>
					</div>
					 <li><input type = "submit" id="login" value = "회원가입하기"/></li>
				</ul>
			</form>
		</div>	
	</section>
</html>