<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>HakunaMatata</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/vendor/bootstrap-4.5.3-dist/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath }/vendor/jquery/jquery-1.12.4.min.js"></script>
	<script src="${pageContext.request.contextPath }/vendor/bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/vendor/fontawesome-free-5.15.1-web/css/all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
    <style>
     header .home{
    	background-image: url(${pageContext.request.contextPath }/images/Home/Bg_home.png);
    } 
        div {
            display: block;
        }
		/* search */
		.searchbar{
			background: #f1f1f1;
			color: #212121;
			margin-bottom: 30px;
			font: 16px Arial;
		}
		.titlesearch{
			text-transform: uppercase;
			font-weight: 700;
			border-bottom: 1px dashed #ccc;
			padding: 15px;
			font-size: 16px;
			color: #0bc549;
			line-height: 25px;
    		text-shadow: 1px 1px 2px #ffba8a;
		}
		.frsearch{
			padding: 15px;
		}
		.mg-bot15{
			margin-bottom: 15px;
		}
		#search{
			background-color: #1de45f;
			color: #f1f1f1;
		}
		.slidecontainer {
        	width: 100%;
	    }
	
	    .slider {
	        -webkit-appearance: none;
	        width: 100%;
	        height: 25px;
	        background: #d3d3d3;
	        outline: none;
	        opacity: 0.7;
	        -webkit-transition: .2s;
	        transition: opacity .2s;
	    }
	
	    .slider:hover {
	        opacity: 1;
	    }
	
	    .slider::-webkit-slider-thumb {
	        -webkit-appearance: none;
	        appearance: none;
	        width: 25px;
	        height: 25px;
	        background: #04AA6D;
	        cursor: pointer;
	    }
	
	    .slider::-moz-range-thumb {
	        width: 25px;
	        height: 25px;
	        background: #04AA6D;
	        cursor: pointer;
	    }
		/* list tour */
        #list{
            font-family: Muli,sans-serif;
            font-size: 14px;
        }
        .wrap {
            position: relative;
            padding-left: 70px;
        }
        #day {
            padding: 5px;
            position: absolute;
            left: 0px;
            top: 0px;
            float: left;
            width: 60px;
            height: 65px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            background: #07d811;
            color: #fff;
            font-size: 14px;
            line-height: 20px;
        }
        #ngay{
            font-size: 30px;
            line-height: 40px;
            font-weight: 700;
            border-bottom: solid 1px #fff;
            width: 100%;
            text-align: center;
            margin-bottom: 3px;
        }
		#box {
            margin-bottom: 20px;
            padding: 15px;
            border: solid 1px rgba(0,0,0,.15);
            min-height: 251px;
            min-block-size: 260px;
        }
		#imag {
			width: 330px;
			float: left;
			margin-right: 20px;
			position: relative;
			overflow: hidden
        }
        .size {
            width: 340px;
            height: 260px;
			transition: 0.5s;
        }
		
        #caption {
            overflow: hidden;
            padding-left: 10px;
            /* float:right; */
        }
        #tourname{
            font-size: 18px;
            line-height: 26px;
            display: block;
            font-weight: 700px;
            margin-bottom: 5px;
            overflow: hidden;
            height: 52px;
        }
        a#tourname{
            color: #000;
            text-transform: uppercase;
        }
        a#tourname:hover{
            text-decoration: none;
            color: rgb(8, 219, 8);
        }
        #datetime{
            font-family: Arial;
            padding: 5px 0px;
            margin: 10px 0px 0px;
            height: 44px;
        }
        #datetime span{
            border: 1px solid #555;
            color: #fff;
            float: left;
            display: block;
            padding: 5px 10px;
            background-color: #555;
        }
        #datetime span:first-child{
            border: 1px solid #ddd;
            background-color: #e7e7e7;
            color: #555;
        }
        #boxprice div span{
            display: block;
            font-size: 12px;
            line-height: 20px;
            margin: 5px;
            padding: 5px 0px;
        }
        #boxprice p{
        	height:40px;
        }
        #price {
            font-family: Arial;
            color: #0de065;
            font-size: 22px;
            line-height: 24px;
            font-weight: 700;
            height: 24px;
            float:right;
			margin-bottom: 5px;
        }
       
       	#book{
       		text-align:center;
       		text-decoration: none;
       	}
		#book:hover{
			background-color: #75c48d;
			color: white;
		}
    </style>
