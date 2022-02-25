-- # Datenbankmodell für Schema historie erstellen

CREATE SEQUENCE historie.biotope_historie_revision_seq
   INCREMENT 1
   START 1
   MINVALUE 1
   MAXVALUE 9223372036854775807
   CACHE 1;

ALTER SEQUENCE historie.biotope_historie_revision_seq OWNER TO biotope_admin;
GRANT ALL ON SEQUENCE historie.biotope_historie_revision_seq TO biotope_admin;
GRANT SELECT, USAGE ON SEQUENCE historie.biotope_historie_revision_seq TO biotope_editor;

-- # Tabelle biotope_historie

CREATE TABLE historie.biotope_historie AS TABLE biotope.biotope;

ALTER TABLE historie.biotope_historie ADD COLUMN modtime TIMESTAMP WITH time zone;
UPDATE historie.biotope_historie SET modtime = now();

-- ALTER TABLE historie.biotope_historie ALTER COLUMN gefahrlevel TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE historie.biotope_historie ALTER COLUMN status TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE historie.biotope_historie ADD COLUMN action text COLLATE pg_catalog."default";
ALTER TABLE historie.biotope_historie ADD COLUMN revision bigint NOT NULL DEFAULT nextval('historie.biotope_historie_revision_seq'::regclass);

--ALTER TABLE historie.biotope_historie ADD COLUMN aenderungen integer;
UPDATE historie.biotope_historie SET action = 'I' WHERE status LIKE '%0:%';
UPDATE historie.biotope_historie SET action = 'D' WHERE status LIKE '%1:%';

ALTER TABLE historie.biotope_historie ADD CONSTRAINT biotope_historie_pkey PRIMARY KEY (revision);
ALTER TABLE historie.biotope_historie ADD CONSTRAINT biotope_historie_action_check CHECK (action = ANY (ARRAY['I'::text, 'D'::text, 'U'::text]));

DELETE FROM biotope.biotope WHERE status LIKE '%1:%';

ALTER TABLE historie.biotope_historie OWNER to biotope_admin;
GRANT ALL ON TABLE historie.biotope_historie TO biotope_admin;
GRANT INSERT, SELECT ON TABLE historie.biotope_historie TO biotope_editor;

-- # INDEX historie.biotope_historie_action_idx
 
CREATE INDEX biotope_historie_action_idx
  ON historie.biotope_historie USING btree
  (action COLLATE pg_catalog."default" ASC NULLS LAST)
  TABLESPACE pg_default;

-- # INDEX historie.biotope_historie_modtime_idx
 
CREATE INDEX biotope_historie_modtime_idx
  ON historie.biotope_historie USING btree
  (modtime ASC NULLS LAST)
  TABLESPACE pg_default;

-- # INDEX historie.biotope_revision_idx

CREATE INDEX biotope_revision_idx
   ON historie.biotope_historie USING btree
   (revision ASC NULLS LAST)
   TABLESPACE pg_default;

-- # INDEX historie.sidx_biotope_historie_wkb_geometry

CREATE INDEX sidx_biotope_historie_wkb_geometry
   ON historie.biotope_historie USING gist
   (wkb_geometry)
   TABLESPACE pg_default;

-- # TABELLE biotope_historie_snapshot
 
