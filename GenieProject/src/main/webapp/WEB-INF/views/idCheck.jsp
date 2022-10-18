<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<style>
	#topMenu, #logo, #mainMenu, .footer{
	display:none;
	}
 
 * {
	font-family: 'Noto Sans KR', sans-serif;
 }
.find_info {
	width: 350px;
	max-width: 90%;
	margin: 0 auto;
	margin-top: 50px;
}
 
.find_id_page .find_info input, .find_password_page .find_info input {
	border-radius: 15px;
	width: 75%;
	min-width: 150px;
	height: 30px;
	
}
input {
	background-color: #f5f5f7;
	border: 1px solid #c6c6c6;
	box-shadow: 0 0 15px #fbfbfb;
	padding: 10px;
	border-radius: 8px;
}

button{
	background-color: #56baed;
	box-shadow: 0 0 15px #fbfbfb;
	border: none;
	padding: 10px;
	border-radius: 8px;
	color: #fff;
}

/*추가 되는 부분*/
.alert {
    color: #004085;
    background-color: #cce5ff;
    border-color: #b8daff;
	padding: 10px;
	border-radius: 15px;
}	
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
		//조회한 id를 opener에 셋팅하고 현재 window를 닫아야한다.
		$("#setId").click(function(){
			opener.$('#genie_id').val('${genie_id}');
			opener.$('#idCheckState').val('Y');
			window.close();
		});
	});
	console.log(idCnt);
</script>
<div>
	<c:if test="${idCnt==0}">
		<b>${genie_id}</b>는 사용가능한 아이디 입니다.
		<input type = "button" value = "아이디 사용하기" id="setId"/>
	</c:if>
	<c:if test="${idCnt>0}">
		<b>${genie_id}는 사용 불가능한 아이디 입니다.</b>
	</c:if>
	<hr/>
	<form method = "get" action="/idCheck">
		아이디 : <input type = "text" name = "genie_id" id = "genie_id"/>
		<input type = "submit" value ="아이디 중복 검사하기"/>
	</form>
</div>