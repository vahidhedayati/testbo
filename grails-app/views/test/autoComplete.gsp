


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
	 
		name="MyCity11" 
		id="MyCity11"
	
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
