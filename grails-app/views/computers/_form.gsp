<%@ page import="ajaxdependancyselectexample.Computers" %>



<div class="fieldcontain ${hasErrors(bean: computersInstance, field: 'department', 'error')} required">
	<label for="department">
		<g:message code="computers.department.label" default="Department" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="department" name="department.id" from="${ajaxdependancyselectexample.Departments.list()}" optionKey="id" required="" value="${computersInstance?.department?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: computersInstance, field: 'os', 'error')} ">
	<label for="os">
		<g:message code="computers.os.label" default="Os" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${computersInstance?.os?}" var="o">
    <li><g:link controller="os" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="os" action="create" params="['computers.id': computersInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'os.label', default: 'Os')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: computersInstance, field: 'pcName', 'error')} required">
	<label for="pcName">
		<g:message code="computers.pcName.label" default="Pc Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pcName" required="" value="${computersInstance?.pcName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: computersInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="computers.users.label" default="Users" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${computersInstance?.users?}" var="u">
    <li><g:link controller="users" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="users" action="create" params="['computers.id': computersInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'users.label', default: 'Users')])}</g:link>
</li>
</ul>


</div>

