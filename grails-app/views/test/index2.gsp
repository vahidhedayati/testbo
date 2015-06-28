<g:render template="menu"/>


<bo:connect
user="randomUser2"
job="job2"

 />

  
  
   <form  action="example5">    
    
<bo:selecta id="MyContinent2" name="MyContinent2"

job= "job2"
user="randomUser2"
domainDepth="0"
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






<bo:selecta id="MyCountry11" name="MyCountry11"
job= "job2"
user="randomUser2"
domainDepth="0"
	domain2='ajaxdependancyselectexample.MyCity'
    bindid="mycountry.id"
    searchField2='cityName'
    collectField2='id'
    
    formatting="JSON"
     appendValue=''
     appendName='Updated'
    
    
    noSelection="['': 'Please choose Continent']" 
    setId="MyCity11"
    />





    <bo:selecta name="MyCity11" id="MyCity11"  
    job= "job2"
user="randomUser2"
    
    domainDepth="0"
    domain2='ajaxdependancyselectexample.MyShops'
    bindid="mycity.id"
    searchField2='shopName'
    collectField2='id'
    appendValue=''
    appendName='Updated'
   formatting="JSON"
    
    setId="MyShop12"
	noSelection="['': 'Please choose Country 1111']" 
	/>



    <g:select name="MyShop12" id="MyShop12"  
    optionKey="id" optionValue="shopName" 
    from="[]" required="required" noSelection="['': 'Please choose City']" 
    />
    

    <input type=submit value=go>  
    </form>
