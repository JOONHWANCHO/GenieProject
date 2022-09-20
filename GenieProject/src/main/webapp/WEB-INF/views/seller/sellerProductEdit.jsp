<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

body {
  line-height: 1.5;
  min-height: 100vh;
  font-family: "Be Vietnam Pro", sans-serif;
  background: #f2f2f2;
}


.responsive-wrapper {
  width: 90%;
  max-width: 1280px;
  margin-left: auto;
  margin-right: auto;
}

.content {
  margin-top: 2rem;
  display: flex;
  align-items: flex-start;
}

.content-panel {
  display: none;
  max-width: 280px;
  width: 25%;
  padding: 2rem 1rem 2rem 1rem;
  margin-right: 3rem;
}

@media (min-width: 800px) {
  .content-panel {
    display: block;
  }
}

.vertical-tabs {
  display: flex;
  align-items: center;
  flex-direction: column;
  background-color: white;
  border-radius: 8px;
  height: 900px;
  width:280px; /*임시로 추가 !!!*/
}
.vertical-tabs a {
  
  align-items: center;
  padding: 0.3em 1em;
  background-color: transparent;
  border-radius: 3px;
  text-decoration: none;
  font-weight: 500;
  color: #3e3e3e;
  transition: 0.15s ease;
}
.fa-ul {
	margin-left: 0px;
}

.vertical-tabs div {
	margin-bottom: 30px;
}

.vertical-tabs div span {
  width: 200px;
  height: 200px;
  border-radius: 8px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 20px;
}
.vertical-tabs div span img {
  max-height: 100%;
}
.vertical-tabs div h3 {
  
  align-items: center;
  text-align: center;
  font-weight: 500;
}

.content-main-top {
    background: white;
    width: 100%;
    height: 900px;
    margin-bottom: 30px;
    border-radius: 8px;
}

.content-main-top p{
  margin-top: 0;
  margin-bottom: .5rem;
  font-weight: 500;
  line-height: 1.2;
  padding: 1rem;
}

.content-main {
  padding-top: 2rem;
  padding-bottom: 6rem;
  flex-grow: 1;
}

