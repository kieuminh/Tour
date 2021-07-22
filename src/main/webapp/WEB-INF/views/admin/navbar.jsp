<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>

  </head>
  <body>
  
   

        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="nav-profile-image">
                <c:choose >
                	<c:when test="${sessionScope['admin'].avatar != null}">
                	<img alt="${usertour.avatar}" src="${pageContext.request.contextPath }/${initParam.urloadUser}/${sessionScope['admin'].avatar}">                	
                	</c:when>
                	<c:otherwise>
	                  <img src="${pageContext.request.contextPath }/resources/assets/images/faces/face1.jpg" alt="profile">
              	  </c:otherwise>
                	</c:choose>
                  <span class="login-status online"></span>
                  <!--change to offline or busy as needed-->
                </div>
                <div class="nav-profile-text d-flex flex-column">
                  <span class="font-weight-bold mb-2">${sessionScope["admin"].cusname}</span>
                  <span class="text-secondary text-small">${sessionScope["admin"].user_role.role}</span>
                </div>
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.html">
                <span class="menu-title">Dashboard</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#user" aria-expanded="false" aria-controls="user">
                <span class="menu-title">User</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-account-multiple menu-icon"></i>
              </a>
              <div class="collapse" id="user">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/user">List User</a></li>
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/user/new">New User</a></li>
                </ul>
              </div>
              
            </li>
             <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#blog" aria-expanded="false" aria-controls="blog">
                <span class="menu-title">Blog</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-blogger menu-icon"></i>
              </a>
              <div class="collapse" id="blog">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/blog">List Blog</a></li>
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/blog/new">Add Blog</a></li>
                </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath }/admin/booking">
                <span class="menu-title">Booking</span>
                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
              </a>
            </li>
            
                  <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#tour" aria-expanded="false" aria-controls="tour">
                <span class="menu-title">Tour</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-arrange-bring-forward menu-icon"></i>
              </a>
              <div class="collapse" id="tour">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/tour">List Tour</a></li>
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/tour/new">Add Tour</a></li>
                </ul>
              </div>
            </li>
            
              <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#vehicle" aria-expanded="false" aria-controls="vehicle">
                <span class="menu-title">Vehicle</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-bus menu-icon"></i>
              </a>
              <div class="collapse" id="vehicle">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/vehicle">List Vehicle</a></li>
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/vehicle/new">Add Vehicle</a></li>
                </ul>
              </div>
            </li>
            
              <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#place" aria-expanded="false" aria-controls="place">
                <span class="menu-title">Place</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-map-marker-radius menu-icon"></i>
              </a>
              <div class="collapse" id="place">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/place">List Place</a></li>
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/place/new">Add Place</a></li>
                </ul>
              </div>
            </li>
            
              <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#hotel" aria-expanded="false" aria-controls="hotel">
                <span class="menu-title">Hotel</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-hotel menu-icon"></i>
              </a>
              <div class="collapse" id="hotel">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/hotel">List Hotel</a></li>
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/hotel/new">Add Hotel</a></li>
                </ul>
              </div>
            </li>
               <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#discount" aria-expanded="false" aria-controls="discount">
                <span class="menu-title">Discount</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-script menu-icon"></i>
              </a>
              <div class="collapse" id="discount">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/discount">List Discount</a></li>
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/discount/new">Add Discount</a></li>
                </ul>
              </div>
            </li>
            
                   <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#department" aria-expanded="false" aria-controls="department">
                <span class="menu-title">Department</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-weight menu-icon"></i>
              </a>
              <div class="collapse" id="department">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/department">List Department</a></li>
                  <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/admin/department/new">Add Department</a></li>
                </ul>
              </div>
            </li>
            
     
     
       
          </ul>
        </nav>
 
 

  </body>
</html>