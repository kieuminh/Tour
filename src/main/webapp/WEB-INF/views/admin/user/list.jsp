<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
		<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Purple Admin</title>
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
            <div class="col-12">
              <span class="d-flex align-items-center purchase-popup">
                <p>List User </p>
                <a href="${pageContext.request.contextPath }/admin/user/new"  class="btn download-button purchase-button ml-auto">Add</a>
                
              </span>
            </div>
          </div>
          
           <div class="page-header">
            <h3 class="page-title">
              <span class="page-title-icon bg-gradient-primary text-white mr-2">
                <i class="mdi mdi-home"></i>
              </span> List User
            </h3>
            <nav aria-label="breadcrumb">
              <ul class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page">
                  <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                </li>
              </ul>
            </nav>
          </div>
        
        	<!-- table -->
     		   <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title text-center text-info">User Table</h4>
                  
                  
                    <table class="table table-hover">
                      <thead>
                        <tr>
                          <th>Id</th>
                          <th>Avatar</th>
                           <th>Username</th>
                          <th>Password</th>
                          <th>Cusname</th>
                          <th>Phone</th>
                          <th>Birthday</th>
                           <th>Address</th>
                             <th>Role</th>
                            <th>Email</th>
                             
                        </tr>
                      </thead>
                      <tbody>
                         <c:forEach var="usertour" items="${userList}">
                        <tr>
                          <td>${usertour.id }</td>
                         <td><img alt="${usertour.avatar}" src="${pageContext.request.contextPath }/${initParam.urloadUser}/${usertour.avatar}"> </td>
                         <td>${usertour.username}</td>
                         <td>${usertour.passwd }</td>
                         <td>${usertour.cusname}</td>
                         <td>${usertour.phone}</td>
                         <td><fmt:formatDate value="${usertour.birthday}" pattern="dd-MM-yyyy"/></td>
                         <td>${usertour.address}</td>
                           <td>${usertour.user_role.role}</td>
                         <td>${usertour.email}</td>
                          
                          <td>
                          <a type="button" class="btn btn-gradient-info btn-sm" href="${pageContext.request.contextPath }/admin/user/edit?id=${usertour.id}">Edit</a>
                          	<a type="button" class="btn btn-gradient-danger btn-sm" href="${pageContext.request.contextPath }/admin/user/delete?id=${usertour.id}">Delete</a>
                          </td>
                        </tr>
                       	 </c:forEach> 
                      
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
     		
     		 	<!-- End table -->
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
        <!-- Plugin js for this page -->

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
    