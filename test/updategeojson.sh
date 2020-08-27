#!/bin/bash
bash google2geojson.sh
bash google2geojsonEN.sh
git add korona-test.json
git add korona-testEN.json
git commit -m "korona-test and korona-test.json updated"
git push origin master
