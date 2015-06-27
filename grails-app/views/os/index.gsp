
<%@ page import="ajaxdependancyselectexample.Os" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'os.label', default: 'Os')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-os" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-os" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="os.computers.label" default="Computers" /></th>
					
						<g:sortableColumn property="osName" title="${message(code: 'os.osName.label', default: 'Os Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${osInstanceList}" status="i" var="osInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${osInstance.id}">${fieldValue(bean: osInstance, field: "computers")}</g:link></td>
					
						<td>${fieldValue(bean: osInstance, field: "osName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${osInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
