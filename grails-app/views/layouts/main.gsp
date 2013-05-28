<%@ page import="org.nest5.Media" %>
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
    <script type="text/javascript">var switchTo5x=true;</script>
    <script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
    <script type="text/javascript" src="http://s.sharethis.com/loader.js"></script>
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
                        <a href="${createLink(controller: 'blog', action: 'index')}"><img src="${resource(dir: 'images',file: 'Nest5_Labs_Logo_small2.png')}" alt=""></a>
                        <h1>Lab5 - El sitio informativo Nest5</h1>
                    </div>
                </div>

                <div class="clear"></div>
            </div>
        </header>
    </div>
    <!--/ header_container -->

    <div class="container topm_cont">

        <!-- topmenu -->
        <nav id="topmenu">
            <ul class="dropdown">
                <li class="menu-level-0 current-menu-ancestor"><a href="${createLink(controller: 'blog', action: 'index')}"><span>Inicio</span></a>

                </li>
            <li class="menu-level-0 mega-nav"><a href="#"><span>Noticias</span></a>
                <ul class="submenu-1">
                    <li class="menu-level-1 mega-nav-widget">
                        <!-- widget recent entries -->
                        <div class="widget-container widget_recent_entries">
                            <h3 class="widget-title">Lo último</h3>

                            <div class="mega-nav-widget-count"><em>${noticias?.size()}</em></div>
                            <ul>
                                <g:each in="${[0,1,2]}">
                                    <g:if test="${noticias?.toList()?.getAt(it)}">
                                        <li><a href="${createLink(controller: 'post',action:'details',params: [id: noticias?.toList().get(it)?.id])}" class="link-name">${noticias?.toList()?.getAt(it).title}</a></li>
                                    </g:if>
                                </g:each>
                            </ul>
                            <div class="more-nav"><a href=${createLink(controller: 'category',action: 'articles',params: [id: 'noticias'])}">Ver todo en Noticias</a></div>
                        </div>
                        <!--/ widget recent entries -->
                    </li>
                    <li class="menu-level-1 mega-nav-widget">
                        <!-- widget featured entries -->
                        <div class="widget-container widget_featured_posts">
                            <h3 class="widget-title">Te Recomendamos</h3>
                            <ul>
                            %{--AQUI HACER ALGO DE RECOMENDADOS, SEA PARA EL USUARIO, POR MAYOR NÚMERO DE VISITAS O LO QUE SEA--}%
                                <g:each in="${[0,1]}">
                                    <g:if test="${noticias?.toList()?.getAt(it)}">
                                        <li>
                                            <a href="${createLink(controller: 'post',action:'details',params: [id: noticias?.toList().get(it)?.id])}"><img src="${Media.findByPostAndIsMain( noticias?.toList().get(it),true)?.file?.ruta}" alt="" class="thumbnail"></a>
                                            <div class="recent_entry"><a href="${createLink(controller: 'post',action:'details',params: [id: noticias?.toList().get(it)?.id])}" class="link-name">${noticias?.toList().get(it)?.title}</a></div>
                                        </li>
                                    </g:if>
                                </g:each>
                            </ul>
                        </div>
                        <!--/ widget featured entries -->
                    </li>

                    <li class="menu-level-1"><a href="#"><span>Autores</span></a>
                        <ul class="submenu-2">
                            <g:each in="${org.nest5.Category.findByAlias('noticias')?.posts?.collect{it.author}?.unique()}">
                                <li class="menu-level-2"><a href="posts-grid.html"><span>${it}</span></a></li>
                            </g:each>
                        </ul>
                    </li>

                </ul>
            </li>
                <li class="menu-level-0 mega-nav"><a href="#"><span>Mercadeo</span></a>
                    <ul class="submenu-1">
                        <li class="menu-level-1 mega-nav-widget">
                            <!-- widget recent entries -->
                            <div class="widget-container widget_recent_entries">
                                <h3 class="widget-title">Lo último</h3>

                                <div class="mega-nav-widget-count"><em>${mercadeo?.size()}</em></div>
                                <ul>
                                    <g:each in="${[0,1,2]}">
                                        <g:if test="${mercadeo?.toList()?.getAt(it)}">
                                            <li><a href="${createLink(controller: 'post',action:'details',params: [id: mercadeo?.toList().get(it)?.id])}" class="link-name">${mercadeo?.toList()?.getAt(it).title}</a></li>
                                        </g:if>
                                    </g:each>
                                </ul>
                                <div class="more-nav"><a href="${createLink(controller: 'category',action: 'articles',params: [id: 'mercadeo'])}">Ver todo en Mercadeo</a></div>
                            </div>
                            <!--/ widget recent entries -->
                        </li>
                        <li class="menu-level-1 mega-nav-widget">
                            <!-- widget featured entries -->
                            <div class="widget-container widget_featured_posts">
                                <h3 class="widget-title">Te Recomendamos</h3>
                                <ul>
                                %{--AQUI HACER ALGO DE RECOMENDADOS, SEA PARA EL USUARIO, POR MAYOR NÚMERO DE VISITAS O LO QUE SEA--}%
                                    <g:each in="${[0,1]}">
                                        <g:if test="${mercadeo?.toList()?.getAt(it)}">
                                            <li>
                                                <a href="${createLink(controller: 'post',action:'details',params: [id: mercadeo?.toList().get(it)?.id])}"><img src="${Media.findByPostAndIsMain( mercadeo?.toList().get(it),true)?.file?.ruta}" alt="" class="thumbnail"></a>
                                                <div class="recent_entry"><a href="${createLink(controller: 'post',action:'details',params: [id: mercadeo?.toList().get(it)?.id])}" class="link-name">${mercadeo?.toList().get(it)?.title}</a></div>
                                            </li>
                                        </g:if>
                                    </g:each>
                                </ul>
                            </div>
                            <!--/ widget featured entries -->
                        </li>

                        <li class="menu-level-1"><a href="#"><span>Autores</span></a>
                            <ul class="submenu-2">
                                <g:each in="${org.nest5.Category.findByAlias('mercadeo')?.posts?.collect{it.author}?.unique()}">
                                    <li class="menu-level-2"><a href="posts-grid.html"><span>${it}</span></a></li>
                                </g:each>
                            </ul>
                        </li>

                    </ul>
                </li>
                <li class="menu-level-0 mega-nav"><a href="#"><span>Emprendimiento</span></a>
                    <ul class="submenu-1">
                        <li class="menu-level-1 mega-nav-widget">
                            <!-- widget recent entries -->
                            <div class="widget-container widget_recent_entries">
                                <h3 class="widget-title">Lo último</h3>

                                <div class="mega-nav-widget-count"><em>${emprendimiento?.size()}</em></div>
                                <ul>
                                    <g:each in="${[0,1,2]}">
                                        <g:if test="${emprendimiento?.toList()?.getAt(it)}">
                                            <li><a href="${createLink(controller: 'post',action:'details',params: [id: emprendimiento?.toList().get(it)?.id])}" class="link-name">${emprendimiento?.toList()?.getAt(it).title}</a></li>
                                        </g:if>
                                    </g:each>
                                </ul>
                                <div class="more-nav"><a href="${createLink(controller: 'category',action: 'articles',params: [id: 'emprendimiento'])}">Ver todo en Emprendimiento</a></div>
                            </div>
                            <!--/ widget recent entries -->
                        </li>
                        <li class="menu-level-1 mega-nav-widget">
                            <!-- widget featured entries -->
                            <div class="widget-container widget_featured_posts">
                                <h3 class="widget-title">Te Recomendamos</h3>
                                <ul>
                                %{--AQUI HACER ALGO DE RECOMENDADOS, SEA PARA EL USUARIO, POR MAYOR NÚMERO DE VISITAS O LO QUE SEA--}%
                                    <g:each in="${[0,1]}">
                                        <g:if test="${emprendimiento?.toList()?.getAt(it)}">
                                            <li>
                                                <a href="${createLink(controller: 'post',action:'details',params: [id: emprendimiento?.toList().get(it)?.id])}"><img src="${Media.findByPostAndIsMain( emprendimiento?.toList().get(it),true)?.file?.ruta}" alt="" class="thumbnail"></a>
                                                <div class="recent_entry"><a href="${createLink(controller: 'post',action:'details',params: [id: emprendimiento?.toList().get(it)?.id])}" class="link-name">${emprendimiento?.toList().get(it)?.title}</a></div>
                                            </li>
                                        </g:if>
                                    </g:each>
                                </ul>
                            </div>
                            <!--/ widget featured entries -->
                        </li>

                        <li class="menu-level-1"><a href="#"><span>Autores</span></a>
                            <ul class="submenu-2">
                                <g:each in="${org.nest5.Category.findByAlias('emprendimiento')?.posts?.collect{it.author}?.unique()}">
                                    <li class="menu-level-2"><a href="posts-grid.html"><span>${it}</span></a></li>
                                </g:each>
                            </ul>
                        </li>

                    </ul>
                </li>
                <li class="menu-level-0 mega-nav"><a href="#"><span>Tecnología</span></a>
                    <ul class="submenu-1">
                        <li class="menu-level-1 mega-nav-widget">
                            <!-- widget recent entries -->
                            <div class="widget-container widget_recent_entries">
                                <h3 class="widget-title">Lo último</h3>

                                <div class="mega-nav-widget-count"><em>${tecnologia?.size()}</em></div>
                                <ul>
                                    <g:each in="${[0,1,2]}">
                                        <g:if test="${tecnologia?.toList()?.getAt(it)}">
                                            <li><a href="${createLink(controller: 'post',action:'details',params: [id: tecnologia?.toList().get(it)?.id])}" class="link-name">${tecnologia?.toList()?.getAt(it).title}</a></li>
                                        </g:if>
                                    </g:each>
                                </ul>
                                <div class="more-nav"><a href="${createLink(controller: 'category',action: 'articles',params: [id: 'tecnologia'])}">Ver todo en Tecnología</a></div>
                            </div>
                            <!--/ widget recent entries -->
                        </li>
                        <li class="menu-level-1 mega-nav-widget">
                            <!-- widget featured entries -->
                            <div class="widget-container widget_featured_posts">
                                <h3 class="widget-title">Te Recomendamos</h3>
                                <ul>
                                %{--AQUI HACER ALGO DE RECOMENDADOS, SEA PARA EL USUARIO, POR MAYOR NÚMERO DE VISITAS O LO QUE SEA--}%
                                    <g:each in="${[0,1]}">
                                        <g:if test="${tecnologia?.toList()?.getAt(it)}">
                                            <li>
                                                <a href="${createLink(controller: 'post',action:'details',params: [id: tecnologia?.toList().get(it)?.id])}"><img src="${Media.findByPostAndIsMain( tecnologia?.toList().get(it),true)?.file?.ruta}" alt="" class="thumbnail"></a>
                                                <div class="recent_entry"><a href="${createLink(controller: 'post',action:'details',params: [id: tecnologia?.toList().get(it)?.id])}" class="link-name">${tecnologia?.toList().get(it)?.title}</a></div>
                                            </li>
                                        </g:if>
                                    </g:each>
                                </ul>
                            </div>
                            <!--/ widget featured entries -->
                        </li>

                        <li class="menu-level-1"><a href="#"><span>Autores</span></a>
                            <ul class="submenu-2">
                                <g:each in="${org.nest5.Category.findByAlias('tecnologia')?.posts?.collect{it.author}?.unique()}">
                                    <li class="menu-level-2"><a href="posts-grid.html"><span>${it}</span></a></li>
                                </g:each>
                            </ul>
                        </li>

                    </ul>
                </li>
                <li class="menu-level-0"><a href="#"><span>interesante</span></a>
                    <ul class="submenu-1">
                        <li class="menu-level-2"><a href="about.html"><span>Sobre Lab5</span></a></li>
                        <li class="menu-level-2"><a href="contact.html"><span>Contacto</span></a></li>
                    </ul>
                </li>
                <li class="menu-level-0"><a href="#"><span>Publicidad</span></a>

                </li>





                <li class="menu-level-0 mega-nav"><a href="#"><span>Autores</span></a>
                    <ul class="submenu-1">
                        <li class="menu-level-1"><a href="#"><span>Noticias</span></a>
                            <ul class="submenu-2">
                                <g:each in="${org.nest5.Category.findByAlias('noticias')?.posts?.collect{it.author}?.unique()}">
                                    <li class="menu-level-2"><a href="posts-grid.html"><span>${it}</span></a></li>
                                </g:each>
                            </ul>
                        </li>
                        <li class="menu-level-1"><a href="#"><span>Mercadeo</span></a>
                            <ul class="submenu-2">
                                <g:each in="${org.nest5.Category.findByAlias('mercadeo')?.posts?.collect{it.author}?.unique()}">
                                    <li class="menu-level-2"><a href="posts-grid.html"><span>${it}</span></a></li>
                                </g:each>
                            </ul>
                        </li>
                        <li class="menu-level-1"><a href="#"><span>Emprendimiento</span></a>
                            <ul class="submenu-2">
                                <g:each in="${org.nest5.Category.findByAlias('emprendimiento')?.posts?.collect{it.author}?.unique()}">
                                    <li class="menu-level-2"><a href="posts-grid.html"><span>${it}</span></a></li>
                                </g:each>
                            </ul>
                        </li>
                        <li class="menu-level-1"><a href="#"><span>Tecnología</span></a>
                            <ul class="submenu-2">
                                <g:each in="${org.nest5.Category.findByAlias('tecnología')?.posts?.collect{it.author}?.unique()}">
                                    <li class="menu-level-2"><a href="posts-grid.html"><span>${it}</span></a></li>
                                </g:each>
                            </ul>
                        </li>
                        <li class="menu-level-1"><a href="#"><span>¿Quieres ser Autor?</span></a>
                            <ul class="submenu-2">

                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <div class="clear"></div>
        </nav>
        <!--/ topmenu -->

        <div class="topbar">
            <div class="top_share"><span class="social_title">Social</span> %{--<a href="#" class="social_google">Google +1</a>--}% <a href="#" class="social_fb">Facebook</a> <a href="#" class="social_twitter">Twitter</a> <a href="#" class="social_pinterest">Pinterest</a></div>

            <span class="top_filter"><a href="#" class="link_mostcomm">Lo más comentado</a> <a href="#" class="link_pick">Selección de la Editora</a> <a href="#" class="link_mostlike">Lo que más gusta</a> <a href="#" class="link_random">Artículo Aleatorio</a></span>
            <div class="clear"></div>
        </div>
    </div>

    <g:layoutBody/>

    <footer>
        <div class="container" style="background-image:url(${resource(dir: 'template/images',file: 'header_img_blue.jpg')}); background-color:#097bb6">

            <div class="footer_right">
                <ul class="botmenu">
                    <li><a href="about.html">SOBRE NOSOTROS</a></li>
                    <li><a href="#">AUTORES</a></li>
                    <li><a href="contact.html">CONTACTO</a></li>
                    <li><a href="advertise.html">PUBLICIDAD</a></li>
                    <li><a href="#">PRIVACIDAD</a></li>
                    <li><a href="#">TÉRMINOS</a></li>
                </ul>
            </div>

            <div class="footer_left">
                <img src="${resource(dir: 'images', file: 'Nest5_Labs_Logo_footer_2.png')}" width="230" height="50" alt="">
            </div>

            <div class="clear"></div>
        </div>
    </footer>

    </div>
		<g:javascript library="application"/>
		<r:layoutResources />
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-41111359-1', 'nest5.org');
        ga('send', 'pageview');

    </script>
    <script type="text/javascript">stLight.options({publisher: "3187d0cf-9482-4903-bb6b-5eb472175117", doNotHash: false, doNotCopy: false, hashAddressBar: true});</script>
    <script>
        var options={ "publisher": "3187d0cf-9482-4903-bb6b-5eb472175117", "logo": { "visible": true, "url": "http://www.nest5.org", "img": "http://www.nest5.org/static/images/Nest5_Labs_Logo_small2.png", "height": 45}, "ad": { "visible": false, "openDelay": "5", "closeDelay": "0"}, "livestream": { "domain": "http://www.nest5.org", "type": "sharethis", "src": "", "customColors": { "widgetBackgroundColor": "#FFFFFF", "articleLinkColor": "#006fbb"}}, "ticker": { "visible": true, "domain": "", "title": "Lo más compartido", "type": "sharethis", "src": "", "customColors": { "widgetBackgroundColor": "#4b5c4f", "articleLinkColor": "#FFFFFF"}}, "facebook": { "visible": false, "profile": "sharethis"}, "fblike": { "visible": true, "url": ""}, "twitter": { "visible": false, "user": "sharethis"}, "twfollow": { "visible": false, "url": "http://www.twitter.com/sharethis"}, "custom": [{ "visible": false, "title": "Custom 1", "url": "", "img": "", "popup": false, "popupCustom": { "width": 300, "height": 250}}, { "visible": false, "title": "Custom 2", "url": "", "img": "", "popup": false, "popupCustom": { "width": 300, "height": 250}}, { "visible": false, "title": "Custom 3", "url": "", "img": "", "popup": false, "popupCustom": { "width": 300, "height": 250}}], "chicklets": { "items": ["facebook", "twitter", "googleplus", "pinterest", "linkedin", "stumbleupon", "tumblr", "email", "sharethis"]}, "background": "#659671", "color": "#005a25", "arrowStyle": "light"};
        var st_bar_widget = new sharethis.widgets.sharebar(options);
    </script>
	</body>
</html>
