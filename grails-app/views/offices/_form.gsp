<%@ page import="ajaxdependancyselectexample.Offices" %>



<div class="fieldcontain ${hasErrors(bean: officesInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="offices.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${officesInstance?.name}"/>

</div>

