#!/bin/bash
# Import Biotopdaten mit ogr2ogr
# USAGE: bash import_biotopdaten.sh </pfad/zu/biotop_25833_all.geojson>

ogr2ogr -lco OVERWRITE=YES -progress -nln biotope -lco SCHEMA=biotope \
-nlt PROMOTE_TO_MULTI -geomfield wkb_geometry \
-f "PostgreSQL" PG:"dbname=biotope user=biotope_admin password=biotope_admin" ${1}
