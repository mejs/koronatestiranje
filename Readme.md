koronatestiranje mapa lokacija centara za COVID PCR testiranje u Republici Hrvatskoj
=====================================

Ovaj projekt pokazuje lokacije centara za COVID testiranje PCR testom u RH. 

![Mapa](/img/map.png)

Izvor za lokacije je Službena stranica Vlade za pravodobne informacije o koronavirusu (https://koronavirus.hr), osim u slučajevima kad lokacije nisu dostupne na službenoj stranici, ali su neovisno potvrđene. U tom slučaju, izvor informacije je naveden.

Glavni izvor: [Svi testni centri u Republici Hrvatskoj (koronavirus.hr)](https://www.koronavirus.hr/svi-testni-centri-u-republici-hrvatskoj/763).

![Sheets](/img/sheets.png)

Podaci su u Google Sheets tablici koja je javno dostupna kao json file: https://spreadsheets.google.com/feeds/list/1OAdAQKxZ2kn-_oAX23uBmhMEvHY5w-j7JCwCaPazVTM/2/public/values?alt=json \
Vodič koji sam koristio za publishanje Google Sheetsa kao json: https://www.freecodecamp.org/news/cjn-google-sheets-as-json-endpoint/

Workflow (treba updateati) \
- U spreadsheet se stavljaju provjereni podaci
- Adrese se pretvaraju u koordinate Geocode skriptom
- Pokrećem updategeojson.sh skriptu koja pretvara live json file s GSheeta u geojson format i updatea file korona.json. Zatim se github commita.
- Umap je spojen na korona.json file i automatski se update pri pomaku mape. Ako se mijenja lokacija već postojećeg centra, ponekad treba ručno obrisati cache.
