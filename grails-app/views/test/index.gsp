
<g:render template="menu"/>
<bo:connect
user="${myuser }"
job="job1"

 />

   <form  action="example5">
  
  
<bo:selecta id="MyCountry1" name="MyCountry1"
job= "job1"
user="${myuser }"
domainDepth="0"
formatting="JSON"
domain='ajaxdependancyselectexample.MyCountry'
searchField='countryName'
collectField='id'
domain2='ajaxdependancyselectexample.MyCity'
bindid="mycountry.id"
searchField2='cityName'
collectField2='id'
appendValue=''
appendName='Updated'
    noSelection="['': 'Please choose Continent']" 

 setId="MyCity1"
/>
<g:select name="MyCity1" id="MyCity1" optionKey="id" optionValue="cityName" from="[]" required="required" noSelection="['': 'Please choose Country']" />
<input type=submit value=go> 
</form>