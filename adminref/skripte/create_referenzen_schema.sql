-- # Referenztabellen erstellen und Daten importieren

-- # TABELLE aenderungen

CREATE SEQUENCE referenzen.aenderungen_id_seq
  INCREMENT 1
  START 1
  MINVALUE 1
  MAXVALUE 2147483647
  CACHE 1;

ALTER SEQUENCE referenzen.aenderungen_id_seq OWNER TO biotope_admin;

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

ALTER TABLE referenzen.aenderungen OWNER to biotope_admin;
GRANT ALL ON TABLE referenzen.aenderungen TO biotope_admin;
GRANT SELECT ON TABLE referenzen.aenderungen TO biotope_editor;

-- # TABELLE beeintraechtigungen

CREATE SEQUENCE referenzen.beeintraechtigungen_id_seq
  INCREMENT 1
  START 1
  MINVALUE 1
  MAXVALUE 2147483647
  CACHE 1;

ALTER SEQUENCE referenzen.beeintraechtigungen_id_seq OWNER TO biotope_admin;

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

ALTER TABLE referenzen.beeintraechtigungen OWNER to biotope_admin;
GRANT ALL ON TABLE referenzen.beeintraechtigungen TO biotope_admin;
GRANT SELECT ON TABLE referenzen.beeintraechtigungen TO biotope_editor;

-- # TABELLE biotoptypen

CREATE SEQUENCE referenzen.biotoptypen_id_seq
  INCREMENT 1
  START 1
  MINVALUE 1
  MAXVALUE 2147483647
  CACHE 1;

ALTER SEQUENCE referenzen.biotoptypen_id_seq OWNER TO biotope_admin;

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

ALTER TABLE referenzen.biotoptypen OWNER to biotope_admin;
GRANT ALL ON TABLE referenzen.biotoptypen TO biotope_admin;
GRANT SELECT ON TABLE referenzen.biotoptypen TO biotope_editor;
  
-- # TABELLE erhaltungszustand

CREATE SEQUENCE referenzen.erhaltungszustand_id_seq
  INCREMENT 1
  START 1
  MINVALUE 1
  MAXVALUE 2147483647
  CACHE 1;

ALTER SEQUENCE referenzen.erhaltungszustand_id_seq OWNER TO biotope_admin;

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

ALTER TABLE referenzen.erhaltungszustand OWNER to biotope_admin;
GRANT ALL ON TABLE referenzen.erhaltungszustand TO biotope_admin;
GRANT SELECT ON TABLE referenzen.erhaltungszustand TO biotope_editor;

-- # TABELLE gefaehrdung

CREATE SEQUENCE referenzen.gefaehrdung_id_seq
  INCREMENT 1
  START 1
  MINVALUE 1
  MAXVALUE 2147483647
  CACHE 1;

ALTER SEQUENCE referenzen.gefaehrdung_id_seq OWNER TO biotope_admin;

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
  
ALTER TABLE referenzen.gefaehrdung OWNER to biotope_admin;
GRANT ALL ON TABLE referenzen.gefaehrdung TO biotope_admin;
GRANT SELECT ON TABLE referenzen.gefaehrdung TO biotope_editor;

-- # TABELLE kartierer

CREATE SEQUENCE referenzen.kartierer_id_seq
  INCREMENT 1
  START 1
  MINVALUE 1
  MAXVALUE 2147483647
  CACHE 1;

ALTER SEQUENCE referenzen.kartierer_id_seq OWNER TO biotope_admin;
 
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

ALTER TABLE referenzen.kartierer OWNER to biotope_admin;
GRANT ALL ON TABLE referenzen.kartierer TO biotope_admin;
GRANT SELECT ON TABLE referenzen.kartierer TO biotope_editor;

-- # TABELLE massnahmen

CREATE SEQUENCE referenzen.massnahmen_id_seq
  INCREMENT 1
  START 1
  MINVALUE 1
  MAXVALUE 2147483647
  CACHE 1;

ALTER SEQUENCE referenzen.massnahmen_id_seq OWNER TO biotope_admin;
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

