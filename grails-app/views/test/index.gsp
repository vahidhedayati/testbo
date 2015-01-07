
<g:render template="menu"/>
<boselecta:connect
user="randomUser"
job="job1"
message="Woot we are connected"
 />

   <form  action="example5">
  
  
<boselecta:selectPrimary id="MyCountry1" name="MyCountry1"
job= "job1"
user="randomUser"
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
value='1'
secondaryValue='2'
/>
<g:select name="MyCity1" id="MyCity1" optionKey="id" optionValue="cityName" from="[]" required="required" noSelection="['': 'Please choose Country']" />
<input type=submit value=go> 
</form>