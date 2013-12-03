
<%@ page import="org.nest5.Comentario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comment.label', default: 'Comentario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-comment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-comment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list comment">
			
				<g:if test="${commentInstance?.alias}">
				<li class="fieldcontain">
					<span id="alias-label" class="property-label"><g:message code="comment.alias.label" default="Alias" /></span>
					
						<span class="property-value" aria-labelledby="alias-label"><g:fieldValue bean="${commentInstance}" field="alias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="comment.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${commentInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="comment.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${commentInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="comment.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${commentInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.points}">
				<li class="fieldcontain">
					<span id="points-label" class="property-label"><g:message code="comment.points.label" default="Points" /></span>
					
						<span class="property-value" aria-labelledby="points-label"><g:fieldValue bean="${commentInstance}" field="points"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.post}">
				<li class="fieldcontain">
					<span id="post-label" class="property-label"><g:message code="comment.post.label" default="Post" /></span>
					
						<span class="property-value" aria-labelledby="post-label"><g:link controller="post" action="show" id="${commentInstance?.post?.id}">${commentInstance?.post?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${commentInstance?.id}" />
					<g:link class="edit" action="edit" id="${commentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