--CREATE OR REPLACE FUNCTION historie.create_snapshot(time_stamp timestamp without time zone)
--  RETURNS integer
--  LANGUAGE 'plpgsql'
--  COST 100
--  VOLATILE PARALLEL UNSAFE
--AS $BODY$
--DECLARE num_rows INTEGER;
--BEGIN
--  DROP TABLE IF EXISTS historie.biotope_historie_snapshot;
--  CREATE TABLE historie."biotope_historie_snapshot" (LIKE historie.biotope_historie INCLUDING ALL);
--
--  INSERT INTO historie.biotope_historie_snapshot SELECT * FROM historie.biotope_historie
--    WHERE action = 'I' AND modtime <= time_stamp;
--   
--  UPDATE historie."biotope_historie_snapshot"  SET ogc_fid = em.ogc_fid,identity = em.identity,objnr_sbk = em.objnr_sbk,unr = em.unr,ausbildung = em.ausbildung,pflege_zustand = em.pflege_zustand,pflege_entwicklung = em.pflege_entwicklung,pflege_bedarf = em.pflege_bedarf,pflege_rueckstand = em.pflege_rueckstand,pflege = em.pflege,bt_code = em.bt_code,wert = em.wert,schutzstatus = em.schutzstatus,biotopkuerzel = em.biotopkuerzel,erhaltungszustand = em.erhaltungszustand,geprueft = em.geprueft,biotoptyp_art_nr = em.biotoptyp_art_nr,biotoptyp2_art_nr = em.biotoptyp2_art_nr,waldbiotop = em.waldbiotop,objnr_landkreise = em.objnr_landkreise,tk25 = em.tk25,name = em.name,status = em.status,flaeche = em.flaeche,num_geom = em.num_geom,objnr = em.objnr,umfang = em.umfang,beschreibung = em.beschreibung,erfassung_wann = em.erfassung_wann,erfassung_wer = em.erfassung_wer,erfassung_bemerkung = em.erfassung_bemerkung,bearbeitung_wann = em.bearbeitung_wann,bearbeitung_wer = em.bearbeitung_wer,bearbeitung_bemerkung = em.bearbeitung_bemerkung,loeschung_wann = em.loeschung_wann,loeschung_wer = em.loeschung_wer,loeschung_bemerkung = em.loeschung_bemerkung,bekanntmachung_wann = em.bekanntmachung_wann,bekanntmachung_wer = em.bekanntmachung_wer,bekanntmachung_bemerkung = em.bekanntmachung_bemerkung,wkb_geometry = em.wkb_geometry,tiere = em.tiere,pflanzen = em.pflanzen,pilze = em.pilze,stoerungen = em.stoerungen,beeintraechtigung_ids = em.beeintraechtigung_ids,gefahr_historisch = em.gefahr_historisch, modtime = em.modtime FROM (SELECT "ogc_fid","identity","objnr_sbk","unr","ausbildung","pflege_zustand","pflege_entwicklung","pflege_bedarf","pflege_rueckstand","pflege","bt_code","wert","schutzstatus","biotopkuerzel","erhaltungszustand","geprueft","biotoptyp_art_nr","biotoptyp2_art_nr","waldbiotop","objnr_landkreise","tk25","name","status","flaeche","num_geom","objnr","umfang","beschreibung","erfassung_wann","erfassung_wer","erfassung_bemerkung","bearbeitung_wann","bearbeitung_wer","bearbeitung_bemerkung","loeschung_wann","loeschung_wer","loeschung_bemerkung","bekanntmachung_wann","bekanntmachung_wer","bekanntmachung_bemerkung","wkb_geometry","tiere","pflanzen","pilze","stoerungen","beeintraechtigung_ids","gefahr_historisch",
--    modtime FROM historie."biotope_historie" WHERE action = 'U'
--    AND modtime <= time_stamp ORDER BY modtime ASC) AS em
--    WHERE historie."biotope_historie_snapshot".ogc_fid = em.ogc_fid;
--   
--  DELETE FROM historie.biotope_historie_snapshot WHERE ogc_fid in (SELECT ogc_fid FROM 
--    historie.biotope_historie WHERE action = 'D' AND modtime <= time_stamp);
--  
--  num_rows := (SELECT COUNT(*) from historie."biotope_historie_snapshot");
--  RETURN num_rows;
--   
--EXCEPTION
--   
--  WHEN data_exception THEN
--     RAISE WARNING '[historie.create_snapshot] - UDF ERROR [DATA EXCEPTION] - SQLSTATE: %, SQLERRM: %',SQLSTATE,SQLERRM;
--     RETURN NULL;
--  WHEN unique_violation THEN
--     RAISE WARNING '[historie.create_snapshot] - UDF ERROR [UNIQUE] - SQLSTATE: %, SQLERRM: %',SQLSTATE,SQLERRM;
--     RETURN NULL;
--  WHEN OTHERS THEN
--     RAISE WARNING '[historie.create_snapshot] - UDF ERROR [OTHER] - SQLSTATE: %, SQLERRM: %',SQLSTATE,SQLERRM;
--     RETURN NULL;
-- END;
--   $BODY$;
--
--ALTER FUNCTION historie.create_snapshot(timestamp without time zone) OWNER TO biotope_admin;

-- # VIEW biotope_deleted_features

