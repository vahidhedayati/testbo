<%@ page import="ajaxdependancyselectexample.MyCountry" %>



<div class="fieldcontain ${hasErrors(bean: myCountryInstance, field: 'ccode', 'error')} required">
	<label for="ccode">
		<g:message code="myCountry.ccode.label" default="Ccode" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ccode" required="" value="${myCountryInstance?.ccode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: myCountryInstance, field: 'countryName', 'error')} required">
	<label for="countryName">
		<g:message code="myCountry.countryName.label" default="Country Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="countryName" required="" value="${myCountryInstance?.countryName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: myCountryInstance, field: 'language', 'error')} required">
	<label for="language">
		<g:message code="myCountry.language.label" default="Language" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="language" required="" value="${myCountryInstance?.language}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: myCountryInstance, field: 'mycity', 'error')} ">
	<label for="mycity">
		<g:message code="myCountry.mycity.label" default="Mycity" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${myCountryInstance?.mycity?}" var="m">
    <li><g:link controller="myCity" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="myCity" action="create" params="['myCountry.id': myCountryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'myCity.label', default: 'MyCity')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: myCountryInstance, field: 'mycontinent', 'error')} required">
	<label for="mycontinent">
		<g:message code="myCountry.mycontinent.label" default="Mycontinent" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="mycontinent" name="mycontinent.id" from="${ajaxdependancyselectexample.MyContinent.list()}" optionKey="id" required="" value="${myCountryInstance?.mycontinent?.id}" class="many-to-one"/>

</div>

