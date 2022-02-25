#!/bin/bash
# USAGE: bash IMPORT.sh &> /tmp/biotopmanager.log

cat create_database.sql | psql
cat create_datamodell.sql | PGPASSWORD=biotope_admin psql -U biotope_admin biotope
cat create_biotope_schema.sql | PGPASSWORD=biotope_admin psql -U biotope_admin biotope
#bash import_biotopdaten.sh /tmp/Biotop_25833_all.geojson
cat create_referenzen_schema.sql | PGPASSWORD=biotope_admin psql -U biotope_admin biotope
cat update_biotopdaten.sql | PGPASSWORD=biotope_admin psql -U biotope_admin biotope
cat create_historie_schema.sql | PGPASSWORD=biotope_admin psql -U biotope_admin biotope
cat update_biotope_admin.sql | PGPASSWORD=biotope_admin psql -U biotope_admin biotope
cat update_biotope_editor.sql | PGPASSWORD=biotope_admin psql -U biotope_admin biotope
