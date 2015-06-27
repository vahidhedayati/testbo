<%@ page import="ajaxdependancyselectexample.MyContinent" %>



<div class="fieldcontain ${hasErrors(bean: myContinentInstance, field: 'continentName', 'error')} required">
	<label for="continentName">
		<g:message code="myContinent.continentName.label" default="Continent Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="continentName" required="" value="${myContinentInstance?.continentName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: myContinentInstance, field: 'mycountry', 'error')} ">
	<label for="mycountry">
		<g:message code="myContinent.mycountry.label" default="Mycountry" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${myContinentInstance?.mycountry?}" var="m">
    <li><g:link controller="myCountry" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="myCountry" action="create" params="['myContinent.id': myContinentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'myCountry.label', default: 'MyCountry')])}</g:link>
</li>
</ul>


</div>

