#!/bin/bash
bash google2geojsonHR.sh
git add korona.json
git commit -m "korona.json and koronaEN.json updated"
git push origin master
