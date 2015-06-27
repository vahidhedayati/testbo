

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'myContinent.label', default: 'MyContinent')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	
		
		
	<body>

<g:render template="menu" />
<bo:connect user="${myuser}" job="job2"  />



<form action="example5">

	<bo:selecta 
		autoComplete="true" 
		autoCompletePrimary="true"
		
	autoCompleteToSelect="true"
			
		job="job2" 
		user="${myuser}"
		
		id="MyContinent2" 
		name="MyContinent2" 
		  appendValue=''
     appendName='Updated'

		
		domain='ajaxdependancyselectexample.MyContinent'
		searchField='continentName' 
		collectField='id'
		
		domain2='ajaxdependancyselectexample.MyCountry'
		bindid="mycontinent.id" 
		searchField2='countryName' 
		collectField2='id'
		 
		setId="MyCountry11" 
	/>






	<bo:selecta 
	
	
		job="job2" 
		user="${myuser}"
		
		id="MyCountry11" 
		name="MyCountry11"

	domain2='ajaxdependancyselectexample.MyCity'
    bindid="mycountry.id"
    searchField2='cityName'
    collectField2='id'
    
    
     appendValue=''
     appendName='Updated'
    
    
    noSelection="['': 'Please choose Continent']" 
    setId="MyCity11"
	/>





    <bo:selecta name="MyCity11" id="MyCity11"  
   job="job2" 
		user="${myuser}"
    optionKey="id" optionValue="name"
    
    
    domain2='ajaxdependancyselectexample.MyShops'
    bindid="mycity.id"
    searchField2='shopName'
    collectField2='id'
    appendValue=''
    appendName='Updated'
   
    
    setId="MyShop12"
	noSelection="['': 'Please choose Country 1111']" 
	/>



    <g:select name="MyShop12" id="MyShop12"  
    optionKey="id" optionValue="shopName" 
    from="[]" required="required" noSelection="['': 'Please choose City']" 
    />

	<input type=submit value=go>
</form>
</body>
</html>
