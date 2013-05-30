<%@ page import="org.nest5.Media" %>
<!DOCTYPE html>
<html>
<head>

    <meta name="layout" content="main"/>

    <title>Lab5 by Nest5, Mercadeo para empresas, Emprendedores y Noticias del Medio</title>
    <meta name="description" content="Lab5 es un laboratorio by Nest5 en el cual informamos sobre lo último en mercadeo, recomendaciones para empresas y usuarios, noticias de emprendimientos y startUps que nacen en el ecosistema cercano a Nest5. Es una publicación para todos los interesados en dichos temas.">
    <meta name="keywords" content="Laboratorio de ideas, nest5, innovación, emprendimiento, ayuda emprendedores, ayuda mercadeo, mercadeo empresas pequeñas, mercadeo empresas, mercadeo básico">
    <link rel="image_src" href="${resource(dir: 'template/images',file: 'nest5org-lab5-superior.jpg')}"  />
    <link rel="canonical" href="http://www.nest5.org/about"/>
</head>
<body>
<div class="container">
    <!-- middle -->
    <div id="middle" class="cols2">

        <div class="title">
            <h1>Sobre Nosotros</h1>
        </div>

        <div class="content" role="main">

            <article class="post-detail post-page">
                <div class="entry">


                    <div class="frame_box">
                        <img src="https://s3.amazonaws.com/org.nest5.articles/team.jpg" width="620" height="346" alt="">
                    </div>

                    <p>En Nest5 somos un equipo multidisciplinario que comprende desde programadores hasta publicistas y especialistas en Mercadeo. Apasionados por las nuevas tendencias, la innovación pero sobretodo, el emprendimiento. Integrantes de nuestro equipo llevan más de 10 años haciendo parte del entonces pequeño,y ahora creciente mundo de los StartUps en Medellín, Colombia, con proyectos principalmente de base tecnológica.</p>
                    <blockquote>"El equipo de Nest5 busca ser lo más diverso y dinámico para conseguir un balance perfecto en la ejecución de los proyectos."</blockquote>

                    <p>Lab5 es un proyecto adjunto a Nest5 en que el equipo busca crear un espacio basado en una publicación digital que ayude tanto a personas que tienen que ver algo con el negocio de NEst5, como empresas y usuarios de la plataforma de fidelización, como a emprendedores y personas del común con consejos, artículos de emprendimiento y noticias que sirvan para ir un poco más allá.</p>
                    <p>Lab5 es un laboratorio de ideas e innovación, donde integrantes del equipo de Nest5, empresas, usuarios y emprendedores que demuesren lo merecen, podrán compartir experiencias, proyectos y difundir sus mensajes para un amplio público. </p>
                    <p>Si tienes una empresa y deseas aprender sobre mercadeo, como enamorar a tus cliente, estrategias de fidelización o como aumentar tus ventas, te invitamos a constantemente visitar nuestra sección de mercadeo.</p>
                    <p>Si eres emprendedor, y necesitas saber como empezar tu negocio, donde apoyarte y tips que te ayudarán a hacer el proceso más fácil, mantente alerta con nuestra sección de emprendimiento.</p>
                    <p>Para promocionar, difundir o escribir sobre tu empresa y que miles de potenciales usuarios vean tu Marca, producto o servicio, escríbenos, tenemos el espacio perfecto y totalmente abierto para tí.</p>
                    <p>Por último, para entusiastas de la tecnología, usuarios y aquel que simplemente queire ver un punto diferente de las cosas, aprender sobre lo que sucede en el mundo del emprendimiento y el mercadeo, tenemos las secciones de Noticias y Tecnología con lo último en estos campos.</p>
                    %{--<div class="row">
                        <div class="col col_1_2">
                            <div class="inner">
                                <img src="images/temp/entry_5.jpg" width="300" height="199" alt="">
                                <p>Casio is using low-power Bluetooth 4.0 in the GB-6900, which gives it incredible battery life compared with everyone else in the smart watch market. In fact, Casio quotes two years on a single CR2032 lithium coin. We only got 3-4 days of use out of <a href="#">Sony's SmartWatch</a> on a single charge, and Allerta's Pebble will need to be charged at least once a week. The GB-6900 lasts more than a hundred times longer. Unfortunately, Bluetooth 4.0 still isn’t that widespread in 2012, and Casio says this lack of compatible devices is keeping the GB–6900 Japan-only, at least for now. At this point, the company is only claiming compatibility with half a dozen Medias branded devices produced jointly by itself and NEC.</p>
                                <p>I asked Casio what was keeping it from expanding the lineup to reflect the recent announcement of <a href="#">Bluetooth 4.0 phones</a> in Japan, and it responded that while phones with Bluetooth 4.0 and the right profile should work in theory, it isn't adding any new devices to its compatibility list until they've been tested with the watch. Since both the iPhone 4S and new iPad have Bluetooth 4.0, I pressed to see if Casio. </p>
                            </div>
                        </div>

                        <div class="col col_1_2">
                            <div class="inner">
                                <img src="images/temp/entry_6.jpg" width="300" height="199" alt="">
                                <br>
                                <img src="images/temp/entry_7.jpg" width="300" height="199" alt="">
                                <span class="quote_center">BATTERY LIFE THAT'S MEASURED IN YEARS INSTEAD OF DAYS</span>

                            </div>
                        </div>

                    </div>--}%
                    <div class="clear"></div>




                    <div class="clear"></div>
                </div>


            </article>


        </div>
        <!--/ content -->

        <!-- sidebar -->
        <div class="sidebar">

        <!-- recent entries -->
        <div class="widget-container widget_recent_entries">
            <img src="${resource(dir: 'template/images/icons', file: 'icons_16_date.png')}" alt="" class="widget_icon">
            <h3 class="widget-title">Los Último Artículos</h3>
            <ul>
                <g:set var="latest" value="${org.nest5.Post.list().sort{it.date}}"/>
                <g:each in="${[0,1,2]}">
                    <g:if test="${latest?.get(it)}">
                        <li>
                            <a href="${createLink(controller: 'post',action: 'details', params: [id: latest?.get(it)?.id,header: latest?.get(it)?.address])}"><img src="${org.nest5.Media.findByPostAndIsMain(latest?.get(it),true)?.file?.ruta}" alt="" class="thumbnail"></a>
                            <div class="recent_entry"><a href="${createLink(controller: 'post',action: 'details', params: [id: latest?.get(it)?.id,header: latest?.get(it)?.address])}" class="link-name">${latest?.get(it)?.title}</a></div>
                        </li>
                    </g:if>
                </g:each>
                <li>


            </ul>
        </div>
        <!--/ recent entries -->

            <!-- widget_tag_cloud -->
            <div class="widget-container widget_tag_cloud">
                <img src="${resource(dir:'template/images/icons', file: 'icons_16_tag.png')}" alt="" class="widget_icon">
                <h3 class="widget-title">Tags</h3>
                <div class="tagcloud">
                    <a href='#' class='tag-link-4' title='2 topics' style='font-size: 10pt;'>Tecnology</a>
                    <a href='#' class='tag-link-7' title='3 topics' style='font-size: 15pt;'>Tablets</a>
                    <a href='#' class='tag-link-3' title='2 topics' style='font-size: 10pt;'>MIcrosoft</a>
                    <a href='#' class='tag-link-6' title='3 topics' style='font-size: 17pt;'>Rumor</a>
                    <a href='#' class='tag-link-5' title='2 topics' style='font-size: 10pt;'>Appolo</a>
                    <a href='#' class='tag-link-5' title='2 topics' style='font-size: 13pt;'>Games</a>
                    <a href='#' class='tag-link-5' title='2 topics' style='font-size: 15pt;'>HTC</a>
                    <a href='#' class='tag-link-5' title='2 topics' style='font-size: 12pt;'>Fashion</a>
                    <a href='#' class='tag-link-4' title='2 topics' style='font-size: 10pt;'>Gosip</a>
                    <a href='#' class='tag-link-4' title='2 topics' style='font-size: 17pt;'>Windows Mobile</a>
                    <a href='#' class='tag-link-4' title='2 topics' style='font-size: 13pt;'>Reviews</a>
                    <a href='#' class='tag-link-4' title='2 topics' style='font-size: 13pt;'>Downloads</a>
                    <a href='#' class='tag-link-4' title='2 topics' style='font-size: 15pt;'>Software</a>
                    <a href='#' class='tag-link-4' title='2 topics' style='font-size: 13pt;'>Mobile</a>
                    <a href='#' class='tag-link-4' title='2 topics' style='font-size: 17pt;'>Report</a>
                    <a href='#' class='tag-link-4' title='2 topics' style='font-size: 13pt;'>Nokia</a>
                </div>
            </div>
            <!--/ widget_tag_cloud -->

        </div>
        <!--/ sidebar -->


    </div>
    <!--/ middle -->
</div>
<!--/ container -->
</body>
</html>