</head>
<body>
	<!-- Start Header -->
	<header id="home">
		<div class="home">
			<div class="hakunamatata-menu">
				<div class="container-xl">
					<nav class="navbar navbar-expand-lg navbar-dark p-0">
						<a class="navbar-brand logo emphasized-phrase" href="${pageContext.request.contextPath }/">
							Hakuna Matata
						</a>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-mogo-menu" aria-controls="navbar-mogo-menu" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="collapse navbar-collapse" id="navbar-mogo-menu">
							<ul class="navbar-nav menu-item ml-auto">
								<li class="nav-item active">
									<a class="nav-link" href="${pageContext.request.contextPath }/">HOME</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="${pageContext.request.contextPath }/tour">TOUR</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="${pageContext.request.contextPath }/about">ABOUT</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="${pageContext.request.contextPath }/blog">BLOG</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="${pageContext.request.contextPath }/contact">CONTACT</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="${pageContext.request.contextPath }/login">SIGN IN</a>
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
										<!-- <hr id="hr-left"> -->
									</div>
								</div>
								<div class="col-sm-4 col-md-4" data-target="#home-slide" data-slide-to="1">
									<div class="carousel-box">
										<!-- <hr id="hr-center"> -->
									</div>
								</div>
								<div class="col-sm-4 col-md-4 active" data-target="#home-slide" data-slide-to="2">
									<div class="carousel-box">
										<!-- <hr id="hr-right"> -->
									</div>
								</div>								
							</div>
						</div>
					</div>
				</div>			
			</div>
		</div>	
	</header>
	<!-- End Header -->
	<main>
        <section id="tour">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 mg-bot30">
                        <form action="${pageContext.request.contextPath }/tour" method="post">
							<div class="searchbar">
								<div class="titlesearch">TÌM KIẾM</div>
                            	<div class="frsearch" style="clear: both;">
									<div class="location mg-bot15" >
										<label for="departure">Nơi Khởi Hành</label>
										<select id="departure" class="form-control" name="department">
											<option value="0">--Chọn nơi khởi hành--</option>
										<c:forEach items="${listDepartment}" var="d">
											<option value="${d.id}">${d.address}</option>
										</c:forEach>
										</select>
									</div>
									<div class="cat mg-bot15">
										<label for="cattour">Loại Tour</label>
										<select id="cattour" class="form-control" name="cattour">
											<option value="0">--Chọn Loại Tour--</option>
										<c:forEach items="${ listCatTours}" var="cat">
											<option value="${cat.id }">${cat.name }</option>
										</c:forEach>
										</select>
									</div>
									<div class="province mg-bot15">
										<label for="desnitation">Nơi Đến</label>
										<select id="desnitation" class="form-control" name="desnitation">
											<option value="0">--Chọn nơi đến--</option>
										<c:forEach items="${listProvince }" var="des">
											<option value="${des.id }">${des.name }</option>
										</c:forEach>
										</select>
									</div>
									<div class="arival mg-bot15">
										<label for="ngaykhoihanh">Ngày Khởi Hành</label>
										<input id="ngaykhoihanh" class="form-control" type="date" name="ngaykhoihanh"/>
									</div>
									<div class="price mg-bot15">
										<label for="gia">Gía</label>
										<div class="slidecontainer">
					                        <input type="range" min="1000000" max="10000000" value="1000000" class="slider" id="myRange" name ="timgiatu">
					                        <p>Giá từ: <span id="demo"></span></p>
					                        <input type="range" min="1000000" max="10000000" value="1000000" class="slider" id="myRange2" name ="timgiaden">
					                        <p>Giá đến: <span id="demo2"></span></p>
					                    </div>
									</div>
									<div class="hotel mg-bot15">
										<label for="ks">Khách Sạn</label>
										<select id="ks" class="form-control" name="hotel">
											<option value="0">--Chọn Khách Sạn--</option>
										<c:forEach items="${listHotels }" var="hotel">
											<option value="${hotel.id }">${hotel.name} - ${hotel.type }</option>
										</c:forEach>
										</select>
									</div>
									<div class="vehicle mg-bot15">
										<label for="phuongtien">Phương Tiện</label>
										<select id="phuongtien" class="form-control" name="vehicle">
											<option value="0">--Chọn Phương Tiện--</option>
										<c:forEach  items="${listVehicles }" var="vehicle">
											<option value="${vehicle.id }">${vehicle.name}</option>
										</c:forEach>
										</select>
									</div>
									<div class="btsearch mg-bot15">
										<div>
											<input id="search" type="submit" class="form-control" value="Tìm Kiếm"/>
										</div>
									</div>
                            	</div> 
							</div>
                        </form>
                        
                    </div>
                    <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                      <%-- <c:choose> --%>
                      <c:if test="${listTourTest != null}">
                    <c:forEach items="${listTourTest}" var="tour">
                    	<div id="list">
							<form >
								<div class="wrap">
									<div id="day">
										<div id="ngay"><fmt:formatDate type="date" value="${tour.start_day}" pattern="dd" var="startday"/>${startday }</div>
										<div id="monyear"><fmt:formatDate type="date" value="${tour.start_day}" pattern="MM/yyyy" var="monthyear"/>${monthyear}</div>
									</div>
									<div id="box">
										<div id="imag">
											<a href="${pageContext.request.contextPath }/tourdetail?id=${tour.id}"><img class="size" src="${pageContext.request.contextPath }/images/${tour.image}" /></a>
										</div>
										<div id="caption">
											<div>
												<a id="tourname" href="${pageContext.request.contextPath }/tourdetail?id=${tour.id}"><strong>${tour.name }</strong></a>
												<div>
													<p id="datetime">
														<span>Thời Gian</span>
														<span><fmt:formatDate type="date" value="${tour.end_day}" pattern="dd" var="endday" /> ${ endday - startday } ngày ${ endday - startday - 1} đêm</span>
														
													</p>
													<p id="datetime">
														<span>Hotel :${tour.hotel.type}</span>
														<span>Phương Tiện: ${tour.vehicle.name}</span>
													</p>
												</div> 
											</div>
											<div id="boxprice">
												<div>
													<span><strong>Số chỗ còn: </strong>
													${tour.max_amount - tour.min_amount + tour.min_amount} chỗ</span>
												</div>
												<p>
													<span id="price"><fmt:parseNumber type="number" integerOnly="true" value="${tour.price }" var="Nprice"/>
                                   					 <fmt:formatNumber value="${Nprice}" type="number" maxFractionDigits="3"/>
                                     				VND</span>
												</p>
												<p>
													
													<a href="${pageContext.request.contextPath }/tourdetail?id=${tour.id}" id="book" class="form-control">Đặt Tour</a>
												</p>
												
											</div>
										</div>
									</div>
									
								</div>
							</form>
                        </div>
                    </c:forEach>
                    </c:if>
                    <c:if  test="${listTourTest.size() <= 0}">
	                    <div class="alert alert-danger" role="alert" >
	                       		Không Tìm Thấy Tour Phù Hợp
                   		</div>
                    </c:if>
                    </div>
                </div>
            </div>
        </section>

	</main>
	<!-- Start Footer -->
	<footer id="contact">
		<div class="map text-center">
			<img src="${pageContext.request.contextPath }/images/icon/location.png" alt="">
			<p class="emphasized-phrase open-map">Open map</p>
			<hr class="h-line mb-0">
		</div>

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
								<img src="${pageContext.request.contextPath }/images/footer/songhuong.jpg" alt="">
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
								<img src="${pageContext.request.contextPath }/images/footer/cucangchai.jpg" alt="">
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
						</div>
					</div>
					<div class="col-md-4 col-lg-4">
						<span class="title">CHỨNG NHẬN</span>
						<div class="container-xl">
							<div class="row">
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
							<div class="row">
								<div>
									<img id="momo-icon" src="${pageContext.request.contextPath }/images/footer/momo.png" alt="">
									<img id="visa-icon"src="${pageContext.request.contextPath }/images/footer/Visa-icon.png" alt="">
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
	<!-- End footer -->
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
</script>
</body>
</html>