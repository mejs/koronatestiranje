#!/bin/bash
bash google2geojsonHR.sh
bash google2geojsonEN.sh
bash google2geojsonDE.sh
git add korona.json
git add koronaEN.json
git add koronaDE.json
git commit -m "korona.json, koronaEN.json and koronaDE.json updated"
git push origin master
