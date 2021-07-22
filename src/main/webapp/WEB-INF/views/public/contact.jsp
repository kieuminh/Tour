<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:include page="header.jsp" />
<!-- Start main -->
<main>
    <section class="about container">
        <div class="row">
            <div class="col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="/hakunamatata/" target="_self">Home</a></li>
                    <li><span>/</span></li>
                    <li class="active"><span>Contact</span></li> 
                </ol>
            </div>
        </div>
        <div id="maincontent" class="page-main">
            <div class="container">
                <div class="row contact">
                    <div class="col-md-6">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.0781745420436!2d106.64215351480112!3d10.805324592301904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752945af1e4587%3A0xe6607a649f8ee737!2zODkgVHLhuqduIFbEg24gRMawLCBQaMaw4budbmcgMTMsIFTDom4gQsOsbmgsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaA!5e0!3m2!1sen!2s!4v1626417420104!5m2!1sen!2s" width="100%" height="400px" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                    </div>
                    <div class="col-md-6">
                        <h4>Thông tin liên hệ</h4>
                            <form class="form-contact" action="/index.php?c=contact&amp;a=send" method="POST">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="fullname" placeholder="Họ và tên" required="" oninvalid="this.setCustomValidity('Vui lòng nhập tên của bạn')" oninput="this.setCustomValidity('')">
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-6">
                                        <input type="email" class="form-control" name="email" placeholder="Email" required="" oninvalid="this.setCustomValidity('Vui lòng nhập email')" oninput="this.setCustomValidity('')">
                                    </div>
                                    <div class="form-group col-sm-6">
                                        <input type="tel" class="form-control" name="mobile" placeholder="Số điện thoại" required="" pattern="[0][0-9]{9,}" oninvalid="this.setCustomValidity('Vui lòng nhập số điện thoại bắt đầu bằng số 0 và ít nhất 9 con số theo sau')" oninput="this.setCustomValidity('')">
                                    </div>
                                    
                                    <div class="form-group col-sm-12">
                                        
                                        <textarea class="form-control" placeholder="Nội dung" name="content" rows="10" required=""></textarea>
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <span id="message"></span>
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <button type="submit" class="btn btn-sm btn-primary pull-right">Gửi</button>
                                    </div>
                                </div>
                            </form>
                    </div>
                </div>
            </div>     
        </div>
    </section>
</main>
<!-- End main -->
<jsp:include page="footer.jsp" />
    