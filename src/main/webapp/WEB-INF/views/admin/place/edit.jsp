<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<!--
	@author BaoBB
-->
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Edit Place</title>
    <!-- plugins:css -->
    <link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon"
	href="${pageContext.request.contextPath }/resources/assets/images/favicon.ico" />
</head>
<body>
	<div class="container-scroller">
			<%@include file="../header.jsp"%>
		<div class="container-fluid page-body-wrapper">
			<%@include file="../navbar.jsp"%>
			<!-- Doadborad -->
			   <!-- partial -->
       <div class="main-panel">
        <div class="content-wrapper">
        	  <div class="row" id="proBanner">
        
          </div>
          
           <div class="page-header">
            <h3 class="page-title">
              <span class="page-title-icon bg-gradient-primary text-white mr-2">
                <i class="mdi mdi-home"></i>
              </span> Edit Place
            </h3>
            <nav aria-label="breadcrumb">
              <ul class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page">
                  <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                </li>
              </ul>
            </nav>
          </div>
        
        	<!-- Form -->
     		  <div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title text-center text-info">Edit Place</h4>
                   
                    <form class="forms-sample" method= "post" action="update" enctype="multipart/form-data">
					  <div class="form-group">
                      <label for="exampleInputEmail3">Id</label>
                        <input type="text" class="form-control" name="id" value="${placelOne.id}"readonly>
                      </div>
                      <div class="form-group">
                      <label for="exampleInputEmail3">Name</label>
                        <input type="text" class="form-control" name="name" value="${placelOne.name}" required >
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail3">Province id</label>
                        <select name="province1" id="cars">
                        	<option value="${placelOne.province.id}">${placelOne.province.name}</option>
                        	<c:forEach var="province" items="${provinceList}">
                        		<option value="${province.id}">${province.name}</option>
                        	</c:forEach>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword4">Address</label>
                        <input type="text" class="form-control" name="address" value="${placelOne.address}" required>
                      </div>
                      <input type="hidden" name="image1" value="${placelOne.image}">
                      <div class="form-group">
                        <label>File upload</label>
                        <input type="file" name="uploadfile" class="file-upload-default" >
                        <div class="input-group col-xs-12">
                          <input type="text" class="form-control file-upload-info" disabled="" value="${placelOne.image}">
                          <span class="input-group-append">
                            <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
                          </span>
                        </div>
                      </div>
                      <div class="form-group">
                      <label for="exampleInputEmail3">Description</label>
                        <textarea name="description" rows="4" cols="50" required >${placelOne.description}</textarea>
                      </div>
                      <button type="submit" class="btn btn-gradient-primary mr-2">Submit</button>
                      <a type="button" class="btn btn-gradient-danger btn-fw"onclick="document.location='${pageContext.request.contextPath }/admin/place/'">Cancel</a>
                    </form>
                  </div>
                </div>
              </div>
     	<!-- End Form -->
          </div>
     	
     
     	
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
     <%@include file="../footer.jsp"%>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
		</div>
	</div>
      <!-- page-body-wrapper ends -->

    <!-- container-scroller -->
   <!-- plugins:js -->
   
  
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <script
		src="${pageContext.request.contextPath }/resources/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
      <script src="${pageContext.request.contextPath }/resources/assets/js/file-upload.js"></script>
       <script src="${pageContext.request.contextPath }/resources/assets/js/previewimage.js"></script>
    <script
		src="${pageContext.request.contextPath }/resources/assets/vendors/chart.js/Chart.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script
		src="${pageContext.request.contextPath }/resources/assets/js/off-canvas.js"></script>
    <script
		src="${pageContext.request.contextPath }/resources/assets/js/hoverable-collapse.js"></script>
    <script
		src="${pageContext.request.contextPath }/resources/assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script
		src="${pageContext.request.contextPath }/resources/assets/js/dashboard.js"></script>
    <script
		src="${pageContext.request.contextPath }/resources/assets/js/todolist.js"></script>
		  <!-- Custom js for this page -->
  
    <!-- End custom js for this page -->
</body>
</html>