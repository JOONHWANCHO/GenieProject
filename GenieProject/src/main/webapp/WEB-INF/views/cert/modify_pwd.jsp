<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	
	<main class="password_modify_page">
		<div class="find_info">	
			<h3>새로운 비밀번호로 재설정해주세요</h3>
			
			<div class="box">
				<span>새 비밀번호</span>
				<input type="password" class="user_pwd" name="user_pwd">
			</div>
			
			<div class="box">
				<span>새 비밀번호 확인</span>
				<input type="password" class="user_pwd2" name="user_pwd2">
				<div class="password_check_msg"></div>
			</div>
			<button class="modify_btn" >변경하기</button>
		</div>
	</main>
	

 
 
<script>
 const URLSearch = new URLSearchParams(location.search);
const genie_id = URLSearch.get("genie_id"); 
 
	
// 비밀번호 변경시 비밀번호입력 상태 확인
const isSubmit = (function() {
	let submit = false;
	
	const getSubmit =function() {
		return submit;
	}
	
	const setSubmit = function(set){
		submit = set;
		return submit;
	}
	return {getSubmit : getSubmit, setSubmit : setSubmit};
})();	
	
 

function pwdCheck() {
	const user_pwd = $(".user_pwd").val().replaceAll(" ", "");
	const user_pwd2 = $(".user_pwd2").val().replaceAll(" ", "");
 
	const msgBox = $(".password_check_msg");
	
	if (!user_pwd || !user_pwd2) {
		msgBox.text("비밀번호를 입력해주세요");
		return false;
	} else {
		msgBox.text("");
	}
	
	if(password != password2) {
		msgBox.text("비밀번호를 확인해 주세요");
		return false;
	} else {
		msgBox.text("");
	}
	
	return true;
}
 
 
// 패스워드 변경
$(".modify_btn").click(function(){
	if(!pwdCheck()) {
		return;
	}
	
	const data = {
		password: $(".user_pwd").val(),
		valueType : "password", 
		genie_id : genie_id
	}
	
	$.ajax({
		url: "/cert/modify_pwd",
		type: "PATCH",
		data: data
	})
	.done(function(result){
		swal({
			text : result,
			closeOnClickOutside : false
		})
		.then(function(){
			location.href = "/login";
		})
	})
	.fail(function(){
		alert("에러");
	})
})
</script>