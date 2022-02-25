Installation der Datenbank
==========================

Für die Erstinstallation wird zuerst ein Admin-Benutzer ``biotope_admin`` für den PostGIS Datenbankserver erstellt, über den die Administration der Biotopdatenbank stattfindet.

 .. code-block:: psql
  
  CREATE ROLE biotope_admin WITH
   LOGIN
   SUPERUSER
   INHERIT
   CREATEDB
   CREATEROLE
   REPLICATION
   CONNECTION LIMIT -1
   PASSWORD 'xxxxxx';

Danach kann optional ein Kommentar ergänzt werden, um die neue Rolle zu beschreiben.

 .. code-block:: psql

  COMMENT ON ROLE biotope_admin 
  IS 'Administrator Biotopkataster Datenbank biotope';

Ergänzt wird nun auch die Benutzergruppe ``biotope_editor``. In dieses Gruppenrolle werden Datenbanknutzer integriert, welche die Biotopdaten bearbeiten sollen.

 .. code-block:: psql
  
  CREATE ROLE biotope_editor WITH
   NOSUPERUSER
   INHERIT
   NOCREATEDB
   NOCREATEROLE
   NOREPLICATION;

Danach kann optional ein Kommentar ergänzt werden, um die neue Rolle zu beschreiben.

 .. code-block:: psql

  COMMENT ON ROLE biotope_editor IS 'Bearbeiter Biotopkataster Datenbank biotope';

Danach wird die Datenbank ``biotope`` erzeugt.

 .. code-block:: psql
  
  CREATEDB biotope WITH OWNER = biotope_admin;
  
Für das Arbeiten mir räumlichen Daten wird die PostGIS Erweiterung installiert. 

 .. code-block:: psql

  CREATE EXTENSION postgis;

Danach werden die notwendigen Schemas ``historie``, ``referenzen`` und ``biotope`` mit den notwendigen Berechtigungen erzeugt.

SCHEMA historie

 .. code-block:: psql

  CREATE SCHEMA historie AUTHORIZATION biotope_admin;

 .. code-block:: psql
  
  GRANT ALL ON SCHEMA historie TO biotope_admin;

 .. code-block:: psql
  
  GRANT USAGE ON SCHEMA historie TO biotope_editor;

SCHEMA referenzen

 .. code-block:: psql

  CREATE SCHEMA referenzen AUTHORIZATION biotope_admin;

 .. code-block:: psql

  GRANT ALL ON SCHEMA referenzen TO biotope_admin;

 .. code-block:: psql

  GRANT USAGE ON SCHEMA referenzen TO biotope_editor;

CREATE SCHEMA biotope

 .. code-block:: psql
   
  CREATE SCHEMA biotope AUTHORIZATION biotope_admin;

 .. code-block:: psql

  GRANT ALL ON SCHEMA biotope TO biotope_admin;

 .. code-block:: psql

  GRANT USAGE ON SCHEMA biotope TO biotope_editor;
  
Nachdem die Schemas erstellt sind wird das Grundgerüst der Datenbank ``biotope`` erweitert. Hierzu werden in den einzelnen Schemas weitere Tabellen, Berechtigungen, Indices und Funktionen erstellt. 

Schema biotope erstellen
------------------------

Alle aktuellen Biotopdaten werden im Schema ``biotope`` verwaltet.

 .. code-block:: psql

  CREATE SEQUENCE biotope.biotope_ogc_fid_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

 .. code-block:: psql

  ALTER SEQUENCE biotope.biotope_ogc_fid_seq OWNER TO biotope_admin;

 .. code-block:: psql
  
  GRANT ALL ON SEQUENCE biotope.biotope_ogc_fid_seq TO biotope_admin;

 .. code-block:: psql

  GRANT SELECT, USAGE ON SEQUENCE biotope.biotope_ogc_fid_seq TO biotope_editor;

biotope
~~~~~~~

 Als nächstes wird die Tabelle ``biotope.biotope`` erstellt.

 .. code-block:: psql

  CREATE TABLE biotope.biotope
  (
  ogc_fid integer NOT NULL DEFAULT nextval('biotope.biotope_ogc_fid_seq'::regclass),
  identity character varying COLLATE pg_catalog."default",
  objnr_sbk character varying COLLATE pg_catalog."default",
  unr character varying COLLATE pg_catalog."default",
  ausbildung character varying COLLATE pg_catalog."default",
  pflege_zustand character varying COLLATE pg_catalog."default",
  pflege_entwicklung character varying COLLATE pg_catalog."default",
  pflege_bedarf character varying COLLATE pg_catalog."default",
  pflege_rueckstand character varying COLLATE pg_catalog."default",
  pflege character varying COLLATE pg_catalog."default",
  bt_code character varying COLLATE pg_catalog."default",
  wert character varying COLLATE pg_catalog."default",
  schutzstatus_orig character varying COLLATE pg_catalog."default",
  biotopkuerzel character varying COLLATE pg_catalog."default",
  erhaltungszustand_orig character varying COLLATE pg_catalog."default",
  geprueft character varying COLLATE pg_catalog."default",
  biotoptyp_art_nr character varying COLLATE pg_catalog."default",
  biotoptyp2_art_nr character varying COLLATE pg_catalog."default",
  waldbiotop character varying COLLATE pg_catalog."default",
  objnr_landkreise character varying COLLATE pg_catalog."default",
  tk25 character varying COLLATE pg_catalog."default",
  name character varying COLLATE pg_catalog."default",
  status character varying COLLATE pg_catalog."default",
  flaeche double precision,
  num_geom character varying COLLATE pg_catalog."default",
  objnr character varying COLLATE pg_catalog."default",
  umfang double precision,
  beschreibung character varying COLLATE pg_catalog."default",
  erfassung_wann timestamp without time zone,
  erfassung_wer character varying COLLATE pg_catalog."default",
  erfassung_bemerkung character varying COLLATE pg_catalog."default",
  bearbeitung_wann timestamp without time zone,
  bearbeitung_wer character varying COLLATE pg_catalog."default",
  bearbeitung_bemerkung character varying COLLATE pg_catalog."default",
  loeschung_wann timestamp without time zone,
  loeschung_wer character varying COLLATE pg_catalog."default",
  loeschung_bemerkung character varying COLLATE pg_catalog."default",
  bekanntmachung_wann timestamp without time zone,
  bekanntmachung_wer character varying COLLATE pg_catalog."default",
  bekanntmachung_bemerkung character varying COLLATE pg_catalog."default",
  wkb_geometry geometry(MultiPolygon,25833),
  tiere integer[],
  pflanzen integer[],
  pilze integer[],
  stoerungen integer[],
  beeintraechtigung_ids integer[],
  gefahr_historisch text[] COLLATE pg_catalog."default",
  schutzstatus integer,
  erhaltungszustand integer,
  CONSTRAINT biotope_pkey PRIMARY KEY (ogc_fid)
  )
  WITH (
   OIDS = FALSE
  )
  TABLESPACE pg_default;

Danach wird die Sequence ``biotope.biotope_objnr_seq`` erstellt und entsprechende Rechte vergeben.

 .. code-block:: psql

  CREATE SEQUENCE biotope.biotope_objnr_seq
   INCREMENT 1
   START 50000
   MINVALUE 1
   MAXVALUE 9223372036854775807
   CACHE 1;

 .. code-block:: psql
  
  ALTER TABLE biotope.biotope OWNER to biotope_admin;

 .. code-block:: psql

  GRANT ALL ON TABLE biotope.biotope TO biotope_admin;
  
 .. code-block:: psql

  ALTER SEQUENCE biotope.biotope_objnr_seq OWNER TO biotope_admin;

Im Anschluss folgt die Funktion nextval_objnr()

 .. code-block:: psql

  CREATE OR REPLACE FUNCTION nextval_objnr()
  RETURNS TEXT
  LANGUAGE sql
  AS
  '$$'
    SELECT '14522-'||to_char(nextval('"biotope"."biotope_objnr_seq"'), 'FM00000');
  '$$';
  
ALTER TABLE "biotope"."biotope" ALTER COLUMN objnr SET DEFAULT nextval_objnr();

