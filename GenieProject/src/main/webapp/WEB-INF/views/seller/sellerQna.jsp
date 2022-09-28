<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>

<style>
.table a{
	color:black;
}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
</script>

<%@ include file="../inc/sellerNav.jsp"%>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">문의관리</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/seller/sellerMain">Home</a></li>
              <li class="breadcrumb-item active">Main</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card card-primary card-outline">
              <div class="card-body">
                <h5 class="card-title"> </h5>

                <p class="card-text">
                  <table class="table">
                    <thead>
                      <tr>
                      	<th>답변상태</th>
                      	<th>상품번호</th>
                      	<th>상품명</th>
                        <th>문의제목</th>
                        <th>작성자</th>
                        <th>문의날짜</th>
                      </tr>
                    </thead>
                    <tbody>
                      <!-- 태그 반복 -->
                      
                      <c:forEach var="vo" items="${list }">
                      <tr>
						    <td>${vo.inquiry_status}</td>
						    <td>${vo.product_id }</td>
						    <td>${vo.product_name }</td>
							<td><a href="/product_detail?product_id=${vo.product_id}">${vo.inquiry_title}</a></td>
							<td>${vo.genie_id}</td>
							<td>${vo.inquiry_writedate}</td>
                      </tr>
                    </c:forEach>
                    
                    <!-- 태그 반복 끝 --> 
                    </tbody>
                  </table>
                </p>
              </div>
            </div><!-- /.card -->
          </div>
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

