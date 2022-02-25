-- # Notwendige Anpassung nach Import der Daten in die Tabelle biotope.biotope

-- # Transformiere die Datumsfelder, Flaeche und Umfang
-- # Speicher Referenzen aus nicht mehr benötigten Tabellen
ALTER TABLE biotope.biotope ALTER COLUMN bearbeitung_wann TYPE TIMESTAMP using to_timestamp(bearbeitung_wann, 'DD.MM.YYYY');
ALTER TABLE biotope.biotope ALTER COLUMN erfassung_wann TYPE TIMESTAMP using to_timestamp(erfassung_wann, 'DD.MM.YYYY');
ALTER TABLE biotope.biotope ALTER COLUMN loeschung_wann TYPE TIMESTAMP using to_timestamp(loeschung_wann, 'DD.MM.YYYY');
ALTER TABLE biotope.biotope ALTER COLUMN bekanntmachung_wann TYPE TIMESTAMP using to_timestamp(bekanntmachung_wann, 'DD.MM.YYYY');
ALTER TABLE biotope.biotope ALTER COLUMN flaeche TYPE DOUBLE PRECISION using ST_AREA(wkb_geometry);
ALTER TABLE biotope.biotope ALTER COLUMN umfang TYPE DOUBLE PRECISION using ST_LENGTH(ST_BOUNDARY(wkb_geometry));

-- # Wandel wkb_geometry von Type Geometry nach MultiPolygon um
ALTER TABLE biotope.biotope ALTER COLUMN wkb_geometry TYPE geometry(MultiPolygon,25833);

-- # Transformiere die Komposit-Felder in Integer Arrays
ALTER TABLE biotope.biotope ADD COLUMN tiere_array integer[];
ALTER TABLE biotope.biotope ADD COLUMN pflanzen_array integer[];
ALTER TABLE biotope.biotope ADD COLUMN pilze_array integer[];
ALTER TABLE biotope.biotope ADD COLUMN stoerungen_array integer[];
ALTER TABLE biotope.biotope ADD COLUMN gefahr_array integer[];

-- # Referenzen auf die Beeintraechtigungen
ALTER TABLE biotope.biotope ADD COLUMN beeintraechtigung_ids character varying COLLATE pg_catalog."default";

-- # Gefaehrdung-Referenzen aggregiert zur Darstellung ohne Speicherung
ALTER TABLE biotope.biotope ADD COLUMN gefahr_historisch text[];

-- # Füge Spalte aenderungen hinzu
ALTER TABLE biotope.biotope ADD COLUMN aenderungen integer;

-- # Füge Spalte wertbestimmend hinzu
ALTER TABLE biotope.biotope ADD COLUMN wertbestimmend character varying COLLATE pg_catalog."default";

-- # Weitere Spaltentypen anpassen - wurden beim Datenimport umgeschrieben
ALTER TABLE biotope.biotope ALTER COLUMN num_geom TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN biotoptyp2_art_nr TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN tk25 TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN ausbildung TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN pflege_zustand_orig TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN pflege_rueckstand TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN biotoptyp_art_nr TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN geprueft TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN naturraumnr TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN naturraumflussauennr TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN fanr TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN reviernr TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN imreviernr TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN eigentumsartnr TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN gefahrlevel TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope ALTER COLUMN status TYPE character varying COLLATE pg_catalog."default";

-- # Anpassung Inhalt von Spalte gefahrlevel - wichtig Reihenfolge!
UPDATE biotope.biotope SET gefahrlevel = 'stark gefährdet' WHERE gefahrlevel LIKE '%3:%';
UPDATE biotope.biotope SET gefahrlevel = 'mäßig gefährdet' WHERE gefahrlevel LIKE '%2:%';
UPDATE biotope.biotope SET gefahrlevel = 'schwach gefährdet' WHERE gefahrlevel LIKE '%1:%';
UPDATE biotope.biotope SET gefahrlevel = 'keine Angaben' WHERE gefahrlevel LIKE '%0:%';

-- # Wandle die Kompositattribute in Arrays um
UPDATE biotope.biotope SET tiere_array = string_to_array(tiere, ':')::integer[];
UPDATE biotope.biotope SET pflanzen_array = string_to_array(pflanzen, ':')::integer[];
UPDATE biotope.biotope SET pilze_array = string_to_array(pilze, ':')::integer[];
UPDATE biotope.biotope SET stoerungen_array = string_to_array(stoerungen, ':')::integer[];
UPDATE biotope.biotope SET gefahr_array = string_to_array(gefahr, ':')::integer[];

-- # Loesche die Kompositspalten die umgewandelt wurden
ALTER TABLE biotope.biotope
    DROP COLUMN IF EXISTS tiere,
    DROP COLUMN IF EXISTS pflanzen,
    DROP COLUMN IF EXISTS pilze,
    DROP COLUMN IF EXISTS stoerungen,
    DROP COLUMN IF EXISTS gefahr;

