<%@ page session="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.hakunamatata.springmvc.service.CommentService, com.hakunamatata.springmvc.entity.Comment,
	com.hakunamatata.springmvc.service.CommentService, com.hakunamatata.springmvc.entity.Blog,
	com.hakunamatata.springmvc.service.BlogService" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix= "fmt"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="header.jsp" />

	<!-- Start Main -->
	<main>
	<!--Start SalePromotion -->
	<section class="sale" id="sale">
		<div class="about container-fluid text-center">
			<h2>Khuyến Mãi</h2>
			<p>Sale promotion</p>
			<hr class="h-line">
		</div>		
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div id="owl-one" class="owl-carousel">
						<!-- 1 -->
						<c:if test="${listTourByDiscount.size() > 0}">
						<c:forEach items="${listTourByDiscount }" var="tour">
						<div class="news-grid">
							<a href="#">
							<div class="news-grid-image"><img src="${pageContext.request.contextPath }/images/${tour.image}" alt="">
								<div class="news-grid-box">
									<h1><fmt:formatDate type="date" value="${tour.start_day}" pattern="dd" var="startday"/>${startday }</h1>
									<p>${fn:substring(tour.department.address, 0, 7)}...</p>
								</div>
							</div>
							<div class="news-grid-txt">
								<div class="title">
									<span>Tour:${tour.name }</span>
								</div>
								<div class="text">
									<p class="sale-time"> <i class="fa fa-clock"></i> <fmt:formatDate type="date" value="${tour.end_day}" pattern="dd" var="endday" /> ${ endday - startday } ngày ${ endday - startday - 1} đêm</p>
									<p class="sale-schedule"> <i class="fa fa-calendar"></i> <fmt:formatDate type="date" value="${tour.start_day}" pattern="dd/MM/yyyy"/></p>
									<p class="sale-place"> <i class="fa fa-user"></i> Còn ${tour.max_amount - tour.min_amount + tour.min_amount} chỗ </p>
									<div class="sale-discount">
										<span class="sale-pre"><fmt:parseNumber type="number" integerOnly="true" value="${tour.price }" var="Nprice"/>
                                   					 <fmt:formatNumber value="${Nprice}" type="number" maxFractionDigits="3"/>
                                     				VNĐ</span>	
										<!-- <span class="sale-dis">5,000,000</span> -->
									</div>																	
								</div>
							</div>
							</a>
						</div>
						</c:forEach>
						</c:if>
						<c:if test="${listTourByDiscount.size() <= 0}">
							<div class="alert alert-danger" role="alert" >
	                       		Không Có Tour Nào Đang Khuyến Mãi
                   			</div>
						</c:if>
				</div>
			</div>
	</section>
	<!--End SalePromotion-->

	<!-- Start Quote -->
	<div id="quote" class="quote">
		<div class="container-xl">
			<div id="carousel-service-section" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">

					<div class="carousel-item">
						<div class="item row align-items-md-center">
							<div class="col-3">
								<img src="${pageContext.request.contextPath }/images/quote/quote.png" alt="">
							</div>
							
							<div class="col-9 text-left">
								<p class="quote-content">
									Ã¢ÂÂDu lÃ¡Â»Âch Ã¢ÂÂ ban ÃÂÃ¡ÂºÂ§u nÃÂ³ khiÃ¡ÂºÂ¿n bÃ¡ÂºÂ¡n khÃÂ´ng thÃ¡Â»Ât nÃÂªn lÃ¡Â»Âi, vÃÂ  sau ÃÂÃÂ³ biÃ¡ÂºÂ¿n bÃ¡ÂºÂ¡n trÃ¡Â»Â thÃÂ nh mÃ¡Â»Ât ngÃÂ°Ã¡Â»Âi kÃ¡Â»Â chuyÃ¡Â»Ân.Ã¢ÂÂ
								</p>
								<span class="h-line d-inline-block mb-0"></span>
								<span class="quote-name">Ibn Battuta</span>
								
							</div>
						</div>
					</div>
					<div class="carousel-item active">
						<div class="item row align-items-md-center">
							<div class="col-3">
								<img src="${pageContext.request.contextPath }/images/quote/quote.png" alt="">
							</div>
							
							<div class="col-9 text-left">
								<p class="quote-content">
									"Khi ai ÃÂÃÂ³ nhÃ¡ÂºÂ­n ra rÃ¡ÂºÂ±ng cuÃ¡Â»Âc ÃÂÃ¡Â»Âi cÃ¡Â»Â§a mÃÂ¬nh lÃÂ  vÃÂ´ giÃÂ¡ trÃ¡Â»Â, hÃ¡Â»Â hoÃ¡ÂºÂ·c lÃÂ  tÃ¡Â»Â± tÃ¡Â»Â­, hoÃ¡ÂºÂ·c lÃÂ  xÃÂ¡ch ba lÃÂ´ lÃÂªn vÃÂ  ÃÂi"
								</p>
								<span class="h-line d-inline-block mb-0"></span>
								<span class="quote-name">Edward Dehlberg</span>
								
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="item row align-items-md-center">
							<div class="col-3">
								<img src="${pageContext.request.contextPath }/images/quote/quote.png" alt="">
							</div>
							
							<div class="col-9 text-left">
								<p class="quote-content">
									Ã¢ÂÂMÃ¡Â»Ât khi bÃ¡Â»Â nhiÃ¡Â»Âm niÃ¡Â»Âm ÃÂam mÃÂª du lÃ¡Â»Âch, chÃ¡ÂºÂ³ng cÃÂ³ phÃÂ°ÃÂ¡ng thuÃ¡Â»Âc nÃÂ o cÃÂ³ thÃ¡Â»Â hÃÂ³a giÃ¡ÂºÂ£i, vÃÂ  tÃÂ´i biÃ¡ÂºÂ¿t rÃ¡ÂºÂ±ng tÃÂ´i sÃ¡ÂºÂ½ hÃ¡ÂºÂ¡nh phÃÂºc khi cÃÂ³ cÃÂn bÃ¡Â»Ânh nÃÂ y cho ÃÂÃ¡ÂºÂ¿n hÃ¡ÂºÂ¿t cuÃ¡Â»Âc ÃÂÃ¡Â»Âi.Ã¢ÂÂ
								</p>
								<span class="h-line d-inline-block mb-0"></span>
								<span class="quote-name">Michael Palin</span>
								
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="item row align-items-md-center">
							<div class="col-3">
								<img src="${pageContext.request.contextPath }/images/quote/quote.png" alt="">
							</div>
							
							<div class="col-9 text-left">
								<p class="quote-content">
									Ã¢ÂÂCÃÂ³ mÃ¡Â»Ât loÃ¡ÂºÂ¡i phÃÂ©p thuÃ¡ÂºÂ­t ÃÂÃÂ³ lÃÂ  ÃÂi xa hÃÂ¡n nÃ¡Â»Â¯a sau ÃÂÃÂ³ trÃ¡Â»Â vÃ¡Â»Â vÃÂ  hoÃÂ n toÃÂ n thay ÃÂÃ¡Â»Âi.Ã¢ÂÂ
								</p>
								<span class="h-line d-inline-block mb-0"></span>
								<span class="quote-name">Kate Douglas Wiggin</span>
								
							</div>
						</div>
					</div>
					
				</div>
				<a class="carousel-control-prev" href="#carousel-service-section" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#carousel-service-section" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<!-- End Quote -->

	<!--Start FeatureTour -->
	<section class="Feature-tour">
		<div class="feature container-fluid text-center">
			<h2>CÃÂC TOUR NÃ¡Â»ÂI BÃ¡ÂºÂ¬T</h2>
			<p>Featured tours</p>
			<hr class="h-line">
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div id="owl-two" class="owl-carousel">
						<!-- 1 -->
						<c:forEach items="${list }" var="tour">
						<div class="news-grid">
							<a href="${pageContext.request.contextPath }/tourdetail?id=${tour.id}">
							<div class="news-grid-image"><img src="${pageContext.request.contextPath }/images/${tour.image}" alt="">
								<div class="news-grid-box">
									<h1><fmt:formatDate type="date" value="${tour.start_day}" pattern="dd" var="startday"/>${startday }</h1>
									<p>${fn:substring(tour.department.address, 0, 7)}...</p>
								</div>
							</div>
							<div class="news-grid-txt">
								<div class="title">
									<span>Tour: ${tour.name }</span>
								</div>
								<div class="text">
									<table>
									<tr>
										<td> <i class="fa fa-clock" aria-hidden="true"></i> 
										<fmt:formatDate type="date" value="${tour.end_day}" pattern="dd" var="endday" /> ${ endday - startday } ngÃ y ${ endday - startday - 1} ÄÃªm</i> </td>
									</tr>
									<tr>
										<td> <i class="fa fa-calendar" aria-hidden="true"></i> <fmt:formatDate type="date" value="${tour.start_day}" pattern="dd/MM/yyyy"/> </li> </td>
									</tr>
									<tr>
										<td> <i class="fa fa-user" aria-hidden="true"></i>Còn ${tour.max_amount - tour.min_amount + tour.min_amount} chỗ</li> </td>
										<td> <p><fmt:parseNumber type="number" integerOnly="true" value="${tour.price }" var="Nprice"/>
                                   					 <fmt:formatNumber value="${Nprice}" type="number" maxFractionDigits="3"/>
                                     				VNĐ</p> </td>
									</tr>
									</table>																	
								</div>
							</div>
							</a>
						</div>
						</c:forEach>
					<!-- 5 -->
						<%-- <div class="news-grid">
							<a href="#">
							<div class="news-grid-image"><img src="${pageContext.request.contextPath }/images/FeaturedTour/buonmathuat.jpg" alt="">
								<div class="news-grid-box">
									<h1>07</h1>
									<p>HN</p>
								</div>
							</div>
							<div class="news-grid-txt">
								<div class="title">
									<span>Tour: BuÃÂ´n Ma ThuÃ¡Â»Ât
									- LÃÂ ng CÃÂ  PhÃÂª Trung</span>
								</div>
								<div class="text">
									<table>
									<tr>
										<td> <i class="fa fa-clock" aria-hidden="true"></i> 3 ngÃÂ y 2 ÃÂÃÂªm </i> </td>
									</tr>
									<tr>
										<td> <i class="fa fa-calendar" aria-hidden="true"></i> 05/07/2021 </li> </td>
									</tr>
									<tr>
										<td> <i class="fa fa-user" aria-hidden="true"></i> CÃÂ²n 10 chÃ¡Â»Â </li> </td>
										<td> <p>1,999,000 ÃÂ</p> </td>
									</tr>
									</table>																	
								</div>
							</div>
							</a>
						</div> --%>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center">
			<a href="${pageContext.request.contextPath }/tour">
				<button type="button">
					Xem Tất Cả
				</button>
			</a>
		</div>
	</section>
	<!--End FeatureTour-->

	<!-- Start Favorite destination -->
	<div class="destination container-fluid text-center">
		<h2>Các Địa Điểm Yêu Thích</h2>
		<p>Favorite destination</p>
		<hr class="h-line">

		<div class="grid-container grid-container-popular super-cards">

			<div class="grid-item grid-item-1">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/phuquoc.jpg');">					
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Phu Quoc</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			
			<div class="grid-item grid-item-2">
				<div class="col-xs-12 super-card card-auto-height" style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/brtv.jpeg')">
				
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Vũng Tàu</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-3">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/nhatrang.jpg');">
				
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Nha Trang</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-4">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/quy-nhon.jpg');">
				
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Quy Nhơn</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-5">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/phanthiet.png');">
					
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Phan Thiết</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-6">
				<div class="col-xs-12 super-card card-auto-height" style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/da_nang.jpg');">
				
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Ninh Bình</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-7">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/dalat2.jpg');">
					
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Phú Yên</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-8">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/sapa.jpg');">
				
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Sapa</p>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- End Favorite desination -->


	<!-- Start AnimatedCouter -->
		<div class="counterUp">
			<div class="container-xl">
				<div class="row ml-0 mr-0">
					<div class="col-sm">
						<span class="emphasized-phrase counter">369</span> 
						<span class="counter-title">TOUR</span> 
					</div>
					<div class="col-sm">
						<span class="emphasized-phrase counter">3508</span> 
						<span class="counter-title">HAPPY CLIENT</span> 
					</div>
					<div class="col-sm">
						<span class="emphasized-phrase counter">21</span> 
						<span class="counter-title">AWARD WINNER</span> 
					</div>
					<div class="col-sm">
						<span class="emphasized-phrase counter">17</span> 
						<span class="counter-title">PARTEER</span> 
					</div>
					<div class="col-sm">
						<span class="emphasized-phrase counter">124</span> 
						<span class="counter-title">MEMBER</span> 
					</div>
				</div>
			</div>	
		</div>
	<!-- End AnimatedCouter -->

	<!-- Start Blog -->
	<div class="blog container-fluid text-center">
		<h2>Khám Phá</h2>
		<p>Lasted Blog</p>
		<hr class="h-line">	
	</div>
	<section class="blog">
		<div class="container-xl">
			<div class="row">
				<c:forEach items="${listBlog }" var="blog">
				<div class="col-md-4 col-lg-4">
					<a href="/hakunamatata/blogdetail?id=${blog.id }">
					<img src="${pageContext.request.contextPath }/images/${blog.image}" alt="">
					<h4>${fn:substring(blog.title, 0, 30)}...</h4>
					<p>${fn:substring(blog.content, 0, 100)}...</p>
					<i class="fas fa-heart"></i> <span>${blog.like_amount }</span>
					<i class="fas fa-comments"></i> <span>23</span>
					</a>
				</div>
				</c:forEach>
			</div>
		</div>
		<div class="text-center">
			<a href="${pageContext.request.contextPath }/blog">
				<button type="button">
					Xem tất cả
				</button>
			</a>
		</div>

	</section>
	<!-- End Blog -->

	<!-- Start Partner -->
	<div class="partner">
		<div class="container-xl">
			<div class="row align-items-center text-center">
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://www.asiamiles.com/">
						<img src="${pageContext.request.contextPath }/images/Partner/asia.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://vinacapital.com/">
						<img src="${pageContext.request.contextPath }/images/Partner/VinaCapital.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://vingroup.net/">
						<img src="${pageContext.request.contextPath }/images/Partner/vingroup.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://www.grab.com/">
						<img src="${pageContext.request.contextPath }/images/Partner/grab.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://cengroup.vn/">
						<img src="${pageContext.request.contextPath }/images/Partner/cengroup.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://momo.vn/">
						<img src="${pageContext.request.contextPath }/images/Partner/momo.png" alt="">
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- End Partner -->
	</main>
	<!-- End main -->
	
<jsp:include page="footer.jsp" />