<g:render template="menu"/>
<bo:connect
user="randomUser2"
job="job2"

 />

  
  Europe / UK / London / (Shop 2: Cat)
   <form  action="example5">    
   
<bo:selecta id="MyContinent2" name="MyContinent2"
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
formatting="JSON"
    
    noSelection="['': 'Please choose Continent']" 
    setId="MyCountry131"
    
    value="2"
    nextValue="1" 
    
    />






<bo:selecta id="MyCountry131" name="MyCountry11"
job= "job2"
user="randomUser2"
	domain2='ajaxdependancyselectexample.MyCity'
    bindid="mycountry.id"
    searchField2='cityName'
    collectField2='id'
    
    
     appendValue=''
     appendName='Updated'
    
    formatting="JSON"
    noSelection="['': 'Please choose Continent']" 
    setId="MyCity131"
value="1" 
    nextValue="2" 
    />





    <bo:selecta name="MyCity11" id="MyCity131"  
    job= "job2"
user="randomUser2"
  
    
    domain2='ajaxdependancyselectexample.MyShops'
    bindid="mycity.id"
    searchField2='shopName'
    collectField2='id'
    appendValue=''
    appendName='Updated'
   
    formatting="JSON"
    
    setId="MyShop132"
	noSelection="['': 'Please choose Country 1111']" 
	value="2"
	nextValue="2"
	/>



    <g:select name="MyShop12" id="MyShop132"  
    optionKey="id" optionValue="shopName" 
    from="[]" required="required" noSelection="['': 'Please choose City']" 
    />
    

    <input type=submit value=go>  
    </form>
