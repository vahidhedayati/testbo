
<%@ page import="ajaxdependancyselectexample.Computers" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'computers.label', default: 'Computers')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-computers" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-computers" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list computers">
			
				<g:if test="${computersInstance?.department}">
				<li class="fieldcontain">
					<span id="department-label" class="property-label"><g:message code="computers.department.label" default="Department" /></span>
					
						<span class="property-value" aria-labelledby="department-label"><g:link controller="departments" action="show" id="${computersInstance?.department?.id}">${computersInstance?.department?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${computersInstance?.os}">
				<li class="fieldcontain">
					<span id="os-label" class="property-label"><g:message code="computers.os.label" default="Os" /></span>
					
						<g:each in="${computersInstance.os}" var="o">
						<span class="property-value" aria-labelledby="os-label"><g:link controller="os" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${computersInstance?.pcName}">
				<li class="fieldcontain">
					<span id="pcName-label" class="property-label"><g:message code="computers.pcName.label" default="Pc Name" /></span>
					
						<span class="property-value" aria-labelledby="pcName-label"><g:fieldValue bean="${computersInstance}" field="pcName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${computersInstance?.users}">
				<li class="fieldcontain">
					<span id="users-label" class="property-label"><g:message code="computers.users.label" default="Users" /></span>
					
						<g:each in="${computersInstance.users}" var="u">
						<span class="property-value" aria-labelledby="users-label"><g:link controller="users" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:computersInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${computersInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