ALTER TABLE referenzen.massnahmen OWNER to biotope_admin;
GRANT ALL ON TABLE referenzen.massnahmen TO biotope_admin;
GRANT SELECT ON TABLE referenzen.massnahmen TO biotope_editor;
  
-- # TABELLE pflege

CREATE SEQUENCE referenzen.pflege_id_seq
  INCREMENT 1
  START 1
  MINVALUE 1
  MAXVALUE 2147483647
  CACHE 1;

ALTER SEQUENCE referenzen.pflege_id_seq OWNER TO biotope_admin;

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

ALTER TABLE referenzen.pflege OWNER to biotope_admin;
GRANT ALL ON TABLE referenzen.pflege TO biotope_admin;
GRANT SELECT ON TABLE referenzen.pflege TO biotope_editor;

-- # TABELLE schutzstatus

CREATE SEQUENCE referenzen.schutzstatus_id_seq
  INCREMENT 1
  START 1
  MINVALUE 1
  MAXVALUE 2147483647
  CACHE 1;

ALTER SEQUENCE referenzen.schutzstatus_id_seq OWNER TO biotope_admin;

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

ALTER TABLE referenzen.schutzstatus OWNER to biotope_admin;
GRANT ALL ON TABLE referenzen.schutzstatus TO biotope_admin;
GRANT SELECT ON TABLE referenzen.schutzstatus TO biotope_editor;

-- # TABELLE stoerung

CREATE SEQUENCE referenzen.stoerung_id_seq
  INCREMENT 1
  START 1
  MINVALUE 1
  MAXVALUE 2147483647
  CACHE 1;

ALTER SEQUENCE referenzen.stoerung_id_seq OWNER TO biotope_admin;

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

ALTER TABLE referenzen.stoerung OWNER to biotope_admin;
GRANT ALL ON TABLE referenzen.stoerung TO biotope_admin;
GRANT SELECT ON TABLE referenzen.stoerung TO biotope_editor;

-- # Referenztabellen importieren

-- # Änderungen
\copy referenzen.aenderungen(id, aenderung) FROM '../referenzlisten/referenz_aenderungen.csv' delimiter ';' csv header;

-- # Beeinträchtigungen
\copy referenzen.beeintraechtigungen(id, beeintraechtigungen) FROM '../referenzlisten/referenz_beeintraechtigungen.csv' delimiter ';' csv header;

-- # Biotoptypen
\copy referenzen.biotoptypen(ID,BTyp,nummer,VwV_2012,Name_2002,Name_2012,Code_2002,Code_2012,VWV_2002,Schutz,ID_Biot_LfULG_2012,ID_Biot_alt,BIOTOPTYP,UNTERGRUPPE,BIOTOPGRUPPE,LR_Gr) FROM '../referenzlisten/referenz_biotoptypen.csv' delimiter ';' csv header;

-- # Gefährdung
\copy referenzen.gefaehrdung(name, nummer, identity) FROM '../referenzlisten/referenz_gefaehrdung.csv' delimiter ';' csv header;

-- # Kartierer
\copy referenzen.kartierer(kartierer,anschrift,art_beauftragung) FROM '../referenzlisten/referenz_kartierer.csv' delimiter ';' csv header

-- # Massnahmen
\copy referenzen.massnahmen(referenz,massnahme,beschreibung,lr1,lr2,lr3,lr4,lr5) FROM '../referenzlisten/referenz_massnahmen.csv' delimiter ';' csv header

-- # Pflege
\copy referenzen.pflege(name,nummer,beschreibung,identity) FROM '../referenzlisten/referenz_pflege.csv' delimiter ';' csv header

-- # Störung
\copy referenzen.stoerung(name,nummer,identity) FROM '../referenzlisten/referenz_stoerung.csv' delimiter ';' csv header

-- # Erhaltungszustand
\copy referenzen.erhaltungszustand(id,wert) FROM '../referenzlisten/referenz_erhaltungszustand.csv' delimiter ';' csv header

-- # Schutzstatus
\copy referenzen.schutzstatus(id,wert) FROM '../referenzlisten/referenz_schutzstatus.csv' delimiter ';' csv header
