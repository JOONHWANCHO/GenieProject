<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
  @import url('https://fonts.googleapis.com/css?family=Poppins');
 
.find_info {
	width: 350px;
	max-width: 90%;
	margin: 0 auto;
	margin-top: 50px;
}
 
.find_id_page .find_info input, .find_password_page .find_info input {
	border-radius: 5px;
	border: 1px solid #666;
	width: 75%;
	min-width: 150px;
	height: 30px;
	padding: 0 5px;
}
</style>
<script>
	$(document).ready(function() {

		$(".find_btn").click(function() {
			if($("#user_pwd").val()==""){
          		alert("이메일을 입력하세요..");
          		return false;
        	}
			return true;
		});
	});
</script>

<section class="home">
    <div class="find_info">
		<h3>가입하신 이메일을 입력해주세요</h3>
		<input type="email" name="email" class="email">
		<button class="find_btn">찾기</button>
	</div>
<section>