<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ include file="../inc/top.jspf" %>
<style>
	#topMenu, #logo, #mainMenu, .footer{
	display:none;
	}
</style>
<script>
	$(function(){
		//조회한 id를 opener에 셋팅하고 현재 window를 닫아야한다.
		$("#setId").click(function(){
			opener.$('#user_id').val('${userid}');
			opener.$('#idCheckState').val('Y');
			window.close();
		});
	});

</script>
<div>
	<c:if test="${idCnt==0}">
		<b>${user_id}</b>는 사용가능한 아이디 입니다.
		<input type = "button" value = "아이디 사용하기" id="setId"/>
	</c:if>
	<c:if test="${idCnt>0}">
		<b>${user_id}는 사용 불가능한 아이디 입니다.</b>
	</c:if>

	<hr/>
	<form method = "get" action="/user/idCheck">
		아이디 : <input type = "text" name = "user_id" id = "user_id"/>
		<input type = "submit" value ="아이디 중복 검사하기"/>
	</form>
</div>