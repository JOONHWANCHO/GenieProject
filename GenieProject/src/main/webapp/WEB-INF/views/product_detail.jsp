<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<link rel="stylesheet" href="/js_css/product_detail_style.css" type="text/css"/>
<script src="/js_css/product_detail_js.js"></script>

<section class="product_detail">
    <h1>상세페이지</h1>
    <div class="box-wrapper1"> 
        <div class="box1" style="background-image:url(https://img1.kakaocdn.net/thumb/C1260x640.fwebp.q82/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fgift%2Fweekly-brand%2Fimage%2Fpc%2F20220914_ZHIZH.jpg)">
        </div>
        <button class="box2" onclick="detail1()" style="background-image:url(https://img1.kakaocdn.net/thumb/C1260x640.fwebp.q82/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fgift%2Fweekly-brand%2Fimage%2Fpc%2F20220914_ZHIZH.jpg)">
        </button>
        <button class="box3" onclick="detail2()" style="background-image:url(https://img1.kakaocdn.net/thumb/C300x300.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220324103154_bd226b26cc95425c9b2357b21a2dafa1.jpg)">
        </button>
        <button class="box4" onclick="detail3()" style="background-image:url(https://img1.kakaocdn.net/thumb/C300x300.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220512185550_c96d9e78080148239414fbe65fa66195.jpg)">
        </button>
        <div class="box5">
            상품제목${pvo.product_name}
        </div>
        <div class="box6">
            상품가격${pvo.product_price}
        </div>
        <div class="box7">
            상품카테고리${pvo.product_category}
        </div>
        <div class="box8">
            상품설명${pvo.product_info}
        </div>
        <div class="box9">
            셀러명{pvo.ceo_name}
        </div>
        <div class="box10">
            회사이름{pvo.company_name}
        </div>
        <div class="box11">
            셀러주소{pvo.seller_address}
        </div>
        <button class="box12">
            장바구니
        </button>
        <button class="box13">
            구매하기
        </button>
    </div>

    <div class="box-wrapper2"> 
        <div class="box1" style="background-image:url(https://img1.kakaocdn.net/thumb/C300x300.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220324103154_bd226b26cc95425c9b2357b21a2dafa1.jpg)">
        </div>
        <div class="box2" onclick="detail1()" style="background-image:url(https://img1.kakaocdn.net/thumb/C1260x640.fwebp.q82/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fgift%2Fweekly-brand%2Fimage%2Fpc%2F20220914_ZHIZH.jpg)">
        </div>
        <div class="box3" onclick="detail2()" style="background-image:url(https://img1.kakaocdn.net/thumb/C300x300.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220324103154_bd226b26cc95425c9b2357b21a2dafa1.jpg)">
        </div>
        <div class="box4" onclick="detail3()" style="background-image:url(https://img1.kakaocdn.net/thumb/C300x300.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220512185550_c96d9e78080148239414fbe65fa66195.jpg)">
        </div>
        <div class="box5">
            상품제목{pvo.product_title}
        </div>
        <div class="box6">
            상품가격{pvo.product_price}
        </div>
        <div class="box7">
            상품카테고리{pvo.product_category}
        </div>
        <div class="box8">
            상품설명{pvo.product_info}
        </div>
        <div class="box9">
            셀러명{pvo.ceo_name}??
        </div>
        <div class="box10">
            회사이름{pvo.company_name}
        </div>
        <div class="box11">
            셀러주소{pvo.seller_address}
        </div>
        <button class="box12">
            장바구니
        </button>
        <button class="box13">
            구매하기
        </button>
    </div>

    <div class="box-wrapper3"> 
        <div class="box1" style="background-image:url(https://img1.kakaocdn.net/thumb/C300x300.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220512185550_c96d9e78080148239414fbe65fa66195.jpg)">
        </div>
        <div class="box2" onclick="detail1()" style="background-image:url(https://img1.kakaocdn.net/thumb/C1260x640.fwebp.q82/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fgift%2Fweekly-brand%2Fimage%2Fpc%2F20220914_ZHIZH.jpg)">
        </div>
        <div class="box3" onclick="detail2()" style="background-image:url(https://img1.kakaocdn.net/thumb/C300x300.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220324103154_bd226b26cc95425c9b2357b21a2dafa1.jpg)">
        </div>
        <div class="box4" onclick="detail3()" style="background-image:url(https://img1.kakaocdn.net/thumb/C300x300.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220512185550_c96d9e78080148239414fbe65fa66195.jpg)">
        </div>
        <div class="box5">
            상품제목{pvo.product_title}
        </div>
        <div class="box6">
            상품가격{pvo.product_price}
        </div>
        <div class="box7">
            상품카테고리{pvo.product_category}
        </div>
        <div class="box8">
            상품설명{pvo.product_info}
        </div>
        <div class="box9">
            셀러명{pvo.ceo_name}??
        </div>
        <div class="box10">
            회사이름{pvo.company_name}
        </div>
        <div class="box11">
            셀러주소{pvo.seller_address}
        </div>
        <button class="box12">
            장바구니
        </button>
        <button class="box13">
            구매하기
        </button>
    </div>
