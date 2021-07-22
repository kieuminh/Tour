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
    <title>New Tour</title>
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
	<link href="${pageContext.request.contextPath }/resources/assets/css/select2.min.css" rel="stylesheet" />

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
              </span> New Tour
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
                    <h4 class="card-title text-info text-center">New Tour</h4>
                  
                    <form class="forms-sample" action="${pageContext.request.contextPath }/admin/tour/new" method="post"  enctype="multipart/form-data">
                      <div class="form-group">
                        <label for="exampleInputName1">Name Tour :</label>
                        <input type="text" class="form-control" name="name" placeholder="Name Tour" required="required">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail3">Price Tour :</label>
                        <input type="number" class="form-control" name="price" placeholder="Price Tour" required="required">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword4">Min Amount Tour :</label>
                        <input type="number" class="form-control" name="min_amount" placeholder="Min Amount Tour" required="required">
                      </div>
                       <div class="form-group">
                        <label for="exampleInputPassword4">Max Amount Tour :</label>
                        <input type="number" class="form-control" name="max_amount" placeholder="Max Amount Tour" required="required">
                      </div>
                        <div class="form-group">
                        <label>File upload</label>
                        <input type="file" name="imageTour" class="file-upload-default" onchange="previewFile()" required="required">
                        <div class="input-group col-xs-12">
                          <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image" >
                          <span class="input-group-append">
                            <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
                          </span>
                        </div>
                      </div>
                      <!-- load hinh img -->
                      <img src="" height="200" alt="Image preview..." id="preview-img" style="display: none">
                      <!-- load hinh list IMG -->
                      <div id="preview"></div>
                      <div class="form-group">
                      		 <label for="birthday">Start Day:</label>
  							<input type="date" class="form-control" id="birthday" name="startday1" required="required">
                      </div>
                       <div class="form-group">
                      		 <label for="birthday">Start End:</label>
  							<input type="date" class="form-control" id="birthday" name="endday1" required="required">
                      </div>
                      <div class="form-group">
                        <label for="exampleSelectGender">Location Go Tour :</label>
                        <select class="select-decreption form-control" name="location_go" required="required">
                          	
                           
                            <c:forEach items="${listDispartment}" var="dispart">
                          	 <option value="${dispart.id}">${dispart.id} ${dispart.tourguide}</option>
                          </c:forEach>
                        </select>
                      </div>
                        <div class="form-group">
                        <label for="exampleSelectGender">Cat Tour :</label>
                        <select class="select-cattour form-control" name="carttour_id" required="required">
                         
                           <c:forEach items="${listCatTours}" var="cattour">
                          	 <option value="${cattour.id}">${cattour.id} ${cattour.name}</option>
                          </c:forEach>
                        </select>
                      </div>
                      
                       <div class="form-group">
                        <label for="exampleSelectGender">Hothel</label>
                        <select class="select-hotel form-control" name="hotel_id" required="required">
                        
                           <c:forEach items="${listHotels}" var="hotel">
                          	 <option value="${hotel.id}">${hotel.id} ${hotel.name}</option>
                          </c:forEach>
                        </select>
                      </div>
                        <div class="form-group">
                        <label for="exampleSelectGender">Vehicle</label>
                        <select class="select-vehicle form-control" name="vehicle_id" required="required">
                        
                           <c:forEach items="${listVehicles}" var="vehicle">
                          	 <option value="${vehicle.id}">${vehicle.id} ${vehicle.name}</option>
                          </c:forEach>
                        </select>
                      </div>
                       <div class="row">
                       	    <div class="form-group col ">
                        <label for="exampleSelectGender">Province</label>
                        <select class="select-vehicle form-control" name="province_id">
                         	<option > Chọn province</option>
                          <c:forEach items="${listProvince}" var="province">
                          	 <option value="${province.id}">${province.name}</option>
                          </c:forEach>
                         
                        </select>
                      </div>
                      
                          <div class="form-group col">
                        <label for="exampleSelectGender">Place</label>
                        <select class="select-palace form-control" name="place_id" multiple="multiple" required="required">
                         	
                          
                            <c:forEach items="${listPlaces}" var="place">
                          	 <option value="${place.id}">${place.id}  ${place.name}</option>
                          </c:forEach>
                        </select>
                      </div>
                       </div>
                            <div class="form-group">
                        <label for="exampleSelectGender">Discount</label>
                        <select class="select-discount form-control" name="discount_id" multiple="multiple" required="required">
                           <c:forEach items="${listDiscount}" var="discount">
                          	 <option value="${discount.id}">${discount.name}</option>
                          </c:forEach>
                        </select>
                      </div>

                   
                      <div class="form-group">
                        <label for="exampleInputCity1">Content Tour</label>
                        <textarea  id="editor1" class="form-control" name="content" placeholder="Content" rows="4" required="required"></textarea>
                      </div>
                      <div class="form-group">
                        <label for="exampleTextarea1">Note Tour</label>
                        <textarea class="form-control" name="note" placeholder="Note Tour" rows="4" required="required"></textarea>
                      </div>
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
		src="${pageContext.request.contextPath }/resources/assets/ckeditor/ckeditor.js"></script>
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
  <script src="${pageContext.request.contextPath }/resources/assets/js/select2.min.js"></script>
    <!-- End custom js for this page -->
</body>
<script >
$('.select-vehicle').select2({
	  placeholder: 'Select an option'
	});	
$('.select-hotel').select2({
	  placeholder: 'Select an option'
	});	
$('.select-cattour').select2({
	  placeholder: 'Select an option'
	});	
$('.select-decreption').select2({
	  placeholder: 'Select an option'
	});	
	

$('.select-palace').select2({
	 placeholder: 'Select an place',
	
	});
$('.select-discount').select2({
	placeholder: 'Select an discount',
	 
	});
CKEDITOR.replace( 'editor1' );
</script>
</html>
