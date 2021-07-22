<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>New User</title>
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
              </span> New User
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
                    <h4 class="card-title text-center text-info">New User</h4>
                 
                    <form class="forms-sample" action="${pageContext.request.contextPath }/admin/user/edit" method="post" enctype="multipart/form-data"> 
                      <div class="form-group">
                      	<input type="hidden" name="id"  value="${userOne.id}" >
                        <label for="exampleInputName1">Name</label>	
                        <input type="text" name="username" class="form-control" id="exampleInputName1" value="${userOne.username}" placeholder="Name">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail3">Password</label>
                        <input type="password" name="passwd" class="form-control" id="exampleInputEmail3" value="${userOne.passwd}" placeholder="Password">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword4">Cusname</label>
                        <input type="text" name="cusname" class="form-control" id="exampleInputPassword4" value="${userOne.cusname}" placeholder="Cusname">
                      </div>
                      
                      <div class="form-group">
                        <label for="exampleInputPassword4">Phone</label>
                        <input name="phone" type="text" class="form-control" id="exampleInputPassword4" value="${userOne.phone}" placeholder="Phone">
                      </div>
                      
                      <div class="form-group">
                        <label for="exampleInputPassword4">Birthday</label>
                        <input name="birthdays" type="date"  class="form-control" id="exampleInputPassword4" value="<fmt:formatDate pattern = "yyyy-MM-dd" 
         value = "${userOne.birthday}" />" placeholder="Birthday">
                      </div>
                      
                      <div class="form-group">
                        <label for="exampleInputPassword4">Address</label>
                        <input type="text"	name="address" t class="form-control" id="exampleInputPassword4" value="${userOne.address}" placeholder="Address">
                      </div>
                      
                      <div class="form-group">
                        <label for="exampleInputPassword4">Email</label>
                        <input name="email" type="text" class="form-control" id="exampleInputPassword4" value="${userOne.email}" placeholder="Email">
                      </div>
                         
                      <div class="form-group">
                        <label >Role</label>
                        <select name="role_user" class="form-control">
                         	<c:forEach var="role" items="${listRole}">
                         		<c:if test="${userOne.user_role.id == role.id}">
                         		<option selected="selected" value="${role.id}">${role.role}</option>
                         		
                         		</c:if>
                         		<option  value="${role.id}">${role.role}</option>
                         	</c:forEach>
                        </select>
                      </div>
                      <div class="form-group">
                        <label>File upload</label>
                        <input type="file" name="upload_avarta" class="file-upload-default" onchange="previewFile()">
                        <div class="input-group col-xs-12">
                          <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                          <span class="input-group-append">
                            <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
                          </span>
                          <input type="hidden" name="avarta_cu" value="${userOne.avatar}">
                        </div>
                      </div>
                      <!-- load hinh img -->
                      <img class="mb-5" height="200px" alt="${userOne.avatar}" src="${pageContext.request.contextPath }/${initParam.urloadUser}/${userOne.avatar}" id="preview-img" style="display: block">
                      <button type="submit" class="btn btn-gradient-primary mr-2">Submit</button>
                      <button class="btn btn-light">Cancel</button>
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
    <script
		src="${pageContext.request.contextPath }/resources/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script
		src="${pageContext.request.contextPath }/resources/assets/vendors/chart.js/Chart.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    
          <script src="${pageContext.request.contextPath }/resources/assets/js/file-upload.js"></script>
                 <script src="${pageContext.request.contextPath }/resources/assets/js/previewimage.js"></script>
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
    <!-- End custom js for this page -->
</body>
</html>