<%@ page import="org.nest5.Media" %>
<!doctype html>

<head>
    <meta name="layout" content="main"/>

<title>Nest5 Labs, El Blog - ${postInstance?.title}</title>
<meta name="description" content="${postInstance?.content.substring(0,250)}">
<meta name="keywords" content="${postInstance?.tags}">

</head>
<body>  




    
<div class="container"> 
<!-- middle -->
<div id="middle" class="cols2">
	
    <div class="title">
    	<h1>${postInstance?.title}</h1>
        <div class="post-meta">
	    	<span class="tags"><g:each in="${tags}" status="i" var="tag"><a href="#">${tag.trim()}</a> </g:each></span>
	        Escrito por <a href="#" class="author">${postInstance?.author.email}</a> <span class="separator">|</span> <a href="#comments" class="anchor">256 Comentarios</a> <span class="separator">|</span> en <a href="posts-list.html">${postInstance?.category?.name}</a>
	    </div>
    </div>  
    
    <div class="content" role="main">
       
    	<article class="post-detail">            
			<div class="entry">
            
            
	            <div class="frame_box">
	            <img src="${Media.findByPostAndIsMain(postInstance,true).file.ruta}" width="569" height="351" alt="">
	            </div>

            	<div class="row">
                	<div class="col col_1_2">
                    	<div class="inner">
                        	<div class="adv_300"><img src="${resource(dir: 'template/images/temp',file:'adv_300x250.png')}" width="300" height="250" alt=""></div>
                        </div>
                    </div>
                    <div class="col col_1_2">
                    	<div class="inner">
                        	<div class="adv_300"><img src="${resource(dir: 'template/images/temp',file:'adv_300x250.png')}" width="300" height="250" alt=""></div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            
            <div class="adv_300 alignleft"><img src="${resource(dir: 'template/images/temp',file:'adv_300x250.png')}" width="300" height="250" alt=""></div>
            <p>${postInstance?.content}</p>

            <p><span class="quote_right">Surface: PC makers offer no comment as reports conflict on when Microsoft gave them the news</span> HP and Acer declined to offer statements on Microsoft's product plans or its implications for the Windows 8 tablet market. Dell, however, noted that Microsoft was &quot;an important partner&quot; for the company and that it would be delivering Windows 8 tablets of its own later in the year. Lenovo toed the same line, though a company representative did state that its selection of Android and Windows-based tablets put it in a &quot;very strong position&quot; to win &quot;against all comers.&quot;</p>


            <!-- adv: 468x60 center -->
            <div class="adv_content">
           		<div class="adv_468"><img src="${resource(dir: 'template/images/temp',file:'adv_468x60.png')}" width="468" height="60" alt=""></div>
            </div>
            <!--/ adv: 468x60 center -->


            <div class="clear"></div>            
            </div>
            
            	<!-- author description -->
                <div class="author-box">
                    <div class="author-description">
                		<div class="author-image"><img src="${resource(dir: 'template/images/temp',file:'author_image.jpg')}" alt=""><span class="author">Sobre ${postInstance?.author.name.split(" ")[0]}</span></div>
                      	<div class="author-text">
                            <p>${postInstance?.author?.bio} </p>
                        </div>
                        <div class="clear"></div>
                	</div>        
                </div>
                <!--/ author description -->
                
        </article>
        
        %{--<!-- post comments -->
					<div class="comment-list" id="comments">
                           
                        	<h2>256 Readers Commented</h2>
                            
                            <a href="#addcomments" class="link-add-comment anchor">Join discussion</a>
                            
                            <ol>
								<li class="comment">
                                
                                    <div class="comment-body">
                                    <div class="comment-avatar">
                                    	<div class="avatar"><img src="${resource(dir: 'template/images/temp',file:'gavatar_1.jpg')}" alt=""></div>
                                    </div>    
                                    <div class="comment-text">
                                    	<div class="comment-author">
                                        	<a href="#" class="link-author">Bogdan</a> <a href="#" class="link-reply">Reply</a> <span class="comment-date">on May 25, 2012</span>
                                        </div>
                                        <div class="comment-entry">
                                        Britain’s phone hacking claimed another casualty on Monday when Yates, the deputy of an London’s Metropolitan Police, resigned a day after the country’s top police officer quit and Rebekah Brooks, the former chief executive of Rupert Murdoch’s News International end
                                      </div>
                                    </div>
                                    <div class="clear"></div>
                                    </div>
                                    
                                    <!-- comment reply -->
                                    <ul class="children">
                                        <li class="comment">
                                            <div class="comment-body">
                                                <div class="comment-avatar">
                                                    <div class="avatar"><img src="${resource(dir: 'template/images/temp',file:'gavatar_2.jpg')}" alt=""></div>
                                                </div> 
                                                <div class="comment-text">
                                                	<div class="comment-author">
			                                        <span class="link-author">Dimi Baitanciuc</span> <a href="#addcomment" class="link-reply">reply</a> <span class="comment-date">on June 2, 2012</span>
			                                        </div>
                                                    <div class="comment-entry">
                                                    Rebekah Brooks, the former chief executive of Rupert Murdoch’s News International was arrested on suspicion of illegally intercepting phone calls and bribing the police.
                                                    </div>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                            
                                    		
                                        </li>
                                        
                                    </ul>
                                    <!--/ comment reply -->
                                </li>
                                
                                <li class="comment">
                                    <div class="comment-body">
                                
                                    <div class="comment-avatar">
                                    	<div class="avatar"><img src="images/temp/gavatar_3.jpg" alt=""></div>
                                    </div> 
                                    <div class="comment-text">
                                   		<div class="comment-author">
			                            	<a href="#" class="link-author">Sergiu Bagrin</a> <span class="isauthor">Author</span> <a href="#addcomment" class="link-reply">reply</a> <span class="comment-date">on June 8, 2012</span>
			                            </div>                                        
                                        <div class="comment-entry">
                                        Britain’s phone hacking claimed another casualty on Monday when Yates, the deputy of London’s Metropolitan Police, resigned a day after the country’s top police officer quit and 
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    </div>
                                </li>
                                
                                <li class="comment">
                                    <div class="comment-body">
                                
                                    <div class="comment-avatar">
                                    	<div class="avatar"><img src="images/temp/gavatar_4.jpg" alt=""></div>
                                    </div> 
                                    <div class="comment-text">
                                   		<div class="comment-author">
			                            	<a href="#" class="link-author">Superman</a> <a href="#addcomment" class="link-reply">reply</a> <span class="comment-date">on June 23, 2012</span>
			                            </div>                                        
                                        <div class="comment-entry">
                                        Monday when Yates, the deputy of an London’s Metropolitan Police, resigned a day after the country’s top police officer quit and Rebekah Brooks, the former CEO
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    </div>
                                </li>
                                
                            </ol>
                        </div>
				<!--/ post comments -->--}%
                
                <!-- add comment -->
                        <div class="add-comment" id="addcomments">
                            <h3>¿Quieres participar?</h3>
                            
                            <div class="comment-form">
                            <form action= "#" method="post" id="commentForm">
                                
                                <div class="row field_text alignleft">
                                    <label class="label_title"><strong>Npmbre</strong></label>
                                    <input type="text" name="name" value="" class="inputtext input_middle required">
                                </div>
                                
                                <div class="row field_text alignleft omega">
                                    <label class="label_title"><strong>Email</strong> (nunca se mostrará)</label>
                                    <input type="text" name="email" value="" class="inputtext input_middle required">
                                </div>
								
                                <div class="clear"></div>   
                                
                                <div class="row field_text">
                                    <label class="label_title"><strong>Sitio Web</strong></label>
                                    <input type="text" name="url" value="" class="inputtext input_full">
                                </div>                                
                                
                                <div class="row field_textarea">
                                    <label class="label_title"><strong>Comentario</strong></label>
                                    <textarea cols="30" rows="10" name="message" class="textarea textarea_middle required"></textarea>
                                </div>
                                
                                <div class="row rowSubmit">
                                <input type="submit" value="¡Dilo!" class="btn-submit">
                                </div>
                            </form>
                            </div>
                        </div>
                <!--/add comment -->
        
	</div>
    <!--/ content -->
    
    <!-- sidebar -->
    <div class="sidebar">

		<!-- recent entries -->
    	<div class="widget-container widget_recent_entries">
        	<img src="${resource(dir: 'template/images/icons', file: 'icons_16_date.png')}" alt="" class="widget_icon">
			<h3 class="widget-title">Latest Headlines</h3>
                <ul>
                    <li>
                        <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file:'post_thumb_1.jpg')}" alt="" class="thumbnail"></a>
                        <div class="recent_entry"><a href="post-details.html" class="link-name">What Today’s Video Games Say About The Moment We Live In</a></div>
                    </li>
                    <li>
                        <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file:'post_thumb_2.jpg')}" alt="" class="thumbnail"></a>
                        <div class="recent_entry"><a href="post-details.html" class="link-name">Nike Twitter campaign banned in the UK after Wayne Rooney tweet breaks advertising rules</a></div>
                    </li>
                    <li>
                        <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file:'post_thumb_3.jpg')}" alt="" class="thumbnail"></a>
                        <div class="recent_entry"><a href="post-details.html" class="link-name">Google threatens site that rips YouTube music videos into MP3s</a></div>
                    </li>
                    <li>
                        <a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file:'post_thumb_4.jpg')}" alt="" class="thumbnail"></a>
                        <div class="recent_entry"><a href="post-details.html" class="link-name">Google bots detect 9,500 new malicious websites every day</a></div>
                    </li>
				</ul>
        </div>
    	<!--/ recent entries -->
        
        <!-- posts with thumbs -->
        <div class="widget-container postThumbs">
        	
            <img src="${resource(dir: 'template/images/icons',file:'icons_16_latest.png')}" alt="" class="widget_icon">
			<h3 class="widget-title">Latest Reviews</h3>
            
            	<div class="postThumbs-container">                
                            <div class="post-slide">	
                            	<div class="score_box">7,5 <span>our score</span></div>                    		                        	
			                	<div class="post-image">
			                    	<a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file:'post_thumb_4.jpg')}" width="78" height="78" alt=""></a>
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
			                    	<a href="post-details.html"><img src="images/temp/post_thumb_3.jpg" width="78" height="78" alt=""></a>
			                   	  	<div class="post-cat"><span>Reviews</span></div>                                  
			                  	</div>
				            	<div class="post-title">				            	
							    	<h2><a href="post-details.html">Google Glasses patent hints at speech-to-text display for deaf users</a></h2>                        
							    </div>	                        
				                <div class="post-meta"><a href="#" class="author">Bogdan Condurache </a> <span class="separator">|</span> <a href="#">9 Comments</a></div>
				        	</div>
	    		</div>                          
	    </div>  
	    <!--/ posts with thumbs -->
        
        <!-- widget_tag_cloud -->
        <div class="widget-container widget_tag_cloud">
        	<img src="${resource(dir: 'template/images/icons',file:'icons_16_tag.png')}" alt="" class="widget_icon">
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
        
       		<div class="adv_300"><img src="${resource(dir: 'template/images/temp',file:'ads_300x250.jpg')}" width="300" height="250" alt=""></div>
            
            <div class="adv_250"><img src="${resource(dir: 'template/images/temp',file:'adv_250x250.png')}" width="250" height="250" alt=""></div>
            
            <div class="adv_250"><img src="${resource(dir: 'template/images/temp',file:'adv_250x250.png')}" width="250" height="250" alt=""></div>
            
        	<div class="adv_125_box">
	            <div class="adv_125"><img src="${resource(dir: 'template/images/temp',file:'adv_125x125.png')}" width="125" height="125" alt=""></div>
			    <div class="adv_125"><img src="${resource(dir: 'template/images/temp',file:'adv_125x125.png')}" width="125" height="125" alt=""></div>
			    <div class="adv_125"><img src="${resource(dir: 'template/images/temp',file:'adv_125x125.png')}" width="125" height="125" alt=""></div>
	      		<div class="adv_125"><img src="${resource(dir: 'template/images/temp',file:'adv_125x125.png')}" width="125" height="125" alt=""></div>
                <div class="clear"></div>
            </div>
            
            <div class="adv_160"><img src="${resource(dir: 'template/images/temp',file:'adv_160x600.png')}" width="160" height="600" alt=""></div>
                    
    </div>
    <!--/ sidebar -->
    
    <div class="divider"></div>
    
    <!-- grid layout, 3 cols -->
            <div class="posts_layout grid_layout">
            
            	<div class="post-item title-over">	                    		                        	
                	<div class="post-image">
                    	<a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file:'post_3_1.jpg')}" width="300" height="192" alt=""></a>
                   	  	<div class="post-cat"><span>Reviews</span></div>
                        <div class="score_box">5 <span>our score</span></div>
                  	</div>
	            	<div class="post-title">				            	
				    	<h2><a href="post-details.html">Hands-on: app lets you Bump smartphone pics to your computer</a></h2>                        
				    </div>	                        
	                <div class="post-meta"><a href="#" class="author">Dimi Baitanciuc</a> <span class="separator">|</span> <a href="#">15 Comments</a></div>	              
	        	</div>
                
                <div class="post-item title-over">	                    		                        	
                	<div class="post-image">
                    	<a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file:'post_3_2.jpg')}" width="300" height="192" alt=""></a>
                   	  	<div class="post-cat"><span>Technology</span></div>                        
                  	</div>
	            	<div class="post-title">				            	
				    	<h2><a href="post-details.html">Google Glasses patent hints at speech-to-text display for deaf users</a></h2>                        
				    </div>	                        
	                <div class="post-meta"><a href="#" class="author">Bogdan Condurache </a> <span class="separator">|</span> <a href="#">9 Comments</a></div>
	        	</div>
                
                <!-- post with slider -->
                	<div class="post-item postThumbs postSliderThumbs">
	                
		                <div class="postThumbs-container" id="postSlider2">
		                	
                            <div class="post-slide">	  
                            	<div class="score_box">6,4 <span>our score</span></div>                  		                        	
			                	<div class="post-image">
			                    	<a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file:'post_thumb_1.jpg')}" width="78" height="78" alt=""></a>
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
			                    	<a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file:'post_thumb_2.jpg')}" width="78" height="78" alt=""></a>
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
			                    	<a href="post-details.html"><img src="${resource(dir: 'template/images/temp',file:'post_thumb_3.jpg')}" width="78" height="78" alt=""></a>
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
        	
</div>
<!--/ middle --> 
</div>
<!--/ container --> 


</body>
</html>