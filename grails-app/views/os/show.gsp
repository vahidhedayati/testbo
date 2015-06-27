
<%@ page import="ajaxdependancyselectexample.Os" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'os.label', default: 'Os')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-os" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-os" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list os">
			
				<g:if test="${osInstance?.computers}">
				<li class="fieldcontain">
					<span id="computers-label" class="property-label"><g:message code="os.computers.label" default="Computers" /></span>
					
						<span class="property-value" aria-labelledby="computers-label"><g:link controller="computers" action="show" id="${osInstance?.computers?.id}">${osInstance?.computers?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${osInstance?.osName}">
				<li class="fieldcontain">
					<span id="osName-label" class="property-label"><g:message code="os.osName.label" default="Os Name" /></span>
					
						<span class="property-value" aria-labelledby="osName-label"><g:fieldValue bean="${osInstance}" field="osName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:osInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${osInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
