$(function(){
	$("#idCheck").click(function(){
		window.open("/user/idCheck?user_id="+$("#user_id").val(),"idCheck","width=400,height=300");
	});

	$("#user_id").change(function(){
		$("#idCheckState").val("N");
	});
	//유효성 검사
	$("#logFrm").submit(function(){
		
		$("#userid").change(function(){
			$("#idCheckState").val("N");
		});

		// 아이디, 비밀번호
		if($("#user_id").val().trim()==""){
			alert("아이디를 입력하세요");
			$("#user_id").focus();
			return false;
		}
		//아이디 중복검사여부
		if($("#idCheckState").val().trim()!='Y'){
			alert("아이디를 중복검사 하세요");
			return false;
		}

		if($("#user_pwd").val().trim()==""){
			alert("비밀번호를 입력하세요");
			$("#user_pwd").focus();
			return false;
		}
		if($("#user_pwd").val()!=$("#user_pwd2").val()){
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}

		// 전화번호
		if($("#user_phone_num1").val()=="" || $("#user_phone_num2").val()=="" || $("#user_phone_num3").val()==""){
			alert("연락처를 입력하세요");
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
			alert("상세 주소를 입력하세요");
			$("#user_detailaddr").focus();
			return false;
		}
		// 이메일
		if($("#user_email").val().trim()==""){
			alert("이메일을 입력하세요");
			$("#user_email").focus();
			return false;
		}
		return true;
	});
});