jQuery(document).ready(function($) {

// Scroll to top Icon
	$.fn.UItoTop = function(options) {
 		var defaults = {
			text: 'To Top',
			min: 200,
			inDelay:500,
			outDelay:400,
  			containerID: 'toTop',
			containerHoverID: 'toTopHover',
			scrollSpeed: 800,
			easingType: 'linear'
 		};

 		var settings = $.extend(defaults, options);
		var containerIDhash = '#' + settings.containerID;
		var containerHoverIDHash = '#'+settings.containerHoverID;
		
		$('body').append('<span id="'+settings.containerID+'">'+settings.text+'</span>');
		$(containerIDhash).hide().click(function(){
			$('html,body,document').animate({scrollTop:0}, settings.scrollSpeed, settings.easingType);
			$('#'+settings.containerHoverID, this).stop().animate({'opacity': 0 }, settings.inDelay, settings.easingType);
			return false;
		})
		.prepend('<span id="'+settings.containerHoverID+'"></span>')
		.hover(function() {
				$(containerHoverIDHash, this).stop().animate({
					'opacity': 1
				}, 600, 'linear');
			}, function() { 
				$(containerHoverIDHash, this).stop().animate({
					'opacity': 0
				}, 700, 'linear');
			});
					
		$(window).scroll(function() {
			var sd = $(window).scrollTop();
			if(typeof document.body.style.maxHeight === "undefined") {
				$(containerIDhash).css({
					'position': 'absolute',
					'top': $(window).scrollTop() + $(window).height() - 50
				});
			}
			if ( sd > settings.min ) 
				$(containerIDhash).fadeIn(settings.inDelay);
			else 
				$(containerIDhash).fadeOut(settings.Outdelay);
		});

};
	
// Top Search
	$("#searchForm").hoverIntent({
		sensitivity: 3,
		interval: 0, 
		over: function () {
			$(this).stop().animate({width: '196px'}, 300, 'easeOutCubic');
			$("#stext").stop().show().animate({width: '140px'}, 400, 'easeOutCubic');		
			$(this).addClass("hover");
		}, 
		timeout: 2000, 
		out: function () {
			$('#stext').stop().animate({width: '0px'},300,'easeInCubic',function() {$(this).hide();});	
			$(this).stop().animate({width: '37px'}, 400, 'easeInCubic');
			$(this).removeClass("hover");
		}
	});
		
// Remove links outline in IE 7
	$("a").attr("hideFocus", "true").css("outline", "none");

// style Select, Radio, Checkboxe
	if ($("select").hasClass("select_styled")) {
		cuSel({changedEl: ".select_styled", visRows: 15});
	}
	if ($("div,p").hasClass("input_styled")) {
		$(".input_styled input").customInput();
	}
	
// resonsive megamenu			
	var screenRes = $(window).width();   
	
    if (screenRes < 750) {		
		$("li.mega-nav").removeClass("mega-nav");			
	} 
	if (screenRes > 750) {				
		mega_show();		
    } 	
	if (screenRes > 400) {		
		$(".grid_cols2 .post-item:odd").after('<div class="divider"></div>');
	}	
	if (screenRes > 990) {						
		$().UItoTop({ easingType: 'easeOutQuart' });		
    } 
			
	
	function mega_show(){		
		$('.dropdown li').hoverIntent({
			sensitivity: 5,
			interval: 100, 
			over: subm_show, 
			timeout: 50, 
			out: subm_hide
		});
	}
	function subm_show(){		
		$(this).children("ul.submenu-1").fadeIn(100);		
	}
	function subm_hide(){ 
		$(this).children("ul.submenu-1").fadeOut(100);		
	}
	
	$(".dropdown .widget_recent_entries ul").each(function() {
		$("li", this).prepend(function(i) {
			var tstr = "";	
			i = i+1;
			if(i <10)
			{
				tstr = "0";
			}
			tstr += i;

			return $("<strong />", {text: tstr });
		 });
	});	
		
	$(".dropdown ul").parent("li").addClass("parent");
	$(".dropdown li:first-child, .pricing_box li:first-child, .sidebar .widget-container:first-child").addClass("first");
	$(".dropdown li:last-child, .pricing_box li:last-child, .widget_twitter .tweet_item:last-child, .sidebar .widget-container:last").addClass("last");
	$(".dropdown li:only-child").removeClass("last").addClass("only");	
	$(".sidebar .current-menu-item, .sidebar .current-menu-ancestor").prev().addClass("current-prev");				
	
// tabs		
	if ($("ul").hasClass("tabs")) {		
		$("ul.tabs").tabs("> .tabcontent", {tabs: 'li', effect: 'fade'});	
	}
	if ($("ul").is(".tabs.linked")) {		
		$("ul.tabs").tabs("> .tabcontent");
	}
	
// odd/even
	$("ul.recent_posts > li:odd, ul.popular_posts > li:odd, .styled_table table>tbody>tr:odd, .boxed_list > .boxed_item:odd, .grid_layout .post-item:odd").addClass("odd");
	$(".widget_recent_comments ul > li:even, .widget_recent_entries li:even, .widget_twitter .tweet_item:even, .widget_archive ul > li:even, .widget_categories ul > li:even, .widget_nav_menu ul > li:even, .widget_links ul > li:even, .widget_meta ul > li:even, .widget_pages ul > li:even").addClass("even");
	
// cols
	$(".row .col:first-child").addClass("alpha");
	$(".row .col:last-child").addClass("omega"); 	

// toggle content
	$(".toggle_content").hide(); 	
	$(".toggle").toggle(function(){
		$(this).addClass("active");
		}, function () {
		$(this).removeClass("active");
	});
	
	$(".toggle").click(function(){
		$(this).next(".toggle_content").slideToggle(300,'easeInQuad');
	});

// pricing
	$(".price_col_body ul").each(function () {
		$(this).find("li").removeClass("even").filter(":even").addClass("even");
	});
	$(".pricing_box li.price_col").css('width',$(".pricing_box ul").width() / $(".pricing_box li.price_col").size());

// buttons	
		$(".button_link, .button_styled, .btn-share, .btn, .contact-social img, .btn-submit, .social_content img, .social_content a, .post-share a").hover(function(){
			$(this).stop().animate({"opacity": 0.85});
		},function(){
			$(this).stop().animate({"opacity": 1});
		});	

// Topmenu <ul> replace to <select>
	$(function() {
	   if (screenRes < 700) {
		  
		  var mainNavigation = $('#topmenu').clone();

		  /* Replace unordered list with a "select" element to be populated with options, and create a variable to select our new empty option menu */
		  $('#topmenu').html('<select class="select_styled" id="topm-select"></select>');
		  var selectMenu = $('#topm-select');

		  /* Navigate our nav clone for information needed to populate options */
		  $(mainNavigation).children('ul').children('li').each(function() {

			 /* Get top-level link and text */
			 var href = $(this).children('a').attr('href');
			 var text = $(this).children('a').text();
			 
			 /* Append this option to our "select" */
			 
			 			 
			if ($(this).is(".current-menu-item")) {				 
				$(selectMenu).append('<option value="'+href+'" selected>'+text+'</option>');
			} else {
				$(selectMenu).append('<option value="'+href+'">'+text+'</option>');
			}

			 /* Check for "children" and navigate for more options if they exist */
			 if ($(this).children('ul').length > 0) {
				$(this).children('ul').children('li').not(".mega-nav-widget").each(function() {

				   /* Get child-level link and text */
				   var href2 = $(this).children('a').attr('href');
				   var text2 = $(this).children('a').text();

				   /* Append this option to our "select" */
				   if ($(this).is(".current-menu-item")) {				 
						$(selectMenu).append('<option value="'+href2+'" class="select-current" selected>'+text2+'</option>');
					} else {
						$(selectMenu).append('<option value="'+href2+'"> - '+text2+'</option>');
					}
					
					/* Check for "children" and navigate for more options if they exist */
					 if ($(this).children('ul').length > 0) {
						$(this).children('ul').children('li').each(function() {

						   /* Get child-level link and text */
						   var href3 = $(this).children('a').attr('href');
						   var text3 = $(this).children('a').text();

						   /* Append this option to our "select" */
						   if ($(this).is(".current-menu-item")) {				 
								$(selectMenu).append('<option value="'+href3+'" class="select-current" selected>'+text3+'</option>');
							} else {
								$(selectMenu).append('<option value="'+href3+'"> -- '+text3+'</option>');
							}
											   
						});
					 }
									   
				});
			 }
			
		  });
	   }

	   /* When our select menu is changed, change the window location to match the value of the selected option. */
	   $(selectMenu).change(function() {
		  location = this.options[this.selectedIndex].value;
	   });
	});	

// Smooth Scroling of ID anchors	
  function filterPath(string) {
  return string
    .replace(/^\//,'')
    .replace(/(index|default).[a-zA-Z]{3,4}$/,'')
    .replace(/\/$/,'');
  }
  var locationPath = filterPath(location.pathname);
  var scrollElem = scrollableElement('html', 'body');
 
  $('a[href*=#].anchor').each(function() {
    $(this).click(function(event) {
    var thisPath = filterPath(this.pathname) || locationPath;
    if (  locationPath == thisPath
    && (location.hostname == this.hostname || !this.hostname)
    && this.hash.replace(/#/,'') ) {
      var $target = $(this.hash), target = this.hash;
      if (target && $target.length != 0) {
        var targetOffset = $target.offset().top;
          event.preventDefault();
          $(scrollElem).animate({scrollTop: targetOffset}, 400, function() {
            location.hash = target;
          });
      }
    }
   });	
  });
 
  // use the first element that is "scrollable"
  function scrollableElement(els) {
    for (var i = 0, argLength = arguments.length; i <argLength; i++) {
      var el = arguments[i],
          $scrollElement = $(el);
      if ($scrollElement.scrollTop()> 0) {
        return el;
      } else {
        $scrollElement.scrollTop(1);
        var isScrollable = $scrollElement.scrollTop()> 0;
        $scrollElement.scrollTop(0);
        if (isScrollable) {
          return el;
        }
      }
    }
    return [];
  }
  
});

$(window).load(function() {
// mega dropdown menu	
	$('.dropdown .mega-nav > ul.submenu-1').each(function(){  
		var liItems = $(this);
		var Sum = 0;
		var liHeight = 0;
		if (liItems.children('li').length > 1){
			$(this).children('li').each(function(i, e){
				Sum += $(e).outerWidth(true);
			});
			$(this).width(Sum);
			liHeight = $(this).innerHeight();	
			$(this).children('li').css({"height":liHeight-30});					
		}
		var posLeft = 0;
		var halfSum = Sum/2;				
		var mainWidth = $(".dropdown").width();	
		var parentWidth = $(this).parent().width();				
		var margLeft = $(this).parent().position();
		margLeft = margLeft.left;				
		var margRight = mainWidth - margLeft - parentWidth;
		var subCenter = halfSum - parentWidth/2;				

		if (margLeft >= halfSum && margRight >= halfSum) {			
			liItems.css("left",-subCenter);
		} else if (margLeft<halfSum) {
			liItems.css("left",-margLeft-1);
		} else if (margRight<halfSum) {
			posLeft = Sum - margRight - parentWidth - 10;
			liItems.css("left",-posLeft);					
		}
	});	
});