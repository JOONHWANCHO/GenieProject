<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>

 <title>Genie 페이지</title>
  <!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'><link rel="stylesheet" href="./style.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" type="text/css"
  href="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/css/themes/vertical-modern-menu-template/style.css">
<link rel="stylesheet" type="text/css" href="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/css/pages/dashboard-modern.css">
<link rel="stylesheet" type="text/css" href="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/css/pages/intro.css">
<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css" href="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/css/laravel-custom.css">
<link rel="stylesheet" type="text/css" href="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/css/custom/custom.css">
<!-- END: Custom CSS-->


<style>
.icon-block {
  padding: 0 15px;
}
.icon-block .material-icons {
  font-size: inherit;
}

.height-64px {
  height: 64px;
  line-height: 64px;
}

nav .sidenav-trigger i {
  height: 64px;
  line-height: 64px;
}

#address_kakao {
  background-color: white; 
  color: black; 
  border: 2px solid #7600bc;
  padding: 10px;
  border-radius: 8px;
}

#address_kakao:hover {
  background-color: #7600bc;
  color: white;
}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<body>

<body
  class="vertical-layout vertical-menu-collapsible page-header-dark vertical-modern-menu 2-columns  "
  data-open="click" data-menu="vertical-modern-menu" data-col="2-columns">

  <!-- BEGIN: Header-->
  <header class="page-topbar" id="header">
    <div class="navbar navbar-fixed ">
  <nav
    class="navbar-main navbar-color nav-collapsible no-shadow nav-expanded sideNav-lock  navbar-dark gradient-45deg-indigo-purple ">
    <div class="nav-wrapper">
      <div class="header-search-wrapper hide-on-med-and-down">
        <i class="material-icons">search</i>
        <input class="header-search-input z-depth-2" type="text" name="Search" placeholder="#배송확인, #주문확인"
          data-search="template-list">
        <ul class="search-list collection display-none"></ul>
      </div>
      <ul class="navbar-list right">
        <li class="dropdown-language">
          <a class="waves-effect waves-block waves-light translation-button" href="#"
            data-target="translation-dropdown">
            <span class="flag-icon flag-icon-gb"></span>
          </a>
        </li>
        <li class="hide-on-med-and-down">
          <a class="waves-effect waves-block waves-light toggle-fullscreen" href="javascript:void(0);">
            <i class="material-icons">settings_overscan</i>
          </a>
        </li>
        <li class="hide-on-large-only search-input-wrapper">
          <a class="waves-effect waves-block waves-light search-button" href="javascript:void(0);">
            <i class="material-icons">search</i>
          </a>
        </li>
        <li>
          <a class="waves-effect waves-block waves-light notification-button" href="javascript:void(0);"
            data-target="notifications-dropdown">
            <i class="material-icons">notifications_none<small class="notification-badge">2</small></i>
          </a>
        </li>
        <li>
          <a class="waves-effect waves-block waves-light sidenav-trigger" href="#" data-target="slide-out-right">
            <i class="material-icons">format_indent_increase</i>
          </a>
        </li>
      </ul>
      <!-- translation-button-->
      <ul class="dropdown-content" id="translation-dropdown">
      </ul>
      <!-- notifications-dropdown-->
      <ul class="dropdown-content" id="notifications-dropdown">
        <li>
          <h6>알림<span class="new badge">2</span></h6>
        </li>
        <li class="divider"></li>
        <li>
          <a class="black-text" href="javascript:void(0)">
            <span class="material-icons icon-bg-circle red small">stars</span>
            결제가 완료되었습니다.
          </a>
          <time class="media-meta grey-text darken-2" datetime="2022-09-12T20:50:48+08:00">3 days ago</time>
        </li>
        <li>
          <a class="black-text" href="javascript:void(0)">
            <span class="material-icons icon-bg-circle amber small">trending_up</span>
            주문하신 물건의 배송이 완료되었습니다.
          </a>
          <time class="media-meta grey-text darken-2" datetime="2015-06-12T20:50:48+08:00">1 week ago</time>
        </li>
      </ul>
    </div>
    <nav class="display-none search-sm">
      <div class="nav-wrapper">
        <form id="navbarForm">
          <div class="input-field search-input-sm">
            <input class="search-box-sm mb-0" type="search" required="" placeholder='Explore Materialize' id="search"
              data-search="template-list">
            <label class="label-icon" for="search">
              <i class="material-icons search-sm-icon">search</i>
            </label>
            <i class="material-icons search-sm-close">close</i>
            <ul class="search-list collection search-list-sm display-none"></ul>
          </div>
        </form>
      </div>
    </nav>
  </nav>
