<%@ page import="org.nest5.Media" %>
<!DOCTYPE html>
<html>
	<head>

		<meta name="layout" content="main"/>

		<title>Lab5 by Nest5, Mercadeo para empresas, Emprendedores y Noticias del Medio</title>
        <meta name="description" content="Lab5 es un laboratorio by Nest5 en el cual informamos sobre lo último en mercadeo, recomendaciones para empresas y usuarios, noticias de emprendimientos y startUps que nacen en el ecosistema cercano a Nest5. Es una publicación para todos los interesados en dichos temas.">
        <meta name="keywords" content="Laboratorio de ideas, nest5, innovación, emprendimiento, ayuda emprendedores, ayuda mercadeo, mercadeo empresas pequeñas, mercadeo empresas, mercadeo básico">
        <link rel="image_src" href="${resource(dir: 'template/images',file: 'nest5org-lab5-superior.jpg')}"  />
        <link rel="canonical" href="http://www.nest5.org"/>
	</head>
	<body>
    <!-- top Slider -->
    <div class="topSlider">
        <div class="container">

            <ul id="topcarousel" class="ts_container">
                <g:each in="${headerPosts}" var="post" status="j">
                    <g:set var="media" value="${Media.findByPostAndIsMain(post, true)}"/>

                    <li class="slide_1_2" %{--<g:if test="${post?.content?.length() * 0.015 > 50}">class="slide_1_4"</g:if><g:else>class="slide_1_2"</g:else>--}%>
                        <a href="${createLink(controller: 'post',action: 'details', params: [id: post?.id,header: post?.address])}"><img src="${media?.file?.ruta}" <g:if  test="${post?.content?.length() % 32 > 55}">width="233" height="300"</g:if><g:else>width="468" height="300"</g:else> alt=""></a>
                        %{--<div class="score_box">6,4 <span>Ranking</span></div>--}%
                        <g:if test="${media.file.tipo == 'video'}"><span class="icon_video"></span></g:if>

                        <div class="slide_caption">
                            <div class="slide_tag">${post?.category?.name}</div>
                            <a href="${createLink(controller: 'post',action: 'details', params: [id: post?.id,header: post?.address])}">${post?.title}</a>
                        </div>
                    </li>
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
                        <a href="${createLink(controller: 'post',action: 'details',params: [id: mercadeo?.last()?.id,header: mercadeo?.last()?.address])}"><img src="${Media.findByPostAndIsMain(mercadeo?.last(),true)?.file?.ruta}" width="460" height="258" alt=""></a>
                        <div class="post-cat"><span>${mercadeo?.last()?.category?.name}</span></div>
                        %{--<div class="score_box">5 <span>our score</span></div>--}%
                    </div>
                    <div class="post-title">
                        <h2><a href="${createLink(controller: 'post',action: 'details',params: [id: mercadeo?.last()?.id,header: mercadeo?.last()?.address])}">${mercadeo?.last()?.title}</a></h2>
                    </div>
                    <div class="post-meta"><a href="#" class="author">${mercadeo?.last()?.author?.name}</a> <span class="separator">|</span> <a href="#">15 Comments</a></div>
                    <div class="post-descr">
                        <p>${mercadeo?.last()?.content?.substring(0,150)}...</p>
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
                        <h2><a href="${createLink(controller: 'post',action: 'details',params: [id: emprendimiento?.last()?.id,header: emprendimiento?.last()?.address])}">${emprendimiento?.last()?.title}</a></h2>
                        <div class="post-cat"><span>${emprendimiento?.last()?.category?.name}</span></div>
                    </div>
                    <div class="post-meta"><a href="#" class="author">${emprendimiento?.last()?.author?.name}</a> <span class="separator">|</span> <a href="#">16 Comments</a></div>
                    <div class="post-descr">
                        <p>${emprendimiento?.last()?.content?.substring(0,150)}...</p>
                    </div>
                </div>

            <div class="post-item">
                <div class="post-title">
                    <h2><a href="${createLink(controller: 'post',action: 'details',params: [id: noticias?.last()?.id, header: noticias?.last()?.address])}">${noticias?.last()?.title}</a></h2>
                    <div class="post-cat"><span>${noticias?.last()?.category?.name}</span></div>
                </div>
                <div class="post-meta"><a href="#" class="author">${noticias?.last()?.author?.name}</a> <span class="separator">|</span> <a href="#">16 Comments</a></div>
                <div class="post-descr">
                    <p>${noticias?.last()?.content?.substring(0,150)}...</p>
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
                <a href="${createLink(controller:'post',action: 'details',params: [id:tecnologia?.last()?.id ?: 0,header: tecnologia?.last()?.address ?: ""])}"><img src="${Media.findByPostAndIsMain(tecnologia?.last(),true)?.file?.ruta}" width="300" height="192" alt=""></a>
                <div class="post-cat"><span>${tecnologia?.last()?.category?.name}</span></div>
                %{--<div class="score_box">5 <span>our score</span></div>--}%
            </div>
            <div class="post-title">
                <h2><a href="${createLink(controller:'post',action: 'details',params: [id: tecnologia?.last()?.id ?: 0,header: tecnologia?.last()?.address ?: ""])}">${tecnologia?.last()?.title}</a></h2>
            </div>
            <div class="post-meta"><a href="#" class="author">${tecnologia?.last()?.author}</a> <span class="separator">|</span> <a href="#">15 Comments</a></div>
            <div class="post-descr">
                <p>${tecnologia?.last()?.content?.substring(0,150)}...</p>
            </div>
        </div>

        <div class="post-item title-over">
            <div class="post-image">
                <a href="${createLink(controller:'post',action: 'details',params: [id:emprendimiento?.last()?.id,header: emprendimiento?.last()?.address])}"><img src="${Media.findByPostAndIsMain(emprendimiento?.last(),true)?.file?.ruta}" width="300" height="192" alt=""></a>
                <div class="post-cat"><span>${emprendimiento?.last()?.category?.name}</span></div>
                %{--<div class="score_box">5 <span>our score</span></div>--}%
            </div>
            <div class="post-title">
                <h2><a href="${createLink(controller:'post',action: 'details',params: [id:emprendimiento?.last()?.id,header: emprendimiento?.last()?.address])}">${emprendimiento?.last()?.title}</a></h2>
            </div>
            <div class="post-meta"><a href="#" class="author">${emprendimiento?.last()?.author}</a> <span class="separator">|</span> <a href="#">15 Comments</a></div>
            <div class="post-descr">
                <p>${emprendimiento?.last()?.content?.substring(0,150)}...</p>
            </div>
        </div>

        <!-- post with slider -->
        <div class="post-item postThumbs postSliderThumbs">

            <div class="postThumbs-container" id="postSlider2">


                <g:each in="${[0,1,2]}">
                    <g:if test="${noticias?.toList()?.getAt(it)}">
                        <div class="post-slide">
                            %{--<div class="score_box">6,4 <span>our score</span></div>--}%
                            <div class="post-image">
                                <a href="${createLink(controller: 'post',action:'details',params: [id: noticias?.toList().get(it)?.id,header: noticias?.toList().get(it)?.address])}"><img src="${Media.findByPostAndIsMain(noticias?.toList().get(it),true)?.file?.ruta}" width="78" height="78" alt=""></a>
                                <div class="post-cat"><span>Reviews</span></div>
                            </div>
                            <div class="post-title">
                                <h2><a href="${createLink(controller: 'post',action:'details',params: [id: noticias?.toList().get(it)?.id,header: noticias?.toList().get(it)?.address])}">${noticias?.toList().get(it)?.title}</a></h2>
                            </div>
                            <div class="post-meta"><a href="#" class="author">${noticias?.toList().get(it)?.author}</a> <span class="separator">|</span> <a href="#">9 Comments</a></div>
                        </div>
                    </g:if>

                </g:each>

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
                <g:each in="${[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19]}">
                  <g:if test="${all?.getAt(it)}">
                      <g:set var="actual" value="${all?.getAt(it)}"/>
                      <li>
                          <a href="${createLink(controller: 'post',action: 'details', params: [id: actual?.id,header: actual?.address])}"><img src="${Media.findByPostAndIsMain(actual,true)?.file?.ruta}" width="221" height="140" alt=""></a>
                          <div class="slide_caption">
                              <div class="slide_tag">${actual?.category?.name}</div><a href="${createLink(controller: 'post',action: 'details', params: [id: actual?.id])}">${actual?.title}</a>
                          </div>
                          <a href="${createLink(controller: 'post',action: 'details', params: [id: actual?.id,header: actual?.address])}" class="zoom"></a>
                      </li>
                  </g:if>
                </g:each>
            </ul>
            <div class="clear"></div>
            <a class="prev" id="postCarousel1_prev" href="#"><span>ant</span></a>
            <a class="next" id="postCarousel1_next" href="#"><span>sig</span></a>
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
            <g:if test="${mercadeo?.size() < 3}">
                <g:set var="penultimom" value="${mercadeo?.toList()?.get(0)}"/>
            </g:if>
            <g:else>
                <g:set var="penultimom" value="${mercadeo?.toList()?.get(mercadeo.size() - 2)}"/>
            </g:else>
            <g:if test="${noticias?.size() < 3}">
                <g:set var="penultimon" value="${noticias?.toList()?.get(0)}"/>
            </g:if>
            <g:else>
                <g:set var="penultimon" value="${noticias?.toList()?.get(noticias?.size() - 2)}"/>
            </g:else>


            <div class="posts_layout list_layout image_small">

                <div class="post-item image_left">
                    <div class="post-image">
                        <a href="${createLink(controller: 'post',action: 'details', params: [id: penultimom?.id,header: penultimom?.address])}"><img src="${Media.findByPostAndIsMain(penultimom,true)?.file?.ruta}" width="219" height="140" alt=""></a>
                        <div class="post-cat"><span>${penultimom?.category?.name}</span></div>
                        %{--<div class="score_box">8,2 <span>our score</span></div>--}%
                    </div>
                    <div class="post-title">
                        <h2><a href="${createLink(controller: 'post',action: 'details', params: [id: penultimom?.id,header: penultimom?.address])}">${penultimom?.title}</a></h2>
                    </div>
                    <div class="post-meta"><a href="#" class="author">${penultimom?.author}</a> <span class="separator">|</span> <a href="#">31 Comments</a></div>
                    <div class="post-descr">
                        <p>${penultimom?.content?.substring(0,150)}...</p>
                    </div>
                    <div class="clear"></div>
                </div>

            <div class="post-item image_left">
                <div class="post-image">
                    <a href="${createLink(controller: 'post',action: 'details', params: [id: penultimon?.id,header:  penultimon?.address])}"><img src="${Media.findByPostAndIsMain(penultimon,true)?.file?.ruta}" width="219" height="140" alt=""></a>
                    <div class="post-cat"><span>${penultimon?.category?.name}</span></div>
                    %{--<div class="score_box">8,2 <span>our score</span></div>--}%
                </div>
                <div class="post-title">
                    <h2><a href="${createLink(controller: 'post',action: 'details', params: [id: penultimon?.id,header:  penultimon?.address])}">${penultimon?.title}</a></h2>
                </div>
                <div class="post-meta"><a href="#" class="author">${penultimon?.author}</a> <span class="separator">|</span> <a href="#">31 Comments</a></div>
                <div class="post-descr">
                    <p>${penultimon?.content?.substring(0,150)}...</p>
                </div>
                <div class="clear"></div>
            </div>

            </div>

        </div>
    </div>

    <div class="col col_1_3">
        <div class="inner">

            <div class="adv_300">
                <script type="text/javascript"><!--
                google_ad_client = "ca-pub-5955815527107769";
                /* Nest5.org homepage */
                google_ad_slot = "6849056735";
                google_ad_width = 300;
                google_ad_height = 250;
                //-->
                </script>
                <script type="text/javascript"
                        src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
                </script>
            </div>

        </div>
    </div>

    <!--/ 2 cols layout, 2/3+1/3-->
    <div class="divider"></div>

    %{--<div class="read-more-big"><a href="#">Read more stories</a></div>--}%

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
