<%@ page import="ajaxdependancyselectexample.MyContinent" %>
<%@ page import="ajaxdependancyselectexample.MyCountry" %>
<%@ page import="ajaxdependancyselectexample.MyCity" %>


<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'myContinent.label', default: 'MyContinent')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	
		
		
	<body>
	<a href="#create-myContinent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

	
<boselecta:connect
user="randomUser3"
job="job3"
message="Woot we are connected"
 />
	



<form method=post action=example5>
	
	<boselecta:selectPrimary id="MyDepartments" name="MyDepartments"
	job= "job3"
user="randomUser3"
        domain='ajaxdependancyselectexample.Departments'
        searchField='name'
        collectField='id'
        noSelection="['': 'Please choose Department']" 
        
        domain2='ajaxdependancyselectexample.Employee'
        bindid="department.id"
        searchField2='name'
        collectField2='id'
        setId="employeeID"
      

		domain3='ajaxdependancyselectexample.Documents'
        bindid3="department.id"
        searchField3='name'
        collectField3='id'
        setId3="documentsId"
 />

<g:select name="employee" id="employeeID" optionKey="id" optionValue="name" from="[]" required="required" noSelection="['': 'Please choose department']" />
<g:select name="document" id="documentsId" optionKey="id" optionValue="name" from="[]" required="required" noSelection="['': 'Please choose department	']" />

<input type=submit value=go>  
    </form>




    	</body>
	</html>
