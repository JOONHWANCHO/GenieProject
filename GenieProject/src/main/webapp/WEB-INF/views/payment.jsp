<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="/js_css/cart_style.css" type="text/css"/>

<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>

<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>

<Style>
    h1{
  font-size: 1.5em;
  color: #222;
}
h2{font-size: .9em;}
h3{
  font-size: 1.2em;
  font-weight: 300;
  line-height: 2em;
}
p{
  font-size: .7em;
  color: #666;
  line-height: 1.2em;
}

#invoiceholder{
  width:100%;
  padding-top: 20px;
}
#headerimage{
  z-index:-1;
  position:relative;
  top: -50px;
  height: 350px;

}
#invoice{
  position: relative;
  top: -290px;
  margin: 0 auto;
  width: 800px;
  background: #FFF;
}

[id*='invoice-']{ /* Targets all id with 'col-' */
  padding: 30px;
}

#invoice-top{min-height: 120px;}
#invoice-mid{min-height: 120px;}
#invoice-bot{ min-height: 250px;}

.logo{
  float: left;
    height: 50px;
    width: 60px;
    background: url(/image/logo_western.png) no-repeat;
    background-size: 60px 60px;
}
.clientlogo{
  float: left;
    height: 60px;
    width: 60px;
    background: url(http://michaeltruong.ca/images/client.jpg) no-repeat;
    background-size: 60px 60px;
  border-radius: 50px;
}
.info{
  display: block;
  float:left;
  margin-left: 20px;
}
.title{
  float: right;
}
.title p{text-align: right;}
#project{margin-left: 52%;}
table{
  width: 100%;
  border-collapse: collapse;
}
td{
  padding: 5px 0 5px 15px;
  border: 1px solid #EEE
}
.tabletitle{
  padding: 5px;
  background: #EEE;
}
.service{border: 1px solid #EEE;}
.item{width: 50%;}
.itemtext{font-size: .9em;}

#legalcopy{
  margin-top: 30px;
}
form{
  float:right;
  margin-top: 30px;
  text-align: right;
}

.legal{
  width:70%;
}

.submit-wrapper{
margin: 0;
}

#buy{
margin-top: 30px;
}
</Style>

<div class="wrapper">
    <div class="cart">

        <!-- partial:index.partial.html -->
        <div id="invoiceholder">

        <div id="headerimage"></div>
        <div id="invoice" class="effect2">
            <h1>구매자정보</h1>
            <div id="invoice-top">
            <div class="logo"></div>
            <div class="info">
                <h2>Genie</h2>
                <p> admin@genie.com <br/>
                    02-564-5843
                </p>
            </div><!--End Info-->
            <div class="title">
                <h2>Invoice #0001</h2>
                <p>결제일: June 27, 2015
                </p>
            </div><!--End Title-->
            </div><!--End InvoiceTop-->
            
            <div id="invoice-mid">
            
            <div class="clientlogo"></div>
            <div class="info">
                <h2>조준환</h2>
                <p>joonhwancho@gmail.com<br/>
                010-3611-1326<br/>
            </div>

            <div id="project">
                <h2>구매해 주셔서 감사합니다.</h2>
                <p>고객님께서 구매해 주신 제품은 상품명 : 록시땅 샤워 젤 250ml (12종 중 택1)입니다.</p>
            </div>   

            </div><!--End Invoice Mid-->
            
            <div id="invoice-bot">
            
            <div id="table">
                <table>
                <tr class="tabletitle">
                    <td class="item"><h2></h2></td>
                </tr>
                
                <tr class="service">
                    <td class="tableitem"><p class="itemtext">배송지 : 서울시 강남구 역삼로 327-2번지 멀티캠퍼스</p></td>
                </tr>
                <tr class="service">
                    <td class="tableitem"><p class="itemtext">요청사항 : 경비실앞에 물건을 놔주세요.</p></td>
                </tr>
                
                </table>
            </div><!--End Table-->
            
            <span class="submit-wrapper">
                <input type="submit" id="buy" value="구매하기"/>
            </span>
            

            <script>
                $(function(){
                    $("#buy").click(function () {        
                    var IMP = window.IMP; // 생략가능        
                    IMP.init('imp48507577');         
                    // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용        
                    // i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드        
                    IMP.request_pay({
                        pg: 'html5_inicis', // version 1.1.0부터 지원.            
                        /*                 
                        'kakao':카카오페이,
                        html5_inicis':이니시스(웹표준결제)
                        'nice':나이스페이
                        'jtnet':제이티넷
                        'uplus':LG유플러스
                        'danal':다날
                        'payco':페이코
                        'syrup':시럽페이
                        'paypal':페이팔
                        */            
                        pay_method: 'card', 
                        /*                 
                        'samsung':삼성페이,
                        'card':신용카드,
                        'trans':실시간계좌이체,
                        'vbank':가상계좌,
                        'phone':휴대폰소액결제
                        */            
                        merchant_uid: 'merchant_' + new Date().getTime(),            
                        /*                 
                        merchant_uid에 경우
                        */            
                        <c:forEach var="cvo" items="${clist}">

                          name: "${cvo.product_name}",//name: '${pvo.product_name}',
                          //결제창에서 보여질 이름

                        </c:forEach>

                        <c:set var="total" value="0"/>
                            <c:forEach var="cvo" items="${clist}">
                            <c:set var="total" value="${total+cvo.product_price*cvo.cart_qty}"/>
                        </c:forEach>

                          amount: '${total}',//amount: ${pvo.product_price},

                          //가격             
                          buyer_email: '${uvo.user_email}',
                          buyer_name: '${uvo.user_name}',
                          buyer_tel: '${uvo.user_tel}',      
                          buyer_addr: '${uvo.user_addr}',
                          buyer_postcode: '${uvo.user_zipcode}',
                          m_redirect_url: 'https://www.yourdomain.com/payments/complete'
                        /*                  
                        모바일 결제시,                
                        결제가 끝나고 랜딩되는 URL을 지정                 
                        (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
                        */        
                        }, function (rsp) {            
                            console.log(rsp);            
                            if (rsp.success) {                
                                var msg = '결제가 완료되었습니다.';                
                                msg += '고유ID : ' + rsp.imp_uid;                
                                msg += '상점 거래ID : ' + rsp.merchant_uid;                
                                msg += '결제 금액 : ' + rsp.paid_amount;                
                                msg += '카드 승인번호 : ' + rsp.apply_num;            
                                } else {                
                                    var msg = '결제에 실패하였습니다.';                
                                    msg += '에러내용 : ' + rsp.error_msg;            
                                }           
                            alert(msg);        
                        });
                    });
                });
        </script>
        <script>
            $(function(){
                $("#FindId").click(function(){
                  window.open("/cert/FindId","addressbook","width=400, height=800");
                });


            });
        </script>
            <div id="legalcopy">
                <p class="legal"><strong>구매해 주셔서 감사합니다.</strong>교환 또는 환불을 원하시는 분들은 7일 이내에 가능합니다.
                </p>
            </div>

            </div><!--End InvoiceBot-->
        </div><!--End Invoice-->
        </div><!-- End Invoice Holder-->
        <!-- partial -->

    </div>
</div>