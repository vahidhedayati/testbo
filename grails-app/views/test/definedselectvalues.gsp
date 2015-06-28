<g:render template="menu"/>
 <% def myuser = bo.randomizeUser('user': 'random1') %>
 
<bo:connect
user="${myuser }"
job="job12"

 />

 
  Europe / UK / London / (Shop 2: Cat)
   <form  action="example5">    
   <!--  user1="${bo.randomizeUser('user': 'random1') }" -->
<bo:selecta id="MyContinent22" name="MyContinent2"
job= "job12"

user="${myuser }"
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
    setId="MyCountry111"
    
    value="2"
    nextValue="1" 
    
    />






<bo:selecta id="MyCountry111" name="MyCountry11"
job= "job12"
user="${myuser}"
	domain2='ajaxdependancyselectexample.MyCity'
    bindid="mycountry.id"
    searchField2='cityName'
    collectField2='id'
    
    
     appendValue=''
     appendName='Updated'

    
    noSelection="['': 'Please choose Continent']" 
    setId="MyCity111"
value="1" 
    nextValue="2" 
    />





    <bo:selecta name="MyCity11" id="MyCity111"  
    job= "job12"
user="${myuser }"    
    
    domain2='ajaxdependancyselectexample.MyShops'
    bindid="mycity.id"
    searchField2='shopName'
    collectField2='id'
    appendValue=''
    appendName='Updated'
   
 
    setId="MyShop122"
	noSelection="['': 'Please choose Country 1111']" 
	value="2"
	nextValue="2"
	/>



    <g:select name="MyShop12" id="MyShop122"  
    optionKey="id" optionValue="shopName" 
    from="[]" required="required" noSelection="['': 'Please choose City']" 
    />
    

    <input type=submit value=go>  
    </form>
