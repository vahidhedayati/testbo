


<g:render template="menu" />
<bo:connect user="${myuser}" job="job2" message="Woot we are connected" />



<form action="example5">

	<bo:selecta 
		autoComplete="true" 
		autoCompletePrimary="true"
		
	autoCompleteToSelect="true"
			
		job="job2" 
		user="${myuser}"
		
		id="MyContinent2" 
		name="MyContinent2" 
		

		
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
   
	/>





	<input type=submit value=go>
</form>
