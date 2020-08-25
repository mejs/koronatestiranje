#!/bin/bash
bash google2geojson.sh
git add korona-test.json
git commit -m "korona-test.json updated"
git push origin master