-- # Nenne die Array Spalten in die alten Spaltennamen um
ALTER TABLE biotope.biotope RENAME tiere_array TO tiere;
ALTER TABLE biotope.biotope RENAME pflanzen_array TO pflanzen;
ALTER TABLE biotope.biotope RENAME pilze_array TO pilze;
ALTER TABLE biotope.biotope RENAME stoerungen_array TO stoerungen;

-- # Datentyp Spalte stoerungen ändern
ALTER TABLE biotope.biotope ALTER COLUMN stoerungen TYPE character varying COLLATE pg_catalog."default";

-- # Übersetzen der Spalte stoerungen auf Grundlage der Referenzliste - wichtig Reihenfolge!
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'26', 'Landwirtschaft');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'25', 'Ausbreitung von Neophyten');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'24', 'sonstige Beeinträchtigung');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'23', 'Zerschneidung');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'22', 'Flächenverlust');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'21', 'Erosion');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'20', 'Immissionsschäden');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'19', 'Gewässerverunreinigung');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'18', 'Schadstoffeintrag');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'17', 'Verkehr');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'16', 'Freizeitaktivitäten');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'15', 'Biozideinsatz');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'14', 'Eutrophierung');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'13', 'Entwässerung');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'12', 'Umbruch');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'11', 'Abholzung / Rodung');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'10', 'Aufforstung / Bepflanzung');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'9', 'Intensivierung der Nutzung');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'8', 'Aufgabe der Nutzung');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'7', 'sonstige Ablagerung');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'6', 'Ablagerung / Müll / Abfall');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'5', 'Aufschüttung / Einebnung');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'4', 'Abbau / Abgrabung');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'3', 'Gewässerausbau');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'2', 'Baumaßnahmen / Ausbau');
UPDATE biotope.biotope SET stoerungen = REPLACE(stoerungen,'1', 'keine Beeinträchtigung');

-- # Erzeuge Indizes
CREATE INDEX biotope_revision_ogc_fid_idx ON biotope.biotope(ogc_fid);
CREATE INDEX biotope_revision_identity_idx ON biotope.biotope(identity);
CREATE INDEX biotope_revision_erfassung_wann_idx ON biotope.biotope(erfassung_wann);
CREATE INDEX biotope_revision_bearbeitung_wann_idx ON biotope.biotope(bearbeitung_wann);
CREATE INDEX biotope_revision_flaeche_idx ON biotope.biotope(flaeche);
CREATE INDEX biotope_revision_umfang_idx ON biotope.biotope(umfang);

-- # Fuelle gefahr_historisch mit den referenzwerten aus der gefaehrdung Tabelle
UPDATE biotope.biotope bb
SET gefahr_historisch = subquery.gefahr
    FROM (SELECT t.ogc_fid, array(SELECT name FROM referenzen.gefaehrdung WHERE nummer = ANY(SELECT unnest(gefahr_array) FROM biotope.biotope WHERE ogc_fid = t.ogc_fid)) as gefahr FROM biotope.biotope t) AS subquery
WHERE bb.ogc_fid = subquery.ogc_fid;

-- # Neue Spalte stoer_gefahrlvl_gefahrhist mit Werten aus stoerungen, gefahrlevel und gefahr_historisch füllen
ALTER TABLE biotope.biotope ADD column stoer_gefahrlvl_gefahrhist character varying COLLATE pg_catalog."default";
UPDATE biotope.biotope SET stoer_gefahrlvl_gefahrhist = concat(stoerungen,'_',gefahrlevel,'_',gefahr_historisch);

-- # gefahr_array wird nicht mehr gebraucht
ALTER TABLE biotope.biotope DROP COLUMN IF EXISTS gefahr_array;

    
-- # Modify the column type of an existing biotope table
ALTER TABLE biotope.biotope ALTER COLUMN beeintraechtigung_ids TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE "biotope"."biotope" ALTER COLUMN objnr SET DEFAULT nextval_objnr();

-- # Anpassungen Pflegezustand
ALTER TABLE biotope.biotope ADD COLUMN pflege_zustand_code INTEGER;
UPDATE biotope.biotope SET pflege_zustand_code = substring(pflege_zustand_orig, 1, 1)::int WHERE pflege_zustand_orig <> '' AND pflege_zustand_orig is not NULL;

-- # ALTER TABLE biotope.biotope RENAME COLUMN pflege_zustand TO pflege_zustand_orig;
ALTER TABLE biotope.biotope RENAME COLUMN pflege_zustand_code TO pflege_zustand;

-- # Anpassung Datentyp und Inhalt von Spalte erhaltungszustand
UPDATE biotope.biotope SET erhaltungszustand = 0 WHERE erhaltungszustand LIKE '%:0%';
UPDATE biotope.biotope SET erhaltungszustand = 1 WHERE erhaltungszustand LIKE '%:1%';
UPDATE biotope.biotope SET erhaltungszustand = 2 WHERE erhaltungszustand LIKE '%:2%';
UPDATE biotope.biotope SET erhaltungszustand = 3 WHERE erhaltungszustand LIKE '%:3%';
ALTER TABLE biotope.biotope ALTER COLUMN erhaltungszustand TYPE INTEGER USING erhaltungszustand::INTEGER;

