<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!DOCTYPE html>
<html lang="en">

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
    ul.thumb-info{
		list-style-type: none;
		margin: 0;
	}
    /* section banner */
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
    /* section blog detail */
    .section-margin {
        margin: 100px 0;
    }
    .img-fluid{
        width: 730px;
    }
    .main_blog_details h4 {
        font-size: 36px;
        font-weight: 700;
        color: #3a414e;
        margin-bottom: 20px;
        margin-top: 30px;
    }
    .main_blog_details .user_details {
        overflow: hidden;
        margin-bottom: 30px;
    }
    .main_blog_details .user_details .float-right .media .media-body {
        text-align: right;
        vertical-align: middle;
        align-self: center;
    }
    .main_blog_details .user_details .float-right .media .media-body h5 {
        font-size: 14px;
        font-weight: 700;
        color: #3a414e;
        margin-bottom: 5px;

        /* font-family: "Lora",serif; */
        line-height: 1.333;
    }
    .main_blog_details .user_details .float-right .media .media-body p {
        font-size: 13px;
        color: #797979;
        margin-bottom: 0;
        text-transform: uppercase;
    }
    .main_blog_details .user_details .float-right .media .d-flex {
        padding-left: 14px;
        vertical-align: middle;
        align-self: center;
    }
    .main_blog_details p {
        font-size: 18px;
        color: #797979;
        margin-bottom: 15px;
    }
    .main_blog_details .blockquote {
        background: #f2f3f7;
        padding: 30px;
        box-shadow: -20.84px 21.58px 30px 0 rgb(176 176 176 / 10%);
        margin: 35px 0;
    }
    .main_blog_details .blockquote p {
        background: #fff;
        margin-bottom: 0;
        border-left: 2px solid #415094;
        padding: 30px;
        font-style: italic;

        font-size: 16px;
        color: #797979;
    }
    .comments-area {
        background: #fff;
        border-bottom: 1px solid #eee;
        padding: 50px 0;
    }
    .comments-area h4 {
        margin-bottom: 30px;
        color: #3a414e;
        /* font-size: 18px; */
        font-weight: 700;
    }
    .comments-area .comment-list {
        padding-bottom: 40px;
    }
    .comments-area .thumb {
        margin-right: 20px;
    }
    .comments-area .thumb > img {
        width: 50px;
        height: 50px;
    }
    .comments-area h5 {
        font-size: 16px;
        font-weight: bold;
        margin-bottom: 0;

        color: #3a414e;
        line-height: 1.333;
    }
    .comments-area .date {
        font-size: 13px;
        margin-bottom: 13px;
        text-transform: uppercase;
    }
    .comments-area .comment {
        color: #797979;
        margin-bottom: 0;
    }
    .comment-form {
        background: #fff;
        text-align: left;
        padding: 47px 0 43px;
        margin-bottom: 40px;
    }
    .comment-form h4 {
        text-align: left;
        margin-bottom: 30px;
        line-height: 22px;
        font-weight: 700;
        color: #3a414e;
    }
    .comment-form .submit_btn {
        float: right;
        text-transform: uppercase;
        
        border: 1px solid #222;
        text-transform: uppercase;
        font-size: 13px;
        font-weight: 500;
        padding: 10px 24px;
        background-color: #222;
        color: #ff9907;
        transition: all .4s ease;
    }
    .comment-form .submit_btn:hover{
        background-color: #ff9907;
        border-color: #ff9907;
        color: #222;
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
	/*  TEst*/
	
	#heart{
	    font-size: 25px;
	}
	#heart:hover{
	    color:red;
	}
