#!/bin/bash
bash google2geojsonHR.sh
bash google2geojsonEN.sh
git add korona.json
git add koronaEN.json
git commit -m "korona.json and koronaEN.json updated"
git push origin master
