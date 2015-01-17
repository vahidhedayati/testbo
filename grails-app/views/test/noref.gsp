<g:render template="menu"/>
<bo:connect
user="randomUser12111"
job="job1211"

 />

	<form method=post action=example5>
	
        <bo:selecta id="MyContinent2" name="MyContinent2"
        user="randomUser12111"
job="job1211"
            domain='ajaxdependancyselectexample.MyContinent'
            searchField='continentName'
            collectField='id'

            domain2='ajaxdependancyselectexample.MyCountry'
            bindid="mycontinent.id"
            searchField2='countryName'
            collectField2='id'
            
            appendValue='*'
            appendName='All Items'
            
            noSelection="['': 'Please choose Continent']"
            setId="MyCountry11"
            value=''/>

        <bo:selecta id="MyCountry11" name="MyCountry11"
                user="randomUser12111"
job="job1211"
            domain2='ajaxdependancyselectexample.MyCity'
            bindid="mycountry.id"
            searchField2='cityName'
            collectField2='id'

            noSelection="['': 'Please choose Continent']"
            setId="MyCity11"
            
            appendValue='*'
            appendName='All Items'
            
            value=''/>

       <bo:selecta id="MyCity11" name="MyCity11"
                user="randomUser12111"
job="job1211"
            domain='ajaxdependancyselectexample.MyCity'
            bindid="myborough"
        	searchField='cityName'
            collectField='id'

            domain2='ajaxdependancyselectexample.MyBorough'
            searchField2='actualName'
            collectField2='id'

            noSelection="['': 'Please choose City']"
            setId="MyBorough11"
            
            appendValue='*'
            appendName='All Items'
            
            value=''/>

            <g:select name="MyBorough11" id="MyBorough11" 
            optionKey="id" optionValue="name"
            from="[]" required="required"  noSelection="['': 'Please choose City']" />
        <br> <input type=submit value=go> </form>
        