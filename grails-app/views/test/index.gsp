
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
setId1="MyCity0"

setId2="MyCity2"
setId3="MyCity3"
domain3='ajaxdependancyselectexample.MyCity3'

setId4="MyCity4"
domain4='ajaxdependancyselectexample.MyCity4'
setId5="MyCity5"
domain5='ajaxdependancyselectexample.MyCity5'
setId6="MyCity6"
domain6='ajaxdependancyselectexample.MyCity6'

value='1'
secondaryValue='2'
/>
<g:select name="MyCity1" id="MyCity1" optionKey="id" optionValue="cityName" from="[]" required="required" noSelection="['': 'Please choose Country']" />
<input type=submit value=go> 
</form>