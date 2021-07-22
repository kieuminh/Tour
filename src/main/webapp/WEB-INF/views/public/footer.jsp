<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix= "fmt"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    	<!-- Start Footer -->
	<footer class="footer" id="contact">
		<a href="/hakunamatata/contact">
			<div class="map text-center">
				<img src="${pageContext.request.contextPath }/images/marker/icon_marker.png" alt="">
				<p class="emphasized-phrase open-map">Open map</p>
				<hr class="h-line mb-0">
			</div>
		</a>


		<div class="social">
			<div class="container-xl">
				<div class="row">
					<div class="col-md-4 col-lg-4 subscribe-section">
						<span class="emphasized-phrase footer-logo title">Hakuna Matata</span>
						<p class="desc">
							Liên hệ: 89 Trầm Văn Dư, Quận Tân Bình, Tp. HCM
						</p>
						<p>135 Hai Bà Trưng, Bến Nghé, Quận 1, TP. HCM</p>
						<br>
						<p>Phone: 0902345678 or 0903040506</p>
						<p>Fax: 277266255</p>
						<p>Email: hakunamatata@gmail.com</p>						
						<span class="emphasized-phrase follower-number">25k</span>
						<span class="title">followers</span>
						<hr>
						<p>
							<span class="follow-us">Flow Us:</span> 
							<a href="#">
								<i class="fab fa-facebook"></i>
							</a>
							<a href="#">
								<i class="fab fa-twitter"></i>
							</a> 
							<a href="#">
								<i class="fab fa-instagram"></i>
							</a>
							<a href="#">
								<i class="fab fa-pinterest"></i>
							</a>
							<a href="#">
								<i class="fab fa-google"></i>
							</a>
							<a href="#">
								<i class="fab fa-youtube"></i>
							</a>
						</p>
						<form>
							<div>
								<input type="text" name="email" class="form-control" required="required" placeholder="Your Email">
								<button type="submit" class="btn btn-primary emphasized-phrase">Subscribe</button>
							</div>
							
						</form>
					</div>
					<div class="col-md-4 col-lg-4 blog-section">
						<span class="title">Blogs</span>
						<c:forEach items="${listBlog }" var="blog">
						<div class="d-flex blog-row">
							<a href="${pageContext.request.contextPath }/blogdetail?id=${blog.id}">
								<img src="${pageContext.request.contextPath }/images/${blog.image}" alt="">
							</a>
							<div class="blog-box">
								<p>
									<a href="${pageContext.request.contextPath }/blogdetail?id=${blog.id}" class="title">
										${fn:substring(blog.title, 0, 20)}...
									</a>
								</p>
								<span class="blog-date"><fmt:formatDate type="date" value="${blog.wdate}"/></span>
							</div>
						</div>
						</c:forEach>
						
						<%-- <div class="d-flex blog-row">
							<a href="#">
								<img src="${pageContext.request.contextPath }/images/footer/deodatrang.jpg" alt="">
							</a>
							<div class="blog-box">
								<p>
									<a href="#" class="title">
										THỜI ĐIỂM ĐẸP NHẤT ĐỂ KHÁM PHÁ
										ĐÈO ĐÁ TRẮNG Ở HÒA BÌNH
									</a>
								</p>
								<span class="blog-date">July 3, 2021</span>
							</div>
						</div> --%>
					</div>
					<div class="col-md-4 col-lg-4">
						<span class="title">CHỨNG NHẬN</span>
						<div class="container-xl">
							<div class="icons">
								<div>
									<img id="bct-icon" src="${pageContext.request.contextPath }/images/footer/Bo-Cong-Thuong.png" alt="">
									<br>
									<img id="dm-icon" src="${pageContext.request.contextPath }/images/footer/dmca_logo.png" alt="">
								</div>		
							</div>	
						</div>
						<br>
						<span class="title">Chấp nhận thanh toán</span>
						<div class="container-xl">
							<div class="icons">
								<div>
									<img id="momo-icon" src="${pageContext.request.contextPath }/images/footer/momo.png" alt="">
									<img id="visa-icon"src="${pageContext.request.contextPath }/images/footer/Visa-icon.png" alt="">
								</div>		
							</div>	
						</div>
						<br>
						<span class="title">HOT LINE</span>
						<div class="container-xl">
							<div class="icons">
								<div>
									<h3>19001000</h3>
								</div>		
							</div>	
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="copy-right text-center">
			<div class="container-xl">
				<hr>
				<p class="title-cr">Copyright © 2021 <a href="#">HakunaMatata Team</a></p>
				<a href="javascript:void()" class="back-to-top">
					<!-- <i class="fas fa-angle-up"></i> -->
				</a>
			</div>
		</div>
	</footer>
	<!-- End footer -->
	<script src="${pageContext.request.contextPath }/js/script.js"></script>
	<script src="${pageContext.request.contextPath }/js/loading-backtoup.js"></script>
	<script>
    var slider = document.getElementById("myRange");
    var output1 = document.getElementById("demo");
    output1.innerHTML = slider.value;

    slider.oninput = function () {
       var x = parseInt(this.value)
        x = x.toLocaleString('vi', {style: 'currency', currency: 'VND'});
        output1.innerHTML = x;
    }
    var slider = document.getElementById("myRange2");
    var output = document.getElementById("demo2");
    output.innerHTML = slider.value;

    slider.oninput = function () {
        var x = parseInt(this.value)
        x = x.toLocaleString('vi', {style: 'currency', currency: 'VND'});
        output.innerHTML = x;
    }
    $(document).ready(function () {
        $('.autoplay').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
        });
    });
	</script>
</body>
</html>