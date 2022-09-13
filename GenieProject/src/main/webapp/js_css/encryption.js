
   var hashcode_num = false;

   function hashForm(form) {

		  form.user_id.value= form.user_id.value.trim();
	   if(form.user_id.value.length =="") {

		   alert('아이디를 입력하세요.');
		   form.user_id.focus();

		   return;
	   }

		if(form.idCheckState.value !='Y') {

				alert('아이디 중복검사를 하세요.');
				form.user_id.focus();

			return;
	   }

	   	form.user_pwd.value = form.user_pwd.value.trim();
		if(form.user_pwd.value.length =="") {

				alert('비밀번호를 입력하세요.');
				form.user_pwd.focus();

		   return;
	   }

	   form.user_pwd2.value = form.user_pwd2.value.trim();
	   if(form.user_pwd2.value != form.user_pwd.value) {

		   alert('비밀번호가 일치하지 않습니다.');
		   form.user_pwd2.focus();

		   return;
	   }

	   	form.user_phone_num2.value = form.user_phone_num2.value.trim();
	  	form.user_phone_num3.value = form.user_phone_num3.value.trim();
		if(form.user_phone_num1.value.length =="" || form.user_phone_num2.value =="" || form.user_phone_num3.value == "") {

		   alert('연락처를 입력하세요.');
		   form.user_pwd.focus();

		   return;
	   }

	   if(form.user_email.value.length =="") {

		   alert('이메일을 입력하세요.');
		   form.user_pwd.focus();

		   return;
	   }

		  if(form.user_zipcode.value.length =="") {

		   alert('우편번호 입력하세요.');
		   form.user_pwd.focus();

		   return;
	   }
	   
		  if(form.user_addr.value.length =="") {

		   alert('주소를 입력하세요.');
		   form.user_pwd.focus();

		   return;
	   }

	   if(form.user_detailaddr.length =="") {

		   alert('상세 주소를 입력하세요.');
		   form.user_pwd.focus();

		   return;
	   }
	   

	   form.user_pwd.value = sha256(form.user_pwd.value);
	   
	   form.submit();
	   hashcode_num=true;
   }
