$.imgDim = {
    width : 0,
    height : 0,
    cssFloat: 'left'
};

$(function(){

	$('header.main nav#menu ul li').hover(
		function(){
			if($(this).find('ul.sub').length){
				$(this).addClass('selected');
				var elem = $(this).find('ul.sub');
				var height = elem.find('li').length*elem.find('li').height() + 5;
				$(this).find('ul.sub').stop().animate(
												{height: height},
												350,
												'easeOutQuint');
			}
		},
		function(){
			if($(this).find('ul.sub').length){
				var elem = $(this).find('ul.sub');
				var height = elem.find('li').length*elem.find('li').height();
				$(this).find('ul.sub').stop().animate(
												{height: 0},
												350,
												'easeOutQuint');
				$(this).removeClass('selected');
			}
		}
	);

	$('header.main nav#menu2 > ul').click(
		function(){
			elem = $(this);
			if(elem.height() < 200){
			$('header.main nav#menu2 ul.sub').height(0);

				elem.find('li').removeClass('hidden').show();
				var height = $('nav#menu2 > ul > li').length*elem.find('li:first').height();
				elem.stop().animate({height: height}, 350, 'easeOutQuint');
			}else{
				elem.stop().animate({height: 36}, 350, 'easeOutQuint', function(){
					$(this).find('li').not('.selected').addClass('hidden');
				})
			}
			//return false;
		}
	)

	$('header.main nav#menu2 ul li a').click(function(){
		if($(this).closest('li').find('ul.sub').length){

			if($(this).closest('li').find('ul.sub').height() == 0){
				$('header.main nav#menu2 ul.sub').animate(
								{height: 0},
								300,
								'easeOutQuint');
				var elem = $(this).closest('li').find('ul.sub');
				var height = elem.find('li').length*elem.find('li').height();
				elem.stop().animate(
								{height: height},
								300,
								'easeOutQuint');
				var height = ($('nav#menu2 > ul > li').length+elem.find('li').length)*elem.find('li:first').height();
				$(this).closest('li').stop().closest('ul').show().stop().animate(
												{height: height},
												300,
												'easeOutQuint');
			}else{
				var elem = $(this).closest('li').find('ul.sub');
				elem.stop().animate(
								{height: 0},
								300,
								'easeOutQuint');
				var height = $('nav#menu2 > ul > li').length*elem.find('li:first').height();
				$(this).closest('li').stop().closest('ul').show().stop().animate(
												{height: height},
												300,
												'easeOutQuint');
			}
			return false;
		}
	})

	// var left = false;
	// var right = false;

	// $(window).mousemove(function(e){
	// 	var w = $(window).width();
	// 	var w25 = w*25/100;
	// 	var w75 = w*75/100;

	// 	if(e.pageX < w25 && !left){
	// 		$('a.prev').animate({left: 0}, 300, 'easeOutQuint');
	// 		left = true;
	// 		right = false;
	// 	}else if(e.pageX > w75 && !right){
	// 		$('a.next').animate({right: 0}, 300, 'easeOutQuint');
	// 		right = true;
	// 		left = false;
	// 	}else if(e.pageX > w25 && e.pageX < w75 && (left || right)){
	// 		$('a.next').animate({right: -75}, 300, 'easeOutQuint');
	// 		$('a.prev').animate({left: -75}, 300, 'easeOutQuint');
	// 		right = false;
	// 		left = false;
	// 	}
	// });

	var config = {
	     over: showInfo, // function = onMouseOver callback (REQUIRED)
	     sensitivity: 1, // number = milliseconds delay before onMouseOut
	     interval: 0,
	     out: hideInfo // function = onMouseOut callback (REQUIRED)
	};


	$('#portfolio a').hover(showInfo, hideInfo);

	// $('body').append('<div class="imgloader">')

	// $('#portfolio a').each(function(){
	// 	var src = $(this).attr('data-image');
	// 	var img = $('<img>');
	// 	img.attr('src', src);
	// 	$('.imgloader').append(img);
	// })

	$('.imgloader').css({'width': 0, 'height': 0, 'overflow': 'hidden'});

	var before = false;
	//var bigImg;
	//var smallImg;

	$('#work figure .col-2 img').each(function(){
		var img = $(this)
		var elem = $(this)

		$("<img/>")
		    .attr("src", $(img).attr("src"))
		    .load(function() {

		        $.imgDim.width = this.width;   // Note: $(this).width() will not
		        $.imgDim.height = this.height; // work for in memory images.

		        if($.imgDim.width < $.imgDim.height){

		        	//bigImg = img;
			        if($(img).position().left > 100){
			        	if(!before){
							$.imgDim.cssFloat = 'right';
						}
					}else if($(img).position().left < 100){
						$.imgDim.cssFloat = 'left';
					}
					before = before?false:true;
				}
				$(img).closest('.col-2').css('float', $.imgDim.cssFloat);
				before = false
		    });
	});

	$('#about #partners ul').masonry({
		itemSelector: '.box',
		columnWidth: 165,
		isAnimated: true,
		isResizable: true,
		gutterWidth: 20
	});

	var screenW = $(window).width();
	if(screenW < 1024){
		$('#about #partners').css('margin-bottom', '60px').insertAfter($('#about #owner'));
	}

	$("<img/>")
		    .attr("src", $('.page #portfolio li img').attr("src"))
		    .load(function() {
					var margin = parseInt($(".page #portfolio li#showcase div").css("paddingTop"));

					console.log($(".page #portfolio li a section").height() - (margin*2) - 3);
					$(".page #portfolio li#showcase div").height($(".page #portfolio li a section").height() - (margin*2) - 3)
				});
	$(window).resize(function(){
		margin = parseInt($(".page #portfolio li#showcase div").css("paddingTop"));
		$(".page #portfolio li#showcase div").height($(".page #portfolio li a section").height() - (margin*2) - 3)
	});

	if($('#slider').length){
		$('#slider').WESlider({speed: 6000});
	}
});

function showInfo(){
	var href = $(this).attr('data-image');
	var src = $(this).find('img').attr('src');


	var myp = $(this).find('p');
	$('.imgloader img[src="'+href+'"]').clone().prependTo($(this).find('section')).css({
		'position': 'absolute',
		'top': 0,
		'left': 0
	}).hide().fadeIn('fast');
	myp.fadeIn('fast');
}

function hideInfo(){
	var href = $(this).attr('data-image');
	var src = $(this).find('img').attr('src');


	$(this).find('p').fadeOut('fast');
	$(this).find('img[src="'+href+'"]').fadeOut('fast', 'easeOutQuint', function(){
		$(this).remove();
	})
}

$(document).ready(function() {
	$("#portfolio").krioImageLoader();
});
