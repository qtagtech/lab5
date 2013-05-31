<%@ page import="org.nest5.Post" %>



<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="post.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${org.nest5.Category.list()}" optionKey="id" required="" value="${postInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="post.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${postInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="post.content.label" default="Content" />
		
	</label>
    <textarea id="wysiwyg" class="full wysiwyg" name="content"></textarea>

    %{--<g:textArea rows="20" cols="50" name="content" value="${postInstance?.content}"/>--}%
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'published', 'error')} ">
	<label for="published">
		<g:message code="post.published.label" default="Published" />
		
	</label>
	<g:checkBox name="published" value="${postInstance?.published}" />
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'tags', 'error')} ">
	<label for="tags">
		<g:message code="post.tags.label" default="Tags" />
		
	</label>
	<g:textField name="tags" value="${postInstance?.tags}"/>
</div>



<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="post.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${postInstance?.date}"  />
</div>




<g:hiddenField name="archivos" id="archivos" value=""/>

</div>

<script>
    $(document).ready(function(){
        $(".wysiwyg").val('${postInstance?.intro.decodeHTML()}'+'-----'+'${(postInstance?.content.decodeHTML())}');
    });
</script>

