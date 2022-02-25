-- Aufbau des Datenbankmodells Biotopkataster als Benutzer biotope_admin in DB biotope
-- Vorher Eintrag in pg_hba.conf eintragen
-- # TYPE  DATABASE  USER            METHOD
-- local   biotope   biotope_admin   md5
-- USAGE: cat create_datamodell.sql | psql -U biotope_admin biotope -W

-- PostGIS Erweiterung laden

CREATE EXTENSION postgis;

-- Schemas historie erstellen

CREATE SCHEMA historie AUTHORIZATION biotope_admin;
GRANT ALL ON SCHEMA historie TO biotope_admin;
GRANT USAGE ON SCHEMA historie TO biotope_editor;

-- SCHEMA referenzen

CREATE SCHEMA referenzen AUTHORIZATION biotope_admin;
GRANT ALL ON SCHEMA referenzen TO biotope_admin;
GRANT USAGE ON SCHEMA referenzen TO biotope_editor;

-- SCHEMA biotope

CREATE SCHEMA biotope AUTHORIZATION biotope_admin;
GRANT ALL ON SCHEMA biotope TO biotope_admin;
GRANT USAGE ON SCHEMA biotope TO biotope_editor;

