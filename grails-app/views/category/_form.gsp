<%@ page import="org.nest5.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="category.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${categoryInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'alias', 'error')} ">
    <label for="alias">
        <g:message code="category.alias.label" default="Alias" />

    </label>
    <g:textField name="alias" value="${categoryInstance?.alias}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="category.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${categoryInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'posts', 'error')} ">
	<label for="posts">
		<g:message code="category.posts.label" default="Posts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoryInstance?.posts?}" var="p">
    <li><g:link controller="post" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="post" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'post.label', default: 'Post')])}</g:link>
</li>
</ul>

</div>

