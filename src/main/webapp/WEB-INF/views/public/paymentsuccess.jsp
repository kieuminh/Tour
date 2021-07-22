<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>HakunaMatata</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/client/vendor/bootstrap-4.5.3-dist/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath }/resources/client/vendor/jquery/jquery-1.12.4.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/client/vendor/bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/client/vendor/fontawesome-free-5.15.1-web/css/all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/client/css/style.css">
</head>
<style>
    main {
        font-family: "Roboto", sans-serif;
        font-weight: normal;
        font-style: normal;
        font-size: 16px;
    }

    .col-12,
    .col-lg-10,
    .col-lg-11,
    .col-lg-12,
    .col-lg-2,
    .col-lg-3,
    .col-lg-4,
    .col-lg-6,
    .col-lg-7,
    .col-lg-8,
    .col-md-10,
    .col-md-3,
    .col-md-4,
    .col-md-6,
    .col-md-7,
    .col-md-8,
    .col-md-9,
    .col-sm-10,
    .col-sm-12,
    .col-sm-4,
    .col-sm-6,
    .col-sm-7,
    .col-sm-8,
    .col-xl-10,
    .col-xl-11,
    .col-xl-12,
    .col-xl-2,
    .col-xl-3,
    .col-xl-4,
    .col-xl-5,
    .col-xl-6,
    .col-xl-7,
    .col-xl-8 {
        position: relative;
        width: 100%;
        min-height: 1px;
        padding-right: 15px;
        padding-left: 15px;
    }

    /* .container {
        max-width: 720px;
        width: 100%;
        padding-right: 10px;
        padding-left: 10px;
        margin-right: auto;
        margin-left: auto;
    } */

    .justify-content-center {
        justify-content: center !important;
    }

    .row {
		margin-top: 50px;
        display: flex;
        flex-wrap: wrap;
        margin-right: -15px;
        margin-left: -15px;
    }

    .section-padding {
        padding-top: 100px;
        padding-bottom: 90px;
    }

    .mb-45 {
        margin-bottom: 45px;
    }

    .text-center {
        text-align: center !important;
    }


    /* slider */
    .slider-area {
        margin-top: -1px;
        z-index: 2;
    }

    .slider-bg2.slider-bg3 {
        background-image: url(${pageContext.request.contextPath }/resources/client/images/Cau-vang-Da-Nang-720x479.jpg);
    }

    .slider-bg2 {
        background-image: url(${pageContext.request.contextPath }/resources/client/images/Cau-vang-Da-Nang-720x479.jpg);
        background-repeat: no-repeat;
        background-position: top center;
        background-size: cover;
    }

    .slider-height3 {
        margin-top: 50px;
    }

    .align-items-center {
        -ms-flex-align: center !important;
        align-items: center !important;
    }

    .d-flex {
        display: -ms-flexbox !important;
        display: flex !important;
    }

    .col-md-7 {
        flex: 0 0 58.333333%;
        max-width: 58.333333%;
    }

    .slider-area .hero__caption.hero__caption3 {
        padding-top: 0;
        padding: 50px 20px 50px 20px;
        position: relative;
        z-index: 2;
    }

    .slider-area .hero__caption {
        overflow: hidden;
    }



    .slider-area .hero__caption.hero__caption3::before {
        position: absolute;
        content: "";
        background: rgba(0, 94, 13, 0.35);
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        width: 100%;
        height: 100%;
        z-index: -1;
        border-radius: 10px;
    }

    .slider-area .hero__caption.hero__caption3 h2 {
        color: #fff;
        font-size: 60px;
        display: block;
        font-weight: 700;
        line-height: 1;


    }

    .slider-area .hero__caption.hero__caption3 .cat-cap p {
        color: #ffff;
        font-size: 16px;
        font-weight: 500;
        padding: 0;
        margin-bottom: 20px;
        line-height: 1.6;
    }

    .slider-area .hero__caption span {
        font-family: "Josefin Sans", sans-serif;
        display: block;
    }

    .slider-area .hero__caption.hero__caption3 .cat-cap .price {
        font-size: 34px;
        font-weight: 600;
        color: #fff;
    }

    .slider-area .hero__caption.hero__caption3 .cat-cap p a {
        color: #fff;
        background: rgba(255, 255, 255, .3);
        font-size: 14px;
        display: inline-block;
        font-weight: 500;
        line-height: 1;
        margin: 0;
        padding: 9px 15px;
        border-radius: 19px;
        margin-right: 13px;
    }

    /* schedule */


    .col-md-10 {
        flex: 0 0 83.333333%;
        max-width: 83.333333%;
    }

    .shedule-area .shedule-time h2 {
        font-size: 43px;
        display: block;
        font-weight: 700;
        line-height: 1.4;
        margin-bottom: 22px;

        font-family: "Josefin Sans", sans-serif;
        color: #005e24;
        margin-top: 0;
        text-transform: normal;
    }

    .shedule-area .shedule-time p {
        color: #677f8b;
        font-size: 18px;
        font-weight: 400;
        line-height: 1.5;
    }

    .mt-40 {
        margin-top: 40px;
    }

    .about-btn {
        padding: 30px 40px;
        background: #eeeadbf6;
        font-family: "Roboto", sans-serif;
        text-transform: inherit !important;
        color: rgb(22, 21, 21) !important;
        display: inline-block;
        font-size: 16px !important;
        font-weight: 500 !important;
        border-radius: 5px;
        line-height: 0;
        transition: color .4s linear;
        position: relative;
        z-index: 1;
        border: 0;
        overflow: hidden;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
    }

    .about-btn:hover {
        background: linear-gradient(to bottom, #10d810 0%, #13dd24 100%);
        color: #fff !important;
        text-decoration: none !important;
    }

    /* service-section */
    .section-tittle h2 {
        font-size: 43px;
        display: block;
        font-weight: 700;
        line-height: 1.4;
        margin-bottom: 22px;
    }

    .slick-slider {
        position: relative;
        display: block;
        box-sizing: border-box;
        -webkit-user-select: none;
        user-select: none;
        -webkit-touch-callout: none;
        touch-action: pan-y;
        -webkit-tap-highlight-color: transparent;
    }

    .slick-prev {
        left: -15px;

        outline: medium none;

        text-transform: none;

        overflow: visible;

        margin: 0;
        font-family: inherit;
        font-size: inherit;
        line-height: inherit;

        display: block;
    }

    .slick-arrow {
        position: absolute;
        border: 0;
        padding: 0;
        z-index: 2;
        cursor: pointer;
        top: 50%;
        transform: translateY(-50%);
        left: auto;
        background: none;
    }

    button.slick-next {
        right: -15px;
    }

    .slick-list {
        position: relative;

        display: block;
        overflow: hidden;

        margin: 0;
        padding: 0;
    }

    .slick-list:focus {
        outline: none;
    }

    .slick-list.dragging {
        cursor: pointer;
        cursor: hand;
    }

    .slick-track {
        position: relative;
        top: 0;
        left: 0;

        display: block;
        margin-left: auto;
        margin-right: auto;
    }

    .slick-track:before,
    .slick-track:after {
        display: table;

        content: '';
    }

    .slick-track:after {
        clear: both;
    }

    .slick-loading .slick-track {
        visibility: hidden;

    }

    .slick-slide {
        display: none;
        float: left;

        height: 100%;
        min-height: 1px;
    }

    [dir='rtl'] .slick-slide {
        float: right;
    }

    .slick-slide img {
        display: block;
    }

    .slick-slide.slick-loading img {
        display: none;
    }

    .slick-slide.dragging img {
        pointer-events: none;
    }

    .slick-initialized .slick-slide {
        display: block;
    }

    .slick-loading .slick-slide {
        visibility: hidden;
    }

    .slick-vertical .slick-slide {
        display: block;

        height: auto;

        border: 1px solid transparent;
    }

    .slick-arrow.slick-hidden {
        display: none;
    }
    .single-cat {
        -webkit-transition: all .4s ease-out 0s;
        transition: all .4s ease-out 0s;
        z-index: 1;
    }
    .mb-30 {
        margin-bottom: 30px;
    }
    .single-cat .cat-img {
        overflow: hidden;
        border-radius: 5px 5px 0 0;
    }
    .single-cat .cat-img img {
        width: 100%;
        transform: scale(1);
        transition: all .4s ease-out 0s;
        vertical-align: middle;
        border-style: none;
    }
    .single-cat .cat-cap{
        border-radius: 0 0 5px 5px;
        padding: 30px 20px 30px 23px;
        box-shadow: 0 10px 15px rgb(0 9 94 / 6%);
        transition: all .3s ease-out 0s;
    }
    .cat-cap p{
        color: #00095e;
        font-size: 14px;
        font-weight: 500;
        margin: 0;
        padding: 0;
        line-height: 1.4;
    }
    .cat-cap p a{
        color: #7ea0ff;
        background-color: rgba(126,160,255,.05);
        display: inline-block;
        font-weight: 500;
        line-height: 1;
        margin: 0;
        border-radius: 19px;
        margin-right: 13px;

        outline: medium none;

        transition: all .3s ease-out 0s;
        text-decoration: none;
    }
    .justify-content-between{
        justify-content: space-between !important;
    }
    .d-flex{
        display: flex !important;
    }
    .price{
        font-size: 22px;
        font-weight: 700;
        color: #7ea0ff;
        line-height: 1;
    }
	#t01{
		border-radius: 15px;
		width: 100%;   
		height: 300px; 
  		background-color: #f1f1c1;
	}
	#t01 th {
		padding: 10px;
		width: 200px;
  		text-align: left;
	}
	#t02{
		width: 100%;   
	}
	#t02 *{
		border: 1px solid black;
		border-collapse: collapse;
		text-align: center;
	}
	.row1 {
		margin-top: 50px;
        display: flex;
        flex-wrap: wrap;
        margin-right: -15px;
        margin-left: -15px;
    }
	h2,h4{
		color: red;
	}
