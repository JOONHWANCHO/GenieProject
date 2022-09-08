<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
		$("#setId").click(function(){
			opener.$('#user_id').val('${user_id}');
			opener.$('#idCheckState').val('Y');
			window.close();
		});
	});
	console.log(idCnt);
</script>
<section class="home">
    <div class="find_info">
		<h3>아이디를 입력해주세요</h3>
		<input type="email" name="email" class="email">
		<button class="find_btn">찾기</button>
	</div>
<section>