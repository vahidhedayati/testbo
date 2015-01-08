<g:render template="menu"/>
<boselecta:connect
user="randomUser2"
job="job2"
message="Woot we are connected"
 />

  
  
   <form  action="example5">    
    
<boselecta:selectPrimary id="MyContinent2" name="MyContinent2"
job= "job2"
user="randomUser2"
    domain='ajaxdependancyselectexample.MyContinent'
    searchField='continentName'
    collectField='id'
    
    domain2='ajaxdependancyselectexample.MyCountry'
    bindid="mycontinent.id"
    searchField2='countryName'
    appendValue=''
    appendName='Updated'
    collectField2='id'

    hidden="hiddenNew"
    noSelection="['': 'Please choose Continent']" 
    setId="MyCountry11"
    value="2"
    />






<boselecta:selectSecondary id="MyCountry11" name="MyCountry11"
job= "job2"
user="randomUser2"
	domain2='ajaxdependancyselectexample.MyCity'
    bindid="mycountry.id"
    searchField2='cityName'
    collectField2='id'
    
    
     appendValue=''
     appendName='Updated'
    
    
    noSelection="['': 'Please choose Continent']" 
    setId="MyCity11"
     value="1"
    />





    <boselecta:selectSecondary name="MyCity11" id="MyCity11"  
    job= "job2"
user="randomUser2"
    optionKey="id" optionValue="name"
    
    
    domain2='ajaxdependancyselectexample.MyShops'
    bindid="mycity.id"
    searchField2='shopName'
    collectField2='id'
    appendValue=''
    appendName='Updated'
   
    
    setId="MyShop12"
	noSelection="['': 'Please choose Country 1111']" 
	 value="2"
	/>



    <g:select name="MyShop12" id="MyShop12"  
    optionKey="id" optionValue="shopName" 
    from="[]" required="required" noSelection="['': 'Please choose City']" 
    />
    

    <input type=submit value=go>  
    </form>
