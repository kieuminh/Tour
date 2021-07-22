<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Blog Admin</title>
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
	<style type="text/css">
	#style-4{
		 overflow-x: auto;
	}
	#style-4::-webkit-scrollbar-track
{
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.2);
	background-color: #F5F5F5;
	
}

#style-4::-webkit-scrollbar
{
	height:10px;
	
	background-color: rgba(172, 50, 228, 0.9);
}

#style-4::-webkit-scrollbar-thumb
{
	background-image: linear-gradient(to right, #da8cff, #9a55ff);	border: 1px rgba(172, 50, 228, 0.9);
	border-radius: 5px;
	
	
	
}
	
	</style>
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
                <p>Blog Admin List</p>
                <a href="${pageContext.request.contextPath }/admin/blog/new"  class="btn download-button purchase-button ml-auto">Add</a>
                
              </span>
            </div>
          </div>
          
           <div class="page-header">
            <h3 class="page-title">
              <span class="page-title-icon bg-gradient-primary text-white mr-2">
                <i class="mdi mdi-home"></i>
              </span> List Blog
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
                  <div class="card-body" id="style-4">
                    <h4 class="card-title text-center text-info">Blog List</h4>                          
                    <table class="table table-striped">
                      <thead>
                       <tr>
                          <th> Id </th>
                          <th> Title </th>
                          <th> Name </th>
                          <th> Content</th>
                          <th> Date </th>
                          <th> Like_amount</th>
                          <th> State </th>
                          <th> Image </th>                         
                        </tr>
                      </thead>
                       <tbody>
                        <c:forEach var="blog" items="${blogList}">
                      
                        <tr>                                        
                          
                        
				        <tr>
							<td>${blog.id }</td>
							<td>
								<c:choose>
                             		<c:when test="${fn:length(blog.title) < 15 }">
                             	
                             		${blog.title}
                             		</c:when>
                             		<c:otherwise>
                             			${fn:substring(blog.title, 0, 15)}...  
                             		</c:otherwise>
                             	</c:choose>
							</td>
							<td>${blog.wname}</td>
							<td>
							<c:choose>
                             		<c:when test="${fn:length(blog.content) < 15 }">
                             	
                             		${blog.content }
                             		</c:when>
                             		<c:otherwise>
                             			${fn:substring(blog.content, 0, 15)}...  
                             		</c:otherwise>
                             	</c:choose>
							</td>
							<td><fmt:formatDate value="${blog.wdate}" pattern="dd-MM-yyyy" /></td>
							<td>${blog.like_amount}</td>
							<td>${blog.state}</td>
							<td>${blog.image}</td>
							
										                      
                                                                 
                          <td>
                           <a type="button" class="btn btn-gradient-info btn-fw" href="${pageContext.request.contextPath }/admin/blog/edit?id=${blog.id}">Edit</a>
                          	<a type="button" class="btn btn-gradient-danger btn-fw" href="${pageContext.request.contextPath }/admin/blog/delete?id=${blog.id}">Delete</a>
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