Dann werden mehrere Indices erstellt.

 .. code-block:: psql
  
  CREATE INDEX biotope_revision_bearbeitung_wann_idx
    ON biotope.biotope USING btree
    (bearbeitung_wann)
    TABLESPACE pg_default;

 .. code-block:: psql
     
  CREATE INDEX biotope_revision_erfassung_wann_idx
    ON biotope.biotope USING btree
    (erfassung_wann)
    TABLESPACE pg_default;

 .. code-block:: psql
    
  CREATE INDEX biotope_revision_flaeche_idx
    ON biotope.biotope USING btree
    (flaeche)
    TABLESPACE pg_default;

 .. code-block:: psql
      
  CREATE INDEX biotope_revision_identity_idx
    ON biotope.biotope USING btree
    (identity COLLATE pg_catalog."default")
    TABLESPACE pg_default;

 .. code-block:: psql
      
  CREATE INDEX biotope_revision_ogc_fid_idx
    ON biotope.biotope USING btree
    (ogc_fid)
    TABLESPACE pg_default;

 .. code-block:: psql
      
  CREATE INDEX biotope_revision_umfang_idx
    ON biotope.biotope USING btree
    (umfang)
    TABLESPACE pg_default;

 .. code-block:: psql
      
  CREATE INDEX biotope_wkb_geometry_geom_idx
    ON biotope.biotope USING gist
    (wkb_geometry)
    TABLESPACE pg_default;

Jetzt wird die Tabelle locks erstellen, die das Locken der Objekte managed.

 .. code-block:: psql

  CREATE SEQUENCE biotope.locks_id_seq
   INCREMENT 1
   START 1
   MINVALUE 1
   MAXVALUE 2147483647
   CACHE 1;

 .. code-block:: psql

  ALTER SEQUENCE biotope.locks_id_seq OWNER TO biotope_admin;

 .. code-block:: psql

  CREATE TABLE biotope.locks
   (
   id integer NOT NULL DEFAULT nextval('biotope.locks_id_seq'::regclass),
   biotop_id integer,
   user_id character varying COLLATE pg_catalog."default" DEFAULT CURRENT_USER,
   mod_time timestamp without time zone NOT NULL DEFAULT now(),
   CONSTRAINT locks_pkey PRIMARY KEY (id),
   CONSTRAINT biotope_locks_uk1 UNIQUE (biotop_id)
   )
   WITH (
    OIDS = FALSE
   )
   TABLESPACE pg_default;

 .. code-block:: psql

  ALTER TABLE biotope.locks OWNER to biotope_admin;

 .. code-block:: psql

  GRANT ALL ON TABLE biotope.locks TO biotope_admin;

An diesem Punkt ist das Datenmodell für den Hauptdatenbestand fertig. Der nächste Schritt 
besteht darin, vorhandene, vorbereitete Biotopdaten in die Datenbank zu importieren.

Import vorhandener Biotopdaten
------------------------------

Die Altdaten müssen dem Aufbau der Tabelle Biotope entsprechen.

ogr2ogr -lco OVERWRITE=YES -progress -nln biotope -lco SCHEMA=biotope \
-nlt PROMOTE_TO_MULTI -geomfield wkb_geometry \
-f "PostgreSQL" PG:"dbname=biotope user=biotope_admin password=biotope_admin" ${1}


Schema referenzen erstellen
---------------------------

Im Schema ``referenzen`` sind alle Referenztabellen abgelegt. Diese werden in den Dialogen des QGIS Plugins genutzt, um Auswahlfelder für die Formulare zu generieren. Eine genauere Beschreibung der Referenzdaten findet sich im Kapitel Referenzdaten.

aenderungen
~~~~~~~~~~~

Wir beginnen mit der Tabelle ``referenzen.aenderungen``.

 .. code-block:: psql
  
  CREATE SEQUENCE referenzen.aenderungen_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

 .. code-block:: psql

  ALTER SEQUENCE referenzen.aenderungen_id_seq OWNER TO biotope_admin;

 .. code-block:: psql
  
  CREATE TABLE referenzen.aenderungen
  (
     id integer NOT NULL DEFAULT nextval('referenzen.aenderungen_id_seq'::regclass),
     aenderung character varying COLLATE pg_catalog."default",
     CONSTRAINT aenderungen_pkey PRIMARY KEY (id)
  )
   WITH (
   OIDS = FALSE
  )
  TABLESPACE pg_default;

Und die entsprechenden Rechte vergeben.

 .. code-block:: psql
  
  ALTER TABLE referenzen.aenderungen OWNER to biotope_admin;

 .. code-block:: psql
  
  GRANT ALL ON TABLE referenzen.aenderungen TO biotope_admin;

 .. code-block:: psql

  GRANT SELECT ON TABLE referenzen.aenderungen TO biotope_editor;

beeintraechtigungen
~~~~~~~~~~~~~~~~~~~

Danach kommt die Tabelle ``referenzen.beeintraechtigungen``.
 
 .. code-block:: psql
  
  CREATE SEQUENCE referenzen.beeintraechtigungen_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

 .. code-block:: psql
  
  ALTER SEQUENCE referenzen.beeintraechtigungen_id_seq OWNER TO biotope_admin;

 .. code-block:: psql
  
  CREATE TABLE referenzen.beeintraechtigungen
  (
    id integer NOT NULL DEFAULT nextval('referenzen.beeintraechtigungen_id_seq'::regclass),
    beeintraechtigungen character varying COLLATE pg_catalog."default",
    CONSTRAINT beeintraechtigungen_pkey PRIMARY KEY (id)
  )
  WITH (
    OIDS = FALSE
  )
  TABLESPACE pg_default;  

Und die entsprechenden Rechte.

 .. code-block:: psql
  
  ALTER TABLE referenzen.beeintraechtigungen OWNER to biotope_admin;

 .. code-block:: psql
  
  GRANT ALL ON TABLE referenzen.beeintraechtigungen TO biotope_admin;
  
 .. code-block:: psql
   
  GRANT SELECT ON TABLE referenzen.beeintraechtigungen TO biotope_editor;

biotoptypen
~~~~~~~~~~~

Danach kommt die Tabelle ``referenzen.biotoptypen``.
 
 .. code-block:: psql
  
  CREATE SEQUENCE referenzen.biotoptypen_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

 .. code-block:: psql

  ALTER SEQUENCE referenzen.biotoptypen_id_seq OWNER TO biotope_admin;

 .. code-block:: psql
  
  CREATE TABLE referenzen.biotoptypen
  (
    id integer NOT NULL DEFAULT nextval('referenzen.biotoptypen_id_seq'::regclass),
    btyp character varying COLLATE pg_catalog."default",
    nummer integer,
    vwv_2012 integer,
    name_2002 character varying COLLATE pg_catalog."default",
    name_2012 character varying COLLATE pg_catalog."default",
    code_2002 character varying COLLATE pg_catalog."default",
    code_2012 character varying COLLATE pg_catalog."default",
    vwv_2002 integer,
    schutz character varying COLLATE pg_catalog."default",
    id_biot_lfulg_2012 integer,
    id_biot_alt integer,
    biotoptyp character varying COLLATE pg_catalog."default",
    untergruppe character varying COLLATE pg_catalog."default",
    biotopgruppe character varying COLLATE pg_catalog."default",
    lr_gr character varying COLLATE pg_catalog."default",
    CONSTRAINT biotoptypen_pkey PRIMARY KEY (id)
  )
  WITH (
    OIDS = FALSE
  )
  TABLESPACE pg_default;

Und die entsprechenden Rechte.

 .. code-block:: psql
  
  ALTER TABLE referenzen.biotoptypen OWNER to biotope_admin;
  
 .. code-block:: psql
 
  GRANT ALL ON TABLE referenzen.biotoptypen TO biotope_admin;

 .. code-block:: psql
 
  GRANT SELECT ON TABLE referenzen.biotoptypen TO biotope_editor;
  
erhaltungszustand
~~~~~~~~~~~~~~~~~

