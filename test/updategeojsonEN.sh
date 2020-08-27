#!/bin/bash
bash google2geojsonEN.sh
git add korona-test.json
git commit -m "koronaEN-test.json updated"
git push origin master
