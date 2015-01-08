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
        filter3="L"
        filterType3="S"
        value=''/>

<g:select name="employee" id="employeeID" optionKey="id" optionValue="name" from="[]" required="required" noSelection="['': 'Please choose department']" />
<g:select name="document" id="documentsId" optionKey="id" optionValue="name" from="[]" required="required" noSelection="['': 'Please choose department	']" />

<input type=submit value=go>  
    </form>



<h1>Example4:  Multi domain dependency call to domain3 and domain4 with domain4 then having its own multi depenency relatiobship</h1><br><br>

Please note only the first computer from each initial department selected has any further values.

<form method=post action=example5>
	
	<boselecta:selectPrimary id="MyDepartments141" name="MyDepartments141"
		job= "job6"
user="randomUser6"
        domain='ajaxdependancyselectexample.Departments'
        searchField='name'
        collectField='id'
        noSelection="['': 'Please choose Department']" 
        
        domain2='ajaxdependancyselectexample.Employee'
        bindid="department.id"
        searchField2='name'
        collectField2='id'
        setId="employeeID141"
      

		domain3='ajaxdependancyselectexample.Documents'
        bindid3="department.id"
        searchField3='name'
        collectField3='id'
        setId3="documentsId141"
        
        domain4='ajaxdependancyselectexample.Computers'
        bindid4="department.id"
        searchField4='pcName'
        collectField4='id'
        setId4="computersId141"

        
        
        />

<g:select name="employee" id="employeeID141" optionKey="id" optionValue="name" from="[]" required="required" noSelection="['': 'Please choose department']" />
<g:select name="document" id="documentsId141" optionKey="id" optionValue="name" from="[]" required="required" noSelection="['': 'Please choose department	']" />






<boselecta:selectSecondary id="computersId141" name="computersId141"
		job= "job6"
user="randomUser6"
	domain2='ajaxdependancyselectexample.Os'
    bindid="computers.id"
    searchField2='osName'
    collectField2='id'
    setId="Os13"
    
    domain3='ajaxdependancyselectexample.Users'
    bindid3="computers.id"
    searchField3='userName'
    collectField3='id'
    setId3="userId13"
    
  

    
     appendValue=''
     appendName='Updated'
    
    
    noSelection="['': 'Please choose Department']" 
    
    />


<g:select name="Os" id="Os13" optionKey="id" optionValue="pcName" from="[]" required="required" noSelection="['': 'Please choose Computer	']" />
<g:select name="users" id="userId13" optionKey="id" optionValue="userName" from="[]" required="required" noSelection="['': 'Please choose computer']" />

<input type=submit value=go>  
    </form>



    	</body>
	</html>
