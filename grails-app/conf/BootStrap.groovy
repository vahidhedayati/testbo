import ajaxdependancyselectexample.MyCity
import ajaxdependancyselectexample.MyContinent
import ajaxdependancyselectexample.MyCountry

class BootStrap {

    def init = { servletContext ->
		
		
		// Create continents
		def n1=MyContinent.findOrSaveWhere(continentName: 'Asia')
		def n2=MyContinent.findOrSaveWhere(continentName: 'Europe')
		
		// Create countries and provde continent map value as above defs
		def c1 = MyCountry.findOrSaveWhere(mycontinent: n2, countryName:'United Kingdom',ccode:'GB',language:'En')
		def c2 = MyCountry.findOrSaveWhere(mycontinent: n2, countryName:'France',ccode:'FR',language:'Fr')
		def c3 = MyCountry.findOrSaveWhere(mycontinent: n1, countryName:'China',ccode:'CN',language:'Zr')
		def c4 = MyCountry.findOrSaveWhere(mycontinent: n1, countryName:'India',ccode:'IN',language:'Hi')
		
		
		// Create cities bind them to the country map and define some to then set up further relationship
		MyCity.findOrSaveWhere(mycountry:c1,cityName:'Manchester')
		
		def cc1=MyCity.findOrSaveWhere(mycountry:c1,cityName:'London')
		
		def cc2=MyCity.findOrSaveWhere(mycountry:c1,cityName:'Oxford')
		
		MyCity.findOrSaveWhere(mycountry:c2,cityName:'Paris')
		def cc5=MyCity.findOrSaveWhere(mycountry:c2,cityName:'Lyon')
		def cc6=MyCity.findOrSaveWhere(mycountry:c2,cityName:'Nice')
   
		MyCity.findOrSaveWhere(mycountry:c3,cityName:'Beijing')
		MyCity.findOrSaveWhere(mycountry:c3,cityName:'Shanghai')
		MyCity.findOrSaveWhere(mycountry:c3,cityName:'Wuhu')
		
		MyCity.findOrSaveWhere(mycountry:c4,cityName:'Adilabad')
		MyCity.findOrSaveWhere(mycountry:c4,cityName:'Bairgania')
		MyCity.findOrSaveWhere(mycountry:c4,cityName:'Chatra')
		
		
		
    }
    def destroy = {
    }
}
