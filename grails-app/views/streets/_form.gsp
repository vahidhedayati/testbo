<%@ page import="ajaxdependancyselectexample.Streets" %>



<div class="fieldcontain ${hasErrors(bean: streetsInstance, field: 'localborough', 'error')} required">
	<label for="localborough">
		<g:message code="streets.localborough.label" default="Localborough" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="localborough" name="localborough.id" from="${ajaxdependancyselectexample.MyBorough.list()}" optionKey="id" required="" value="${streetsInstance?.localborough?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: streetsInstance, field: 'streetName', 'error')} required">
	<label for="streetName">
		<g:message code="streets.streetName.label" default="Street Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="streetName" required="" value="${streetsInstance?.streetName}"/>

</div>