</style>

    <main>
        <section class="mb-30px">
            <div class="container">
                <div class="hero-banner hero-banner--sm">
                    <div class="hero-banner__content">
                        <h1>Blog details</h1>
                    </div>
                </div>
            </div>
        </section>


        <section class="blog-post-area section-margin">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="main_blog_details">
                            <img class="img-fluid" src="${pageContext.request.contextPath }/images/${getBlog.image}" alt=""
                                data-pagespeed-url-hash="611317301"
                                onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
                            <a href="#">
                                <h4>${getBlog.title }</h4>
                            </a>
                            <div class="user_details">
                                <div class="float-right mt-sm-0 mt-3">
                                    <div class="media">
                                        <div class="media-body">
                                            <h5>${getBlog.wname}</h5>
                                            <p><fmt:formatDate type="both" value="${getBlog.wdate}"/></p>
                                        </div>
                                        <div class="d-flex">
                                            <img width="42" height="42"
                                                src="${pageContext.request.contextPath }/images/people.png" alt=""
                                                data-pagespeed-url-hash="3261068328"
                                                onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p>${getBlog.content}</p>
                            <blockquote class="blockquote">
                                <p class="mb-0">MCSE boot camps have its supporters and its detractors. Some people do
                                    not understand why you should have to spend money on boot camp when you can get the
                                    MCSE study materials yourself at a fraction of the camp price. However, who has the
                                    willpower to actually sit through a self-imposed MCSE training.</p>
                            </blockquote>
                            <p>MCSE boot camps have its supporters and its detractors. Some people do not understand why
                                you should have to spend money on boot camp when you can get the MCSE study materials
                                yourself at a fraction of the camp price. However, who has the willpower</p>
                        </div>
	                    <h3 id ="demo2"class="heading mb-4" >Số Lượt Thích: ${getBlog.like_amount } </h3>
	                    <form action="${pageContext.request.contextPath }/blogdetail?id=${getBlog.id}" method="post">
	                    	<div class="form-group" style="display: inline-block;">
	                    		<input type="number" hidden="true" value="${getBlog.like_amount + 1}" name="amount"/>
					            <input type="submit" value="Like" class="form-control"/>
					      	</div>
	                    </form>
	                    
                        <div class="comments-area">
                            <h4>${commentList.size() } Comments</h4>
                            <c:forEach items="${commentList }" var="comment">
                            <div class="comment-list">
                                <div class="single-comment justify-content-between d-flex">
                                    <div class="user justify-content-between d-flex">
                                        <div class="thumb">
                                        	<c:if test="${comment.usertour.avatar == null}">
                                        		<img src="${pageContext.request.contextPath }/images/people.png" alt=""
                                                data-pagespeed-url-hash="323181169" >
                                        	</c:if>
                                        	<c:if test="${comment.usertour.avatar != null}">
                                        		<img src="${pageContext.request.contextPath }/uploads/image-user/${comment.usertour.avatar}" alt=""
                                                data-pagespeed-url-hash="323181169" >
                                        	</c:if>
                                            
                                        </div>
                                        <div class="desc">
                                            <h5>${comment.usertour.username}</h5>
                                            <p class="date"><fmt:formatDate type="date" value="${comment.date}"/></p>
                                            <p class="comment">
                                                ${comment.content}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                            <div class="comment-list">
                                <div class="single-comment justify-content-between d-flex">
                                    <div class="user justify-content-between d-flex">
                                        <div class="thumb">
                                            <img src="${pageContext.request.contextPath }/images/people.png" alt=""
                                                data-pagespeed-url-hash="1501180853"
                                                onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
                                        </div>
                                        <div class="desc">
                                            <h5>Ina Hayes</h5>
                                            <p class="date">December 4, 2017 at 3:12 pm </p>
                                            <p class="comment">
                                                Never say goodbye till the end comes!
                                            </p>
                                        </div>
                                    </div>
                                    <!-- <div class="reply-btn">
                                        <a href="" class="btn-reply text-uppercase">reply</a>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="comment-form">
                            <h4>Leave a Reply</h4>
                            <form action="${pageContext.request.contextPath }/blogdetail?id=${getBlog.id}" method="post">
                                <div class="form-group">
                                    <textarea class="form-control mb-10" rows="5" name="message" placeholder="Messege"
                                        required></textarea>
                                </div>
                                <input type="submit" class="button submit_btn" value="Post Comment">
                            </form>
                        </div>
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
    
<jsp:include page="footer.jsp" />