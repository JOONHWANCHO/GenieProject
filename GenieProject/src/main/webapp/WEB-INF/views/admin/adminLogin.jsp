<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jspf" %>
<style>
  @import url('https://fonts.googleapis.com/css?family=Poppins');

  /* 기본구조 */

  a {
    color: #92badd;
    display:inline-block;
    text-decoration: none;
    font-weight: 400;
  }

  h1 {
    text-align: left;
    font-size: 30px;
    font-weight: 600;
    margin-left: 30px;
    color: #2DCEF8; 
    margin-bottom: 50px;
  }

  h2 {
    text-align: center;
    font-size: 16px;
    font-weight: 600;
    text-transform: uppercase;
    display:inline-block;
    margin: 40px 8px 10px 8px; 
    color: #cccccc;
  }
  h3 {
    text-align: left;
    font-size: 16px;
    font-weight: 600;
    margin-left: 30px;
    color: #ccc; 
    margin-bottom: 50px;
  }
  p{
    text-align: left;
    font-size: 16px;
    font-weight: 600;
    margin-left: 30px;
    
    color: #363636; 
  }
  /*메인구조 */

  .wrapper {
    display: flex;
    align-items: center;
    flex-direction: column; 
    justify-content: center;
    width: 100%;
    min-height: 100%;
    padding: 20px;
  }

  #formContent {
    -webkit-border-radius: 10px 10px 10px 10px;
    border-radius: 10px 10px 10px 10px;
    background: #fff;
    padding: 30px;
    width: 90%;
    max-width: 450px;
    position: relative;
    padding: 20px;
    -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
    box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
    text-align: center;
  }


  /*타입별로 css 주기*/

  input[type=submit] {
    background-color: #56baed;
    border: none;
    color: #fff;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 20px;
    width: 85%;
    border: 2px solid #f6f6f6;
    border-radius: 10px 10px 10px 10px;
  }

  input[type=text] {
    background-color: #f6f6f6;
    border: none;
    color: #0d0d0d;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 10px;
    width: 85%;
    border: 2px solid #f6f6f6;
    border-radius: 10px 10px 10px 10px;
  }

  input[type=text]:placeholder {
    color: #cccccc;
  }

  .userReg {
    background-color: #F7D25A;
    border: none;
    color: #fff;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 5px;
    margin-top:50px;
    width: 85%; 
    border: 2px solid #f6f6f6;
    border-radius: 10px 10px 10px 10px;
  }

  .comReg{
    background-color: #E162A2;
    border: none;
    color: #fff;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 5px;
    width: 85%;
    border: 2px solid #f6f6f6;
    border-radius: 10px 10px 10px 10px;
  }
</style>

<script>
	$(function(){
		$('#log').submit(function(){
			if($("#userid").val()==""){
				alert("아이디를 입력하세요..");
				return false;
			}
			if($("#userpwd").val()==""){
				alert("비밀번호를 입력하세요..");
				return false;
			}
			return true;
		});
	});
</script>

<div class="wrapper">
  <div id="formContent">
    <!-- 타이틀 -->
    <h1>GENIE</h1>

    <!-- 로그인폼-->
    <form method="post" action="/user/loginOK" id="log">
    	<p>아이디</p>
      <input type="text" id="userid" class="second" name="userid" placeholder="아이디">
    <p>비밀번호</p>
      <input type="text" id="userpwd" class="third" name="userpwd" placeholder="비밀번호">
      <input type="submit" class="fourth" value="Log In">
    </form>

    <!-- 비밀번호 -->
    <!-- 로그인폼-->
    <form method="post" action="/user/loginOK" id="log">
      <input class="userReg" value="일반회원 회원가입">
      <input class="comReg" value="기업회원 회원가입">
    </form>

  </div>
</div>