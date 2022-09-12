var hashcode_num = false;

	function hashForm(form) {

		form.user_pwd.value = form.user_pwd.value.trim();
        if(form.user_pwd.value.length == 0) {
			alert('비밀번호를 입력해주세요.');
			form.user_pwd.focus();

			return;
		}

		form.user_pwd2.value = form.user_pwd2.value.trim();
		if(form.user_pwd2.value.length == 0) {
			alert('비밀번호를 입력해주세요.');
			form.user_pwd2.focus();

			return;
		}
		
		if(form.user_pwd2.value != form.user_pwd.value) {
			alert('로그인 비밀번호 확인이 일치하지 않습니다.');
			form.user_pwd2.focus();

			return;
		}
	
		form.user_pwd2.value = sha256(form.user_pwd.value);
		form.user_pwd.value = form.user_pwd2.value;

		form.submit();
		hashcode_num = true;
	}