</style>
<body>
 <header id="home">
		<div class="home">
			<div class="hakunamatata-menu">
				<div class="container-xl">
					<nav class="navbar navbar-expand-lg navbar-dark p-0">
						<a class="navbar-brand logo emphasized-phrase" href="#">
							Hakuna Matata
						</a>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-mogo-menu" aria-controls="navbar-mogo-menu" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="collapse navbar-collapse" id="navbar-mogo-menu">
							<ul class="navbar-nav menu-item ml-auto">
								<li class="nav-item active">
									<a class="nav-link" href="#">HOME</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">TOUR</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">ABOUT</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">BLOG</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">CONTACT</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">SIGN IN</a>
								</li>	
							</ul>
						</div>
					</nav>
				</div>
			</div>
			<div class="home-slide text-center">
				<div class="container-fluid">
					<div id="home-slide" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item">
								<h2 class="creative-template">Hakuna Matata</h2>
								<h1 class="emphasized-phrase slogan">Enjoy<br>
									your life
								</h1>
								<hr>
							</div>
							<div class="carousel-item">
								<h2 class="creative-template">Hakuna Matata</h2>
								<h1 class="emphasized-phrase slogan">Discover<br>
									the Word
								</h1>
								<hr>
							</div>
							<div class="carousel-item active">
								<h2 class="creative-template">Hakuna Matata</h2>
								<h1 class="emphasized-phrase slogan">Invest in<br>
									yourself
								</h1>
								<hr>
							</div>
						</div>
						<div class="container-xl">
							<div class="row carousel-indicators">
								<div class="col-sm-4 col-md-4" data-target="#home-slide" data-slide-to="0">
									<div class="carousel-box">
										<hr id="hr-left">
									</div>
								</div>
								<div class="col-sm-4 col-md-4" data-target="#home-slide" data-slide-to="1">
									<div class="carousel-box">
										<hr id="hr-center">
									</div>
								</div>
								<div class="col-sm-4 col-md-4 active" data-target="#home-slide" data-slide-to="2">
									<div class="carousel-box">
										<hr id="hr-right">
									</div>
								</div>								
							</div>
						</div>
					</div>
				</div>			
			</div>
			
			
			
		</div>	
	</header>
	<div class="slider-area">
		<div class="single-slider slider-height3 slider-bg2 slider-bg3 d-flex align-items-center ">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-xl-7 col-lg-7 col-md-7 col-sm-7">
						<div class="hero__caption hero__caption2  hero__caption3 text-center">
							<h4>THANH TOÁN THÀNH CÔNG</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="social">
		<div class="container-xl">
			<div class="row1">
				<div class="col-md-6 col-lg-6">
						<h2>THÔNG TIN BOOK</h2>
					

					<table id="t01">
						<tr>
							<th>Tên tour:</th>
							<td>${tour.name }</td>
						</tr>
						<tr>
							<th>Ngày đi:</th>
							<td><fmt:formatDate value="${tour.start_day }" pattern="dd-MM-yyyy" /></td>
						</tr>
						<tr>
							<th>Ngày về:</th>
							<td><fmt:formatDate value="${tour.end_day }" pattern="dd-MM-yyyy" /></td>
						</tr>
						<tr>
							<th>Nơi khởi hành:</th>
							<td>${tour.department.address }</td>
						</tr>
						<tr>
							<th>Số người lớn:</th>
							<td>${aldult_amount}</td>
						</tr>
						<tr>
							<th>Số trẻ em:</th>
							<td>${child_amount}</td>
						</tr>
						<tr>
							<th>Số trẻ nhỏ:</th>
							<td>${child_nho_amount}</td>
						</tr>
						<tr>
							<th>Tổng số tiền:</th>
							<td>${tour.price }</td>
						</tr>
					</table>
				</div>
				<div class="col-md-6 col-lg-6">
					<h2>THÔNG TIN LIÊN LẠC</h2>			
				<table id="t01">
					<tr>
						<th>Tên:</th>
						<td>${user.cusname }</td>
					</tr>
					<tr>
						<th>Ngày tháng năm sinh:</th>
						<td><fmt:formatDate value="${user.birthday }" pattern="dd-MM-yyyy" /></td>
					</tr>
					<tr>
						<th>Số điện thoại:</th>
						<td>${user.phone }</td>
					</tr>
					<tr>
						<th>địa chỉ:</th>
						<td>${user.address }</td>
					</tr>
					<tr>
						<th>email:</th>
						<td>${user.email }</td>
					</tr>
				</table>
			</div>
			</div>
		</div>
	</div>
	<div class="social">
		<div class="container-xl">
			<div class="row">
				<div class="col-md-12 col-lg-12">
				
				
						<h2 style="text-align: center;">DANH SÁCH KHÁCH HÀNG THAM GIA</h2>			
					<table id="t02">
						<tr>
							<th>Tên</th>
							<th>email</th>
							<th>phone</th>
							<th>Trị giá</th>
						</tr>
						<c:forEach var="ticket" items="${ticket}">
						<tr>
							<td>${ticket.name }</td>
							<td>${ticket.email }</td>
							<td>${ticket.phone }</td>
							<td>${ticket.unitprice }</td>
						</tr>
						</c:forEach> 
					</table>
					
				</div>
			</div>
		</div>
	</div>
					
	
	
	<div class="social">
		<div class="container-xl">
			<div class="row1">
				<div class="col-md-12 col-lg-12">
					<div class="text-center">
						<a href="${pageContext.request.contextPath }/home">
							<button type="button">
								Trở lại
							</button>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>




	<footer id="contact">
		<div class="social">
			<div class="container-xl">
				<div class="row">
					<div class="col-md-4 col-lg-4 subscribe-section">
						<span class="emphasized-phrase footer-logo">Hakuna Matata</span>
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
						<div class="d-flex blog-row">
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/footer/songhuong.jpg" alt="">
							</a>
							<div class="blog-box">
								<p>
									<a href="#" class="title">
										SÔNG HƯƠNG ĐIỂM DU LỊCH LÝ 
										TƯỞNG TRONG CHUYẾN DU LỊCH HUẾ
									</a>
								</p>
								<span class="blog-date">July 7, 2021</span>
							</div>
						</div>

						<div class="d-flex blog-row">
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/footer/cucangchai.jpg" alt="">
							</a>
							<div class="blog-box">
								<p>
									<a href="#" class="title">
										TOP 4 ĐIỂM DU LỊCH TUYỆT HẢO Ở 
										MÙ CANG CHẢI KHÔNG NÊN BỎ QUA
									</a>
								</p>
								<span class="blog-date">July 3, 2021</span>
							</div>
						</div>

						<div class="d-flex blog-row">
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/footer/deodatrang.jpg" alt="">
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
						</div>
					</div>
					<div class="col-md-4 col-lg-4">
						<span class="title">CHỨNG NHẬN</span>
						<div class="container-xl">
							<div class="row">
								<div>
									<img id="bct-icon" src="${pageContext.request.contextPath }/resources/client/images/footer/Bo-Cong-Thuong.png" alt="">
									<br>
									<img id="dm-icon" src="${pageContext.request.contextPath }/resources/client/images/footer/dmca_logo.png" alt="">
								</div>		
							</div>	
						</div>
						<br>
						<span class="title">Chấp nhận thanh toán</span>
						<div class="container-xl">
							<div class="row">
								<div>
									<img id="momo-icon" src="${pageContext.request.contextPath }/resources/client/images/footer/momo.png" alt="">
									<img id="visa-icon"src="${pageContext.request.contextPath }/resources/client/images/footer/Visa-icon.png" alt="">
								</div>		
							</div>	
						</div>
						<br>
						<span class="title">HOT LINE</span>
						<div class="container-xl">
							<div class="row">
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
				<p class="title">Coyright © 2021 <a href="#">HakunaMatata Team</a></p>
				<a href="javascript:void()" class="back-to-top">
					<!-- <i class="fas fa-angle-up"></i> -->
				</a>
			</div>
		</div>
	</footer>
</body>
</html>