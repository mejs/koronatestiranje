koronatestiranje mapa lokacija centara za COVID PCR i antigensko testiranje u Republici Hrvatskoj
=====================================

Napomena: ovo je vrlo štura početna verzija dokumentacije projekta. Za više detalja posjetite [Medium post](https://medium.com/@vladimirvince/o-koronatestiranje-com-mapi-covid-testnih-centara-u-rh-d7bd3bce14eb). 

Ovaj projekt pokazuje lokacije centara za COVID testiranje PCR i antigenskim testovima u RH. 

![Mapa](/img/map.png)

Izvor za lokacije je Službena stranica Vlade za pravodobne i točne informacije o koronavirusu (https://koronavirus.hr), osim u slučajevima kad lokacije nisu dostupne na službenoj stranici, ali su neovisno potvrđene. U tom slučaju, izvor je web stranica ili info telefon institucije.

Glavni izvor: [Svi testni centri u Republici Hrvatskoj (koronavirus.hr)](https://www.koronavirus.hr/svi-testni-centri-u-republici-hrvatskoj/763).

![Sheets](/img/sheets.png)

Podaci su u Google Sheets tablici koja je javno dostupna kao json file: https://spreadsheets.google.com/feeds/list/1OAdAQKxZ2kn-_oAX23uBmhMEvHY5w-j7JCwCaPazVTM/2/public/values?alt=json \
Vodič koji sam koristio za publishanje Google Sheetsa kao json: https://www.freecodecamp.org/news/cjn-google-sheets-as-json-endpoint/

Workflow (treba updateati) 
- U spreadsheet se stavljaju provjereni podaci
- Adrese se pretvaraju u koordinate Geocode skriptom
- Koristim "query" komandu da kopiram podatke u sekundarni Sheet koji je publishan u json formatu (ovo je potrebno zbog naziva varijabli: name	Latitude	Longitude	description)
- description se sastoji od vrlo jednostavne formule koja sastavlja podatke u dugačak string. Zbog konverzije u geojson koristim zareze umjesto novih redova (\n) zato jer google2geojson.shh skripta ne može razumijeti nove redove unutar varijable
- Pokrećem updategeojson.sh skriptu koja pokreće google2geojson.sh (pretvara live json file s GSheeta u geojson format i updatea file korona.json), te zatim automatski commita github.
- Novi json file se commita u GitHub repository, na kojem se nalazi i čitava stranica (trenutno se sastoji isključivo od statičnog html indexa)
- Sama mapa koristi Umap servis koji je baziran na OpenStreetMapu i omogućava spajanje na geojson feedove. Umap je spojen na korona.json file i automatski se updatea pri pomaku mape. Ako se mijenja lokacija već postojećeg centra, ponekad treba ručno obrisati cache.
- Mapa je zatim embeddana na web stranicu. I to je sve!
