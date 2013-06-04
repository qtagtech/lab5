<%@ page import="org.nest5.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'jwysiwyg', file: 'jquery.wysiwyg.css')}" type="text/css" />

	</head>
	<body>
		<a href="#create-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-post" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${postInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${postInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>

			</g:form>
            <form name="file_upload_form" id="file_upload_form" action="#" enctype="multipart/form-data" style="">
                <input type="file" id="fileselect" name="fileselect[]" />
                <input type="hidden" name="pareja" value="${parejaInstance?.id}" />
                <input type="hidden" name="position" value="" id="positionField" />

            </form>
		</div>

    <r:script>
    $(document).ready(function(){


        $("#fileselect").change(function(){


            uploadFile();


        });




        // file selection
       function uploadFile()
       {
           var formData = new FormData($('#file_upload_form')[0]);
           $.ajax({
               url: '${createLink(controller: 'myupload', action: 'upload')}', //server script to process data
               type: 'POST',
               xhr: function() {  // custom xhr
                   myXhr = $.ajaxSettings.xhr();
                   if(myXhr.upload){ // check if upload property exists
                       // for handling the progress of the upload
                       myXhr.upload.addEventListener('progress',progressHandlingFunction, false);
                   }
                   return myXhr;
               },
               success: function(result)
               {
                   //console.log($.ajaxSettings.xhr().upload);
                   //alert(result);
                   if(result.success)
                   {
                     //$("#image_"+result.position).attr('src',result.ruta);
                    //alert("Subida con éxito");
                    var val = $("#archivos").val();
                    alert(result.fileId);
                    val += result.fileId+"_";
                    $("#archivos").val(val);
                    $("#file_upload_form").append('<img src="'+result.ruta+'" width="300px" height=300px />');

                   }


               },
               // Form data
               data: formData,
               //Options to tell JQuery not to process data or worry about content-type
               cache: false,
               contentType: false,
               processData: false
           });


       }
        function progressHandlingFunction(e){
            if(e.lengthComputable){
//            console.log("Porcentaje: "+e.loaded+"/"+e.total);
//                $("#progress").text(e.loaded + " / " e.total);

            var perc = (e.loaded / e.total) * 100;
            console.log(perc);

            }
        }



        $('#wysiwyg').wysiwyg({
                controls: {
                    strikeThrough : { visible : true },
                    underline     : { visible : true },

                    separator00 : { visible : true },

                    justifyLeft   : { visible : true },
                    justifyCenter : { visible : true },
                    justifyRight  : { visible : true },
                    justifyFull   : { visible : true },

                    separator01 : { visible : true },

                    indent  : { visible : true },
                    outdent : { visible : true },

                    separator02 : { visible : true },

                    subscript   : { visible : true },
                    superscript : { visible : true },

                    separator03 : { visible : true },

                    undo : { visible : true },
                    redo : { visible : true },

                    separator04 : { visible : true },

                    insertOrderedList    : { visible : true },
                    insertUnorderedList  : { visible : true },
                    insertHorizontalRule : { visible : true },

                    h4mozilla : { visible : true && $.browser.mozilla, className : 'h4', command : 'heading', arguments : ['h4'], tags : ['h4'], tooltip : "Header 4" },
                    h5mozilla : { visible : true && $.browser.mozilla, className : 'h5', command : 'heading', arguments : ['h5'], tags : ['h5'], tooltip : "Header 5" },
                    h6mozilla : { visible : true && $.browser.mozilla, className : 'h6', command : 'heading', arguments : ['h6'], tags : ['h6'], tooltip : "Header 6" },

                    h4 : { visible : true && !( $.browser.mozilla ), className : 'h4', command : 'formatBlock', arguments : ['<H4>'], tags : ['h4'], tooltip : "Header 4" },
                    h5 : { visible : true && !( $.browser.mozilla ), className : 'h5', command : 'formatBlock', arguments : ['<H5>'], tags : ['h5'], tooltip : "Header 5" },
                    h6 : { visible : true && !( $.browser.mozilla ), className : 'h6', command : 'formatBlock', arguments : ['<H6>'], tags : ['h6'], tooltip : "Header 6" },

                    separator07 : { visible : true },

                    cut   : { visible : true },
                    copy  : { visible : true },
                    paste : { visible : true }
                }
            });




    });
    </r:script>



    <script type="text/javascript" src="${resource(dir: 'jwysiwyg', file: 'jquery.wysiwyg.js')}"></script>

	</body>
</html>
