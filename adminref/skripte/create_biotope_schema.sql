-- # Datenmodell für Schema biotope erstellen

-- # Tabelle für die Biotopdaten erstellen

CREATE SEQUENCE biotope.biotope_ogc_fid_seq
  INCREMENT 1
  START 1
  MINVALUE 1
  MAXVALUE 2147483647
  CACHE 1;

ALTER SEQUENCE biotope.biotope_ogc_fid_seq OWNER TO biotope_admin;
GRANT ALL ON SEQUENCE biotope.biotope_ogc_fid_seq TO biotope_admin;
GRANT SELECT, USAGE ON SEQUENCE biotope.biotope_ogc_fid_seq TO biotope_editor;

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
  wertbestimmend character varying COLLATE pg_catalog."default", 
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
  beeintraechtigung_ids character varying COLLATE pg_catalog."default",
  gefahr_historisch text[] COLLATE pg_catalog."default",
  schutzstatus integer,
  erhaltungszustand integer,
  CONSTRAINT biotope_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS = FALSE
)
TABLESPACE pg_default;

-- # SEQUENCE biotope_objnr_seq erstellen

CREATE SEQUENCE biotope.biotope_objnr_seq
  INCREMENT 1
  START 50000
  MINVALUE 1
  MAXVALUE 9223372036854775807
  CACHE 1;

ALTER TABLE biotope.biotope OWNER to biotope_admin;
GRANT ALL ON TABLE biotope.biotope TO biotope_admin;
ALTER SEQUENCE biotope.biotope_objnr_seq OWNER TO biotope_admin;

-- # FUNKTION nextval_objnr() erstellen

CREATE OR REPLACE FUNCTION nextval_objnr()
  RETURNS TEXT
  LANGUAGE sql
  AS
  $$
    SELECT '14522-'||to_char(nextval('"biotope"."biotope_objnr_seq"'), 'FM00000');
  $$;
  
ALTER TABLE "biotope"."biotope" ALTER COLUMN objnr SET DEFAULT nextval_objnr();

-- # INDEX biotope_revision_bearbeitung_wann_idx erstellen
  
CREATE INDEX biotope_revision_bearbeitung_wann_idx
  ON biotope.biotope USING btree
  (bearbeitung_wann)
  TABLESPACE pg_default;

-- # INDEX biotope_revision_erfassung_wann_idx erstellen
    
CREATE INDEX biotope_revision_erfassung_wann_idx
  ON biotope.biotope USING btree
  (erfassung_wann)
  TABLESPACE pg_default;

-- # INDEX biotope_revision_flaeche_idx erstellen
  
CREATE INDEX biotope_revision_flaeche_idx
  ON biotope.biotope USING btree
  (flaeche)
  TABLESPACE pg_default;

-- # INDEX biotope_revision_identity_idx erstellen
    
CREATE INDEX biotope_revision_identity_idx
  ON biotope.biotope USING btree
  (identity COLLATE pg_catalog."default")
  TABLESPACE pg_default;

-- # INDEX biotope_revision_ogc_fid_idx erstellen
    
CREATE INDEX biotope_revision_ogc_fid_idx
  ON biotope.biotope USING btree
  (ogc_fid)
  TABLESPACE pg_default;

-- # INDEX biotope_revision_umfang_idx erstellen
    
CREATE INDEX biotope_revision_umfang_idx
  ON biotope.biotope USING btree
  (umfang)
  TABLESPACE pg_default;

-- # INDEX biotope_wkb_geometry_geom_idx erstellen
    
CREATE INDEX biotope_wkb_geometry_geom_idx
  ON biotope.biotope USING gist
  (wkb_geometry)
  TABLESPACE pg_default;

-- # TABELLE locks erstellen

CREATE SEQUENCE biotope.locks_id_seq
  INCREMENT 1
  START 1
  MINVALUE 1
  MAXVALUE 2147483647
  CACHE 1;

ALTER SEQUENCE biotope.locks_id_seq OWNER TO biotope_admin;

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

ALTER TABLE biotope.locks OWNER to biotope_admin;
GRANT ALL ON TABLE biotope.locks TO biotope_admin;


