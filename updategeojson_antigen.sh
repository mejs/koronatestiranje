#!/bin/bash
bash google2geojson_antigen.sh
git add korona_antigen.json
git commit -m "korona_antigen.json updated"
git push origin master
