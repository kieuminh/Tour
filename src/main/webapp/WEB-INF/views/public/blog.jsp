<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>

<jsp:include page="header.jsp" />
<style>
header .home{
    	background-image: url(${pageContext.request.contextPath }/images/Home/Bg_home.png);
    } 
	/* all */
	main{
		font-family: "Source Sans Pro",sans-serif;
		font-weight: 400;
		line-height: 1.625;
		font-size: 1rem;
	}
	a:hover{
		text-decoration: none;
	}
	/* section 1 */
	.mb-30px{
		margin-bottom: 30px;
	}
	.hero-banner{
		position: relative;
		background: url(${pageContext.request.contextPath }/images/buonmathuat.jpg) left center no-repeat ;
		background-size: cover;
		height: 400px;
		z-index: 1;
	}
	.hero-banner__content {
		position: absolute;
		top: 50%;
		left: 50%;
		width: 100%;
		transform: translate(-50%,-50%);
		text-align: center;
		color: #fff;
	}
	.hero-banner__content h3{
		font-size: 50px;
	}
	.hero-banner::after {
		content: "";
		display: block;
		position: absolute;
		width: 100%;
		height: 100%;
		background: rgba(1,3,15,.2);
		z-index: -1;
		opacity: 0.5px;
	}
	
	/* section 2 */
	.section-margin {
		margin: 50px 0;
	}
	.mt-4, .my-4 {
		margin-top: 1.5rem!important;
	}
	.row {
		display: flex;
		flex-wrap: wrap;
		margin-right: -15px;
		margin-left: -15px;
	}
	.single-recent-blog-post {
		margin-bottom: 60px;
	}
	.single-recent-blog-post .thumb {
		position: relative;
	}
	.img-fluid {
		max-width: 100%;
		height: auto;

		vertical-align: middle;
    	border-style: none;
	}
	.single-recent-blog-post .thumb-info {
		padding-left: 20px;

		position: absolute;
		bottom: 0;
		left: 0;
		background: #fff;
		width: 100%;
		max-width: 415px;
		padding-left: 5px;
	}
	ul.thumb-info{
		list-style-type: none;
		margin: 0;
	}
	.single-recent-blog-post .thumb-info li {
		margin-right: 22px;

		display: inline-block;
		font-size: 15px;
		color: #777;
	}
	.single-recent-blog-post .thumb-info li a {
		padding: 15px 0;
		font-size: 15px;
		color: #777;
		display: inline-block;
	}
	.single-recent-blog-post .thumb-info li i{
		font-size: 13px;
		margin-right: 10px;
	}
	.single-recent-blog-post .details {
		padding-top: 30px;
	}
	
	.single-recent-blog-post .details h3 {
		font-size: 27px;
		font-weight: 700;
		font-family: "Lora",serif;
		color: #3a414e;
		line-height: 1.333;
		margin-bottom: .5rem;
		margin-top: 0;
	}
	.single-recent-blog-post .details p {
		color: #777;
		margin-top: 0;
		margin-bottom: 1rem;
	}

	.single-recent-blog-post .details .button {
		margin-top: 8px;
		display: inline-block;
		border: 1px solid #222;
		text-transform: uppercase;
		font-size: 13px;
		font-weight: 500;
		padding: 10px 24px;
		background-color: #222;
		color: #ff9907;
		transition: all .4s ease;
	}
	.single-recent-blog-post .details .button:hover{
		background-color: #ff9907;
		color: #222;
		border-color: #ff9907;
	}
	/* siderbar */
	.widget-wrap {
		margin-top: 80px;
	}
	.widget-wrap .single-sidebar-widget {
		/* margin-top: 30px; */

		/* padding: 48px 30px; */
		background: #f9f9ff;
		margin-bottom: 30px;
	}
	.widget-wrap .single-sidebar-widget__title {
		/* font-size: 20px; */
		font-weight: 700;
		position: relative;
		z-index: 1;
		margin-bottom: 22px;
	}
	.widget-wrap .popular-post-widget .popular-post-list {
		margin-top: 30px;
	}
	.widget-wrap .popular-post-widget .single-post-list {
		margin-bottom: 5px;
	}
	.widget-wrap .popular-post-widget .single-post-list .thumb {
		position: relative;
	}
	.widget-wrap .popular-post-widget .single-post-list .thumb-info {
		position: absolute;
		bottom: 0;
		left: 0;
		width: 100%;
		background: #fff;
		max-width: 160px;
		padding-left: 10px;
	}
	.widget-wrap .popular-post-widget .single-post-list .thumb-info li {
		display: inline-block;
		font-size: 14px;
	}
	.widget-wrap .popular-post-widget .single-post-list .thumb-info li:first-child ::after{
		content: "";
    	padding: 0 7px;
	}
	.widget-wrap .popular-post-widget .single-post-list .thumb-info li a {
		display: inline-block;
		padding: 5px 0;
		color: #999;
	}
	.widget-wrap .popular-post-widget .single-post-list .details {
		margin-top: 20px;
	}
	.widget-wrap .popular-post-widget .single-post-list .details h6 {
		font-size: 20px;
		font-weight: 700;
		line-height: 26px;
		margin-bottom: 10px;
		-webkit-transition: all .3s ease 0s;
		transition: all .3s ease 0s;

		font-family: "Lora",serif;
    	color: #3a414e;
	}
