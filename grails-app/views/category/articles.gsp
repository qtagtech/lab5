<%@ page import="org.nest5.Media" %>
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
            <g:set var="last" value="0"/>
            <g:each in="[0,1,2,3,4,5,6,7]">
                <g:if test="${articles?.toList()?.getAt(it)}">
                    <li class="slide_1_4">
                        <a href="#"><img src="${Media.findByPostAndIsMain(articles?.toList()?.getAt(it),true)?.file?.ruta}" width="233" height="300" alt=""></a>
                        <div class="slide_caption">
                            %{--<div class="slide_tag">Movies</div>--}%
                            <a href="#">${articles?.toList()?.getAt(it)?.title}</a>
                        </div>
                    </li>
                    <g:set var="last" value="${it}"/>
                </g:if>
            </g:each>
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
    <div id="middle" class="cols2">

        <div class="content" role="main">

            <div class="breadcrumbs"><a href="#">Artículos en: </a> <span class="separator">&nbsp;</span> ${category?.name}</div>

            <!-- post list, grid view -->
            <div class="posts_layout list_layout image_small">
               <g:each in="${articles}">
                   <div class="post-item">
                       <div class="post-image">
                           <a href="${createLink(controller: 'post',action: 'details', params: [id: it?.id])}"><img src="${Media.findByPostAndIsMain(it,true)?.file?.ruta}" width="300" height="192" alt=""></a>
                           %{--<div class="post-cat"><span>Reviews</span></div>--}%
                           %{--<div class="score_box">5 <span>our score</span></div>--}%
                       </div>
                       <div class="post-title">
                           <h2><a href="${createLink(controller: 'post',action: 'details', params: [id: it?.id])}">${it?.title}</a></h2>
                       </div>
                       <div class="post-meta"><a href="#" class="author">${it?.author}</a> <span class="separator">|</span> <a href="#">15 Comments</a></div>
                       <div class="post-descr">
                           <p>${it?.content?.substring(0,100)} ...</p>
                       </div>
                       <div class="clear"></div>
                   </div>
               </g:each>





                <div class="clear"></div>
            </div>
            <!--/ post list, grid view -->

            <!-- pagination -->
            <div class="tf_pagination">
                <div class="inner">
                    <a class="page_prev" href="#"><span>Anteriores</span></a>
                    <a class="page_next" href="#"><span>Recientes</span></a>

                    <g:paginate total="${articlesTotal}" controller="category" action="articles"/>

                </div>
            </div>
            <!--/ pagination -->

        </div>
        <!--/ content -->

        <!-- sidebar -->
        <div class="sidebar">

            <!-- widget_popular_posts -->
            <div class="widget-container widget_popular_posts boxed">
                <img src="${resource(dir: 'template/images/icons', file: 'icons_16_comm2.png')}" alt="" class="widget_icon">
                <h3 class="widget-title">Lo más Interactivo</h3>
                <ul>
                    <li><span class="comm-count"><em>538</em></span> <a href="post-details.html">Microsoft overhauls certificate management in response to Flame PKI hack</a></li>
                    <li><span class="comm-count"><em>120</em></span> <a href="post-details.html">We Are Scared Right Now: What Today’s Video Games Say About The Moment We Live In</a></li>
                    <li><span class="comm-count"><em>34</em></span> <a href="post-details.html">Hadoop becomes more business-friendly with HortonWorks and VMware partnership</a></li>
                </ul>
            </div>
            <!--/ widget_popular_posts -->

            <div class="adv_300">
                <img src="${resource(dir: 'template/images/temp', file: 'ads_300x250.jpg')}" width="300" height="250" alt="">
            </div>

            <div class="adv_300">
                <img src="${resource(dir: 'template/images/temp', file: 'ads_300x250.jpg')}" width="300" height="250" alt="">
            </div>

        </div>
        <!--/ sidebar -->

        <div class="divider"></div>
        <div class="read-more-big"><a href="#">Ver más artículos</a></div>

    </div>
    <!--/ middle -->
</div>
<!--/ container -->
</body>
</html>