-- # Anpassung Inhalt von Spalten waldbiotop und pflege_bedarf
UPDATE biotope.biotope SET waldbiotop = 'true' WHERE waldbiotop LIKE '%1%';
UPDATE biotope.biotope SET waldbiotop = 'false' WHERE waldbiotop LIKE '%0%';
UPDATE biotope.biotope SET pflege_bedarf = 'true' WHERE pflege_bedarf LIKE '%1%';
UPDATE biotope.biotope SET pflege_bedarf = 'false' WHERE pflege_bedarf LIKE '%0%';

-- # Anpassung Inhalt von Spalte pflege
UPDATE biotope.biotope SET pflege = '1' WHERE pflege ='PflegeArtComposite-20130409-1423-0';
UPDATE biotope.biotope SET pflege = '2' WHERE pflege ='PflegeArtComposite-20130409-1434-1';
UPDATE biotope.biotope SET pflege = '3' WHERE pflege ='PflegeArtComposite-20130409-1433-0';
UPDATE biotope.biotope SET pflege = '4' WHERE pflege ='PflegeArtComposite-20130409-1433-1';
UPDATE biotope.biotope SET pflege = '5' WHERE pflege ='PflegeArtComposite-20130409-1434-0';
UPDATE biotope.biotope SET pflege = '6' WHERE pflege ='PflegeArtComposite-20130409-1436-1';

-- # Anpassungen Schutzstatus
ALTER TABLE biotope.biotope ADD COLUMN schutzstatus_code INTEGER;

-- # Find out the selection
SELECT ogc_fid, substring(schutzstatus, 1, 1)::int from biotope.biotope WHERE substring(schutzstatus, 1, 1)::int = 0;
SELECT ogc_fid, substring(schutzstatus, 1, 1)::int from biotope.biotope WHERE substring(schutzstatus, 1, 1)::int = 1;
SELECT ogc_fid, substring(schutzstatus, 1, 1)::int from biotope.biotope WHERE substring(schutzstatus, 1, 1)::int = 2;
SELECT ogc_fid, substring(schutzstatus, 1, 1)::int from biotope.biotope WHERE substring(schutzstatus, 1, 1)::int = 3;
SELECT ogc_fid, substring(schutzstatus, 1, 1)::int from biotope.biotope WHERE substring(schutzstatus, 1, 1)::int = 4;

-- # Transform the schutzstatus
UPDATE biotope.biotope SET schutzstatus_code = 4 WHERE substring(schutzstatus, 1, 1)::int = 0;
UPDATE biotope.biotope SET schutzstatus_code = 3 WHERE substring(schutzstatus, 1, 1)::int = 1;
UPDATE biotope.biotope SET schutzstatus_code = 4 WHERE substring(schutzstatus, 1, 1)::int = 2;
UPDATE biotope.biotope SET schutzstatus_code = 2 WHERE substring(schutzstatus, 1, 1)::int = 3;
UPDATE biotope.biotope SET schutzstatus_code = 1 WHERE substring(schutzstatus, 1, 1)::int = 4;

-- # Switch names
ALTER TABLE biotope.biotope RENAME COLUMN schutzstatus TO schutzstatus_orig;
ALTER TABLE biotope.biotope RENAME COLUMN schutzstatus_code TO schutzstatus;

-- # Final können einige weitere Spalten entfernt werden
ALTER TABLE biotope.biotope 
    DROP COLUMN IF EXISTS flurstuecke,
    DROP COLUMN IF EXISTS lage_tk25,
    DROP COLUMN IF EXISTS lage,
    DROP COLUMN IF EXISTS bemerkungen,
    DROP COLUMN IF EXISTS abteilung,
    DROP COLUMN IF EXISTS arten,
    DROP COLUMN IF EXISTS werterhaltend,
    DROP COLUMN IF EXISTS stoerungen,
    DROP COLUMN IF EXISTS gefahrlevel,
    DROP COLUMN IF EXISTS gefahr_historisch,
    DROP COLUMN IF EXISTS tiere,
    DROP COLUMN IF EXISTS pflanzen,
    DROP COLUMN IF EXISTS pilze;

-- # Noch ein paar weitere Spalten entfernen (Absprache Fr. König)
-- ALTER TABLE biotope.biotope
--    DROP COLUMN IF EXISTS pflege_rueckstand,
--    DROP COLUMN IF EXISTS wert,
--    DROP COLUMN IF EXISTS bt_code,
--    DROP COLUMN IF EXISTS biotopkuerzel;

-- # Für QGIS den VIEW locked_biotope erstellen
CREATE OR REPLACE VIEW biotope.locked_biotope
  AS
  SELECT biotope.ogc_fid,
    biotope.identity,
    biotope.biotoptyp2_art_nr,
    biotope.wkb_geometry,
    locks.user_id
  FROM biotope.biotope
    JOIN biotope.locks ON biotope.ogc_fid = locks.biotop_id;

ALTER TABLE biotope.locked_biotope OWNER TO biotope_admin;
GRANT ALL ON TABLE biotope.locked_biotope TO biotope_admin;







