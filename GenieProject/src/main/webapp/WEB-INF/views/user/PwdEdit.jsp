<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
            if($("#user_pwd1").val()==""){
                alert("비밀번호를 입력하세요");
                $("#user_pwd").focus();
                return false;
            }
            if($("#user_pwd1").val()!=$("#user_pwd2").val()){
                alert("비밀번호가 일치하지 않습니다.");
                return false;
            }
            return true;
		});
    });
</script>

<section class="home">
<form method="post" action="/user/PwdEditOk" id="logFrm">
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