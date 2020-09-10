#!/bin/bash
bash google2geojsonDE.sh
git add koronaDE.json
git commit -m "koronaDE.json updated"
git push origin master