<!-- ------------------------------------------------------------------------------------------- -->
    <div class="review-wrapper">
        <button class="box_1" onclick="content1()">
            <h1>리뷰</h1>
        </button>
        <button class="box_2" onclick="content2()">
            <h1>상품문의</h1>
        </button>
        <button class="box_3" onclick="content3()">
            <h1>반품/교환정보</h1>
        </button>
        <div class="box_4">
            <h2>상품리뷰</h2>
            <h3>동일한 상품에 대해 작성한 상품평이며 상품을 구매하신 분들이 직접 작성하신 리뷰입니다.</h3>
        </div>
        <div class="box_5">
            평점(구현못하면 글제목)
        </div>
        <div class="box_6">
            글쓴이 + (글쓴 시각)
        </div>
        <div class="box_7">
            글내용
        </div>
        <div class="box_8">
            상품이미지
        </div>
    </div>

    <div class="qna-wrapper">
        <div class="qna">
            <button class="box_01" onclick="content1()">
                <h1>리뷰</h1>
            </button>
            <button class="box_02" onclick="content2()">
                <h1>상품문의</h1>
            </button>
            <button class="box_03" onclick="content3()">
                <h1>반품/교환정보</h1>
            </button>
            <div class="box_04">
                <h2>상품문의</h2>
                <h3>구매하려는 상품에 대해 궁금한 점이 있으신 경우 문의해주세요</h3>
                <h4>공개 게시판이므로 전화번호, 메일 주소 등 고객님의 소중한 개인정보는 절대 남기지 말아주세요.</h4>
                <h4>상품문의 및 후기게시판을 통해 취소나 환불, 반품 등은 처리되지 않습니다.</h4>
            </div>
        </div>
        <div class="qna-content">
            <div class="box_05">답변상태</div>
            <div class="box_06">글내용(글제목)</div>
            <div class="box_07">작성자</div>
            <div class="box_08">작성일</div>
            <div class="box_09">답변완료</div>
            <div class="box_10">문의내용</div>
            <div class="box_11">genie_id</div>
            <div class="box_12">writedate</div>
        </div>
    </div>

    <div class="exchange-wrapper">
        <div class="exchange">
            <button class="box_001" onclick="content1()">
                <h1>리뷰</h1>
            </button>
            <button class="box_002" onclick="content2()">
                <h1>상품문의</h1>
            </button>
            <button class="box_003" onclick="content3()">
                <h1>반품/교환정보</h1>
            </button>
        </div>
        <div class="exchange-content">
            <div class="box_004"><h1>배송정보</h1></div>
            <div class="box_005">배송비</div>
            <div class="box_006">무료배송</div>
            <div class="box_007">묶음배송 여부</div>
            <div class="box_008">가능</div>
            <div class="box_009">배송기간</div>
            <div class="box_010">
                <h4>- 서비스 이용 지역별 상이(단, 주문 시간별 도착 예정 시간은 지역 및 상황에 따라 변동될 수 있어, 정확한 정보는 결제 완료 시 안내되는 문구를 꼭 확인 부탁드립니다)</h4>
                <h4>- 천재지변, 물량 수급 변동 등 예외적인 사유 발생 시, 다소 지연될 수 있는 점 양해 부탁드립니다.</h4>
            </div>
            <div class="box_011">
                <h1>교환/반품 안내</h1>
                <h4>ㆍ교환/반품에 관한 일반적인 사항은 판매자가 제시사항보다 관계법령이 우선합니다.
                다만, 판매자의 제시사항이 관계법령보다 소비자에게 유리한 경우에는 판매자 제시사항이 적용됩니다.</h4>
            </div>    
            <div class="box_012">교환/반품 비용</div>
            <div class="box_013">무료로 반품/교환 가능</div>
            <div class="box_014">교환/반품 신청 기준일</div>
            <div class="box_015">ㆍ상품의 내용이 표시·광고의 내용과 다른 경우에는 상품을 수령한 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 가능</div>
            <div class="box_016">
                <h1>교환/반품 제한사항</h1>
                <h4>ㆍ주문/제작 상품의 경우, 상품의 제작이 이미 진행된 경우</h4>
                <h4>ㆍ상품 포장을 개봉하여 사용 또는 설치 완료되어 상품의 가치가 훼손된 경우 (단, 내용 확인을 위한 포장 개봉의 경우는 예외)</h4>
                <h4>ㆍ고객의 사용, 시간경과, 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우</h4>
                <h4>ㆍ세트상품 일부 사용, 구성품을 분실하였거나 취급 부주의로 인한 파손/고장/오염으로 재판매 불가한 경우</h4>
                <h4>ㆍ모니터 해상도의 차이로 인해 색상이나 이미지가 실제와 달라, 고객이 단순 변심으로 교환/반품을 무료로 요청하는 경우</h4>
                <h4>ㆍ제조사의 사정 (신모델 출시 등) 및 부품 가격 변동 등에 의해 무료 교환/반품으로 요청하는 경우</h4>
                <h4>※ 각 상품별로 아래와 같은 사유로 취소/반품이 제한될 수 있습니다.</h4>
            </div>
            <div class="box_017">의류/잡화/수입명품</div>
            <div class="box_018">ㆍ상품의 택(TAG) 제거, 라벨 및 상품 훼손, 구성품 누락으로 상품의 가치가 현저히 감소된 경우</div>
            <div class="box_019">계절상품/식품/화장품</div>
            <div class="box_020">
                <h4>ㆍ신선/냉장/냉동 식품의 단순변심의 경우</h4>
                <h4>ㆍ뷰티 상품 이용 시 트러블(알러지, 붉은 반점, 가려움, 따가움)이 발생하는 경우,진료 확인서 및 소견서 등을 증빙하면 환불이 가능 (제반비용 고객부담)</h4>
            </div>
            <div class="box_021">전자/가전/설치상품</div>
            <div class="box_022">
                <h4>ㆍ설치 또는 사용하여 재판매가 어려운 경우, 액정이 있는 상품의 전원을 켠 경우</h4>
                <h4>ㆍ상품의 시리얼 넘버 유출로 내장된 소프트웨어의 가치가 감소한 경우 (내비게이션, OS시리얼이 적힌 PMP)</h4>
                <h4>ㆍ홀로그램 등을 분리, 분실, 훼손하여 상품의 가치가 현저히 감소하여 재판매가 불가할 경우 (노트북, 데스크탑 PC 등)</h4>
                </div>
            <div class="box_023">자동차용품</div>
            <div class="box_024">ㆍ상품을 개봉하여 장착한 이후 단순변심인 경우</div>
            <div class="box_025">CD/DVD/GAME/BOOK</div>
            <div class="box_026">ㆍ복제가 가능한 상품의 포장 등을 훼손한 경우</div>
            <div class="box_027"><h1>판매자 정보</h1></div>
            <div class="box_028">판매자</div>
            <div class="box_029">company_name</div>
        </div>
    </div>
</section>