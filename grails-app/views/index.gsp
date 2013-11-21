<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Nest5, Además te informa</title>

	</head>
	<body>

    <!-- top Slider -->
    <div class="topSlider">
        <div class="container">

            <ul id="topcarousel" class="ts_container">

                <li class="slide_1_2">
                    <a href="#"><img src="${resource(dir: 'template/images/temp',file: 'top_slide_1.jpg')}" width="468" height="300" alt=""></a>
                    <div class="score_box">6,4 <span>our score</span></div>
                    <span class="icon_video"></span>
                    <div class="slide_caption">
                        <div class="slide_tag">Movies</div>
                        <a href="#">Battlefield 3 Close Quarters: Premium trailer at EA E3 2012 press conference</a>
                    </div>
                </li>
                <li class="slide_1_4">
                    <a href="#"><img src="${resource(dir: 'template/images/temp',file: 'top_slide_2.jpg')}" width="233" height="300" alt=""></a>
                    <div class="slide_caption">
                        <div class="slide_tag">Movies</div>
                        <a href="#">Tudor personal Tailor</a>
                    </div>
                </li>
                <li class="slide_1_4">
                    <a href="#"><img src="${resource(dir: 'template/images/temp',file: 'top_slide_3.jpg')}" width="233" height="300" alt=""></a>
                    <span class="icon_video"></span>
                    <div class="slide_caption">
                        <div class="slide_tag">Movies</div>
                        <a href="#">Makeup Collection Spring 2012</a>
                    </div>
                </li>

                <li class="slide_1_4">
                    <a href="#"><img src="${resource(dir: 'template/images/temp',file: 'top_slide_4.jpg')}" width="233" height="300" alt=""></a>
                    <div class="slide_caption">
                        <div class="slide_tag">Movies</div>
                        <a href="#">The Good Wife</a>
                    </div>
                </li>

                <li class="slide_1_2">
                    <a href="#"><img src="${resource(dir: 'template/images/temp',file: 'top_slide_7.jpg')}" width="468" height="300" alt=""></a>
                    <div class="score_box">8,5 <span>our score</span></div>
                    <span class="icon_video"></span>
                    <div class="slide_caption">
                        <div class="slide_tag">Movies</div>
                        <a href="#">The Avengers</a>
                    </div>
                </li>

                <li class="slide_1_4">
                    <a href="#"><img src="${resource(dir: 'template/images/temp',file: 'top_slide_5.jpg')}" width="233" height="300" alt=""></a>
                    <div class="slide_caption">
                        <div class="slide_tag">Movies</div>
                        <a href="#">Hell on wheels</a>
                    </div>
                </li>

                <li class="slide_1_4">
                    <a href="#"><img src="${resource(dir: 'template/images/temp',file: 'top_slide_6.jpg')}" width="233" height="300" alt=""></a>
                    <div class="slide_caption">
                        <div class="slide_tag">Movies</div>
                        <a href="#">The Walking dead</a>
                    </div>
                </li>
                <li class="slide_1_4">
                    <a href="#"><img src="${resource(dir: 'template/images/temp',file: 'top_slide_2.jpg')}" width="233" height="300" alt=""></a>
                    <div class="slide_caption">
                        <div class="slide_tag">Movies</div>
                        <a href="#">Tudor personal Tailor</a>
                    </div>
                </li>
                <li class="slide_1_2">
                    <a href="#"><img src="${resource(dir: 'template/images/temp',file: 'top_slide_1.jpg')}" width="468" height="300" alt=""></a>
                    <div class="score_box">6,4 <span>our score</span></div>
                    <span class="icon_video"></span>
                    <div class="slide_caption">
                        <div class="slide_tag">Movies</div>
                        <a href="#">Battlefield 3 Close Quarters: Premium trailer at EA E3 2012 press conference</a>
                    </div>
                </li>

            </ul>
            <div class="clear"></div>
            <div class="ts_pagination" id="topcarousel_pag"></div>
        </div>
    </div>
    <script>
        jQuery(document).ready(function($) {
            $('#topcarousel').carouFredSel({
                pagination : "#topcarousel_pag",
                auto: {
                    pauseDuration: 7000,
                    pauseOnHover: true
                },
                scroll: {
                    wipe: true
                }
            });
        });
    </script>
    <!--/ top Slider -->

    <div class="container">
    <!-- middle -->
    <div id="middle" class="full_width">

    <div class="content" role="main">

    <article class="post-detail">
    <div class="entry">

    <!-- 2 cols layout -->
    <div class="col col_1_2">
        <div class="inner">

            <!-- grid layout, 2 cols -->
            <div class="posts_layout grid_layout grid_cols2">

                <div class="post-item title-over">
                    <div class="post-image">
                        <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_mid_1.jpg')}" width="460" height="258" alt=""></a>
                        <div class="post-cat"><span>Movies</span></div>
                        <div class="score_box">5 <span>our score</span></div>
                    </div>
                    <div class="post-title">
                        <h2><a href="post-details.html">Blizzard delays Diablo III real money auctions indefinitely</a></h2>
                    </div>
                    <div class="post-meta"><a href="#" class="author">Dimi Baitanciuc</a> <span class="separator">|</span> <a href="#">15 Comments</a></div>
                    <div class="post-descr">
                        <p>Those of you hoping to quit your jobs and make a living selling your Diablo III loot for real money will have to keep flipping burgers a little while longer as Blizzard has announced the game's ...</p>
                    </div>
                    <div class="clear"></div>
                </div>

                <div class="clear"></div>
            </div>
            <!--/ grid layout, 2 cols -->

        </div>
    </div>

    <div class="col col_1_2">
        <div class="inner">

            <!-- box with posts -->
            <div class="post_box">

                <div class="post-item">
                    <div class="post-title">
                        <h2><a href="post-details.html">Amazon and independent publisher resolve dispute, 5,000 titles return to Kindle Store</a></h2>
                        <div class="post-cat"><span>Fashion</span></div>
                    </div>
                    <div class="post-meta"><a href="#" class="author">Bryan Bishop</a> <span class="separator">|</span> <a href="#">16 Comments</a></div>
                    <div class="post-descr">
                        <p>Cisco announced that it "will no longer invest" in a tablet you've probably never even heard of: the Cisco Cius. Introduced in 2010 ...</p>
                    </div>
                </div>

                <div class="post-item">
                    <div class="post-title">
                        <h2><a href="post-details.html">Cisco ends development on Cius tablet</a></h2>
                        <div class="post-cat"><span>Technology</span></div>
                    </div>
                    <div class="post-meta"><a href="#" class="author">Alex Luncasu</a> <span class="separator">|</span> <a href="#">24 Comments</a></div>
                    <div class="post-descr">
                        <p>In February Amazon pulled nearly 5,000 titles from the Kindle Store over a troubled contract negotiation with Independent Publishers ...</p>
                    </div>
                </div>

            </div>
            <!--/ box with posts -->

        </div>
    </div>
    <!--/ 2 cols layout -->

    <div class="divider"></div>

    <!-- grid layout, 3 cols -->
    <div class="posts_layout grid_layout">

        <div class="post-item title-over">
            <div class="post-image">
                <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_3_1.jpg')}" width="300" height="192" alt=""></a>
                <div class="post-cat"><span>Reviews</span></div>
                <div class="score_box">5 <span>our score</span></div>
            </div>
            <div class="post-title">
                <h2><a href="post-details.html">Hands-on: app lets you Bump smartphone pics to your computer</a></h2>
            </div>
            <div class="post-meta"><a href="#" class="author">Dimi Baitanciuc</a> <span class="separator">|</span> <a href="#">15 Comments</a></div>
            <div class="post-descr">
                <p>Snapping a quick picture on your iPhone is easy, but getting the image on your desktop can sometimes be a chore ...</p>
            </div>
        </div>

        <div class="post-item title-over">
            <div class="post-image">
                <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_3_2.jpg')}" width="300" height="192" alt=""></a>
                <div class="post-cat"><span>Technology</span></div>
            </div>
            <div class="post-title">
                <h2><a href="post-details.html">Google Glasses patent hints at speech-to-text display for deaf users</a></h2>
            </div>
            <div class="post-meta"><a href="#" class="author">Bogdan Condurache </a> <span class="separator">|</span> <a href="#">9 Comments</a></div>
            <div class="post-descr">
                <p>Google is bulking up on patents to protect its new augmented reality glasses project from legal attack ...</p>
            </div>
        </div>

        <!-- post with slider -->
        <div class="post-item postThumbs postSliderThumbs">

            <div class="postThumbs-container" id="postSlider2">

                <div class="post-slide">
                    <div class="score_box">6,4 <span>our score</span></div>
                    <div class="post-image">
                        <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_thumb_1.jpg')}" width="78" height="78" alt=""></a>
                        <div class="post-cat"><span>Reviews</span></div>
                    </div>
                    <div class="post-title">
                        <h2><a href="post-details.html">Samsung stops teasing and finally delivers its flagship Android device for 2012 can the Galaxy S III live up to its mighty promise? Let’s find out</a></h2>
                    </div>
                    <div class="post-meta"><a href="#" class="author">Dan Belciug</a> <span class="separator">|</span> <a href="#">9 Comments</a></div>
                </div>

                <div class="post-slide">
                    <div class="score_box">7,5 <span>our score</span></div>
                    <div class="post-image">
                        <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_thumb_2.jpg')}" width="78" height="78" alt=""></a>
                        <div class="post-cat"><span>Reviews</span></div>
                    </div>
                    <div class="post-title">
                        <h2><a href="post-details.html">Hands-on: app lets you Bump smartphone pics to your computer</a></h2>
                    </div>
                    <div class="post-meta"><a href="#" class="author">Bogdan Condurache </a> <span class="separator">|</span> <a href="#">9 Comments</a></div>
                </div>

                <div class="post-slide">
                    <div class="score_box">8 <span>our score</span></div>
                    <div class="post-image">
                        <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_thumb_3.jpg')}" width="78" height="78" alt=""></a>
                        <div class="post-cat"><span>Reviews</span></div>
                    </div>
                    <div class="post-title">
                        <h2><a href="post-details.html">Google Glasses patent hints at speech-to-text display for deaf users</a></h2>
                    </div>
                    <div class="post-meta"><a href="#" class="author">Bogdan Condurache </a> <span class="separator">|</span> <a href="#">9 Comments</a></div>
                </div>

            </div>

            <div class="clear"></div>
            <div class="postSlider_pag" id="postSlider2_pag"></div>
        </div>
        <script>
            jQuery(document).ready(function($) {
                $('#postSlider2').carouFredSel({
                    pagination : "#postSlider2_pag",
                    auto: false,
                    scroll: {
                        fx: "fade",
                        duration: 200
                    }
                });
            });
        </script>
        <!--/ post with slider -->

        <div class="clear"></div>
    </div>
    <!-- grid layout, 3 cols -->

    <div class="divider"></div>

    <div class="col col_1">
        <!-- carousel with posts -->
        <div class="post_carousel">
            <ul id="postCarousel1">
                <li>
                    <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_4_1.jpg')}" width="221" height="140" alt=""></a>
                    <div class="slide_caption">
                        <div class="slide_tag">Gosip</div><a href="post-details.html">Dolce & Gabbana celebrated 20 years in menswear in 2010</a>
                    </div>
                    <a href="post-details.html" class="zoom"></a>
                </li>
                <li>
                    <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_4_2.jpg')}" width="221" height="140" alt=""></a>
                    <div class="slide_caption">
                        <div class="slide_tag">Technology</div><a href="post-details.html">Fake 'Canabalt' clone for iPhone and iPad in iTunes App Store</a>
                    </div>
                    <a href="post-details.html" class="zoom"></a>
                </li>
                <li>
                    <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_4_3.jpg')}" width="221" height="140" alt=""></a>
                    <div class="slide_caption">
                        <div class="slide_tag">Technology</div>
                        <a href="post-details.html">Hands-on: app lets you Bump smartphone pics to your computer</a>
                    </div>
                    <a href="post-details.html" class="zoom"></a>
                </li>
                <li>
                    <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_4_4.jpg')}" width="221" height="140" alt=""></a>
                    <div class="slide_caption">
                        <div class="slide_tag">Education</div>
                        <a href="post-details.html">Revisiting why incompetents think they're awesome</a>
                    </div>
                    <a href="post-details.html" class="zoom"></a>
                </li>
                <li>
                    <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_4_5.jpg')}" width="221" height="140" alt=""></a>
                    <div class="slide_caption">
                        <div class="slide_tag">Sport</div>
                        <a href="post-details.html">ThinkPad Tablet Android 4.0 update rolling out in some regions</a>
                    </div>
                    <a href="post-details.html" class="zoom"></a>
                </li>
                <li>
                    <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_4_6.jpg')}" width="221" height="140" alt=""></a>
                    <div class="slide_caption">
                        <div class="slide_tag">Fashion</div>
                        <a href="post-details.html">Film company Gaumonti eradicated downloads of French films</a>
                    </div>
                    <a href="post-details.html" class="zoom"></a>
                </li>
                <li>
                    <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_4_6.jpg')}" width="221" height="140" alt=""></a>
                    <div class="slide_caption">
                        <div class="slide_tag">Fashion</div>
                        <a href="post-details.html">Film company Gaumonti eradicated downloads of French films</a>
                    </div>
                    <a href="post-details.html" class="zoom"></a>
                </li>
            </ul>
            <div class="clear"></div>
            <a class="prev" id="postCarousel1_prev" href="#"><span>prev</span></a>
            <a class="next" id="postCarousel1_next" href="#"><span>next</span></a>
        </div>
        <script>
            jQuery(document).ready(function($) {
                $('#postCarousel1').carouFredSel({
                    next : "#postCarousel1_next",
                    prev : "#postCarousel1_prev",
                    auto: false,
                    circular: false,
                    infinite: true,
                    width: '100%',
                    scroll: {
                        items : 1,
                        wipe: true
                    }
                });
            });
        </script>
        <!--/ carousel with posts -->
    </div>

    <div class="divider"></div>

    <!-- 2 cols layout, 2/3+1/3-->
    <div class="col col_2_3">
        <div class="inner">

            <div class="posts_layout list_layout image_small">

                <div class="post-item image_left">
                    <div class="post-image">
                        <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_4_5.jpg')}" width="219" height="140" alt=""></a>
                        <div class="post-cat"><span>Sport</span></div>
                        <div class="score_box">8,2 <span>our score</span></div>
                    </div>
                    <div class="post-title">
                        <h2><a href="post-details.html">ThinkPad Tablet Android 4.0 update rolling out in some regions</a></h2>
                    </div>
                    <div class="post-meta"><a href="#" class="author">Alex Luncasu</a> <span class="separator">|</span> <a href="#">31 Comments</a></div>
                    <div class="post-descr">
                        <p>Lenovo promised that it would begin offering an Android 4.0 in May and true to form in some regions ...</p>
                    </div>
                    <div class="clear"></div>
                </div>

                <div class="post-item image_left">
                    <div class="post-image">
                        <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file: 'post_4_6.jpg')}" width="219" height="140" alt=""></a>
                        <div class="post-cat"><span>Fashion</span></div>
                    </div>
                    <div class="post-title">
                        <h2><a href="post-details.html">Film company Gaumonti eradicated downloads of French films</a></h2>
                    </div>
                    <div class="post-meta"><a href="#" class="author">Sergiu Bagrin</a> <span class="separator">|</span> <a href="#">23 Comments</a></div>
                    <div class="post-descr">
                        <p>Snapping a quick picture on your iPhone is easy, but getting the image on your desktop can sometimes ...</p>
                    </div>
                    <div class="clear"></div>
                </div>

            </div>

        </div>
    </div>

    <div class="col col_1_3">
        <div class="inner">

            <div class="adv_300">
                <img src="${resource(dir: 'template/images/temp',file: 'ads_300x250.jpg')}" width="300" height="250" alt="">
            </div>

        </div>
    </div>

    <!--/ 2 cols layout, 2/3+1/3-->
    <div class="divider"></div>

    <div class="read-more-big"><a href="#">Read more stories</a></div>

    <div class="clear"></div>
    </div>
    </article>
    </div>
    <!--/ content -->
    </div>
    <!--/ middle -->
    </div>
    <!--/ container -->
	</body>
</html>