</div>

</header>
  <!-- END: Header-->

  
  <!-- BEGIN: Page Main-->
  <div id="main">
    <div class="row">
                  
      <div
        class="content-wrapper-before  gradient-45deg-indigo-purple ">
      </div>
            

            <div class="col s12">
        <div class="container">
          
          <div class="section">
   <!-- Current balance & total transactions cards-->
   <div class="row vertical-modern-dashboard">
      <div class="col s12 m6 l6">
         <!-- Current Balance -->
         <div class="card animate fadeLeft"> 
            <div class="card-content">

<!-- 추가되는 부분 -->
    <div class="content-main">
      <h4>새로운 배송지</h4>
      <div class="inquiry">
      <form method="post" action="/user/addAddressbook">
        <input type="hidden" value="${vo.genie_id}" name="genie_id"/>
          <ul id="addrForm">
            <li>이름</li>
            <li><input type="text" name="user_name" id ="user_name"/></li>

            <ul id="phoneForm">
              <li>휴대폰 번호</li>
              <select id = "user_phone_num1" name = "user_phone_num1" size = "1">
                <option value="">선택하세요</option>
                <option value="010">010</option>
                <option value="011">011</option>
                <option value="016">016</option>
                <option value="017">017</option>
                <option value="018">018</option>
                <option value="019">019</option>
              </select>
              <input type ="text" name = "user_phone_num2" id ="user_phone_num2" maxlength = "4"/>
              <input type ="text" name = "user_phone_num3" id ="user_phone_num3" maxlength = "4"/>
            </ul>

            <li>우편번호</li>
            <li>
              <input type="text" name="user_zipcode" id ="user_zipcode" readonly/>
              <input type= "button" value = "우편번호찾기" id = "address_kakao"/>
            </li>
            <li>주소</li>
            <li><input type="text" name="user_addr" id ="user_addr" readonly/></li>
            <li>상세주소</li>
            <li><input type="text" name="user_detailaddr" id ="user_detailaddr" /></li> 
            <li><input type="submit" id = "address_kakao" value = "배송지 등록"/></li>
          </ul>
      </form>   
      </div>
    </div>
</div>
</div>
</div>
<!-- 추가되는 부분 끝 -->  

            </div>
         </div>
      </div>
   </div>
   <!--/ Current balance & total transactions cards-->
         

<!-- END RIGHT SIDEBAR NAV -->                  
</div>
        
        <div class="content-overlay"></div>
      </div>
    </div>
  </div>
  <!-- END: Page Main-->

  
  <!-- BEGIN: Footer-->
<footer
  class="page-footer footer gradient-shadow  footer-static   footer-dark gradient-45deg-indigo-purple ">
  <div class="footer-copyright">
    <div class="container">
      <span>&copy; 2022 <a href="/"
          target="_blank">Genie</a> All rights reserved.
      </span>
      <span class="right hide-on-small-only">
        <a href="/"></a>
      </span>
    </div>
  </div>
</footer>

<!-- END: Footer-->  
  <!-- BEGIN VENDOR JS-->
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/js/vendors.min.js"></script>
<!-- BEGIN VENDOR JS-->
<!-- BEGIN PAGE VENDOR JS-->
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/vendors/chartjs/chart.min.js"></script>
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/vendors/chartist-js/chartist.min.js"></script>
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/vendors/chartist-js/chartist-plugin-tooltip.js"></script>
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/vendors/chartist-js/chartist-plugin-fill-donut.min.js"></script>
<!-- END PAGE VENDOR JS-->
<!-- BEGIN THEME  JS-->
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/js/plugins.js"></script>
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/js/search.js"></script>
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/js/custom/custom-script.js"></script>
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/js/scripts/customizer.js"></script>
<!-- END THEME  JS-->

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../js_css/KakaoAddress.js"></script>