Danach kommt die Tabelle ``referenzen.erhaltungszustand``.
 
 .. code-block:: psql
  
  CREATE SEQUENCE referenzen.erhaltungszustand_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

 .. code-block:: psql
 
  ALTER SEQUENCE referenzen.erhaltungszustand_id_seq OWNER TO biotope_admin;

 .. code-block:: psql
 
  CREATE TABLE referenzen.erhaltungszustand
  (
    id integer NOT NULL DEFAULT nextval('referenzen.erhaltungszustand_id_seq'::regclass),
    wert character varying COLLATE pg_catalog."default",
    CONSTRAINT erhaltungszustand_pkey PRIMARY KEY (id)
  )
  WITH (
    OIDS = FALSE
  )
  TABLESPACE pg_default;

 .. code-block:: psql
  
  ALTER TABLE referenzen.erhaltungszustand OWNER to biotope_admin;

 .. code-block:: psql
  
  GRANT ALL ON TABLE referenzen.erhaltungszustand TO biotope_admin;

gefaehrdung
~~~~~~~~~~~

Danach kommt die Tabelle ``referenzen.gefaehrdung``.
 
 .. code-block:: psql
  
  CREATE SEQUENCE referenzen.gefaehrdung_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

 .. code-block:: psql

  ALTER SEQUENCE referenzen.gefaehrdung_id_seq OWNER TO biotope_admin;

 .. code-block:: psql

  CREATE TABLE referenzen.gefaehrdung
  (
    id integer NOT NULL DEFAULT nextval('referenzen.gefaehrdung_id_seq'::regclass),
    name character varying COLLATE pg_catalog."default",
    nummer integer,
    identity character varying COLLATE pg_catalog."default",
    CONSTRAINT gefaehrdung_pkey PRIMARY KEY (id)
  )
  WITH (
    OIDS = FALSE
  )
  TABLESPACE pg_default;
  
 .. code-block:: psql
 
  ALTER TABLE referenzen.gefaehrdung OWNER to biotope_admin;

 .. code-block:: psql
 
  GRANT ALL ON TABLE referenzen.gefaehrdung TO biotope_admin;
  
 .. code-block:: psql
 
  GRANT SELECT ON TABLE referenzen.gefaehrdung TO biotope_editor;

kartierer
~~~~~~~~~

Danach kommt die Tabelle ``referenzen.kartierer``.
 
 .. code-block:: psql
  
  CREATE SEQUENCE referenzen.kartierer_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

 .. code-block:: psql
  
  ALTER SEQUENCE referenzen.kartierer_id_seq OWNER TO biotope_admin;
 
 .. code-block:: psql
  
  CREATE TABLE referenzen.kartierer
  (
    id integer NOT NULL DEFAULT nextval('referenzen.kartierer_id_seq'::regclass),
    kartierer character varying COLLATE pg_catalog."default",
    anschrift character varying COLLATE pg_catalog."default",
    art_beauftragung character varying COLLATE pg_catalog."default",
    CONSTRAINT kartierer_pkey PRIMARY KEY (id)
  )
  WITH (
    OIDS = FALSE
  )
  TABLESPACE pg_default;

 .. code-block:: psql
  
  ALTER TABLE referenzen.kartierer OWNER to biotope_admin;

 .. code-block:: psql
  
  GRANT ALL ON TABLE referenzen.kartierer TO biotope_admin;

 .. code-block:: psql

  GRANT SELECT ON TABLE referenzen.kartierer TO biotope_editor;

massnahmen
~~~~~~~~~~

Danach kommt die Tabelle ``referenzen.massnahmen``.
 
 .. code-block:: psql
    
  CREATE SEQUENCE referenzen.massnahmen_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

 .. code-block:: psql    
    
  ALTER SEQUENCE referenzen.massnahmen_id_seq OWNER TO biotope_admin;

 .. code-block:: psql
 
  CREATE TABLE referenzen.massnahmen
  (
    id integer NOT NULL DEFAULT nextval('referenzen.massnahmen_id_seq'::regclass),
    referenz character varying COLLATE pg_catalog."default",
    massnahme character varying COLLATE pg_catalog."default",
    beschreibung character varying COLLATE pg_catalog."default",
    lr1 integer,
    lr2 integer,
    lr3 integer,
    lr4 integer,
    lr5 integer,
    CONSTRAINT massnahmen_pkey PRIMARY KEY (id)
  )
  WITH (
    OIDS = FALSE
  )
  TABLESPACE pg_default;

 .. code-block:: psql
 
  ALTER TABLE referenzen.massnahmen OWNER to biotope_admin;

 .. code-block:: psql
 
  GRANT ALL ON TABLE referenzen.massnahmen TO biotope_admin;

 .. code-block:: psql
 
  GRANT SELECT ON TABLE referenzen.massnahmen TO biotope_editor;
  
pflege
~~~~~~

Danach kommt die Tabelle ``referenzen.pflege``.
 
 .. code-block:: psql

  CREATE SEQUENCE referenzen.pflege_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

 .. code-block:: psql

  ALTER SEQUENCE referenzen.pflege_id_seq OWNER TO biotope_admin;

 .. code-block:: psql

  CREATE TABLE referenzen.pflege
  (
    id integer NOT NULL DEFAULT nextval('referenzen.pflege_id_seq'::regclass),
    name character varying COLLATE pg_catalog."default",
    nummer character varying COLLATE pg_catalog."default",
    beschreibung character varying COLLATE pg_catalog."default",
    identity character varying COLLATE pg_catalog."default",
    CONSTRAINT pflege_pkey PRIMARY KEY (id)
  )
  WITH (
    OIDS = FALSE
  )
  TABLESPACE pg_default;

 .. code-block:: psql

  ALTER TABLE referenzen.pflege OWNER to biotope_admin;

 .. code-block:: psql

  GRANT ALL ON TABLE referenzen.pflege TO biotope_admin;

 .. code-block:: psql

  GRANT SELECT ON TABLE referenzen.pflege TO biotope_editor;

schutzstatus
~~~~~~~~~~~~

Danach kommt die Tabelle ``referenzen.schutzstatus``.
 
 .. code-block:: psql

  CREATE SEQUENCE referenzen.schutzstatus_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

 .. code-block:: psql

  ALTER SEQUENCE referenzen.schutzstatus_id_seq OWNER TO biotope_admin;

 .. code-block:: psql
 
  CREATE TABLE referenzen.schutzstatus
  (
    id integer NOT NULL DEFAULT nextval('referenzen.schutzstatus_id_seq'::regclass),
    wert character varying COLLATE pg_catalog."default",
    CONSTRAINT schutzstatus_pkey PRIMARY KEY (id)
  )
  WITH (
    OIDS = FALSE
  )
  TABLESPACE pg_default;

 .. code-block:: psql

  ALTER TABLE referenzen.schutzstatus OWNER to biotope_admin;

 .. code-block:: psql
  
  GRANT ALL ON TABLE referenzen.schutzstatus TO biotope_admin;

stoerung
~~~~~~~~

Danach kommt die Tabelle ``referenzen.stoerung``.
 
 .. code-block:: psql

  CREATE SEQUENCE referenzen.stoerung_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

 .. code-block:: psql

  ALTER SEQUENCE referenzen.stoerung_id_seq OWNER TO biotope_admin;

 .. code-block:: psql

  CREATE TABLE referenzen.stoerung
  (
    id integer NOT NULL DEFAULT nextval('referenzen.stoerung_id_seq'::regclass),
    name character varying COLLATE pg_catalog."default",
    nummer integer,
    identity character varying COLLATE pg_catalog."default",
    CONSTRAINT stoerung_pkey PRIMARY KEY (id)
  )
  WITH (
    OIDS = FALSE 
  )
  TABLESPACE pg_default;

 .. code-block:: psql

  ALTER TABLE referenzen.stoerung OWNER to biotope_admin;

 .. code-block:: psql
  
  GRANT ALL ON TABLE referenzen.stoerung TO biotope_admin;
  
 .. code-block:: psql
  
  GRANT SELECT ON TABLE referenzen.stoerung TO biotope_editor;
  
Anpassungen der Biotopdaten nach dem Import
-------------------------------------------

