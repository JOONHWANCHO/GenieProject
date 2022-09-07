<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jspf" %>
<script src="https://kit.fontawesome.com/8d73d915f1.js" crossorigin="anonymous"></script>

<style>
.responsive-wrapper {
  background-color: #effaf9;
  background-size: cover;
  width: 100%;
  height: 100vh;
  margin: 0;
  padding: 1% 12%;
}
/* ------------------여기까지는 nav바 빼고 나머지 부분설정--------------------- */
.content {
  display: flex;
  align-items: flex-start;
}
.content-panel {
  display: flex;
  flex-direction: column;
  width: 25%;
  margin-right: 1em;
  background-color: #fff;
  color: #1f635c;
  box-shadow: 0 0 15px #278178;
  font-weight: bold;
  border-radius: 10px;
}
.content-panel h3{
  padding: 2.8em;
}
.content-panel>ul{
  margin: 0;
  padding: 0;
}
.content-panel>ul>li{
  padding: 1em;
  font-size: 14px; 
}
.content-panel>ul>li>i{
  margin: 0 1em; 
}
.content-panel>ul>li:last-child{
  margin-bottom: 3em;
}
/* ------------------------여기까지는 왼쪽 상자박스----------------------------------- */
.content-main{
  display: flex;
  flex-direction: column;
  width: 75%;
  background-color: #fff;
  color: #1f635c;
  box-shadow: 0 0 15px #278178;
  font-weight: bold;
  border-radius: 10px;
  padding: 3em;
}
.content-main h1{
  margin-bottom: 1em;
}
.order>ul>li:nth-child(2n+2){
  margin-bottom: 1em;
  font-size: .8em;
}
.order-title>ul>li{
  float: left;
  width: 10%;
  margin-bottom: 2em;
}
.order-title>ul>li:nth-child(3n+1){
  width: 80%;
}
.order-detail>ul>li{
  float:left;
  width: 20%;
  margin-bottom: 10em;
}
.order-detail>ul>li:nth-child(3n+1){
  width: 60%;
}
/* -----------------------여기는 오른쪽박스----------------------------- */
</style>
<!-- -----------------------------------------스크립트부분---------------------------------- -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function(){
		document.getElementById("address_kakao").addEventListener("click", function(){ 
			//카카오 지도 발생
			new daum.Postcode({
				oncomplete: function(data) { //선택시 입력값 세팅
					document.getElementById("user_zipcode").value = data.zonecode; 
					document.getElementById("user_addr").value = data.address; 
				}
			}).open();
		});
	}
</script>
<!-- ------------------------------------스크립트부분 끝---------------------------------------- -->
<div class="responsive-wrapper">
  <div class="content">
    <div class="content-panel">
      <h3>${vo.user_name}님</h3>
        <ul class="fa-ul">
          <li><i class="fa-solid fa-circle-user"></i><a href="/user/MyPage">회원정보 확인/수정</a></li>
          <li><i class="fa-brands fa-shopify"></i><a href="/user/MyOrderList">주문목록/배송조회</a></li>
          <li><i class="fa-solid fa-clipboard"></i><a href="/user/MyInquiryList">나의 문의사항</a></li>
        </ul>
    </div>
    <div class="content-main">
<<<<<<< HEAD
			<h1>회원정보 수정</h1>
			<form method="get" action="/user/UserEditOk" id="logFrm">
				<ul class="loginForm">
					<div id="idForm">
						<li>아이디</li>
						<input type="text" id="user_id" name="user_id" value= "${vo.user_id}">
						<input type ="hidden" id = "idCheckState" value = "Y"/>
					</div>
					<div id="name">
						<p>이름</p>
						<input type="text" id="user_name" name="user_name" value= "${vo.user_name}" readonly>
					</div>
					<div id="passwordForm">
						<li>비밀번호</li>
						<input type="password" id="user_pwd" name="user_pwd" placeholder="비밀번호를 입력하세요">
						<li>비밀번호 확인</li>
						<input type="password" id="user_pwd" name="user_pwd2" placeholder="비밀번호를 입력하세요">
					</div>
          <div id="phoneForm">
						<li>휴대폰 번호</li>
              <select id = "user_phone_num1" name = "user_phone_num1" size = "1" value = "${vo.user_phone_num1}">
							<option value="">선택하세요</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>-
				        <input type ="text" name = "user_phone_num2" id ="user_phone_num2" maxlength = "4" value ="${vo.user_phone_num2}"/> -
			 	        <input type ="text" name = "user_phone_num3" id ="user_phone_num3" maxlength = "4" value ="${vo.user_phone_num3}"/>
					</div>
          <div id="emailForm">
						<li>이메일</li>
						<input type="email" id="user_email" name="user_email" value =" ${vo.user_email}" placeholder="이메일을 입력하세요">
					</div>
          <div id="addrForm">
            <li>우편번호</li>
            <li><input type ="text" name = "user_zipcode" id ="user_zipcode" value ="${vo.user_zipcode}" readonly />
                <input type = "button" value = "우편번호찾기" id = "address_kakao"/><br/>
            <li>주소</li>
            <li><input type = "text" name = "user_addr" id ="user_addr" value="${vo.user_addr}" readonly/></li>
            <li>상세주소</li>
            <li><input type ="text" name = "user_detailaddr" id ="user_detailaddr" value="${vo.user_detailaddr}"/></li>	
					 <input type = "submit" id="login" value = "회원정보 수정"/>
          </div>
				</ul>
			</form>
=======

    <h1>주문목록</h1>
      <div class="order">
        <ul>
          <li>주문번호 : {vo.product_no}</li>
          <li>주문일 : {vo.order_writedate}</li>
        </ul>
      </div>
      <div class="order-title">
        <ul>
          <li>상품명</li>
          <li>수량</li>
          <li>가격</li>
        </ul>
      </div>
      <div class="order-detail">
        <ul>
          <li>{product_title}</li>
          <li>{product-quantity}</li>
          <li>{product_price}</li>
        </ul>
      </div>
>>>>>>> 00ec4c55091196f84c323b5f0be4e0a931412c4f
    </div>
  </div>
</div>