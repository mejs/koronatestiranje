#!/bin/bash
bash google2geojsonEN.sh
git add korona-EN.json
git commit -m "koronaEN.json updated"
git push origin master
