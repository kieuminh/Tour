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
    <title>Tour List </title>
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
                <p>Admin Tour List</p>
                <a href="${pageContext.request.contextPath }/admin/tour/new"  class="btn download-button purchase-button ml-auto">Add</a>
                
              </span>
            </div>
          </div>
          
           <div class="page-header">
            <h3 class="page-title">
              <span class="page-title-icon bg-gradient-primary text-white mr-2">
                <i class="mdi mdi-home"></i>
              </span> List Tour
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
                  <div class="card-body " id="style-4">
                    <h4 class="card-title text-center text-info">List Tour</h4>
                  
                 
                    <table class="table table-hover ">
                      <thead>
                        <tr>
                          <th>ID</th>
                          <th>Name</th>
                           <th>Price</th>
                          <th>Min Amount</th>
                          <th>Max Amount</th>
                          <th>Image</th>
                          <th>Start Day</th>
                          <th>End Day</th>
                          <th>Location go</th>
                          <th>Cattour</th>
                           <th>Hotel</th>
                          <th>Vehicle</th>
                            <th>Discount</th>
                          <th>Place</th>
                          <th>Content</th>
                             <th>Note</th>
                              <th class="text-center">Action</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach items="${listTour}" var="tour">
                      	  <tr>
                          <td>${tour.id}</td>
                          <td>${tour.name}</td>
                           <td>${tour.price}</td>
                            <td>${tour.min_amount}</td>
                              <td>${tour.max_amount}</td>
                            <td><img src="${pageContext.request.contextPath }/${initParam.urloadTour}/${tour.image}" alt="${tour.image}"/></td>
                              <td><fmt:formatDate type="date" value="${tour.start_day}" />  </td>
                            <td><fmt:formatDate type="date" value="${tour.end_day}" /> </td>
                              <td>${tour.department.tourguide}</td>
                            <td>${tour.cattour.name}</td>
                             <td>${tour.hotel.name}</td>
                            <td>${tour.vehicle.name}</td>
                             <td>
                             	<c:forEach items="${tour.discount}" var="discount">
                             		<span>${discount.name} ,</span>
                             	</c:forEach>
                             	
                             </td>
                            <td>
                            <c:forEach items="${tour.place}" var="place">
                             		<span>${place.name} ,</span>
                             	</c:forEach>
                             	
                             </td>
                            </td>
                             <td>
                             	
                             	<c:choose>
                             		<c:when test="${fn:length(tour.content) < 15 }">
                             	
                             			${tour.content}
                             		</c:when>
                             		<c:otherwise>
                             			${fn:substring(tour.content, 0, 15)}...  
                             		</c:otherwise>
                             	</c:choose>
                             </td>
                            <td>
                            	<c:choose>
                             		<c:when test="${fn:length(tour.note) < 15 }">
                             	
                             			${tour.note}
                             		</c:when>
                             		<c:otherwise>
                             			${fn:substring(tour.note, 0, 15)}...  
                             		</c:otherwise>
                             	</c:choose>
                            </td>
                         	
                          <td>
                          	<a type="button" href="${pageContext.request.contextPath }/admin/tour/edit?id=${tour.id}" class="btn btn-gradient-info btn-sm">Edit</a>
                          	<a type="button" href="${pageContext.request.contextPath }/admin/tour/delete?id=${tour.id}" class="btn btn-gradient-danger btn-sm">Delete</a>
                          </td>
                        </tr>
                       
                      </c:forEach>
                      
                      </tbody>
                    </table>
                    <!-- Pagination -->
                    <div class="d-flex justify-content-center">
                    <nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>
                    
                    </div>
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