</style>

	<div style="clear: both;"></div>
	<main class="site-main">

		<section class="mb-30px">
			<div class="container">
				<div class="hero-banner">
					<div class="hero-banner__content">
						<h3>Tours & Travels</h3>
					</div>
				</div>
			</div>
		</section>
		
		<section class="blog-post-area section-margin mt-4">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<c:forEach items="${ list}" var="blog">
						<div class="single-recent-blog-post">
							<div class="thumb">
								<img class="img-fluid" src="${pageContext.request.contextPath }/images/${blog.image}" alt="">
								<ul class="thumb-info">
									<li><a href="${pageContext.request.contextPath }/blogdetail?id=${blog.id}"><i class="fas fa-user"></i>${blog.wname }</a></li>
									<li><a href="${pageContext.request.contextPath }/blogdetail?id=${blog.id}"><i class="fas fa-calendar-alt"></i><fmt:formatDate type="date" value="${blog.wdate}"/></a></li>
									<li><a href="${pageContext.request.contextPath }/blogdetail?id=${blog.id}"><i class="fas fa-comments"></i>2 Comments</a></li>
								</ul>
							</div>
							<div class="details mt-20">
								<a href="${pageContext.request.contextPath }/blogdetail?id=${blog.id}">
									<h3>${blog.title }</h3>
								</a>
								<p>${fn:substring(blog.content, 0, 255)}...</p>
								<a class="button" href="${pageContext.request.contextPath }/blogdetail?id=${blog.id}">Read More <i class="fas fa-arrow-right"></i></a>
							</div>
						</div>
						</c:forEach>
						
					</div>

					<div class="col-lg-4 sidebar-widgets">
						<div class="widget-wrap">
							<div class="single-sidebar-widget popular-post-widget">
								<h4 class="single-sidebar-widget__title">Popular Post</h4>
								<div class="popular-post-list">
								<c:forEach items="${ list}" var="blog1">
								<c:if test="${blog1.like_amount >= 10}">
									<div class="single-post-list">
										<div class="thumb">
											<img class="card-img rounded-0"
												src="${pageContext.request.contextPath }/images/${blog1.image}" alt="">
											<ul class="thumb-info">
												<li><a href="${pageContext.request.contextPath }/blogdetail?id=${blog1.id}">${blog1.wname}</a></li>
												<li><a href="${pageContext.request.contextPath }/blogdetail?id=${blog1.id}"><fmt:formatDate type="date" value="${blog1.wdate}"/></a></li>
											</ul>
										</div>
										<div class="details mt-20">
											<a href="${pageContext.request.contextPath }/blogdetail?id=${blog1.id}">
												<h6>${blog1.title }</h6>
											</a>
										</div>
									</div>
									</c:if>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</section>

	</main>
	<div style="clear: both;"></div>
	
<jsp:include page="footer.jsp" />