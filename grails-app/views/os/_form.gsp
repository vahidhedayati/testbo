<%@ page import="ajaxdependancyselectexample.Os" %>



<div class="fieldcontain ${hasErrors(bean: osInstance, field: 'computers', 'error')} required">
	<label for="computers">
		<g:message code="os.computers.label" default="Computers" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="computers" name="computers.id" from="${ajaxdependancyselectexample.Computers.list()}" optionKey="id" required="" value="${osInstance?.computers?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: osInstance, field: 'osName', 'error')} required">
	<label for="osName">
		<g:message code="os.osName.label" default="Os Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="osName" required="" value="${osInstance?.osName}"/>

</div>