CREATE OR REPLACE VIEW historie.biotope_deleted_features
  AS
  SELECT biotope_historie.ogc_fid,
    biotope_historie.identity,
    biotope_historie.objnr_sbk,
    biotope_historie.unr,
    biotope_historie.ausbildung,
    biotope_historie.pflege_zustand,
    biotope_historie.pflege_entwicklung,
    biotope_historie.pflege_bedarf,
    biotope_historie.pflege_rueckstand,
    biotope_historie.pflege,
    biotope_historie.bt_code,
    biotope_historie.wert,
    biotope_historie.wertbestimmend,
    biotope_historie.schutzstatus,
    biotope_historie.biotopkuerzel,
    biotope_historie.stoer_gefahrlvl_gefahrhist,
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
    biotope_historie.beeintraechtigung_ids,
    biotope_historie.modtime,
    biotope_historie.action,
    biotope_historie.revision
    FROM historie.biotope_historie
  WHERE biotope_historie.action = 'D'::text;

ALTER TABLE historie.biotope_deleted_features OWNER TO biotope_admin;

GRANT ALL ON TABLE historie.biotope_deleted_features TO biotope_admin;
GRANT SELECT ON TABLE historie.biotope_deleted_features TO biotope_editor;

-- # FUNKTION log_history()

CREATE FUNCTION historie.log_history()
  RETURNS trigger
  LANGUAGE 'plpgsql'
  COST 100
  VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
  testing TEXT;