/*---------------------------------*/
.container{
		padding:30px;
		width:100%;
		/*height:1000px;*/
		background-color:white;
		/*margin:0 auto;*/
		font-size:23px;
		box-sizing: border-box;
		border-radius:15px;
		/*-webkit-border-radius: 10px 10px 10px 10px;
		-webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
    	box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);*/
	    overflow:auto;
	}
	ul,li{
		/*margin:0;
		padding:0;*/
		list-style-type:none;
	}
	.container>p{
		font-size:27px;
		margin-top:20px;
		margin-bottom:20px;
		margin-left: 25px;
		padding:10px;
		font-weight:bold;
	}
	.proFrm{
		/*width: 400px;
	    height: 1000px;*/
	    margin: 30px auto;
	    margin-top: 0;
	    margin-left:20px;
	    padding: 20px;
	    padding-bottom: 30px;
	}
	.proFrm p{
		padding:10px;
		padding-left:0;
		font-weight:bold;
	}
	input[type=text]{
		width:60%;
		height:50px;
		background-color: #fff;
    	border: none;
    	color: #0d0d0d;
		border-radius:15px;
		font-size:20px;
		padding:20px;
		margin:5px;
		border: 2px solid #808080;
    	border-radius: 10px 10px 10px 10px;
	}
	textarea{
		width:60%;
		background-color: #fff;
    	border: none;
    	color: #0d0d0d;
		border-radius:15px;
		font-size:20px;
		padding:20px;
		margin:5px;
		border: 2px solid #808080;
    	border-radius: 10px 10px 10px 10px;
	}
	#nameDiv>p, #priceDiv>p, #infoDiv p, #countDiv>p{
		/*float:left;*/
		margin:10px;
		margin-left:0;
		display: inline-block;
	}
	#nameDiv input, #priceDiv input, #infoDiv textarea, #countDiv input{
		width:65%;
		padding:10px;
		display:inline-block;
		transition: ease .40s;
		float:right;
		margin:10px;
		margin-right:15px;
	}
	#infoDiv{
		overflow:auto;
	}
	input[type=checkbox] {
		zoom: 1.5;
	}
	#imageDiv{
		overflow:auto;
	}
	#imageDiv input{
		width:98%;
		padding:10px;
		display:inline-block;
		transition: ease .40s;
		float:right;
		margin:10px;
		margin-right:15px;
	}
	label{
		display: inline-block;
    	width: 140px;
    	line-height: 50px;
    	font-size:20px;
	}
	.subTag{
		font-size:20px;
		margin:0
	}
	#formSubmit{
		padding:10px 100px 10px 100px;
		display:block;
		margin:50px auto;
		font-size: 23px;
		background: #7eabf2;
		color: #fff;
		border:none;
		border-radius: 10px;
		transition: ease .40s;
	}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
		//DB의 카테고리 값 뿌려주기
		/* var categoryList = $("#cateList");
		console.log(categoryList);
		var chkbox = $(".cList");
		categoryList = categoryList.split(",");
		
		for(i=0; i<categoryList.length; i++){
			for(j=0;j<chkbox.length;j++){
				if(categoryList[i]==chkbox[j].value){
					chkbox[j].checked=true;
				}
			}
		} */
		
		//----------------------------------
		$("#productFrm").submit(function(){
			//유효성검사
			//상품명
			if($("#product_name").val()==""){
				alert("상품명을 입력하세요.");
				return false;
			}
			//금액
			if($("#product_price").val()==""){
				alert("판매금액을 입력하세요.");
				return false;
			}
			//상품설명
			if($("#product_info").val()==""){
				alert("상품설명을 입력하세요.");
				return false;
			}
			//상품수량
			if($("#product_quantity").val()==""){
				alert("상품수량을 입력하세요.");
				return false;
			}
			//이미지1
			if($("#product_image1").val()==""){
				alert("상품이미지(1)를 첨부하세요.");
				return false;
			}
			//이미지2
			if($("#product_image2").val()==""){
				alert("상품이미지(2)를 첨부하세요.");
				return false;
			}
			//이미지3
			if($("#product_image3").val()==""){
				alert("상품이미지(3)를 첨부하세요.");
				return false;
			}
			//카테고리
			if($("input:checkbox[name=categoryList]:checked").length<1){
				alert("카테고리를 선택하세요.")
				return false;
			}
			if($("input:checkbox[name=categoryList]:checked").length>2 ){
				alert("카테고리를 2개 이하로 선택하세요.")
				return false;
			}
			//태그
			if($("input:checkbox[name=tagList]:checked").length<4){
				alert("태그를 선택하세요.")
				return false;
			}
			if($("input:checkbox[name=tagList]:checked").length>7){
				alert("태그를 2개 이하로 선택하세요.")
				return false;
			}
			//---유효성검사 끝------------------------
			console.log(111)
			return true;
		});
		
	});
</script>

