<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/js-sha256/0.9.0/sha256.min.js"></script>
<script>

   var hashcode_num = false;

	function hashForm(form) {

		form.user_pwd.value = form.user_pwd.value.trim();
        if(form.user_pwd.value.length == 0) {
			alert('비밀번호를 입력해주세요.');
			form.user_pwd.focus();

			return;
		}

		form.user_pwd1.value = form.user_pwd1.value.trim();
		if(form.user_pwd1.value.length == 0) {
			alert('비밀번호를 입력해주세요.');
			form.user_pwd1.focus();

			return;
		}

		form.user_pwd2.value = form.user_pwd2.value.trim();
		if(form.user_pwd2.value.length == 0) {
			alert('비밀번호를 입력해주세요.');
			form.user_pwd2.focus();

			return;
		}
		
		if(form.user_pwd2.value != form.user_pwd1.value) {
			alert('로그인 비밀번호 확인이 일치하지 않습니다.');
			form.user_pwd2.focus();

			return;
		}
	
		form.user_pwd2.value = sha256(form.user_pwd1.value);
		
		form.submit();
		hashcode_num = true;
	}
</script>

<section class="home">
<form method="post" action="/user/PwdEditOk" id="logFrm" onsubmit="hashForm(this); return false;">
    <div id="passwordForm">
		<input type="hidden" value="${vo.user_id}" name="user_id"/>
		<p>비밀번호</p>
			<input type="text" id="user_pwd" name="user_pwd" placeholder="현재 비밀번호를 입력하세요">
		<p>새 비밀번호</p>
			<input type="text" id="user_pwd1" name="user_pwd1" placeholder="새 비밀번호를 입력하세요">
		<p>새 비밀번호 다시 입력</p>
			<input type="text" id="user_pwd2" name="user_pwd2" placeholder="새 비밀번호를 입력하세요"><br/><br/>
			<input type="submit" id="Find_pwd" value="비밀번호 변경"/><br/>
	</div>
</form>
<section>