Nach dem Import der Daten aus der bisherigen Anwendung müssen die Biotopdaten 
nochmals angepasst werden.

Datenfelder transformieren
~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN bearbeitung_wann TYPE TIMESTAMP using to_timestamp(bearbeitung_wann, 'DD.MM.YYYY');

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN erfassung_wann TYPE TIMESTAMP using to_timestamp(erfassung_wann, 'DD.MM.YYYY');

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN loeschung_wann TYPE TIMESTAMP using to_timestamp(loeschung_wann, 'DD.MM.YYYY');

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN bekanntmachung_wann TYPE TIMESTAMP using to_timestamp(bekanntmachung_wann, 'DD.MM.YYYY');

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN flaeche TYPE DOUBLE PRECISION using ST_AREA(wkb_geometry);

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN umfang TYPE DOUBLE PRECISION using ST_LENGTH(ST_BOUNDARY(wkb_geometry));

Umwandeln des Geometrie-Typs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql

ALTER TABLE biotope.biotope ALTER COLUMN wkb_geometry TYPE geometry(MultiPolygon,25833);

Komposit-Felder in Integer Arrays konvertieren
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql
  
  ALTER TABLE biotope.biotope ADD COLUMN tiere_array integer[];

 .. code-block:: psql

  ALTER TABLE biotope.biotope ADD COLUMN pflanzen_array integer[];

 .. code-block:: psql

  ALTER TABLE biotope.biotope ADD COLUMN pilze_array integer[];

 .. code-block:: psql

  ALTER TABLE biotope.biotope ADD COLUMN stoerungen_array integer[];

 .. code-block:: psql

  ALTER TABLE biotope.biotope ADD COLUMN gefahr_array integer[];

Referenz auf Beeintraechtigungen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql

  ALTER TABLE biotope.biotope ADD COLUMN beeintraechtigung_ids integer[];

Gefaehrdung aggregieren zur Darstellung ohne Speicherung
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql
 
  ALTER TABLE biotope.biotope ADD COLUMN gefahr_historisch text[];

Spalte aenderungen hinzufügen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql
 
  ALTER TABLE biotope.biotope ADD COLUMN aenderungen integer;

Weitere Spaltentypen anpassen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql
 
  ALTER TABLE biotope.biotope ALTER COLUMN num_geom TYPE character varying COLLATE pg_catalog."default";
  
 .. code-block:: psql
  
  ALTER TABLE biotope.biotope ALTER COLUMN biotoptyp2_art_nr TYPE character varying COLLATE pg_catalog."default";
 
 .. code-block:: psql
 
  ALTER TABLE biotope.biotope ALTER COLUMN tk25 TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN ausbildung TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN pflege_zustand_orig TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN pflege_rueckstand TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN biotoptyp_art_nr TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN geprueft TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN naturraumnr TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN naturraumflussauennr TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN fanr TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN reviernr TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN imreviernr TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN eigentumsartnr TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN gefahrlevel TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN status TYPE character varying COLLATE pg_catalog."default";

Kompositattribute in Arrays umwandeln
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql
  
  UPDATE biotope.biotope SET tiere_array = string_to_array(tiere, ':')::integer[];
  
  
  
  UPDATE biotope.biotope SET pflanzen_array = string_to_array(pflanzen, ':')::integer[];
  
 .. code-block:: psql 
  
  UPDATE biotope.biotope SET pilze_array = string_to_array(pilze, ':')::integer[];
 
 .. code-block:: psql 
 
  UPDATE biotope.biotope SET stoerungen_array = string_to_array(stoerungen, ':')::integer[];
  
 .. code-block:: psql
  
  UPDATE biotope.biotope SET gefahr_array = string_to_array(gefahr, ':')::integer[];

Umgewandelte Kompositspalten löschen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql
 
  ALTER TABLE biotope.biotope
    DROP COLUMN IF EXISTS tiere,
    DROP COLUMN IF EXISTS pflanzen,
    DROP COLUMN IF EXISTS pilze,
    DROP COLUMN IF EXISTS stoerungen,
    DROP COLUMN IF EXISTS gefahr;

Array Spalten wieder umbenennen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql
 
  ALTER TABLE biotope.biotope RENAME tiere_array TO tiere;

 .. code-block:: psql

  ALTER TABLE biotope.biotope RENAME pflanzen_array TO pflanzen;

 .. code-block:: psql

  ALTER TABLE biotope.biotope RENAME pilze_array TO pilze;

 .. code-block:: psql

  ALTER TABLE biotope.biotope RENAME stoerungen_array TO stoerungen;

Indizes erzeugen
~~~~~~~~~~~~~~~~

 .. code-block:: psql
  
  CREATE INDEX biotope_revision_ogc_fid_idx ON biotope.biotope(ogc_fid);

 .. code-block:: psql

  CREATE INDEX biotope_revision_identity_idx ON biotope.biotope(identity);

 .. code-block:: psql

  CREATE INDEX biotope_revision_erfassung_wann_idx ON biotope.biotope(erfassung_wann);

 .. code-block:: psql

  CREATE INDEX biotope_revision_bearbeitung_wann_idx ON biotope.biotope(bearbeitung_wann);

 .. code-block:: psql

  CREATE INDEX biotope_revision_flaeche_idx ON biotope.biotope(flaeche);

 .. code-block:: psql

  CREATE INDEX biotope_revision_umfang_idx ON biotope.biotope(umfang);

Spalte gefahr_historisch füllen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql

  UPDATE biotope.biotope bb
  SET gefahr_historisch = subquery.gefahr
    FROM (SELECT t.ogc_fid, array(SELECT name FROM referenzen.gefaehrdung WHERE nummer = ANY(SELECT unnest(gefahr_array) FROM biotope.biotope WHERE ogc_fid = t.ogc_fid)) as gefahr FROM biotope.biotope t) AS subquery
  WHERE bb.ogc_fid = subquery.ogc_fid;

Überflüssige Spalten löschen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql
  
  ALTER TABLE biotope.biotope 
    DROP COLUMN IF EXISTS gefahr_array,
    DROP COLUMN IF EXISTS flurstuecke,
    DROP COLUMN IF EXISTS lage_tk25,
    DROP COLUMN IF EXISTS lage,
    DROP COLUMN IF EXISTS bemerkungen,
    DROP COLUMN IF EXISTS abteilung,
    DROP COLUMN IF EXISTS arten,
    DROP COLUMN IF EXISTS werterhaltend;
    
Spaltentypen anpassen
~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql
 
  ALTER TABLE biotope.biotope ALTER COLUMN beeintraechtigung_ids type integer[] USING beeintraechtigung_ids::integer[];
 
 .. code-block:: psql
 
 ALTER TABLE "biotope"."biotope" ALTER COLUMN objnr SET DEFAULT nextval_objnr();

Anpassungen Pflegezustand
~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql

  ALTER TABLE biotope.biotope ADD COLUMN pflege_zustand_code INTEGER;

 .. code-block:: psql

  UPDATE biotope.biotope SET pflege_zustand_code = substring(pflege_zustand_orig, 1, 1)::int WHERE pflege_zustand_orig <> '' AND pflege_zustand_orig is not NULL;

 .. code-block:: psql
  
  ALTER TABLE biotope.biotope RENAME COLUMN pflege_zustand TO pflege_zustand_orig;

 .. code-block:: psql

  ALTER TABLE biotope.biotope RENAME COLUMN pflege_zustand_code TO pflege_zustand;

Anpassungen Erhaltungszustand
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql

  UPDATE biotope.biotope SET erhaltungszustand = 0 WHERE erhaltungszustand LIKE '%:0%';

 .. code-block:: psql

  UPDATE biotope.biotope SET erhaltungszustand = 1 WHERE erhaltungszustand LIKE '%:1%';

 .. code-block:: psql

  UPDATE biotope.biotope SET erhaltungszustand = 2 WHERE erhaltungszustand LIKE '%:2%';

 .. code-block:: psql

  UPDATE biotope.biotope SET erhaltungszustand = 3 WHERE erhaltungszustand LIKE '%:3%';

 .. code-block:: psql

  ALTER TABLE biotope.biotope ALTER COLUMN erhaltungszustand TYPE INTEGER USING erhaltungszustand::INTEGER;