<main class="main">

	<div class="responsive-wrapper">

		<div class="content">
			<div class="content-panel">
				<div class="vertical-tabs">
					<div>
						<span><img src="../images/seller/profile-1.png" /></span>
						<h3>${logName}님</h3>
					</div>
					<a href="/seller/productForm"><ul class="fa-ul"><li><i class="fa fa-plus-circle" aria-hidden="true"></i> 상품등록</li></ul></a>
					<a href="/seller/sellerProduct"><ul class="fa-ul"><li><i class="fa fa-gift" aria-hidden="true"></i> 상품관리</li></ul></a>
					<a href="/seller/sellerOrder"><ul class="fa-ul"><li><i class="fa fa-shopping-cart" aria-hidden="true"></i> 주문관리</li></ul></a>
					<a href="/seller/sellerSales"><ul class="fa-ul"><li><i class="fa fa-area-chart" aria-hidden="true"></i> 매출관리</li></ul></a>
					<a href="#"><ul class="fa-ul"><li><i class="fa fa-question-circle" aria-hidden="true"></i> 문의관리</li></ul></a>				
				</div>
			</div>
			<div class="content-main">
				<div class="container">
					<p>상품등록</p>
					<form method="post" action="/seller/productEditOk" id="productFrm">
					<input type="hidden" name="product_id" value="${pvo.product_id }"/>
						<ul class="proFrm">
							<div id="nameDiv">
								<p>상품명</p>
								<input type="text" id="product_name" name="product_name" value="${pvo.product_name}"/>
							</div>
							<div id="priceDiv">
								<p>판매금액</p>
								<input type="text" id="product_price" name="product_price" value="${pvo.product_price}"/>
							</div>
							<div id="infoDiv">
								<p>상품설명</p>
								<textarea rows="4" id="product_info" name="product_info" >${pvo.product_info}</textarea>
							</div>
							<div id="countDiv">
								<p>상품수량</p>
								<input type="text" id="product_quantity" name="product_quantity" value="${pvo.product_quantity}"/>
							</div>
							<div id="imageDiv">
								<p>상품이미지</p>
								<input type="text" name="product_image1" id="product_image1" value="${pvo.product_image1 }"/>
								<input type="text" name="product_image2" id="product_image2" value="${pvo.product_image2 }"/>
								<input type="text" name="product_image3" id="product_image3" value="${pvo.product_image3 }"/>
							</div>
							<div>
								<p>카테고리</p>
								<label><input type="checkbox" name="categoryList" value="생일" <c:if test="${fn:indexOf(pvo.product_category,'생일' )>=0}">checked</c:if>>생일</label>
								<label><input type="checkbox" name="categoryList" value="기념일" <c:if test="${fn:indexOf(pvo.product_category,'기념일' )>=0}">checked</c:if>/>기념일</label>
								<label><input type="checkbox" name="categoryList" value="명절" <c:if test="${fn:indexOf(pvo.product_category,'명절' )>=0}">checked</c:if>/>명절</label>
								<label><input type="checkbox" name="categoryList" value="집들이" <c:if test="${fn:indexOf(pvo.product_category,'집들이' )>=0}">checked</c:if>/>집들이</label>
								<label><input type="checkbox" name="categoryList" value="서프라이즈" <c:if test="${fn:indexOf(pvo.product_category,'서프라이즈' )>=0}">checked</c:if>/>서프라이즈</label>
								<label><input type="checkbox" name="categoryList" value="응원" <c:if test="${fn:indexOf(pvo.product_category,'응원' )>=0}">checked</c:if>/>응원</label>
								<label><input type="checkbox" name="categoryList" value="캠핑" <c:if test="${fn:indexOf(pvo.product_category,'캠핑' )>=0}">checked</c:if>/>캠핑</label>
								<label><input type="checkbox" name="categoryList" value="반려동물" <c:if test="${fn:indexOf(pvo.product_category,'반려동물' )>=0}">checked</c:if>/>반려동물</label>
								<label><input type="checkbox" name="categoryList" value="운동" <c:if test="${fn:indexOf(pvo.product_category,'운동' )>=0}">checked</c:if>/>운동</label>
								<label><input type="checkbox" name="categoryList" value="키덜트" <c:if test="${fn:indexOf(pvo.product_category,'키덜트' )>=0}">checked</c:if>/>키덜트</label>
								<label><input type="checkbox" name="categoryList" value="요리" <c:if test="${fn:indexOf(pvo.product_category,'요리' )>=0}">checked</c:if>/>요리</label>
								<label><input type="checkbox" name="categoryList" value="홈파티" <c:if test="${fn:indexOf(pvo.product_category,'홈파티' )>=0}">checked</c:if>/>홈파티</label>
								
							</div>
							<div>
								<p>태그</p>
								<p class="subTag">대상</p>
								<label><input type="checkbox" name="tagList" value="부모님" <c:if test="${fn:indexOf(pvo.product_tag,'부모님' )>=0}">checked</c:if>/>부모님</label>
								<label><input type="checkbox" name="tagList" value="배우자" <c:if test="${fn:indexOf(pvo.product_tag,'배우자' )>=0}">checked</c:if>/>배우자</label>
								<label><input type="checkbox" name="tagList" value="연인" <c:if test="${fn:indexOf(pvo.product_tag,'연인' )>=0}">checked</c:if>/>연인</label>
								<label><input type="checkbox" name="tagList" value="가족/친척" <c:if test="${fn:indexOf(pvo.product_tag,'가족/친척' )>=0}">checked</c:if>/>가족/친척</label>
								<label><input type="checkbox" name="tagList" value="친구/지인" <c:if test="${fn:indexOf(pvo.product_tag,'친구/지인' )>=0}">checked</c:if>/>친구/지인</label>
								<label><input type="checkbox" name="tagList" value="회사" <c:if test="${fn:indexOf(pvo.product_tag,'회사' )>=0}">checked</c:if>/>회사</label>
								<label><input type="checkbox" name="tagList" value="스승/멘토" <c:if test="${fn:indexOf(pvo.product_tag,'스승/멘토' )>=0}">checked</c:if>/>스승/멘토</label>
								<p class="subTag">특정기념일</p>
								<label><input type="checkbox" name="tagList" value="생일" <c:if test="${fn:indexOf(pvo.product_tag,'생일' )>=0}">checked</c:if>/>생일</label>
								<label><input type="checkbox" name="tagList" value="기념일" <c:if test="${fn:indexOf(pvo.product_tag,'기념일' )>=0}">checked</c:if>/>기념일</label>
								<label><input type="checkbox" name="tagList" value="백일" <c:if test="${fn:indexOf(pvo.product_tag,'백일' )>=0}">checked</c:if>/>백일</label>
								<label><input type="checkbox" name="tagList" value="집들이" <c:if test="${fn:indexOf(pvo.product_tag,'집들이' )>=0}">checked</c:if>/>집들이</label>
								<label><input type="checkbox" name="tagList" value="서프라이즈" <c:if test="${fn:indexOf(pvo.product_tag,'서프라이즈' )>=0}">checked</c:if>/>서프라이즈</label>
								<label><input type="checkbox" name="tagList" value="응원" <c:if test="${fn:indexOf(pvo.product_tag,'응원' )>=0}">checked</c:if>/>응원</label>
								<label><input type="checkbox" name="tagList" value="감사" <c:if test="${fn:indexOf(pvo.product_tag,'감사' )>=0}">checked</c:if>/>감사</label>
								<label><input type="checkbox" name="tagList" value="결혼" <c:if test="${fn:indexOf(pvo.product_tag,'결혼' )>=0}">checked</c:if>/>결혼</label>
								<label><input type="checkbox" name="tagList" value="출산" <c:if test="${fn:indexOf(pvo.product_tag,'출산' )>=0}">checked</c:if>/>출산</label>
								<label><input type="checkbox" name="tagList" value="임신" <c:if test="${fn:indexOf(pvo.product_tag,'임신' )>=0}">checked</c:if>/>임신</label>
								<label><input type="checkbox" name="tagList" value="개업" <c:if test="${fn:indexOf(pvo.product_tag,'개업' )>=0}">checked</c:if>/>개업</label>
								<label><input type="checkbox" name="tagList" value="위로" <c:if test="${fn:indexOf(pvo.product_tag,'위로' )>=0}">checked</c:if>/>위로</label>
								<p class="subTag">나이</p>
								<label><input type="checkbox" name="tagList" value="10대이하" <c:if test="${fn:indexOf(pvo.product_tag,'10대이하' )>=0}">checked</c:if>/>10대이하</label>
								<label><input type="checkbox" name="tagList" value="20대" <c:if test="${fn:indexOf(pvo.product_tag,'20대' )>=0}">checked</c:if>/>20대</label>
								<label><input type="checkbox" name="tagList" value="30대" <c:if test="${fn:indexOf(pvo.product_tag,'30대' )>=0}">checked</c:if>/>30대</label>
								<label><input type="checkbox" name="tagList" value="40대" <c:if test="${fn:indexOf(pvo.product_tag,'40대' )>=0}">checked</c:if>/>40대</label>
								<label><input type="checkbox" name="tagList" value="50대" <c:if test="${fn:indexOf(pvo.product_tag,'50대' )>=0}">checked</c:if>/>50대</label>
								<label><input type="checkbox" name="tagList" value="60대이상" <c:if test="${fn:indexOf(pvo.product_tag,'60대이상' )>=0}">checked</c:if>/>60대이상</label>
								<p class="subTag">성별</p>
								<label><input type="checkbox" name="tagList" value="남성" <c:if test="${fn:indexOf(pvo.product_tag,'남성' )>=0}">checked</c:if>/>남성</label>
								<label><input type="checkbox" name="tagList" value="여성" <c:if test="${fn:indexOf(pvo.product_tag,'여성' )>=0}">checked</c:if>/>여성</label>
								<label><input type="checkbox" name="tagList" value="남여공용" <c:if test="${fn:indexOf(pvo.product_tag,'남여공용' )>=0}">checked</c:if>/>남여공용</label>
							</div>
							<li><input type="submit" id="formSubmit" value="상품수정"/></li>
						</ul>
					</form>
				</div>
			</div>
		</div>
	</div>
</main>