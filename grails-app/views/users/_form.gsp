<%@ page import="ajaxdependancyselectexample.Users" %>



<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'computers', 'error')} required">
	<label for="computers">
		<g:message code="users.computers.label" default="Computers" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="computers" name="computers.id" from="${ajaxdependancyselectexample.Computers.list()}" optionKey="id" required="" value="${usersInstance?.computers?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="users.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${usersInstance?.userName}"/>

</div>