Anpassungen waldbiotop und pflege_bedarf
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql
  
  UPDATE biotope.biotope SET waldbiotop = 'true' WHERE waldbiotop LIKE '%1%';

 .. code-block:: psql

  UPDATE biotope.biotope SET waldbiotop = 'false' WHERE waldbiotop LIKE '%0%';

 .. code-block:: psql

  UPDATE biotope.biotope SET pflege_bedarf = 'true' WHERE pflege_bedarf LIKE '%1%';

 .. code-block:: psql

  UPDATE biotope.biotope SET pflege_bedarf = 'false' WHERE pflege_bedarf LIKE '%0%';

Anpassungen Schutzstatus
~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql
  
  ALTER TABLE biotope.biotope ADD COLUMN schutzstatus_code INTEGER;

 .. code-block:: psql
  
  SELECT ogc_fid, substring(schutzstatus, 1, 1)::int from biotope.biotope WHERE substring(schutzstatus, 1, 1)::int = 0;

 .. code-block:: psql

  SELECT ogc_fid, substring(schutzstatus, 1, 1)::int from biotope.biotope WHERE substring(schutzstatus, 1, 1)::int = 1;

 .. code-block:: psql

  SELECT ogc_fid, substring(schutzstatus, 1, 1)::int from biotope.biotope WHERE substring(schutzstatus, 1, 1)::int = 2;

 .. code-block:: psql

  SELECT ogc_fid, substring(schutzstatus, 1, 1)::int from biotope.biotope WHERE substring(schutzstatus, 1, 1)::int = 3;

 .. code-block:: psql

  SELECT ogc_fid, substring(schutzstatus, 1, 1)::int from biotope.biotope WHERE substring(schutzstatus, 1, 1)::int = 4;

Schutzstatus transformieren
~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql
 
  UPDATE biotope.biotope SET schutzstatus_code = 4 WHERE substring(schutzstatus, 1, 1)::int = 0;

 .. code-block:: psql

  UPDATE biotope.biotope SET schutzstatus_code = 3 WHERE substring(schutzstatus, 1, 1)::int = 1;

 .. code-block:: psql

  UPDATE biotope.biotope SET schutzstatus_code = 4 WHERE substring(schutzstatus, 1, 1)::int = 2;

 .. code-block:: psql

  UPDATE biotope.biotope SET schutzstatus_code = 2 WHERE substring(schutzstatus, 1, 1)::int = 3;

 .. code-block:: psql

  UPDATE biotope.biotope SET schutzstatus_code = 1 WHERE substring(schutzstatus, 1, 1)::int = 4;

 .. code-block:: psql
 
  ALTER TABLE biotope.biotope RENAME COLUMN schutzstatus TO schutzstatus_orig;

 .. code-block:: psql

  ALTER TABLE biotope.biotope RENAME COLUMN schutzstatus_code TO schutzstatus;

QGIS VIEW locked_biotope erstellen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql
 
  CREATE OR REPLACE VIEW biotope.locked_biotope
   AS
   SELECT biotope.ogc_fid,
    biotope.identity,
    biotope.biotoptyp2_art_nr,
    biotope.wkb_geometry,
    locks.user_id
   FROM biotope.biotope
    JOIN biotope.locks ON biotope.ogc_fid = locks.biotop_id;

 .. code-block:: psql
 
  ALTER TABLE biotope.locked_biotope OWNER TO biotope_admin;

 .. code-block:: psql

  GRANT ALL ON TABLE biotope.locked_biotope TO biotope_admin;


Schema historie erstellen
-------------------------

Im Schema ``historie`` werden die historischen Biotope gespeichert.

 .. code-block:: psql
  
  CREATE SEQUENCE historie.biotope_historie_revision_seq
   INCREMENT 1
   START 1
   MINVALUE 1
   MAXVALUE 9223372036854775807
   CACHE 1;

 .. code-block:: psql

  ALTER SEQUENCE historie.biotope_historie_revision_seq OWNER TO biotope_admin;

 .. code-block:: psql

  GRANT ALL ON SEQUENCE historie.biotope_historie_revision_seq TO biotope_admin;

 .. code-block:: psql

  GRANT SELECT, USAGE ON SEQUENCE historie.biotope_historie_revision_seq TO biotope_editor;


Tabelle biotope_historie
~~~~~~~~~~~~~~~~~~~~~~~~

Danach wird die eigentliche Tabelle ``historie.biotope_historie`` erstellt. 

 .. code-block:: psql
  
  CREATE TABLE historie.biotope_historie AS TABLE biotope.biotope;

 .. code-block:: psql
  
  ALTER TABLE historie.biotope_historie ADD COLUMN modtime TIMESTAMP WITH time zone;

 .. code-block:: psql

  UPDATE historie.biotope_historie SET modtime = now();

 .. code-block:: psql

  ALTER TABLE historie.biotope_historie ALTER COLUMN gefahrlevel TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE historie.biotope_historie ALTER COLUMN status TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE historie.biotope_historie ADD COLUMN action text COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE historie.biotope_historie ADD COLUMN revision bigint NOT NULL DEFAULT nextval('historie.biotope_historie_revision_seq'::regclass);

 .. code-block:: psql
  
  UPDATE historie.biotope_historie SET action = 'I' WHERE status LIKE '%0:%';

 .. code-block:: psql

  UPDATE historie.biotope_historie SET action = 'D' WHERE status LIKE '%1:%';

 .. code-block:: psql
  
  ALTER TABLE historie.biotope_historie ADD CONSTRAINT biotope_historie_pkey PRIMARY KEY (revision);

 .. code-block:: psql

  ALTER TABLE historie.biotope_historie ADD CONSTRAINT biotope_historie_action_check CHECK (action = ANY (ARRAY['I'::text, 'D'::text, 'U'::text]));

 .. code-block:: psql

  DELETE FROM biotope.biotope WHERE status LIKE '%1:%';

 .. code-block:: psql
   
  ALTER TABLE historie.biotope_historie OWNER to biotope_admin;

 .. code-block:: psql
   
  GRANT ALL ON TABLE historie.biotope_historie TO biotope_admin;

 .. code-block:: psql
   
  GRANT INSERT, SELECT ON TABLE historie.biotope_historie TO biotope_editor;

Als nächstes werden eine Reihe notwendiger Indices für die Tabelle ``historie.biotope_historie`` erstellt. Als erstes der Index ``historie.biotope_historie_action_idx``.
 
  .. code-block:: psql
       
   CREATE INDEX biotope_historie_action_idx
     ON historie.biotope_historie USING btree
     (action COLLATE pg_catalog."default" ASC NULLS LAST)
     TABLESPACE pg_default;

Danach der Index ``historie.biotope_historie_modtime_idx``.
 
 .. code-block:: psql

  CREATE INDEX biotope_historie_modtime_idx
   ON historie.biotope_historie USING btree
   (modtime ASC NULLS LAST)
   TABLESPACE pg_default;

Dann der Index ``historie.biotope_revision_idx``.
 
 .. code-block:: psql   
   
  CREATE INDEX biotope_revision_idx
   ON historie.biotope_historie USING btree
   (revision ASC NULLS LAST)
   TABLESPACE pg_default;

und abschliessend der Index ``historie.sidx_biotope_historie_wkb_geometry``.

 .. code-block:: psql 
 
  CREATE INDEX sidx_biotope_historie_wkb_geometry
   ON historie.biotope_historie USING gist
   (wkb_geometry)
   TABLESPACE pg_default;

Die entsprechenden SQL Befehle sind auch in der Datei ``biotope_historie_tabelle.sql`` im Ordner ``Schema_historie`` abgelegt.

