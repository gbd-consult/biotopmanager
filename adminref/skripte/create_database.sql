-- Installation der Datenbank Biotopkataster als Benutzer postgres in DB postgres
-- Wichtig: Vorher im Skript PASSWORTE anpassen

-- # Administrator biotope_admin erstellen

CREATE ROLE biotope_admin WITH
 LOGIN
 SUPERUSER
 INHERIT
 CREATEDB
 CREATEROLE
 REPLICATION
 PASSWORD 'biotope_admin';

-- Kommentar ergänzen

COMMENT ON ROLE biotope_admin 
  IS 'Administrator Biotopkataster Datenbank biotope';

-- # Gruppenrolle biotope_editor erstellen

CREATE ROLE biotope_editor WITH
 NOSUPERUSER
 INHERIT
 NOCREATEDB
 NOCREATEROLE
 NOREPLICATION;

-- Kommentar ergänzen

COMMENT ON ROLE biotope_editor 
  IS 'Bearbeiter Gruppenrolle Biotopkataster Datenbank biotope';

-- Datenbank ``biotope`` erzeugen mit Eigentümer biotope_admin 

CREATE DATABASE biotope 
 WITH OWNER = biotope_admin;

-- Kommentar ergänzen

COMMENT ON DATABASE biotope IS 'DB Biotopkataster';

