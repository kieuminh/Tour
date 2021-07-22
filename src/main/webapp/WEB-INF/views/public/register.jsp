<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Purple Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/assets/images/favicon.ico" />
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth">
          <div class="row flex-grow">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left p-5">
                <div class="brand-logo">
                  <img src="${pageContext.request.contextPath }/resources/assets/images/logo.svg">
                </div>
                <h4>New here?</h4>
                <h6 class="font-weight-light">Signing up is easy. It only takes a few steps</h6>
                <form class="pt-3" method= "post" action="${pageContext.request.contextPath }/register/add">
                  <div class="form-group">
                  <label for="exampleInputEmail3">User name</label>
                    <input type="text" class="form-control form-control-lg" 
                    name="username" placeholder="Username" required>
                  </div>
                  <div class="form-group">
                  <label for="exampleInputEmail3">Password</label>
                    <input type="password" class="form-control form-control-lg" 
                    name="passwd" placeholder="Password" required>
                  </div>
                  <div class="form-group">
                  <label for="exampleInputEmail3">Name</label>
                    <input type="text" class="form-control form-control-lg" name="cusname" placeholder="Name" required>
                  </div>
                  <div class="form-group">
                  <label for="exampleInputEmail3">Birth day</label>
                    <input type="date" class="form-control" placeholder="Birth day" name="day" required>
                  </div>
                  <div class="form-group">
                  <label for="exampleInputEmail3">Email</label>
                    <input type="email" class="form-control form-control-lg" name="email" placeholder="Email" required>
                  </div>
				  <div class="form-group">
				  <label for="exampleInputEmail3">Phone</label>
                    <input type="text" class="form-control form-control-lg" name="phone" placeholder="Phone" required>
                  </div>
                  <div class="form-group">
                  <label for="exampleInputEmail3">address</label>
                    <input type="text" class="form-control form-control-lg" name="address" placeholder="address" required>
                  </div>
                  
                  <div class="mb-4">
                    <div class="form-check">
                      <label class="form-check-label text-muted">
                        <input type="checkbox" class="form-check-input" required> I agree to all Terms & Conditions </label>
                    </div>
                  </div>
                  
                  <div class="mt-3">
                   
                    <button type="submit" class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn">SIGN UP</button>
                  </div>
                  <div class="text-center mt-4 font-weight-light"> Already have an account? <a href="/hakunamatata/login" class="text-primary">Login</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="${pageContext.request.contextPath }/resources/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/off-canvas.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/hoverable-collapse.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/misc.js"></script>
    <!-- endinject -->
  </body>
</html>