Funktion biotope_historie_snapshot
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Als zweites wird im Schema ``historie`` die Funktion ``historie.create_snapshot(time_stamp timestamp without time zone)`` erstellt.

 .. important::

  Im folgendem SQL Code müssen die beiden Einträge ``'$BODY$'`` ersetzt werden durch ``$BODY$``, also ohne Hochkomma.

 .. code-block:: psql
 
   CREATE OR REPLACE FUNCTION historie.create_snapshot(time_stamp timestamp without time zone)
     RETURNS integer
     LANGUAGE 'plpgsql'
     COST 100
     VOLATILE PARALLEL UNSAFE
   AS '$BODY$'
   DECLARE num_rows INTEGER;
   BEGIN
     DROP TABLE IF EXISTS historie.biotope_historie_snapshot;
     CREATE TABLE historie."biotope_historie_snapshot" (LIKE historie.biotope_historie INCLUDING ALL);

     INSERT INTO historie.biotope_historie_snapshot SELECT * FROM historie.biotope_historie
       WHERE action = 'I' AND modtime <= time_stamp;
   
     UPDATE historie."biotope_historie_snapshot"  SET ogc_fid = em.ogc_fid,identity = em.identity,objnr_sbk = em.objnr_sbk,unr = em.unr,ausbildung = em.ausbildung,pflege_zustand = em.pflege_zustand,pflege_entwicklung = em.pflege_entwicklung,pflege_bedarf = em.pflege_bedarf,pflege_rueckstand = em.pflege_rueckstand,pflege = em.pflege,bt_code = em.bt_code,wert = em.wert,schutzstatus = em.schutzstatus,biotopkuerzel = em.biotopkuerzel,erhaltungszustand = em.erhaltungszustand,geprueft = em.geprueft,biotoptyp_art_nr = em.biotoptyp_art_nr,biotoptyp2_art_nr = em.biotoptyp2_art_nr,waldbiotop = em.waldbiotop,objnr_landkreise = em.objnr_landkreise,tk25 = em.tk25,name = em.name,status = em.status,flaeche = em.flaeche,num_geom = em.num_geom,objnr = em.objnr,umfang = em.umfang,beschreibung = em.beschreibung,erfassung_wann = em.erfassung_wann,erfassung_wer = em.erfassung_wer,erfassung_bemerkung = em.erfassung_bemerkung,bearbeitung_wann = em.bearbeitung_wann,bearbeitung_wer = em.bearbeitung_wer,bearbeitung_bemerkung = em.bearbeitung_bemerkung,loeschung_wann = em.loeschung_wann,loeschung_wer = em.loeschung_wer,loeschung_bemerkung = em.loeschung_bemerkung,bekanntmachung_wann = em.bekanntmachung_wann,bekanntmachung_wer = em.bekanntmachung_wer,bekanntmachung_bemerkung = em.bekanntmachung_bemerkung,wkb_geometry = em.wkb_geometry,tiere = em.tiere,pflanzen = em.pflanzen,pilze = em.pilze,stoerungen = em.stoerungen,beeintraechtigung_ids = em.beeintraechtigung_ids,gefahr_historisch = em.gefahr_historisch, modtime = em.modtime FROM (SELECT "ogc_fid","identity","objnr_sbk","unr","ausbildung","pflege_zustand","pflege_entwicklung","pflege_bedarf","pflege_rueckstand","pflege","bt_code","wert","schutzstatus","biotopkuerzel","erhaltungszustand","geprueft","biotoptyp_art_nr","biotoptyp2_art_nr","waldbiotop","objnr_landkreise","tk25","name","status","flaeche","num_geom","objnr","umfang","beschreibung","erfassung_wann","erfassung_wer","erfassung_bemerkung","bearbeitung_wann","bearbeitung_wer","bearbeitung_bemerkung","loeschung_wann","loeschung_wer","loeschung_bemerkung","bekanntmachung_wann","bekanntmachung_wer","bekanntmachung_bemerkung","wkb_geometry","tiere","pflanzen","pilze","stoerungen","beeintraechtigung_ids","gefahr_historisch",
       modtime FROM historie."biotope_historie" WHERE action = 'U'
       AND modtime <= time_stamp ORDER BY modtime ASC) AS em
       WHERE historie."biotope_historie_snapshot".ogc_fid = em.ogc_fid;
   
     DELETE FROM historie.biotope_historie_snapshot WHERE ogc_fid in (SELECT ogc_fid FROM 
       historie.biotope_historie WHERE action = 'D' AND modtime <= time_stamp);
   
     num_rows := (SELECT COUNT(*) from historie."biotope_historie_snapshot");
     RETURN num_rows;
   
   EXCEPTION
   
     WHEN data_exception THEN
        RAISE WARNING '[historie.create_snapshot] - UDF ERROR [DATA EXCEPTION] - SQLSTATE: %, SQLERRM: %',SQLSTATE,SQLERRM;
        RETURN NULL;
     WHEN unique_violation THEN
        RAISE WARNING '[historie.create_snapshot] - UDF ERROR [UNIQUE] - SQLSTATE: %, SQLERRM: %',SQLSTATE,SQLERRM;
        RETURN NULL;
     WHEN OTHERS THEN
        RAISE WARNING '[historie.create_snapshot] - UDF ERROR [OTHER] - SQLSTATE: %, SQLERRM: %',SQLSTATE,SQLERRM;
        RETURN NULL;
   END;
   '$BODY$';

Die Funktion ``historie.create_snapshot(timestamp without time zone)`` wird dem Benutzer ``biotope_admin`` als Besitzer zugewiesen.

  .. code-block:: psql

   ALTER FUNCTION historie.create_snapshot(timestamp without time zone) OWNER TO biotope_admin;

Die entsprechenden SQL Befehle sind auch in der Datei ``create_snapshot_function.sql`` im Ordner ``Schema_historie`` abgelegt.

View biotope_deleted_features
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Als drittes wird im Schema ``historie`` der View ``historie.biotope_deleted_features`` erstellt.

  .. code-block:: psql

   CREATE OR REPLACE VIEW historie.biotope_deleted_features
    AS
    SELECT biotope_historie.ogc_fid,
    biotope_historie.identity,
    biotope_historie.objnr_sbk,
    biotope_historie.unr,
    biotope_historie.ausbildung,
    biotope_historie.pflege_zustand_orig,
    biotope_historie.pflege_entwicklung,
    biotope_historie.pflege_bedarf,
    biotope_historie.pflege_rueckstand,
    biotope_historie.pflege,
    biotope_historie.bt_code,
    biotope_historie.wert,
    biotope_historie.schutzstatus,
    biotope_historie.biotopkuerzel,
    biotope_historie.erhaltungszustand,
    biotope_historie.geprueft,
    biotope_historie.biotoptyp_art_nr,
    biotope_historie.biotoptyp2_art_nr,
    biotope_historie.waldbiotop,
    biotope_historie.objnr_landkreise,
    biotope_historie.tk25,
    biotope_historie.name,
    biotope_historie.status,
    biotope_historie.flaeche,
    biotope_historie.num_geom,
    biotope_historie.objnr,
    biotope_historie.umfang,
    biotope_historie.beschreibung,
    biotope_historie.erfassung_wann,
    biotope_historie.erfassung_wer,
    biotope_historie.erfassung_bemerkung,
    biotope_historie.bearbeitung_wann,
    biotope_historie.bearbeitung_wer,
    biotope_historie.bearbeitung_bemerkung,
    biotope_historie.loeschung_wann,
    biotope_historie.loeschung_wer,
    biotope_historie.loeschung_bemerkung,
    biotope_historie.bekanntmachung_wann,
    biotope_historie.bekanntmachung_wer,
    biotope_historie.bekanntmachung_bemerkung,
    biotope_historie.wkb_geometry,
    biotope_historie.tiere,
    biotope_historie.pflanzen,
    biotope_historie.pilze,
    biotope_historie.stoerungen,
    biotope_historie.beeintraechtigung_ids,
    biotope_historie.gefahr_historisch,
    biotope_historie.modtime,
    biotope_historie.action,
    biotope_historie.revision
    FROM historie.biotope_historie
    WHERE biotope_historie.action = 'D'::text;

