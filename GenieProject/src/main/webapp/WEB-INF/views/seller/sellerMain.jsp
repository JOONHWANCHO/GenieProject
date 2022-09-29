<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../inc/sellerNav.jsp"%>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">지니 셀러 대시보드</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg">
            <div class="card">
              <div class="card-header">
                <h5 class="m-0">주문/배송</h5>
              </div>
              <div class="card-body">
                <h5 class="card-title">새 주문</h5>
                <br>
                <p><fmt:formatNumber type="number" maxFractionDigits="3" value="${totalOrderCount}" /> 총 ${todayOrder} 건의 새 주문이 있습니다.</p>
                <a href="#" class="card-link">주문관리</a>
              </div>
            </div>
          </div>
          <div class="col-lg">
            <div class="card">
              <div class="card-header">
                <h5 class="m-0">주문/배송</h5>
              </div>
              <div class="card-body">
                <h5 class="card-title">새 주문</h5>
                <p class="card-text">3건의 주문이 있습니다.</p>
                <a href="#" class="card-link">주문관리</a>
              </div>
            </div>
          </div>
          <div class="col-lg">
            <div class="card">
              <div class="card-header">
                <h5 class="m-0">주문/배송</h5>
              </div>
              <div class="card-body">
                <h5 class="card-title">새 주문</h5>
                <p class="card-text">3건의 주문이 있습니다.</p>
                <a href="#" class="card-link">주문관리</a>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="card">
              <div class="card-header">
                <h5 class="m-0">아이템별 매출</h5>
              </div>
              <div class="card-body">
                
                <p class="card-text">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>이미지</th>
                        <th>상품명</th>
                        <th>결제건수</th>
                        <th>매출</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach var="vo" items="${list}" varStatus="i">
                        <tr>
                          <th>${vo.product_image1}</th>
                          <th>${vo.product_name}</th>
                          <th>${vo.soldCount}</th>
                          <th>${vo.totalSales}</th>
                        </tr>
                      </c:forEach>
                      
                    </tbody>
                  </table>
                </p>
                <a href="#" class="card-link">매출관리</a>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-9">
            <div class="card">
              <div class="card-header">
                <h5 class="m-0">주문/배송</h5>
              </div>
              <div class="card-body">
                <h5 class="card-title">새 주문</h5>
                <p class="card-text">
                  3건의 주문이 있습니다.
                </p>
                <a href="#" class="card-link">주문관리</a>
              </div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col-lg-6 -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-flud -->
    </div>
    <!-- /.content -->

    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">테스트1</h5>

                <p class="card-text">
                  내용
                </p>

                <a href="#" class="card-link">Card link</a>
                <a href="#" class="card-link">Another link</a>
              </div>
            </div>

            <div class="card card-primary card-outline">
              <div class="card-body">
                <h5 class="card-title">Card title</h5>

                <p class="card-text">
                  Some quick example text to build on the card title and make up the bulk of the card's
                  content.
                </p>
                <a href="#" class="card-link">Card link</a>
                <a href="#" class="card-link">Another link</a>
              </div>
            </div><!-- /.card -->
          </div>
          <!-- /.col-md-6 -->
          <div class="col-lg-6">
            <div class="card">
              <div class="card-header">
                <h5 class="m-0">Featured</h5>
              </div>
              <div class="card-body">
                <h6 class="card-title">Special title treatment</h6>

                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
              </div>
            </div>

            <div class="card card-primary card-outline">
              <div class="card-header">
                <h5 class="m-0">Featured</h5>
              </div>
              <div class="card-body">
                <h6 class="card-title">Special title treatment</h6>

                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
              </div>
            </div>
          </div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


  <%@ include file="../inc/sellerFooter.jsp"%>

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/js_css/dist/js/adminlte.min.js"></script>



