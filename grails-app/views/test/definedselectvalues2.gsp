<g:render template="menu"/>
<bo:connect
user="${myuser ?: 'notworking' }"
job="job212"

 />

  Asia / India 	/ chatra
  
   <form  action="example5">    
   
<bo:selecta id="MyContinent2" name="MyContinent2"
job= "job212"
user="${myuser ?: 'notworking' }"
    domain='ajaxdependancyselectexample.MyContinent'
    searchField='continentName'
    collectField='id'
  formatting="JSON"  
    domain2='ajaxdependancyselectexample.MyCountry'
    bindid="mycontinent.id"
    searchField2='countryName'
    appendValue=''
    appendName='Updated'
    collectField2='id'

    noSelection="['': 'Please choose Continent']" 
    setId="MyCountry11"
    
    value="1"
    nextValue="4" 
    
    />






<bo:selecta id="MyCountry11" name="MyCountry11"
job= "job212"
user="${myuser ?: 'notworking' }"
	domain2='ajaxdependancyselectexample.MyCity'
    bindid="mycountry.id"
    searchField2='cityName'
    collectField2='id'
    formatting="JSON"
    
     appendValue=''
     appendName='Updated'
    
    
    noSelection="['': 'Please choose Continent']" 
    setId="MyCity11"
value="4" 
    nextValue="12" 
    />





    <bo:selecta name="MyCity11" id="MyCity11"  
    job= "job212"
user="${myuser ?: 'notworking' }"
    optionKey="id" optionValue="name"
    
    formatting="JSON"
    domain2='ajaxdependancyselectexample.MyShops'
    bindid="mycity.id"
    searchField2='shopName'
    collectField2='id'
    appendValue=''
    appendName='Updated'
   
    
    setId="MyShop125"
	noSelection="['': 'Please choose Country 1111']" 
	value="12"

	/>



    <g:select name="MyShop12" id="MyShop125"  
    optionKey="id" optionValue="shopName" 
    from="[]" required="required" noSelection="['': 'Please choose City']" 
    />
    

    <input type=submit value=go>  
    </form>