Der View ``historie.biotope_deleted_features`` wird dem Benutzer ``biotope_admin`` als Besitzer zugewiesen. Ausserdem werden diesem und dem Benutzer ``biotope_editor`` Rechte auf die Tabelle gegeben. 

 .. code-block:: psql
   
  ALTER TABLE historie.biotope_deleted_features OWNER TO biotope_admin;

 .. code-block:: psql
    
  GRANT ALL ON TABLE historie.biotope_deleted_features TO biotope_admin;

 .. code-block:: psql

  GRANT SELECT ON TABLE historie.biotope_deleted_features TO biotope_editor;

Die entsprechenden SQL Befehle sind auch in der Datei ``biotope_deleted_features_view.sql`` im Ordner ``Schema_historie`` abgelegt.

Funktion log_history
~~~~~~~~~~~~~~~~~~~~

Als viertes wird im Schema ``historie`` die Trigger-Funktion ``historie.log_history()`` erstellt. Dazu wird zu Beginn eine Funktion zur Erstellung eines Zeitstempels definiert. 

 .. important::

  Im folgendem SQL Code müssen die beiden Einträge ``'$BODY$'`` ersetzt werden durch ``$BODY$``, also ohne Hochkomma.

 .. code-block:: psql

  CREATE FUNCTION historie.log_history()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
  AS '$BODY$'
  DECLARE
    testing TEXT;
  BEGIN
    IF (TG_OP = 'UPDATE') THEN
        INSERT INTO historie."biotope_historie" ("ogc_fid","identity","objnr_sbk","unr","aenderungen","ausbildung","pflege_zustand","pflege_entwicklung","pflege_bedarf","pflege_rueckstand","pflege","bt_code","wert","schutzstatus","biotopkuerzel","erhaltungszustand","geprueft","biotoptyp_art_nr","biotoptyp2_art_nr","waldbiotop","objnr_landkreise","tk25","name","status","flaeche","num_geom","objnr","umfang","beschreibung","erfassung_wann","erfassung_wer","erfassung_bemerkung","bearbeitung_wann","bearbeitung_wer","bearbeitung_bemerkung","loeschung_wann","loeschung_wer","loeschung_bemerkung","bekanntmachung_wann","bekanntmachung_wer","bekanntmachung_bemerkung","wkb_geometry","stoerungen","beeintraechtigung_ids","gefahr_historisch", action, modtime)
        VALUES (NEW."ogc_fid",NEW."identity",NEW."objnr_sbk",NEW."unr",NEW."aenderungen",NEW."ausbildung",NEW."pflege_zustand",NEW."pflege_entwicklung",NEW."pflege_bedarf",NEW."pflege_rueckstand",NEW."pflege",NEW."bt_code",NEW."wert",NEW."schutzstatus",NEW."biotopkuerzel",NEW."erhaltungszustand",NEW."geprueft",NEW."biotoptyp_art_nr",NEW."biotoptyp2_art_nr",NEW."waldbiotop",NEW."objnr_landkreise",NEW."tk25",NEW."name",NEW."status",NEW."flaeche",NEW."num_geom",NEW."objnr",NEW."umfang",NEW."beschreibung",NEW."erfassung_wann",NEW."erfassung_wer",NEW."erfassung_bemerkung",NEW."bearbeitung_wann",NEW."bearbeitung_wer",NEW."bearbeitung_bemerkung",NEW."loeschung_wann",NEW."loeschung_wer",NEW."loeschung_bemerkung",NEW."bekanntmachung_wann",NEW."bekanntmachung_wer",NEW."bekanntmachung_bemerkung",NEW."wkb_geometry",NEW."stoerungen",NEW."beeintraechtigung_ids",NEW."gefahr_historisch", 'U', now());
        RETURN NEW;
    ELSIF (TG_OP = 'DELETE') THEN
        INSERT INTO historie."biotope_historie" ("ogc_fid","identity","objnr_sbk","unr","aenderungen","ausbildung","pflege_zustand","pflege_entwicklung","pflege_bedarf","pflege_rueckstand","pflege","bt_code","wert","schutzstatus","biotopkuerzel","erhaltungszustand","geprueft","biotoptyp_art_nr","biotoptyp2_art_nr","waldbiotop","objnr_landkreise","tk25","name","status","flaeche","num_geom","objnr","umfang","beschreibung","erfassung_wann","erfassung_wer","erfassung_bemerkung","bearbeitung_wann","bearbeitung_wer","bearbeitung_bemerkung","loeschung_wann","loeschung_wer","loeschung_bemerkung","bekanntmachung_wann","bekanntmachung_wer","bekanntmachung_bemerkung","wkb_geometry","stoerungen","beeintraechtigung_ids","gefahr_historisch", action, modtime)
        VALUES (OLD."ogc_fid",OLD."identity",OLD."objnr_sbk",OLD."unr",OLD."aenderungen",OLD."ausbildung",OLD."pflege_zustand",OLD."pflege_entwicklung",OLD."pflege_bedarf",OLD."pflege_rueckstand",OLD."pflege",OLD."bt_code",OLD."wert",OLD."schutzstatus",OLD."biotopkuerzel",OLD."erhaltungszustand",OLD."geprueft",OLD."biotoptyp_art_nr",OLD."biotoptyp2_art_nr",OLD."waldbiotop",OLD."objnr_landkreise",OLD."tk25",OLD."name",OLD."status",OLD."flaeche",OLD."num_geom",OLD."objnr",OLD."umfang",OLD."beschreibung",OLD."erfassung_wann",OLD."erfassung_wer",OLD."erfassung_bemerkung",OLD."bearbeitung_wann",OLD."bearbeitung_wer",OLD."bearbeitung_bemerkung",OLD."loeschung_wann",OLD."loeschung_wer",OLD."loeschung_bemerkung",OLD."bekanntmachung_wann",OLD."bekanntmachung_wer",OLD."bekanntmachung_bemerkung",OLD."wkb_geometry",OLD."stoerungen",OLD."beeintraechtigung_ids",OLD."gefahr_historisch", 'D', now());
        RETURN OLD;
    ELSIF (TG_OP = 'INSERT') THEN
        INSERT INTO historie."biotope_historie" ("ogc_fid","identity","objnr_sbk","unr","aenderungen","ausbildung","pflege_zustand","pflege_entwicklung","pflege_bedarf","pflege_rueckstand","pflege","bt_code","wert","schutzstatus","biotopkuerzel","erhaltungszustand","geprueft","biotoptyp_art_nr","biotoptyp2_art_nr","waldbiotop","objnr_landkreise","tk25","name","status","flaeche","num_geom","objnr","umfang","beschreibung","erfassung_wann","erfassung_wer","erfassung_bemerkung","bearbeitung_wann","bearbeitung_wer","bearbeitung_bemerkung","loeschung_wann","loeschung_wer","loeschung_bemerkung","bekanntmachung_wann","bekanntmachung_wer","bekanntmachung_bemerkung","wkb_geometry","stoerungen","beeintraechtigung_ids","gefahr_historisch", action, modtime)
        VALUES (NEW."ogc_fid",NEW."identity",NEW."objnr_sbk",NEW."unr",NEW."aenderungen",NEW."ausbildung",NEW."pflege_zustand",NEW."pflege_entwicklung",NEW."pflege_bedarf",NEW."pflege_rueckstand",NEW."pflege",NEW."bt_code",NEW."wert",NEW."schutzstatus",NEW."biotopkuerzel",NEW."erhaltungszustand",NEW."geprueft",NEW."biotoptyp_art_nr",NEW."biotoptyp2_art_nr",NEW."waldbiotop",NEW."objnr_landkreise",NEW."tk25",NEW."name",NEW."status",NEW."flaeche",NEW."num_geom",NEW."objnr",NEW."umfang",NEW."beschreibung",NEW."erfassung_wann",NEW."erfassung_wer",NEW."erfassung_bemerkung",NEW."bearbeitung_wann",NEW."bearbeitung_wer",NEW."bearbeitung_bemerkung",NEW."loeschung_wann",NEW."loeschung_wer",NEW."loeschung_bemerkung",NEW."bekanntmachung_wann",NEW."bekanntmachung_wer",NEW."bekanntmachung_bemerkung",NEW."wkb_geometry",NEW."stoerungen",NEW."beeintraechtigung_ids",NEW."gefahr_historisch", 'I', now());
        RETURN NEW;
    ELSE
        RAISE WARNING '[historie.log_history] - Other action occurred: %, at %',TG_OP,now();
        RETURN NULL;
    END IF;
   
  EXCEPTION
    WHEN data_exception THEN
        RAISE WARNING '[historie.log_history] - UDF ERROR [DATA EXCEPTION] - SQLSTATE: %, SQLERRM: %',SQLSTATE,SQLERRM;
        RETURN NULL;
    WHEN unique_violation THEN
        RAISE WARNING '[historie.log_history] - UDF ERROR [UNIQUE] - SQLSTATE: %, SQLERRM: %',SQLSTATE,SQLERRM;
        RETURN NULL;
    WHEN OTHERS THEN
        RAISE WARNING '[historie.log_history] - UDF ERROR [OTHER] - SQLSTATE: %, SQLERRM: %',SQLSTATE,SQLERRM;
        RETURN NULL;
  END;
  '$BODY$';

 .. code-block:: psql

  ALTER FUNCTION historie.log_history() OWNER TO biotope_admin;
  
