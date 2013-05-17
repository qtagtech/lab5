<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Lab5 - Nest5 Blog"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
        <link href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:300,400,700|Alike|Lato:400,700" rel="stylesheet">


        <link rel="stylesheet" href="${resource(dir:'template', file: 'style.css')}">
        <link rel="stylesheet" href="${resource(dir:'template', file: 'screen.css')}">
        <link rel="stylesheet" href="${resource(dir:'template/styles', file: 'blue.css')}">
        <!-- custom CSS -->
        <link rel="stylesheet" href="${resource(dir:'template', file: 'custom.css')}">
        <r:require modules="jquery"/>
        <!-- main JS libs  -->
    <script src="${resource(dir:'template/js/libs', file: 'modernizr-2.5.3.min.js')}"></script>
    <script src="${resource(dir:'template/js/libs', file: 'respond.min.js')}"></script>
		<g:layoutHead/>
		<r:layoutResources />



    <!-- scripts  -->
    <script src="${resource(dir:'template/js', file: 'jquery.easing.1.3.min.js')}"></script>
    <script src="${resource(dir:'template/js', file: 'general.js')}"></script>
    <script src="${resource(dir:'template/js', file: 'hoverIntent.js')}"></script>
    <!-- carousel -->
    <script src="${resource(dir:'template/js', file: 'jquery.carouFredSel.min.js')}"></script>
    <script src="${resource(dir:'template/js', file: 'jquery.touchwipe.js')}"></script>
    <!-- sliders -->
    <script src="${resource(dir:'template/js', file: 'slides.min.jquery.js')}"></script>
	</head>
	<body>
    <div class="body_wrap homepage">

    <div class="header_container header_full">

        <header style="background-image:url(${resource(dir: 'template/images',file: 'header_img_blue.jpg')}); background-color:#097bb6">
            <div class="container">

                <div class="header_right">
                    <div class="top_btn">
                        <div class="topsearch">
                            <form id="searchForm" action="#" method="get">
                                <input type="submit" id="searchSubmit" value="Search" class="btn-search">
                                <input type="text" name="stext" id="stext" value="" class="stext">
                            </form>
                        </div>
                        <a href="posts-grid.html" class="link_view_grid">Grid View</a> <a href="posts-list.html" class="link_view_list active">List View</a>
                    </div>
                </div>

                <div class="header_left">
                    <div class="logo">
                        <a href="index.html"><img src="${resource(dir: 'images',file: 'Nest5_Labs_Logo_small2.png')}" alt=""></a>
                        <h1>Newssetter - Premium WordPress Theme</h1>
                    </div>
                </div>

                <div class="clear"></div>
            </div>
        </header>
    </div>
    <!--/ header_container -->

    <div class="container topm_cont">

        <!-- topmenu -->
       %{-- <nav id="topmenu">
            <ul class="dropdown">
                <li class="menu-level-0 current-menu-ancestor"><a href="#"><span>Styles</span></a>
                    <ul class="submenu-1">
                        <li class="menu-level-1"><a href="#"><span>Flavors</span></a>
                            <ul class="submenu-2">
                                <li class="menu-level-2"><a href="../Black/index.html"><span>Black Style</span></a></li>
                                <li class="menu-level-2"><a href="../Blue/index.html"><span>Blue Style</span></a></li>
                                <li class="menu-level-2"><a href="../Red/index.html"><span>Red Style</span></a></li>
                                <li class="menu-level-2"><a href="../Green/index.html"><span>Green Style</span></a></li>
                            </ul>
                        </li>
                        <li class="menu-level-1 current-menu-ancestor"><a href="#"><span>Home Styles</span></a>
                            <ul class="submenu-2">
                                <li class="menu-level-2 current-menu-item"><a href="index.html"><span>Small Header</span></a></li>
                                <li class="menu-level-2"><a href="index-2.html"><span>Full Header</span></a></li>
                                <li class="menu-level-2"><a href="index-3.html"><span>Text Logo</span></a></li>
                                <li class="menu-level-2"><a href="index-no-tags.html"><span>Without Tags</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="menu-level-0"><a href="#"><span>Pages</span></a>
                    <ul class="submenu-1">
                        <li class="menu-level-2"><a href="about.html"><span>About us</span></a></li>
                        <li class="menu-level-2"><a href="contact.html"><span>Contact</span></a></li>
                        <li class="menu-level-2"><a href="posts-types.html"><span>Post Layouts</span></a></li>
                        <li class="menu-level-2"><a href="post-details-2.html"><span>Review Page</span></a></li>
                        <li class="menu-level-2"><a href="posts-list-sidebar-left.html"><span>Sidebar Left</span></a></li>
                        <li class="menu-level-2"><a href="wp-widgets-layout.html"><span>WP Widgets</span></a></li>
                        <li class="menu-level-2"><a href="wp-widgets-layout-2.html"><span>Boxed Widgets</span></a></li>
                    </ul>
                </li>
                <li class="menu-level-0"><a href="#"><span>Shortcodes</span></a>
                    <ul class="submenu-1">
                        <li class="menu-level-1"><a href="shortcodes-buttons.html"><span>Buttons & Lists</span></a></li>
                        <li class="menu-level-1"><a href="shortcodes-text.html"><span>Text & Images</span></a></li>
                        <li class="menu-level-1"><a href="shortcodes-charts.html"><span>Charts</span></a></li>
                        <li class="menu-level-1"><a href="shortcodes-columns.html"><span>Columns</span></a></li>
                        <li class="menu-level-1"><a href="shortcodes-lightbox.html"><span>Lightbox</span></a></li>
                        <li class="menu-level-1"><a href="shortcodes-media.html"><span>Videos & Galleries</span></a></li>
                        <li class="menu-level-1"><a href="shortcodes-maps.html"><span>Google Maps</span></a></li>
                        <li class="menu-level-1"><a href="shortcodes-tabs.html"><span>Tabs & Toggles</span></a></li>
                        <li class="menu-level-1"><a href="shortcodes-tables.html"><span>Boxes & Tables</span></a></li>
                        <li class="menu-level-1"><a href="shortcodes-typography.html"><span>Typography</span></a></li>
                        <li class="menu-level-1"><a href="shortcodes-widgets.html"><span>Widgets</span></a></li>
                    </ul>
                </li>
                <li class="menu-level-0"><a href="#"><span>Advertising</span></a>
                    <ul class="submenu-1">
                        <li class="menu-level-1"><a href="advertise.html"><span>On Homepage</span></a></li>
                        <li class="menu-level-1"><a href="post-details-advertise.html"><span>On Post Article</span></a></li>
                    </ul>
                </li>

                <li class="menu-level-0 mega-nav"><a href="#"><span>Coolmenu</span></a>
                    <ul class="submenu-1">
                        <li class="menu-level-1 mega-nav-widget">
                            <!-- widget recent entries -->
                            <div class="widget-container widget_recent_entries">
                                <h3 class="widget-title">New stories since your last visit</h3>
                                <div class="mega-nav-widget-count"><em>31</em></div>
                                <ul>
                                    <li><a href="post-details.html" class="link-name">What Today’s Video Games Say About The Moment We Live In</a></li>
                                    <li><a href="post-details.html" class="link-name">Nike Twitter campaign banned in the UK after Wayne Rooney tweet breaks advertising rules</a>					                </li>
                                    <li><a href="post-details.html" class="link-name">Google threatens site that rips YouTube music videos into MP3s</a></li>
                                </ul>
                                <div class="more-nav"><a href="posts-grid.html">See ALL THE NEW STORIES</a></div>
                            </div>
                            <!--/ widget recent entries -->
                        </li>
                        <li class="menu-level-1 mega-nav-widget">
                            <!-- widget featured entries -->
                            <div class="widget-container widget_featured_posts">
                                <h3 class="widget-title">We recommend</h3>
                                <ul>
                                    <li>
                                        <a href="post-details.html"><img src="${resource(dir:'template/images/temp', file:'post_thumb_1.jpg')}" alt="" class="thumbnail"></a>
                                        <div class="recent_entry"><a href="post-details.html" class="link-name">What Today’s Video Games Say About The Moment We Live In</a></div>
                                    </li>
                                    <li>
                                        <a href="post-details.html"><img src="${resource(dir:'template/images/temp', file: 'post_thumb_2.jpg')}" alt="" class="thumbnail"></a>
                                        <div class="recent_entry"><a href="post-details.html" class="link-name">Nike Twitter campaign banned in the UK after Wayne Rooney tweet breaks advertising rules</a></div>
                                    </li>
                                </ul>
                            </div>
                            <!--/ widget featured entries -->
                        </li>
                        <li class="menu-level-1"><a href="#"><span>Subcategories</span></a>
                            <ul class="submenu-2">
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Action</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Comedy</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Horror</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Sport</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Romance</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Science Fiction</span></a></li>
                                <li class="menu-level-2 more-nav"><a href="posts-grid.html"><span>See ALL Movies</span></a></li>
                            </ul>
                        </li>

                    </ul>
                </li>
                <li class="menu-level-0 mega-nav"><a href="#"><span>Games</span></a>
                    <ul class="submenu-1">

                        <li class="menu-level-1 mega-nav-widget">
                            <!-- widget text -->
                            <div class="widget-container widget_text">
                                <h3 class="widget-title">Text Widget in Mega Menu</h3>
                                <div class="textwidget">
                                    <p>Easily add a functional and highly customizable Mega Menu to your WordPress website. Choose your option of five different color schemes within the WordPress admin, or style it to your liking with your own stylesheet. In addition, the plugin has added shortcode functionality to better customize your menu’s content.</p>
                                </div>
                            </div>
                            <!--/ widget text -->
                        </li>
                        <li class="menu-level-1"><a href="#"><span>Subcategories</span></a>
                            <ul class="submenu-2">
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Action</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Comedy</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Horror</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Sport</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Romance</span></a></li>
                                <li class="menu-level-2 more-nav"><a href="posts-grid.html"><span>See ALL Movies</span></a></li>
                            </ul>
                        </li>
                        <li class="menu-level-1 mega-nav-widget">
                            <!-- widget featured entries -->
                            <div class="widget-container widget_featured_posts">
                                <h3 class="widget-title">We recommend</h3>
                                <ul>
                                    <li>
                                        <a href="post-details.html"><img src="${resource(dir:'template/images/temp', file: 'post_thumb_1.jpg')}" alt="" class="thumbnail"></a>
                                        <div class="recent_entry"><a href="post-details.html" class="link-name">What Today’s Video Games Say About The Moment We Live In</a></div>
                                    </li>
                                    <li>
                                        <a href="post-details.html"><img src="${resource(dir: 'template/images/temp', file: 'post_thumb_2.jpg')}" alt="" class="thumbnail"></a>
                                        <div class="recent_entry"><a href="post-details.html" class="link-name">Nike Twitter campaign banned in the UK after Wayne Rooney tweet breaks advertising rules</a></div>
                                    </li>
                                </ul>
                            </div>
                            <!--/ widget featured entries -->
                        </li>

                    </ul>
                </li>
                <li class="menu-level-0"><a href="posts-grid.html"><span>Technology</span></a></li>
                <li class="menu-level-0"><a href="posts-grid.html"><span>Marketplace</span></a></li>
                <li class="menu-level-0 mega-nav"><a href="#"><span>Movies</span></a>
                    <ul class="submenu-1">
                        <li class="menu-level-1"><a href="#"><span>TV Shows</span></a>
                            <ul class="submenu-2">
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Action</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Comedy</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Horror</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Sport</span></a></li>
                            </ul>
                        </li>
                        <li class="menu-level-1"><a href="#"><span>Cinema</span></a>
                            <ul class="submenu-2">
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Comedy</span></a></li>
                                <li class="menu-level-2"><a href="#"><span>Drama</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Romance</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Horror</span></a></li>
                            </ul>
                        </li>
                        <li class="menu-level-1"><a href="#"><span>Trailers</span></a>
                            <ul class="submenu-2">
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Action</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Comedy</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Horror</span></a></li>
                                <li class="menu-level-2"><a href="posts-grid.html"><span>Sport</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <div class="clear"></div>
        </nav>--}%
        <!--/ topmenu -->

        <div class="topbar">
            <div class="top_share"><span class="social_title">SHARE</span> <a href="#" class="social_google">Google +1</a> <a href="#" class="social_fb">Facebook</a> <a href="#" class="social_twitter">Twitter</a> <a href="#" class="social_pinterest">Pinterest</a></div>

            <span class="top_filter"><a href="#" class="link_mostcomm">Most commented</a> <a href="#" class="link_pick">Editor’s Picks</a> <a href="#" class="link_mostlike">Most liked</a> <a href="#" class="link_random">Random story</a></span>
            <div class="clear"></div>
        </div>
    </div>

    <g:layoutBody/>

    <footer>
        <div class="container" style="background-image:url(${resource(dir: 'template/images',file: 'header_img_blue.jpg')}); background-color:#097bb6">

            <div class="footer_right">
                <ul class="botmenu">
                    <li><a href="about.html">ABOUT</a></li>
                    <li><a href="#">AUTHORS</a></li>
                    <li><a href="contact.html">CONTACT</a></li>
                    <li><a href="advertise.html">ADVERTISE</a></li>
                    <li><a href="#">PRIVACY</a></li>
                    <li><a href="#">TERMS</a></li>
                </ul>
            </div>

            <div class="footer_left">
                <img src="${resource(dir: 'template/styles/blue', file: 'logo_footer.png')}" width="230" height="50" alt="">
            </div>

            <div class="clear"></div>
        </div>
    </footer>

    </div>
		<g:javascript library="application"/>
		<r:layoutResources />

	</body>
</html>
