
<%@ page import="org.nest5.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-post" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list post">
			
				<g:if test="${postInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="post.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="category" action="show" id="${postInstance?.category?.id}">${postInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="post.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${postInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="post.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${postInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.published}">
				<li class="fieldcontain">
					<span id="published-label" class="property-label"><g:message code="post.published.label" default="Published" /></span>
					
						<span class="property-value" aria-labelledby="published-label"><g:formatBoolean boolean="${postInstance?.published}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.tags}">
				<li class="fieldcontain">
					<span id="tags-label" class="property-label"><g:message code="post.tags.label" default="Tags" /></span>
					
						<span class="property-value" aria-labelledby="tags-label"><g:fieldValue bean="${postInstance}" field="tags"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="post.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:link controller="user" action="show" id="${postInstance?.author?.id}">${postInstance?.author?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="post.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${postInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="post.comments.label" default="Comments" /></span>
					
						<g:each in="${postInstance.comments}" var="c">
						<span class="property-value" aria-labelledby="comments-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.media}">
				<li class="fieldcontain">
					<span id="media-label" class="property-label"><g:message code="post.media.label" default="Media" /></span>
					
						<g:each in="${postInstance.media}" var="m">
						<span class="property-value" aria-labelledby="media-label"><g:link controller="media" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${postInstance?.id}" />
					<g:link class="edit" action="edit" id="${postInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
