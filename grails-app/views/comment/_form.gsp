<%@ page import="org.nest5.Comentario" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'alias', 'error')} ">
	<label for="alias">
		<g:message code="comment.alias.label" default="Alias" />
		
	</label>
	<g:textField name="alias" value="${commentInstance?.alias}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="comment.content.label" default="Content" />
		
	</label>
	<g:textField name="content" value="${commentInstance?.content}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="comment.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${commentInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="comment.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${commentInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'points', 'error')} required">
	<label for="points">
		<g:message code="comment.points.label" default="Points" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="points" type="number" value="${commentInstance.points}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'post', 'error')} required">
	<label for="post">
		<g:message code="comment.post.label" default="Post" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="post" name="post.id" from="${org.nest5.Post.list()}" optionKey="id" required="" value="${commentInstance?.post?.id}" class="many-to-one"/>
</div>