BEGIN
  IF (TG_OP = 'UPDATE') THEN
      INSERT INTO historie."biotope_historie" ("ogc_fid","identity","objnr_sbk","unr","aenderungen","ausbildung","pflege_zustand","pflege_entwicklung","pflege_bedarf","pflege_rueckstand","pflege","bt_code","wert","wertbestimmend","schutzstatus","biotopkuerzel","erhaltungszustand","geprueft","biotoptyp_art_nr","biotoptyp2_art_nr","waldbiotop","objnr_landkreise","tk25","name","status","flaeche","num_geom","objnr","umfang","beschreibung","erfassung_wann","erfassung_wer","erfassung_bemerkung","bearbeitung_wann","bearbeitung_wer","bearbeitung_bemerkung","loeschung_wann","loeschung_wer","loeschung_bemerkung","bekanntmachung_wann","bekanntmachung_wer","bekanntmachung_bemerkung","wkb_geometry","beeintraechtigung_ids","stoer_gefahrlvl_gefahrhist", action, modtime)
      VALUES (NEW."ogc_fid",NEW."identity",NEW."objnr_sbk",NEW."unr",NEW."aenderungen",NEW."ausbildung",NEW."pflege_zustand",NEW."pflege_entwicklung",NEW."pflege_bedarf",NEW."pflege_rueckstand",NEW."pflege",NEW."bt_code",NEW."wert",NEW."wertbestimmend",NEW."schutzstatus",NEW."biotopkuerzel",NEW."erhaltungszustand",NEW."geprueft",NEW."biotoptyp_art_nr",NEW."biotoptyp2_art_nr",NEW."waldbiotop",NEW."objnr_landkreise",NEW."tk25",NEW."name",NEW."status",NEW."flaeche",NEW."num_geom",NEW."objnr",NEW."umfang",NEW."beschreibung",NEW."erfassung_wann",NEW."erfassung_wer",NEW."erfassung_bemerkung",NEW."bearbeitung_wann",NEW."bearbeitung_wer",NEW."bearbeitung_bemerkung",NEW."loeschung_wann",NEW."loeschung_wer",NEW."loeschung_bemerkung",NEW."bekanntmachung_wann",NEW."bekanntmachung_wer",NEW."bekanntmachung_bemerkung",NEW."wkb_geometry",NEW."stoer_gefahrlvl_gefahrhist",NEW."beeintraechtigung_ids", 'U', now());
      RETURN NEW;
  ELSIF (TG_OP = 'DELETE') THEN
      INSERT INTO historie."biotope_historie" ("ogc_fid","identity","objnr_sbk","unr","aenderungen","ausbildung","pflege_zustand","pflege_entwicklung","pflege_bedarf","pflege_rueckstand","pflege","bt_code","wert","wertbestimmend","schutzstatus","biotopkuerzel","erhaltungszustand","geprueft","biotoptyp_art_nr","biotoptyp2_art_nr","waldbiotop","objnr_landkreise","tk25","name","status","flaeche","num_geom","objnr","umfang","beschreibung","erfassung_wann","erfassung_wer","erfassung_bemerkung","bearbeitung_wann","bearbeitung_wer","bearbeitung_bemerkung","loeschung_wann","loeschung_wer","loeschung_bemerkung","bekanntmachung_wann","bekanntmachung_wer","bekanntmachung_bemerkung","wkb_geometry","stoer_gefahrlvl_gefahrhist","beeintraechtigung_ids", action, modtime)
      VALUES (OLD."ogc_fid",OLD."identity",OLD."objnr_sbk",OLD."unr",OLD."aenderungen",OLD."ausbildung",OLD."pflege_zustand",OLD."pflege_entwicklung",OLD."pflege_bedarf",OLD."pflege_rueckstand",OLD."pflege",OLD."bt_code",OLD."wert",OLD."wertbestimmend",OLD."schutzstatus",OLD."biotopkuerzel",OLD."erhaltungszustand",OLD."geprueft",OLD."biotoptyp_art_nr",OLD."biotoptyp2_art_nr",OLD."waldbiotop",OLD."objnr_landkreise",OLD."tk25",OLD."name",OLD."status",OLD."flaeche",OLD."num_geom",OLD."objnr",OLD."umfang",OLD."beschreibung",OLD."erfassung_wann",OLD."erfassung_wer",OLD."erfassung_bemerkung",OLD."bearbeitung_wann",OLD."bearbeitung_wer",OLD."bearbeitung_bemerkung",OLD."loeschung_wann",OLD."loeschung_wer",OLD."loeschung_bemerkung",OLD."bekanntmachung_wann",OLD."bekanntmachung_wer",OLD."bekanntmachung_bemerkung",OLD."wkb_geometry",OLD."stoer_gefahrlvl_gefahrhist",OLD."beeintraechtigung_ids", 'D', now());
      RETURN OLD;
  ELSIF (TG_OP = 'INSERT') THEN
      INSERT INTO historie."biotope_historie" ("ogc_fid","identity","objnr_sbk","unr","aenderungen","ausbildung","pflege_zustand","pflege_entwicklung","pflege_bedarf","pflege_rueckstand","pflege","bt_code","wert","wertbestimmend","schutzstatus","biotopkuerzel","erhaltungszustand","geprueft","biotoptyp_art_nr","biotoptyp2_art_nr","waldbiotop","objnr_landkreise","tk25","name","status","flaeche","num_geom","objnr","umfang","beschreibung","erfassung_wann","erfassung_wer","erfassung_bemerkung","bearbeitung_wann","bearbeitung_wer","bearbeitung_bemerkung","loeschung_wann","loeschung_wer","loeschung_bemerkung","bekanntmachung_wann","bekanntmachung_wer","bekanntmachung_bemerkung","wkb_geometry","stoer_gefahrlvl_gefahrhist","beeintraechtigung_ids", action, modtime)
      VALUES (NEW."ogc_fid",NEW."identity",NEW."objnr_sbk",NEW."unr",NEW."aenderungen",NEW."ausbildung",NEW."pflege_zustand",NEW."pflege_entwicklung",NEW."pflege_bedarf",NEW."pflege_rueckstand",NEW."pflege",NEW."bt_code",NEW."wert",NEW."wertbestimmend",NEW."schutzstatus",NEW."biotopkuerzel",NEW."erhaltungszustand",NEW."geprueft",NEW."biotoptyp_art_nr",NEW."biotoptyp2_art_nr",NEW."waldbiotop",NEW."objnr_landkreise",NEW."tk25",NEW."name",NEW."status",NEW."flaeche",NEW."num_geom",NEW."objnr",NEW."umfang",NEW."beschreibung",NEW."erfassung_wann",NEW."erfassung_wer",NEW."erfassung_bemerkung",NEW."bearbeitung_wann",NEW."bearbeitung_wer",NEW."bearbeitung_bemerkung",NEW."loeschung_wann",NEW."loeschung_wer",NEW."loeschung_bemerkung",NEW."bekanntmachung_wann",NEW."bekanntmachung_wer",NEW."bekanntmachung_bemerkung",NEW."wkb_geometry",NEW."stoer_gefahrlvl_gefahrhist",NEW."beeintraechtigung_ids", 'I', now());
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
$BODY$;

ALTER FUNCTION historie.log_history() OWNER TO biotope_admin;

-- # TRIGGER biotope_trigger

CREATE TRIGGER biotope_trigger
  AFTER INSERT OR DELETE OR UPDATE 
  ON biotope.biotope
  FOR EACH ROW
  EXECUTE PROCEDURE historie.log_history();
  
  
