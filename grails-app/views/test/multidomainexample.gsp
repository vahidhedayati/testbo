
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'myContinent.label', default: 'MyContinent')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	
		
		
	<body>
	<a href="#create-myContinent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<g:render template="menu"/>
	
<bo:connect
		job= "job6"
user="randomUser6"

 />
	


<form method=post action=example5>
	
	<bo:selecta2 id="MyDepartments141" name="MyDepartments141"
	
		job= "job6"
		user="randomUser6"

		domainDepth="4"
		
        domain='ajaxdependancyselectexample.Departments'
        searchField='name'
        collectField='id'
        noSelection="['': 'Please choose Department']"
        
         
        appendValue=''
		appendName='Updated'

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

        
        
        value=''/>

<g:select name="employee" id="employeeID141" optionKey="id" optionValue="name" from="[]" required="required" noSelection="['': 'Please choose department']" />
<g:select name="document" id="documentsId141" optionKey="id" optionValue="name" from="[]" required="required" noSelection="['': 'Please choose department	']" />






<bo:selecta2 id="computersId141" name="computersId141"
	job= "job6"
	
	user="randomUser6"
	domainDepth="3"

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
    
    value="${params.computersId141}"/>


<g:select name="Os" id="Os13" optionKey="id" optionValue="pcName" from="[]" required="required" noSelection="['': 'Please choose Computer	']" />
<g:select name="users" id="userId13" optionKey="id" optionValue="userName" from="[]" required="required" noSelection="['': 'Please choose computer']" />

<input type=submit value=go>  
    </form>





    	</body>
	</html>
