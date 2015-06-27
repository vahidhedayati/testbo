
<%@ page import="ajaxdependancyselectexample.Computers" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'computers.label', default: 'Computers')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-computers" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-computers" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="computers.department.label" default="Department" /></th>
					
						<g:sortableColumn property="pcName" title="${message(code: 'computers.pcName.label', default: 'Pc Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${computersInstanceList}" status="i" var="computersInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${computersInstance.id}">${fieldValue(bean: computersInstance, field: "department")}</g:link></td>
					
						<td>${fieldValue(bean: computersInstance, field: "pcName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${computersInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
