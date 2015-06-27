
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'myContinent.label', default: 'MyContinent')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	
		
		
	<body>


<g:render template="menu" />
<bo:connect user="${myuser}" job="job2"/>



<form action="example5">

	<bo:selecta 
		autoComplete="true" 
		autoCompletePrimary="true"
		job="job2" 
		user="${myuser}"
		
		
		id="MyContinent2" 
		name="MyContinent2" 
		
		hiddenField="VahidHidden_"
		jsonField="VahidJSON_"

		formatting="JSON"
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
		autoComplete="true" 
		job="job2" 
		user="${myuser}"
		
		id="MyCountry11" 
		name="MyCountry11"
		
		hiddenField="NextHidden_"
		jsonField="NextJSON_"
		
		formatting="JSON"
		domain2='ajaxdependancyselectexample.MyCity' 
		bindid="mycountry.id"
		searchField2='cityName' 
		collectField2='id' 
		setId="MyCity11" 
	/>





	<bo:selecta
		job="job2" 
		user="${myuser}" 
	 
		autoComplete="true"
	 formatting="JSON"
		name="MyCity11" 
		id="MyCity11"
		hiddenField="myHidden_"
		jsonField="myJSON_"
	
		domain2='ajaxdependancyselectexample.MyShops' 
		bindid="mycity.id"
		searchField2='shopName' 
		collectField2='id' 
		setId="secondarySearch4"
	/>


<label>Borough:</label>
<bo:selecta 
 	job= "job121"
	user="${myuser }"

	autoComplete="true"
formatting="JSON"
hiddenField="myHidden_"
		jsonField="myJSON_"


	id="secondarySearch4"  
	name="NAMEOFBorough"  

	domain2='ajaxdependancyselectexample.MyBorough' 
	bindid='myborough' 

	searchField='actualName' 
	collectField='id' 

	value=''
/>


	<input type=submit value=go>
</form>
</body>
</html>
