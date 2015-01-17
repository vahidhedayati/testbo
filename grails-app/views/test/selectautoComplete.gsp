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

		<h1>Select then Auto complete</h1>
This provides a select box which then updates binding to an auto complete box, typically if lets say you have lots of cities and the return be pages and pages for a select box, you could use this function to simply choose country then let user auto complete the city
 <br><br>
 <div>
<g:render template="menu" />
<bo:connect user="${myuser}" job="job1122"  />


<form method=post action=example5>
<label>Continent:</label>

    
    
   <bo:selecta 
		user="${myuser}" job="job1122"

		id="MyContinent2" name="MyContinent2"
	
	
		selectToAutoComplete="true"
		
	
    	domain='ajaxdependancyselectexample.MyContinent'
    	searchField='continentName'
    	collectField='id'
    
    	domain2='ajaxdependancyselectexample.MyCountry'
    	bindid="mycontinent.id"
    	searchField2='countryName'
    	appendValue=''
    	appendName='Updated'
    	collectField2='id'

    	noSelection="['': 'Please choose Continent']" 
    	setId="MyCountry11"
    />
    
    
    	<bo:selecta 
		autoComplete="true" 
		job="job1122" 
		user="${myuser}"
		
		id="MyCountry11" 
		name="MyCountry11"
		
		
		
		domain2='ajaxdependancyselectexample.MyCity' 
		bindid="mycountry.id"
		searchField2='cityName' 
		collectField2='id' 
		setId="MyCity11" 
	/>
    
    
    
    

<input type=submit value=go> </form>


	</body>
	</html>
	