TRIGGER biotope_trigger
~~~~~~~~~~~~~~~~~~~~~~~

 .. code-block:: psql
  
  CREATE TRIGGER biotope_trigger
   AFTER INSERT OR DELETE OR UPDATE 
   ON biotope.biotope
   FOR EACH ROW
   EXECUTE PROCEDURE historie.log_history();
  

Bearbeitungstabelle für den Administrator
-----------------------------------------

 .. code-block:: psql
  
  CREATE TABLE biotope.biotope_edit_biotope_admin AS TABLE biotope.biotope WITH NO DATA;

 .. code-block:: psql
  
  ALTER TABLE biotope.biotope_edit_biotope_admin ADD PRIMARY KEY (ogc_fid);

 .. code-block:: psql

  ALTER TABLE biotope.biotope_edit_biotope_admin ALTER COLUMN ogc_fid SET DEFAULT nextval('biotope.biotope_ogc_fid_seq'::regclass) ;
  
 .. code-block:: psql
  
  ALTER TABLE "biotope"."biotope_edit_biotope_admin" ALTER COLUMN objnr SET DEFAULT nextval_objnr();

 .. code-block:: psql

  ALTER TABLE biotope.biotope_edit_biotope_admin ALTER COLUMN beeintraechtigung_ids type integer[] USING beeintraechtigung_ids::integer[];

 .. code-block:: psql

  ALTER TABLE biotope.biotope_edit_biotope_admin ALTER COLUMN gefahrlevel TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql
 
  ALTER TABLE biotope.biotope_edit_biotope_admin ALTER COLUMN status TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope_edit_biotope_admin ADD COLUMN pflege_zustand_code INTEGER;

 .. code-block:: psql
  
  CREATE INDEX sidx_biotope_edit_biotope_admin_wkb_geometry
   ON biotope.biotope_edit_biotope_admin USING gist
   (wkb_geometry)
   TABLESPACE pg_default;

 .. code-block:: psql
  
  GRANT SELECT, INSERT, UPDATE, DELETE, TRUNCATE ON TABLE biotope.biotope_edit_biotope_admin TO biotope_admin;

 .. code-block:: psql

  GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE biotope.locks TO biotope_admin;

Bearbeitungstabelle für die Editorgruppe
----------------------------------------

 .. code-block:: psql

  GRANT USAGE ON SCHEMA biotope TO biotope_editor;

 .. code-block:: psql

  GRANT USAGE ON SCHEMA historie TO biotope_editor;

 .. code-block:: psql
 
  GRANT USAGE ON SCHEMA referenzen TO biotope_editor;

 .. code-block:: psql

  GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA biotope to biotope_editor;

 .. code-block:: psql

  GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA historie to biotope_editor;

 .. code-block:: psql

   GRANT SELECT ON ALL TABLES IN SCHEMA referenzen TO biotope_editor;
 
 .. code-block:: psql
  
  GRANT SELECT ON ALL TABLES IN SCHEMA historie TO biotope_editor;

 .. code-block:: psql

  GRANT SELECT ON ALL TABLES IN SCHEMA biotope TO biotope_editor;

 .. code-block:: psql

  GRANT INSERT, UPDATE, DELETE ON TABLE biotope.biotope TO biotope_editor;

 .. code-block:: psql

  GRANT INSERT, UPDATE ON TABLE historie.biotope_historie TO biotope_editor;

 .. code-block:: psql

  GRANT SELECT ON TABLE biotope.locked_biotope TO biotope_editor;

 .. code-block:: psql

  GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE biotope.locks TO biotope_editor;

Anlegen eines Beispiel Bearbeiters
----------------------------------

 .. code-block:: psql
  
  CREATE ROLE mustermann WITH
   LOGIN
   NOSUPERUSER
   IN ROLE biotope_editor
   INHERIT
   NOCREATEDB
   NOCREATEROLE
   NOREPLICATION
   CONNECTION LIMIT -1
   PASSWORD 'xxx';

 .. code-block:: psql
 
  CREATE TABLE biotope.biotope_edit_mustermann AS TABLE biotope.biotope WITH NO DATA;


 .. code-block:: psql

  ALTER TABLE biotope.biotope_edit_mustermann ADD PRIMARY KEY (ogc_fid);

 .. code-block:: psql

  ALTER TABLE biotope.biotope_edit_mustermann ALTER COLUMN ogc_fid SET DEFAULT nextval('biotope.biotope_ogc_fid_seq'::regclass) ;
  
 .. code-block:: psql  
  
  ALTER TABLE biotope.biotope_edit_mustermann ALTER COLUMN objnr SET DEFAULT nextval_objnr();
  
 .. code-block:: psql  
  
  ALTER TABLE biotope.biotope_edit_mustermann ALTER COLUMN beeintraechtigung_ids type integer[] USING beeintraechtigung_ids::integer[];
  
 .. code-block:: psql
  
  ALTER TABLE biotope.biotope_edit_mustermann ALTER COLUMN gefahrlevel TYPE character varying COLLATE pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope_edit_mustermann ALTER COLUMN status TYPE character varying COLLATE  pg_catalog."default";

 .. code-block:: psql

  ALTER TABLE biotope.biotope_edit_mustermann OWNER to biotope_admin;

 .. code-block:: psql

  GRANT ALL ON TABLE biotope.biotope_edit_mustermann TO biotope_admin;

 .. code-block:: psql

  GRANT SELECT, INSERT, UPDATE, DELETE, TRUNCATE ON TABLE biotope.biotope_edit_mustermann TO biotope_editor;

 .. code-block:: psql

  CREATE INDEX sidx_biotope_edit_mustermann_wkb_geometry
   ON biotope.biotope_edit_mustermann USING gist
   (wkb_geometry)
   TABLESPACE pg_default; 

Verwendung des Import Skripts
-----------------------------

Zusammengefasst finden Sie die Umsetzung des Datenmodells auch in den Skripten im Verzeichnis ``skripte`` und den Ablauf im Skript IMPORT.sh.

 .. code-block:: bash
 
  #!/bin/bash
  # USAGE: bash IMPORT.sh &> /tmp/biotopmanager.log
  cat create_database.sql | psql
  cat create_datamodell.sql | PGPASSWORD=xxx psql -U biotope_admin biotope
  cat create_biotope_schema.sql | PGPASSWORD=xxx psql -U biotope_admin biotope
  #bash import_biotopdaten.sh /tmp/biotop_25833_all.geojson
  cat create_referenzen_schema.sql | PGPASSWORD=xxx psql -U biotope_admin biotope
  cat update_biotopdaten.sql | PGPASSWORD=xxx psql -U biotope_admin biotope
  cat create_historie_schema.sql | PGPASSWORD=xxx psql -U biotope_admin biotope
  cat update_biotope_admin.sql | PGPASSWORD=xxx psql -U biotope_admin biotope
  cat update_biotope_editor.sql | PGPASSWORD=xxx psql -U biotope_admin biotope
 



