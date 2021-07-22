
$(function(){
//Tạo hiệu ứng menu
	// alert($(window).scrollTop());
	// 
	$(window).scroll(function(event) {
		/* Act on the event */
		//Code chạy khi scroll chuột (kéo thanh cuộn dọc)
		// console.log($(window).scrollTop());
		console.log($("#sale").offset().top);
		if ($(window).scrollTop() >= $("#sale").offset().top) {
			//thêm cái class navbar-fixed-top vào cái menu
			$("header .hakunamatata-menu").addClass('mogo-fixed-menu');
			$("#home").addClass('body-dummy-padding-top');
		}
		else {
			$("header .hakunamatata-menu").removeClass('mogo-fixed-menu');
			$("#home").removeClass('body-dummy-padding-top');
		}
	});

	//Click trên menu, sẽ target đến id tương ứng
	// $('header nav ul li a').on('click',function (e) {
	//     e.preventDefault();
	//     var target = this.hash;
	//     if (target) {
	// 	    var targetObj = $(target);

	// 	    $('html, body').stop().animate({
	// 	        'scrollTop': targetObj.offset().top
	// 	    }, 500, 'swing', function () {
	// 	        window.location.hash = target;
	// 	    });
	//     }
	// });

});

//CounterUp
$(document).ready(function(){
    $(".counter").counterUp({
        delay: 10,
        time: 1200
    });
});

//owl Carousel

$(document).ready(function () {
    $("#owl-one").owlCarousel({
        items: 3,
        navigation: true,
        navigationText: ["", ""],
        autoPlay: true,
        responsive:{
          0:{
              items:1
          },
          768:{
              items:2
          },            
          1024:{
              items:3
          }
      }
    });
    $("#owl-two").owlCarousel({
      items: 3,
      navigation: true,
      navigationText: ["", ""],
      autoPlay: true,
      responsive:{
        0:{
            items:1
        },
        768:{
            items:2
        },            
        1024:{
            items:3
        }
    }
  });
});

//back top top
var btn = $('.back-to-top');

$(window).scroll(function() {
  if ($(window).scrollTop() > 300) {
    btn.addClass('show');
  } else {
    btn.removeClass('show');
  }
});

btn.on('click', function(e) {
  e.preventDefault();
  $('html, body').animate({scrollTop:0}, '300');
});
