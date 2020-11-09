#!/bin/bash
bash google2geojsonHR.sh
bash google2geojsonEN.sh
bash google2geojsonDE.sh
bash google2geojsonIT.sh
git add korona.json
git add koronaEN.json
git add koronaDE.json
git add koronaIT.json
git commit -m "korona.json, koronaEN.json, koronaDE.json and koronaIT.json updated"
git push origin master
