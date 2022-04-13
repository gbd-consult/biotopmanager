--
-- PostgreSQL database dump
--

-- Dumped from database version 13.6 (Ubuntu 13.6-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.6 (Ubuntu 13.6-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: biotope_admin; Type: ROLE
--

CREATE ROLE biotope_admin WITH
  LOGIN
  SUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  REPLICATION
  ENCRYPTED PASSWORD 'md5a313fb0f288433faa1e2bcd174820db2';

COMMENT ON ROLE biotope_admin IS 'Administrator Biotopkataster Datenbank biotope';

--
--Name: biotope_editor; Type: ROLE
--

CREATE ROLE biotope_editor WITH
  NOLOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION;

COMMENT ON ROLE biotope_editor IS 'Bearbeiter Gruppenrolle Biotopkataster Datenbank biotope';

--
-- Name: biotope; Type: DATABASE; Owner: biotope_admin
--

ALTER DATABASE biotope OWNER TO biotope_admin;

--
-- Name: biotope; Type: SCHEMA; Schema: -; Owner: biotope_admin
--

CREATE SCHEMA biotope;


ALTER SCHEMA biotope OWNER TO biotope_admin;

--
-- Name: historie; Type: SCHEMA; Schema: -; Owner: biotope_admin
--

CREATE SCHEMA historie;


ALTER SCHEMA historie OWNER TO biotope_admin;

--
-- Name: referenzen; Type: SCHEMA; Schema: -; Owner: biotope_admin
--

CREATE SCHEMA referenzen;


ALTER SCHEMA referenzen OWNER TO biotope_admin;

--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


--
-- Name: log_history(); Type: FUNCTION; Schema: historie; Owner: biotope_admin
--

CREATE FUNCTION historie.log_history() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
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
$$;


ALTER FUNCTION historie.log_history() OWNER TO biotope_admin;

--
-- Name: nextval_objnr(); Type: FUNCTION; Schema: public; Owner: biotope_admin
--

CREATE FUNCTION public.nextval_objnr() RETURNS text
    LANGUAGE sql
    AS $$
    SELECT '14522-'||to_char(nextval('"biotope"."biotope_objnr_seq"'), 'FM00000');
  $$;


ALTER FUNCTION public.nextval_objnr() OWNER TO biotope_admin;

--
-- Name: biotope_ogc_fid_seq; Type: SEQUENCE; Schema: biotope; Owner: biotope_admin
--

CREATE SEQUENCE biotope.biotope_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE biotope.biotope_ogc_fid_seq OWNER TO biotope_admin;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: biotope; Type: TABLE; Schema: biotope; Owner: biotope_admin
--

CREATE TABLE biotope.biotope (
    ogc_fid integer DEFAULT nextval('biotope.biotope_ogc_fid_seq'::regclass) NOT NULL,
    identity character varying,
    objnr_sbk character varying,
    unr character varying,
    ausbildung character varying,
    pflege_zustand character varying,
    pflege_entwicklung character varying,
    pflege_bedarf character varying,
    pflege_rueckstand character varying,
    pflege character varying,
    bt_code character varying,
    wert character varying,
    wertbestimmend character varying,
    schutzstatus_orig character varying,
    biotopkuerzel character varying,
    erhaltungszustand_orig character varying,
    geprueft character varying,
    biotoptyp_art_nr character varying,
    biotoptyp2_art_nr character varying,
    waldbiotop character varying,
    objnr_landkreise character varying,
    tk25 character varying,
    name character varying,
    status character varying,
    flaeche double precision,
    num_geom character varying,
    objnr character varying DEFAULT public.nextval_objnr(),
    umfang double precision,
    beschreibung character varying,
    erfassung_wann timestamp without time zone,
    erfassung_wer character varying,
    erfassung_bemerkung character varying,
    bearbeitung_wann timestamp without time zone,
    bearbeitung_wer character varying,
    bearbeitung_bemerkung character varying,
    loeschung_wann timestamp without time zone,
    loeschung_wer character varying,
    loeschung_bemerkung character varying,
    bekanntmachung_wann timestamp without time zone,
    bekanntmachung_wer character varying,
    bekanntmachung_bemerkung character varying,
    wkb_geometry public.geometry(MultiPolygon,25833),
    beeintraechtigung_ids character varying,
    schutzstatus integer,
    erhaltungszustand integer,
    aenderungen integer,
    stoer_gefahrlvl_gefahrhist character varying,
    pflege_zustand_code integer,
    schutzstatus_code integer
);


ALTER TABLE biotope.biotope OWNER TO biotope_admin;

--
-- Name: biotope_edit_biotope_admin; Type: TABLE; Schema: biotope; Owner: biotope_admin
--

CREATE TABLE biotope.biotope_edit_biotope_admin (
    ogc_fid integer DEFAULT nextval('biotope.biotope_ogc_fid_seq'::regclass) NOT NULL,
    identity character varying,
    objnr_sbk character varying,
    unr character varying,
    ausbildung character varying,
    pflege_zustand character varying,
    pflege_entwicklung character varying,
    pflege_bedarf character varying,
    pflege_rueckstand character varying,
    pflege character varying,
    bt_code character varying,
    wert character varying,
    wertbestimmend character varying,
    schutzstatus_orig character varying,
    biotopkuerzel character varying,
    erhaltungszustand_orig character varying,
    geprueft character varying,
    biotoptyp_art_nr character varying,
    biotoptyp2_art_nr character varying,
    waldbiotop character varying,
    objnr_landkreise character varying,
    tk25 character varying,
    name character varying,
    status character varying,
    flaeche double precision,
    num_geom character varying,
    objnr character varying DEFAULT public.nextval_objnr(),
    umfang double precision,
    beschreibung character varying,
    erfassung_wann timestamp without time zone,
    erfassung_wer character varying,
    erfassung_bemerkung character varying,
    bearbeitung_wann timestamp without time zone,
    bearbeitung_wer character varying,
    bearbeitung_bemerkung character varying,
    loeschung_wann timestamp without time zone,
    loeschung_wer character varying,
    loeschung_bemerkung character varying,
    bekanntmachung_wann timestamp without time zone,
    bekanntmachung_wer character varying,
    bekanntmachung_bemerkung character varying,
    wkb_geometry public.geometry(MultiPolygon,25833),
    beeintraechtigung_ids character varying,
    schutzstatus integer,
    erhaltungszustand integer,
    aenderungen integer,
    stoer_gefahrlvl_gefahrhist character varying,
    pflege_zustand_code integer,
    schutzstatus_code integer
);


ALTER TABLE biotope.biotope_edit_biotope_admin OWNER TO biotope_admin;

--
-- Name: biotope_objnr_seq; Type: SEQUENCE; Schema: biotope; Owner: biotope_admin
--

CREATE SEQUENCE biotope.biotope_objnr_seq
    START WITH 50000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE biotope.biotope_objnr_seq OWNER TO biotope_admin;

--
-- Name: locks_id_seq; Type: SEQUENCE; Schema: biotope; Owner: biotope_admin
--

CREATE SEQUENCE biotope.locks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE biotope.locks_id_seq OWNER TO biotope_admin;

--
-- Name: locks; Type: TABLE; Schema: biotope; Owner: biotope_admin
--

CREATE TABLE biotope.locks (
    id integer DEFAULT nextval('biotope.locks_id_seq'::regclass) NOT NULL,
    biotop_id integer,
    user_id character varying DEFAULT CURRENT_USER,
    mod_time timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE biotope.locks OWNER TO biotope_admin;

--
-- Name: locked_biotope; Type: VIEW; Schema: biotope; Owner: biotope_admin
--

CREATE VIEW biotope.locked_biotope AS
 SELECT biotope.ogc_fid,
    biotope.identity,
    biotope.biotoptyp2_art_nr,
    biotope.wkb_geometry,
    locks.user_id
   FROM (biotope.biotope
     JOIN biotope.locks ON ((biotope.ogc_fid = locks.biotop_id)));


ALTER TABLE biotope.locked_biotope OWNER TO biotope_admin;

--
-- Name: biotope_historie_revision_seq; Type: SEQUENCE; Schema: historie; Owner: biotope_admin
--

CREATE SEQUENCE historie.biotope_historie_revision_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE historie.biotope_historie_revision_seq OWNER TO biotope_admin;

--
-- Name: biotope_historie; Type: TABLE; Schema: historie; Owner: biotope_admin
--

CREATE TABLE historie.biotope_historie (
    ogc_fid integer,
    identity character varying,
    objnr_sbk character varying,
    unr character varying,
    ausbildung character varying,
    pflege_zustand character varying,
    pflege_entwicklung character varying,
    pflege_bedarf character varying,
    pflege_rueckstand character varying,
    pflege character varying,
    bt_code character varying,
    wert character varying,
    wertbestimmend character varying,
    schutzstatus_orig character varying,
    biotopkuerzel character varying,
    erhaltungszustand_orig character varying,
    geprueft character varying,
    biotoptyp_art_nr character varying,
    biotoptyp2_art_nr character varying,
    waldbiotop character varying,
    objnr_landkreise character varying,
    tk25 character varying,
    name character varying,
    status character varying,
    flaeche double precision,
    num_geom character varying,
    objnr character varying,
    umfang double precision,
    beschreibung character varying,
    erfassung_wann timestamp without time zone,
    erfassung_wer character varying,
    erfassung_bemerkung character varying,
    bearbeitung_wann timestamp without time zone,
    bearbeitung_wer character varying,
    bearbeitung_bemerkung character varying,
    loeschung_wann timestamp without time zone,
    loeschung_wer character varying,
    loeschung_bemerkung character varying,
    bekanntmachung_wann timestamp without time zone,
    bekanntmachung_wer character varying,
    bekanntmachung_bemerkung character varying,
    wkb_geometry public.geometry(MultiPolygon,25833),
    beeintraechtigung_ids character varying,
    schutzstatus integer,
    erhaltungszustand integer,
    aenderungen integer,
    stoer_gefahrlvl_gefahrhist character varying,
    pflege_zustand_code integer,
    schutzstatus_code integer,
    modtime timestamp with time zone,
    action text,
    revision bigint DEFAULT nextval('historie.biotope_historie_revision_seq'::regclass) NOT NULL,
    CONSTRAINT biotope_historie_action_check CHECK ((action = ANY (ARRAY['I'::text, 'D'::text, 'U'::text])))
);


ALTER TABLE historie.biotope_historie OWNER TO biotope_admin;

--
-- Name: biotope_deleted_features; Type: VIEW; Schema: historie; Owner: biotope_admin
--

CREATE VIEW historie.biotope_deleted_features AS
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
  WHERE (biotope_historie.action = 'D'::text);


ALTER TABLE historie.biotope_deleted_features OWNER TO biotope_admin;

--
-- Name: aenderungen_id_seq; Type: SEQUENCE; Schema: referenzen; Owner: biotope_admin
--

CREATE SEQUENCE referenzen.aenderungen_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE referenzen.aenderungen_id_seq OWNER TO biotope_admin;

--
-- Name: aenderungen; Type: TABLE; Schema: referenzen; Owner: biotope_admin
--

CREATE TABLE referenzen.aenderungen (
    id integer DEFAULT nextval('referenzen.aenderungen_id_seq'::regclass) NOT NULL,
    aenderung character varying
);


ALTER TABLE referenzen.aenderungen OWNER TO biotope_admin;

--
-- Name: beeintraechtigungen_id_seq; Type: SEQUENCE; Schema: referenzen; Owner: biotope_admin
--

CREATE SEQUENCE referenzen.beeintraechtigungen_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE referenzen.beeintraechtigungen_id_seq OWNER TO biotope_admin;

--
-- Name: beeintraechtigungen; Type: TABLE; Schema: referenzen; Owner: biotope_admin
--

CREATE TABLE referenzen.beeintraechtigungen (
    id integer DEFAULT nextval('referenzen.beeintraechtigungen_id_seq'::regclass) NOT NULL,
    beeintraechtigungen character varying
);


ALTER TABLE referenzen.beeintraechtigungen OWNER TO biotope_admin;

--
-- Name: biotoptypen_id_seq; Type: SEQUENCE; Schema: referenzen; Owner: biotope_admin
--

CREATE SEQUENCE referenzen.biotoptypen_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE referenzen.biotoptypen_id_seq OWNER TO biotope_admin;

--
-- Name: biotoptypen; Type: TABLE; Schema: referenzen; Owner: biotope_admin
--

CREATE TABLE referenzen.biotoptypen (
    id integer DEFAULT nextval('referenzen.biotoptypen_id_seq'::regclass) NOT NULL,
    btyp character varying,
    nummer integer,
    vwv_2012 integer,
    name_2002 character varying,
    name_2012 character varying,
    code_2002 character varying,
    code_2012 character varying,
    vwv_2002 integer,
    schutz character varying,
    id_biot_lfulg_2012 integer,
    id_biot_alt integer,
    biotoptyp character varying,
    untergruppe character varying,
    biotopgruppe character varying,
    lr_gr character varying
);


ALTER TABLE referenzen.biotoptypen OWNER TO biotope_admin;

--
-- Name: erhaltungszustand_id_seq; Type: SEQUENCE; Schema: referenzen; Owner: biotope_admin
--

CREATE SEQUENCE referenzen.erhaltungszustand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE referenzen.erhaltungszustand_id_seq OWNER TO biotope_admin;

--
-- Name: erhaltungszustand; Type: TABLE; Schema: referenzen; Owner: biotope_admin
--

CREATE TABLE referenzen.erhaltungszustand (
    id integer DEFAULT nextval('referenzen.erhaltungszustand_id_seq'::regclass) NOT NULL,
    wert character varying
);


ALTER TABLE referenzen.erhaltungszustand OWNER TO biotope_admin;

--
-- Name: gefaehrdung_id_seq; Type: SEQUENCE; Schema: referenzen; Owner: biotope_admin
--

CREATE SEQUENCE referenzen.gefaehrdung_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE referenzen.gefaehrdung_id_seq OWNER TO biotope_admin;

--
-- Name: gefaehrdung; Type: TABLE; Schema: referenzen; Owner: biotope_admin
--

CREATE TABLE referenzen.gefaehrdung (
    id integer DEFAULT nextval('referenzen.gefaehrdung_id_seq'::regclass) NOT NULL,
    name character varying,
    nummer integer,
    identity character varying
);


ALTER TABLE referenzen.gefaehrdung OWNER TO biotope_admin;

--
-- Name: kartierer_id_seq; Type: SEQUENCE; Schema: referenzen; Owner: biotope_admin
--

CREATE SEQUENCE referenzen.kartierer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE referenzen.kartierer_id_seq OWNER TO biotope_admin;

--
-- Name: kartierer; Type: TABLE; Schema: referenzen; Owner: biotope_admin
--

CREATE TABLE referenzen.kartierer (
    id integer DEFAULT nextval('referenzen.kartierer_id_seq'::regclass) NOT NULL,
    kartierer character varying,
    anschrift character varying,
    art_beauftragung character varying
);


ALTER TABLE referenzen.kartierer OWNER TO biotope_admin;

--
-- Name: massnahmen_id_seq; Type: SEQUENCE; Schema: referenzen; Owner: biotope_admin
--

CREATE SEQUENCE referenzen.massnahmen_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE referenzen.massnahmen_id_seq OWNER TO biotope_admin;

--
-- Name: massnahmen; Type: TABLE; Schema: referenzen; Owner: biotope_admin
--

CREATE TABLE referenzen.massnahmen (
    id integer DEFAULT nextval('referenzen.massnahmen_id_seq'::regclass) NOT NULL,
    referenz character varying,
    massnahme character varying,
    beschreibung character varying,
    lr1 integer,
    lr2 integer,
    lr3 integer,
    lr4 integer,
    lr5 integer
);


ALTER TABLE referenzen.massnahmen OWNER TO biotope_admin;

--
-- Name: pflege_id_seq; Type: SEQUENCE; Schema: referenzen; Owner: biotope_admin
--

CREATE SEQUENCE referenzen.pflege_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE referenzen.pflege_id_seq OWNER TO biotope_admin;

--
-- Name: pflege; Type: TABLE; Schema: referenzen; Owner: biotope_admin
--

CREATE TABLE referenzen.pflege (
    id integer DEFAULT nextval('referenzen.pflege_id_seq'::regclass) NOT NULL,
    name character varying,
    nummer character varying,
    beschreibung character varying,
    identity character varying
);


ALTER TABLE referenzen.pflege OWNER TO biotope_admin;

--
-- Name: schutzstatus_id_seq; Type: SEQUENCE; Schema: referenzen; Owner: biotope_admin
--

CREATE SEQUENCE referenzen.schutzstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE referenzen.schutzstatus_id_seq OWNER TO biotope_admin;

--
-- Name: schutzstatus; Type: TABLE; Schema: referenzen; Owner: biotope_admin
--

CREATE TABLE referenzen.schutzstatus (
    id integer DEFAULT nextval('referenzen.schutzstatus_id_seq'::regclass) NOT NULL,
    wert character varying
);


ALTER TABLE referenzen.schutzstatus OWNER TO biotope_admin;

--
-- Name: stoerung_id_seq; Type: SEQUENCE; Schema: referenzen; Owner: biotope_admin
--

CREATE SEQUENCE referenzen.stoerung_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE referenzen.stoerung_id_seq OWNER TO biotope_admin;

--
-- Name: stoerung; Type: TABLE; Schema: referenzen; Owner: biotope_admin
--

CREATE TABLE referenzen.stoerung (
    id integer DEFAULT nextval('referenzen.stoerung_id_seq'::regclass) NOT NULL,
    name character varying,
    nummer integer,
    identity character varying
);


ALTER TABLE referenzen.stoerung OWNER TO biotope_admin;

--
-- Data for Name: biotope; Type: TABLE DATA; Schema: biotope; Owner: biotope_admin
--

COPY biotope.biotope (ogc_fid, identity, objnr_sbk, unr, ausbildung, pflege_zustand, pflege_entwicklung, pflege_bedarf, pflege_rueckstand, pflege, bt_code, wert, wertbestimmend, schutzstatus_orig, biotopkuerzel, erhaltungszustand_orig, geprueft, biotoptyp_art_nr, biotoptyp2_art_nr, waldbiotop, objnr_landkreise, tk25, name, status, flaeche, num_geom, objnr, umfang, beschreibung, erfassung_wann, erfassung_wer, erfassung_bemerkung, bearbeitung_wann, bearbeitung_wer, bearbeitung_bemerkung, loeschung_wann, loeschung_wer, loeschung_bemerkung, bekanntmachung_wann, bekanntmachung_wer, bekanntmachung_bemerkung, wkb_geometry, beeintraechtigung_ids, schutzstatus, erhaltungszustand, aenderungen, stoer_gefahrlvl_gefahrhist, pflege_zustand_code, schutzstatus_code) FROM stdin;
9	\N	\N	\N	\N	1	\N	true	\N	{3,15}	\N	\N	\N	\N	\N	\N	true	\N	4	true	\N	\N	test_1	\N	16678.748855475336	\N	14522-50000	758.9151628144606	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	2022-04-04 14:14:08.6	Administrator	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	\N	\N	\N	\N	\N	\N	\N	\N	\N	0106000020E964000001000000010300000001000000070000008B40FCB8DE961741C3AE2C34E5825541712C4AC829951741C3AE2C34E5825541F128DF9E31931741E7498EE4C2825541F128DF9E31931741534EFF2EA682554183A89AEE8C941741B5EBD764C6825541CFDDDA6DBB951741653AC47FD68255418B40FCB8DE961741C3AE2C34E5825541	{"Begängnis, Frequentierung","Beschattung","Biologische Gewässergüte"}	1	2	\N	__	\N	\N
11	\N	\N	\N	\N	0	\N	false	\N	{5,64,66,68,70}	\N	\N	\N	\N	\N	\N	false	\N	203	false	\N	\N	test_3	\N	28024.397191762924	\N	14522-50002	642.493378165695	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	2022-04-04 14:15:39.807	Test	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	\N	\N	\N	\N	\N	\N	\N	\N	\N	0106000020E96400000100000001030000000100000007000000F0F1D30543A41741C0154888068255418AAFB7E84FA517415411D73D238255419B85414653A71741866F8DBD1F8255411BDC0F54FBA717416E3BC42105825541A3C369D904A71741DD68A5EDF9815541F09E702193A517410656E7A0FA815541F0F1D30543A41741C015488806825541	{}	1	0	\N	__	\N	\N
10	\N	\N	\N	\N	\N	\N	false	\N	{}	\N	\N	\N	\N	\N	\N	true	\N	17	true	\N	\N	test_2	\N	36002.51633802056	\N	14522-50001	777.8449749940079	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	2022-04-04 14:15:09.921	Musterfrau	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	\N	\N	\N	\N	\N	\N	\N	\N	\N	0106000020E96400000100000001030000000100000007000000CE2968FF7A901741AA47175F80825541BD5AB4F467921741AC7087E091825541D76E66E51C94174165FD9B8E53825541B51C8C61B69217414FF242744A82554193CAB1DD4F9117411FBDFC755F825541C6EB3F6CC9901741036A9F106C825541CE2968FF7A901741AA47175F80825541	{"Beweidung","Boden, Wasserhaushalt, Stoffhaushalt","direkte Schädigung von Vegetation"}	1	0	\N	__	\N	\N
13	\N	\N	\N	\N	\N	\N	false	\N	{}	\N	\N	\N	\N	\N	\N	false	\N	95	false	\N	\N	test_5	\N	1953.506973940879	\N	14522-50004	202.8055555908885	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	2022-04-04 14:16:46.901	Administrator	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0106000020E9640000010000000103000000010000000400000039E0C70FF7B417413B0972D5728255412254360D08B41741707FD4186882554139E0C70FF7B417412816C57E6282554139E0C70FF7B417413B0972D572825541	{}	1	0	\N	__	\N	\N
12	\N	\N	\N	\N	\N	\N	false	\N	{}	\N	\N	\N	\N	\N	\N	false	\N	95	false	\N	\N	test_4	\N	13134.989443682134	\N	14522-50003	503.10704927472057	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	2022-04-04 14:16:18.936	Administrator	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0106000020E9640000010000000103000000010000000600000036192138BE9017411A2EF481B9815541E1FFF15C7E9217414D8CAA01B6815541FAB96A1693911741A485C231908155417A639C08EB901741ADF636FE8B815541C7EB3F6CC99017412BE76C999F81554136192138BE9017411A2EF481B9815541	{}	1	0	\N	__	\N	\N
15	\N	\N	\N	\N	\N	\N	false	\N	{}	\N	\N	\N	\N	\N	\N	false	\N	143	false	\N	\N	test_bio	\N	62300.30149166938	\N	14522-50006	1187.7853027198594	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	2022-04-04 14:18:33.792	Administrator	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0106000020E96400000100000001030000000100000012000000DF5AD2DB8A8B1741B10772E2AC835541E517B0D3668E174116C4DEE1A5835541128336BDF48E17418F73F837AF8355419B172D5E4E8F1741470AE99DA98355419B172D5E4E8F17418A32DCF2A48355414BB40528FA8F174133173C4799835541D9FE036E3F8F17412465AB35938355412EC5CF64CF8E1741C919B3029683554145A4C44B6E8E174146F924E090835541F0DDF854DE8E174107018A128783554178C552DAE78D1741A23359557583554151BD70B1958D1741A663B1DC66835541071051202D8D17411AD2AEED658355411DEF4507CC8C1741EFCCC0766C835541955A4F66728C1741F83D3543688355414BAD2FD5098C17410C201EDC5F8355414B0093B9B98A1741B0D425A962835541DF5AD2DB8A8B1741B10772E2AC835541	{}	1	0	\N	__	\N	\N
14	\N	\N	\N	\N	\N	\N	false	\N	{}	\N	\N	\N	\N	\N	\N	false	\N	82	false	\N	\N	test_fluss	\N	2684.5431117117405	\N	14522-50005	1081.3990613658143	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	2022-04-04 14:17:41.407	Administrator	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0106000020E9640000010000000103000000010000001200000000AFF8A4F1B31741446E1040728255414818083FF7B317419FAD3211738255418EF9F6EA36B317413D260CF587825541D296D59F13B21741587281549B8255416E82A03946B117419887B641BA825541BCA1B77837B01741D45BCFE9CE825541CB4284CC24B017418F270633D7825541F525EAC7ECAF17419680CE3BDA82554175CF1BBA44AF17414BFF12DEDB825541987459225BAF1741F0BFF00CDB8255410E49EFA5EEAF17413B41AC6AD982554152936A761BB017412B8345F7D682554144F29D222EB01741DCC06D54CE825541AD69774937B11741A851F316B982554137427EE1F3B117419882C8E59D82554125821DC42DB2174182776FCB94825541E603D3D829B317411B9E68AC8682554100AFF8A4F1B31741446E104072825541	{}	1	0	\N	__	\N	\N
\.


--
-- Data for Name: biotope_edit_biotope_admin; Type: TABLE DATA; Schema: biotope; Owner: biotope_admin
--

COPY biotope.biotope_edit_biotope_admin (ogc_fid, identity, objnr_sbk, unr, ausbildung, pflege_zustand, pflege_entwicklung, pflege_bedarf, pflege_rueckstand, pflege, bt_code, wert, wertbestimmend, schutzstatus_orig, biotopkuerzel, erhaltungszustand_orig, geprueft, biotoptyp_art_nr, biotoptyp2_art_nr, waldbiotop, objnr_landkreise, tk25, name, status, flaeche, num_geom, objnr, umfang, beschreibung, erfassung_wann, erfassung_wer, erfassung_bemerkung, bearbeitung_wann, bearbeitung_wer, bearbeitung_bemerkung, loeschung_wann, loeschung_wer, loeschung_bemerkung, bekanntmachung_wann, bekanntmachung_wer, bekanntmachung_bemerkung, wkb_geometry, beeintraechtigung_ids, schutzstatus, erhaltungszustand, aenderungen, stoer_gefahrlvl_gefahrhist, pflege_zustand_code, schutzstatus_code) FROM stdin;
\.


--
-- Data for Name: locks; Type: TABLE DATA; Schema: biotope; Owner: biotope_admin
--

COPY biotope.locks (id, biotop_id, user_id, mod_time) FROM stdin;
\.


--
-- Data for Name: biotope_historie; Type: TABLE DATA; Schema: historie; Owner: biotope_admin
--

COPY historie.biotope_historie (ogc_fid, identity, objnr_sbk, unr, ausbildung, pflege_zustand, pflege_entwicklung, pflege_bedarf, pflege_rueckstand, pflege, bt_code, wert, wertbestimmend, schutzstatus_orig, biotopkuerzel, erhaltungszustand_orig, geprueft, biotoptyp_art_nr, biotoptyp2_art_nr, waldbiotop, objnr_landkreise, tk25, name, status, flaeche, num_geom, objnr, umfang, beschreibung, erfassung_wann, erfassung_wer, erfassung_bemerkung, bearbeitung_wann, bearbeitung_wer, bearbeitung_bemerkung, loeschung_wann, loeschung_wer, loeschung_bemerkung, bekanntmachung_wann, bekanntmachung_wer, bekanntmachung_bemerkung, wkb_geometry, beeintraechtigung_ids, schutzstatus, erhaltungszustand, aenderungen, stoer_gefahrlvl_gefahrhist, pflege_zustand_code, schutzstatus_code, modtime, action, revision) FROM stdin;
9	\N	\N	\N	\N	1	\N	true	\N	{3,15}	\N	\N	\N	\N	\N	\N	true	\N	4	true	\N	\N	test_1	\N	16678.748855475336	\N	14522-50000	758.9151628144606	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	2022-04-04 14:14:08.6	Administrator	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	\N	\N	\N	\N	\N	\N	\N	\N	\N	0106000020E964000001000000010300000001000000070000008B40FCB8DE961741C3AE2C34E5825541712C4AC829951741C3AE2C34E5825541F128DF9E31931741E7498EE4C2825541F128DF9E31931741534EFF2EA682554183A89AEE8C941741B5EBD764C6825541CFDDDA6DBB951741653AC47FD68255418B40FCB8DE961741C3AE2C34E5825541	{"Begängnis, Frequentierung","Beschattung","Biologische Gewässergüte"}	1	2	\N	__	\N	\N	2022-04-04 14:19:17.613438+02	I	1
11	\N	\N	\N	\N	0	\N	false	\N	{5,64,66,68,70}	\N	\N	\N	\N	\N	\N	false	\N	203	false	\N	\N	test_3	\N	28024.397191762924	\N	14522-50002	642.493378165695	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	2022-04-04 14:15:39.807	Test	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	\N	\N	\N	\N	\N	\N	\N	\N	\N	0106000020E96400000100000001030000000100000007000000F0F1D30543A41741C0154888068255418AAFB7E84FA517415411D73D238255419B85414653A71741866F8DBD1F8255411BDC0F54FBA717416E3BC42105825541A3C369D904A71741DD68A5EDF9815541F09E702193A517410656E7A0FA815541F0F1D30543A41741C015488806825541	{}	1	0	\N	__	\N	\N	2022-04-04 14:19:17.613438+02	I	2
10	\N	\N	\N	\N	\N	\N	false	\N	{}	\N	\N	\N	\N	\N	\N	true	\N	17	true	\N	\N	test_2	\N	36002.51633802056	\N	14522-50001	777.8449749940079	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	2022-04-04 14:15:09.921	Musterfrau	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	\N	\N	\N	\N	\N	\N	\N	\N	\N	0106000020E96400000100000001030000000100000007000000CE2968FF7A901741AA47175F80825541BD5AB4F467921741AC7087E091825541D76E66E51C94174165FD9B8E53825541B51C8C61B69217414FF242744A82554193CAB1DD4F9117411FBDFC755F825541C6EB3F6CC9901741036A9F106C825541CE2968FF7A901741AA47175F80825541	{"Beweidung","Boden, Wasserhaushalt, Stoffhaushalt","direkte Schädigung von Vegetation"}	1	0	\N	__	\N	\N	2022-04-04 14:19:17.613438+02	I	3
13	\N	\N	\N	\N	\N	\N	false	\N	{}	\N	\N	\N	\N	\N	\N	false	\N	95	false	\N	\N	test_5	\N	1953.506973940879	\N	14522-50004	202.8055555908885	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	2022-04-04 14:16:46.901	Administrator	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0106000020E9640000010000000103000000010000000400000039E0C70FF7B417413B0972D5728255412254360D08B41741707FD4186882554139E0C70FF7B417412816C57E6282554139E0C70FF7B417413B0972D572825541	{}	1	0	\N	__	\N	\N	2022-04-04 14:19:17.613438+02	I	4
12	\N	\N	\N	\N	\N	\N	false	\N	{}	\N	\N	\N	\N	\N	\N	false	\N	95	false	\N	\N	test_4	\N	13134.989443682134	\N	14522-50003	503.10704927472057	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	2022-04-04 14:16:18.936	Administrator	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0106000020E9640000010000000103000000010000000600000036192138BE9017411A2EF481B9815541E1FFF15C7E9217414D8CAA01B6815541FAB96A1693911741A485C231908155417A639C08EB901741ADF636FE8B815541C7EB3F6CC99017412BE76C999F81554136192138BE9017411A2EF481B9815541	{}	1	0	\N	__	\N	\N	2022-04-04 14:19:17.613438+02	I	5
15	\N	\N	\N	\N	\N	\N	false	\N	{}	\N	\N	\N	\N	\N	\N	false	\N	143	false	\N	\N	test_bio	\N	62300.30149166938	\N	14522-50006	1187.7853027198594	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	2022-04-04 14:18:33.792	Administrator	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0106000020E96400000100000001030000000100000012000000DF5AD2DB8A8B1741B10772E2AC835541E517B0D3668E174116C4DEE1A5835541128336BDF48E17418F73F837AF8355419B172D5E4E8F1741470AE99DA98355419B172D5E4E8F17418A32DCF2A48355414BB40528FA8F174133173C4799835541D9FE036E3F8F17412465AB35938355412EC5CF64CF8E1741C919B3029683554145A4C44B6E8E174146F924E090835541F0DDF854DE8E174107018A128783554178C552DAE78D1741A23359557583554151BD70B1958D1741A663B1DC66835541071051202D8D17411AD2AEED658355411DEF4507CC8C1741EFCCC0766C835541955A4F66728C1741F83D3543688355414BAD2FD5098C17410C201EDC5F8355414B0093B9B98A1741B0D425A962835541DF5AD2DB8A8B1741B10772E2AC835541	{}	1	0	\N	__	\N	\N	2022-04-04 14:19:17.613438+02	I	6
14	\N	\N	\N	\N	\N	\N	false	\N	{}	\N	\N	\N	\N	\N	\N	false	\N	82	false	\N	\N	test_fluss	\N	2684.5431117117405	\N	14522-50005	1081.3990613658143	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.	2022-04-04 14:17:41.407	Administrator	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0106000020E9640000010000000103000000010000001200000000AFF8A4F1B31741446E1040728255414818083FF7B317419FAD3211738255418EF9F6EA36B317413D260CF587825541D296D59F13B21741587281549B8255416E82A03946B117419887B641BA825541BCA1B77837B01741D45BCFE9CE825541CB4284CC24B017418F270633D7825541F525EAC7ECAF17419680CE3BDA82554175CF1BBA44AF17414BFF12DEDB825541987459225BAF1741F0BFF00CDB8255410E49EFA5EEAF17413B41AC6AD982554152936A761BB017412B8345F7D682554144F29D222EB01741DCC06D54CE825541AD69774937B11741A851F316B982554137427EE1F3B117419882C8E59D82554125821DC42DB2174182776FCB94825541E603D3D829B317411B9E68AC8682554100AFF8A4F1B31741446E104072825541	{}	1	0	\N	__	\N	\N	2022-04-04 14:19:17.613438+02	I	7
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: biotope_admin
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Data for Name: aenderungen; Type: TABLE DATA; Schema: referenzen; Owner: biotope_admin
--

COPY referenzen.aenderungen (id, aenderung) FROM stdin;
1	Standardmaßnahme
2	Überführung ohne Anpassung
3	Überführung mit Anpassung
4	Detailplanung 
5	Änderung Schutzgut
6	Maßnahmekorrektur
\.


--
-- Data for Name: beeintraechtigungen; Type: TABLE DATA; Schema: referenzen; Owner: biotope_admin
--

COPY referenzen.beeintraechtigungen (id, beeintraechtigungen) FROM stdin;
100	Boden, Wasserhaushalt, Stoffhaushalt
101	Abbau (Sand, Gestein, Torf) / Materialentnahme
102	Störungen des Oberbodens / der Bodendecke bzw. des Substrates
103	Veränderungen des Torfkörpers (Sackung, Zersetzung, Mineralisation)
104	Veränderung der Bodenstruktur / des Bodenaufbaus (z.B. Umbruch)
105	Verdichtung (Befahrung)
106	Grundwasserabsenkung
107	Entwässerung
108	Gewässerverrohrung / -verlegung / -begradigung/ -verbau / Uferbefestigung
109	Bespannungsregime
110	Wasserstandsschwankungen (anthropogen, nicht nutzungsbedingt)
111	Wasserentnahme
112	(Grund-) Wasseranstieg durch Stauhaltung /Anstaumaßnahmen
113	Buhnen, Sohl- / Querbauwerke
114	Nährstoffmobilisierung im Sediment
115	Biologische Gewässergüte
116	chem. / biochem. / therm. Belastung
117	Nährstoffeintrag (N, P) (Eutrophierung) (einschl. org. Ablagerungen)
118	Eintrag anderer Stoffe (einschl. Fremdstoffe zur Wegebefestigung)
119	Müllablagerung (anorganische Stoffe)
120	Schadstoffeintrag (Öl, PAK, Ruß, Stäube, PSM, Salze)
121	Versauerung
200	Störungen an der Vegetationsstruktur
201	Nutzungsauflassung / Brache
202	direkte Schädigung von Vegetation
203	Verbuschung / Gehölzaufwuchs
204	Vergrasung / Grasfilz
205	Vitalitätseinbußen
206	Verbiß
207	Schäle
208	Pflegedefizite
209	LR-untypische Arten / Dominanzen
210	Neophyten / Neozoen
211	sonst. Störzeiger (incl. Ruderalisierungszeiger)
212	Nährstoffzeiger
213	Versauerungszeiger
214	Fischbesatz mit lr-untyp. Arten
216	Entwässerungszeiger (einschl. Verheidungszeiger
300	Nutzung / Bewirtschaftung
301	Bewirtschaftungsintensität
302	Aufforstung
303	Beweidung
304	Teichpflege (Strukturen)
305	Gewässerunterhaltung
306	Sonstiges
307	Beschattung
308	Begängnis, Frequentierung
309	punktuelle Uferverbauung (Bootsanleger, Stege, Bootshäuser etc.)
400	Lärm
500	Zerschneidung
600	Untere Makrophytengrenze
700	Sonstige Beeinträchtigung
\.


--
-- Data for Name: biotoptypen; Type: TABLE DATA; Schema: referenzen; Owner: biotope_admin
--

COPY referenzen.biotoptypen (id, btyp, nummer, vwv_2012, name_2002, name_2012, code_2002, code_2012, vwv_2002, schutz, id_biot_lfulg_2012, id_biot_alt, biotoptyp, untergruppe, biotopgruppe, lr_gr) FROM stdin;
1	01.01.100	2	5	Bruchwald §	Bruchwald	WB	WB	15	§	1	\N	WB	WB	W	LR1
2	01.01.110	3	5	\N	Erlen-Bruchwald nährstoffreicher Standorte §	\N	WBR	\N	§	101	\N	WBR	WB	W	LR1
3	01.01.120	4	5	\N	Birken-Erlen-Bruchwald nährstoffärmerer Standorte §	\N	WBA	\N	§	102	\N	WBA	WB	W	LR1
4	01.01.200	5	6	Moorwald §	Moorwald	WM	WM	16	§	2	\N	WM	WM	W	LR1
5	01.01.210	6	6	Birkenmoorwald §	Moorbirken-Moorwald	WMB	WMB	16	§	103	3	WMB	WM	W	LR1
6	01.01.220	7	6	Kiefernmoorwald §	Waldkiefern-Moorwald	WMK	WMK	16	§	104	4	WMK	WM	W	LR1
7	01.01.230	8	6	\N	Bergkiefern-Moorwald	\N	WML	\N	§	105	\N	WML	WM	W	LR1
8	01.01.240	9	6	Fichtenmoorwald §	Fichten-Moorwald	WMF	WMF	16	§	106	5	WMF	WM	W	LR1
9	01.01.001	10	6	\N	Sonstiger Moorwald	\N	WMS	\N	§	107	\N	WMS	WM	W	LR1
10	01.01.300	11	7	Sumpfwald §	Sumpfwald	WP	WP	17	§	108	6	WP	WP	W	LR1
11	01.02.000	12	\N	Auwald §	\N	WA	\N	18	\N	7	\N	WA	WA	W	LR1
12	01.02.100	13	8	Weichholz-Auwald (Weiden-Auwald) §	Weichholz-Auwald (Weiden-Auwald)	WAW	WW	18	§	109	8	WW	WW	W	LR1
13	01.02.200	14	8	Hartholz-Auwald (Eichen-Eschen-Ulmen-Auwald) §	Hartholz-Auwald (Eichen-Eschen-Ulmen-Auwald)	WAH	WH	18	§	110	9	WH	WH	W	LR1
14	01.02.300	15	8	Erlen-Eschenwald der Auen und Quellbereiche §	Erlen-Eschenwald der Auen und Quellbereiche	WAE	WA	18	§	10	\N	WAE	WA	W	LR1
15	01.02.310	16	8	\N	Traubenkirschen-Erlen-Eschenwal der Niederungen	\N	WAN	18	§	112	\N	WAN	WA	W	LR1
16	01.02.320	17	8	\N	Erlen- und Eschen-Bachwald des Berg- und Hügellandes	\N	WAB	18	§	113	\N	WAB	WA	W	LR1
17	01.02.330	18	8	\N	Erlen-Eschen-Quellwald	\N	WAQ	18	§	114	\N	WAQ	WA	W	LR1
18	01.04.000	19	20	Schlucht- und Blockschuttwald §	Schlucht- und Blockschuttwälder	WS	WS	43	§	11	\N	WS	WS	W	LR1
19	01.04.100	20	20	Ah-Es-Wald felsiger Schatthänge und Schluchten §	Ahorn-Eschenwald felsiger Schatthänge und Schluchten	WSE	WSE	43	§	115	12	WSE	WS	W	LR1
20	01.04.300	21	20	Ahorn-Linden-Schutthaldenwald §	Ahorn-Linden-Schutthaldenwald	WSL	WSL	43	§	116	13	WSL	WS	W	LR1
21	01.05.000	22	\N	Laubwald, mesophil	\N	WL	\N	\N	\N	14	\N	WL	WL	W	LR1
22	01.05.100	23	\N	mesophiler Buchen(misch)wald	Mesophiler Buchen(misch)wald	WLB	WL	\N	\N	117	15	WL	WL	W	LR1
23	01.05.110	24	\N	\N	Mesophiler Buchenwald des Tief- und Hügellandes	\N	WLN	\N	\N	118	\N	WLN	WL	W	LR1
24	01.05.120	25	\N	\N	Mesophiler Buchenwald des Berglandes	\N	WLB	\N	\N	119	\N	WLB	WL	W	LR1
25	01.05.200	26	\N	Eichen-Hainbuchenwald	Eichen-Hainbuchenwald	WLE	WE	\N	\N	16	\N	WLE	WL	W	LR1
26	01.05.210	27	\N	\N	Stieleichen-Hainbuchenwald feuchter Standorte	\N	WEF	\N	(§)	124	\N	WEF	WE	W	LR1
27	01.05.220	28	\N	\N	Traubeneichen-Hainbuchenwald mäßig trockener Standorte	\N	WET	\N	\N	125	\N	WET	WE	W	LR1
28	01.05.230	29	\N	\N	Lindenreicher Eichen-Hainbuchenwald subkontinentaler Prägung	\N	WES	\N	(§)	126	\N	WES	WE	W	LR1
29	01.05.001	30	\N	Laubwald, bodensauer	\N	WL	\N	\N	\N	17	\N	WC	WC	W	LR1
30	01.05.300	31	\N	bodensaurer Buchen(misch)wald	Bodensaurer Buchen(misch)wald	WCB	WC	\N	\N	18	\N	WCB	WC	W	LR1
31	01.05.310	32	\N	\N	Bodensaurer Buchenwald des Tief- und Hügellandes	\N	WCN	\N	\N	121	\N	WCN	WC	W	LR1
32	01.05.330	33	\N	\N	Bodensaurer Tannen-Fichten-Buchenwald des Berglandes	\N	WCB	\N	\N	122	\N	WCB	WC	W	LR1
33	01.05.400	34	\N	bodensauer Eichen(misch)wald	Bodensaurer Eichen(misch)wald	WCE	WQ	\N	\N	127	19	WQ	WQ	W	LR1
34	01.05.410	35	\N	\N	Bodensaurer Eichen-Mischwald armer Standorte	\N	WQS	\N	\N	128	\N	WQS	WQ	W	LR1
35	01.05.420	36	\N	\N	Sonstiger bodensaurer Eichen-Mischwald des Tieflandes	\N	WQN	\N	\N	129	\N	WQN	WQ	W	LR1
36	01.05.430	37	\N	\N	Bodensaurer Eichen-Mischwald des Hügel- und Berglandes	\N	WQB	\N	\N	130	\N	WQB	WQ	W	LR1
37	01.03.000	38	18	Laubwald trockenwarmer Standorte §	Laubwald trockenwarmer Standorte	WT	WT	41	§	20	\N	WT	WT	W	LR1
38	01.03.100	39	18	\N	Eichenwald trockenwarmer Standorte	\N	WTE	\N	§	131	\N	WTE	WT	W	LR1
39	01.03.200	40	18	\N	Eichen-Hainbuchenwald trockenwarmer Standorte	\N	WTH	\N	§	132	\N	WTH	WT	W	LR1
40	01.03.300	41	18	\N	Buchenwald trockenwarmer Standorte	\N	WTB	\N	§	133	\N	WTB	WT	W	LR1
41	01.06.001	42	18	Kiefernwald (§)	\N	WK	\N	\N	\N	21	\N	WK	WK	W	LR1
42	01.06.100	43	18	Kiefernwald trockenwarmer Standorte	Naturnaher Kiefernwald trockenwarmer Standorte	WKT	WKT	41	§	136	22	WKT	WK	W	LR1
43	01.06.200	44	\N	sonstiger naturnaher Kiefernwald	Sonstiger naturnaher Kiefernwald	WKK	WKS	\N	\N	137	23	WKS	WK	W	LR1
44	01.06.300	45	\N	Fichtenwald	Naturnaher Fichtenwald	WF	WF	\N	\N	24	\N	WF	WF	W	LR1
45	01.06.320	46	\N	Bergland-Fichtenwald	Naturnaher Fichtenwald des Berglandes	WFB	WFB	\N	\N	139	25	WFB	WF	W	LR1
46	01.06.330	47	6	Tiefland-Fichtenwald §	Naturnaher Fichtenwald des Tieflandes	WFT	WFN	16	(§)	138	26	WFN	WF	W	LR1
47	01.06.310	48	20	\N	Naturnaher Fichten-Blockschuttwald	\N	WFS	\N	§	140	\N	WFS	WF	W	LR1
48	01.11.000	49	19	höhlenreiche Altholzinsel §	Höhlenreiche Altholzinsel	WH	WZ	42	§	144	27	WZ	WZ	W	LR1
49	01.00.001	50	\N	Strukturreicher Waldbestand	Strukturreicher Waldbestand	WR	WR	\N	\N	141	28	WR	WR	W	LR1
50	01.10.200	51	\N	\N	Strukturreicher Waldrand	\N	WO	\N	\N	143	\N	WO	WO	W	LR1
51	01.10.000	52	\N	\N	Vorwald(stadien), Pionierwälder	\N	WV	\N	\N	142	\N	WV	WV	W	LR1
52	02.01.100	53	\N	Feuchtgebüsch §	Feuchtgebüsch	BF	BF	\N	§	29	\N	BF	BF	B	LR2
53	02.01.110	54	2	Moor- und Sumpfgebüsch §	Weiden-Moor- und Sumpfgebüsch	BFS	BFS	12	§	145	30	BFS	BF	B	LR2
54	02.01.120	55	8	Auengebüsch §	Weiden-Auengebüsch	BFA	BFA	18	§	146	31	BFA	BF	B	LR2
55	02.01.200	56	\N	\N	Gebüsch frischer Standorte	\N	BM	\N	\N	147	\N	BM	BM	B	LR2
56	02.01.400	57	18	Trockengebüsch §	Trockengebüsch	BT	BT	41	§	148	32	BT	BT	B	LR2
57	02.02.100	58	\N	Hecke	Feldhecke	BH	BH	\N	\N	149	33	BH	BH	B	LR2
58	02.03.200	59	\N	Feldgehölz	Feldgehölz	BA	BA	\N	\N	150	34	BA	BA	B	LR2
59	10.03.000	60	24	Streuobstwiese §	Streuobstwiese	BS	BS	61	§	151	35	BS	BS	B	LR2
60	02.03.450	61	19	höhlenreicher Einzelbaum §	Höhlenreicher Einzelbaum	BZ	BZ	42	§	152	36	BZ	BZ	B	LR2
61	02.03.400	62	\N	sonstiger wertvoller Gehölzbestand	Sonstiger wertvoller Gehölzbestand	BY	BY	\N	\N	37	\N	BY	BY	B	LR2
62	02.03.410	63	\N	\N	Allee und Baumreihe	\N	BYA	\N	\N	153	\N	BYA	BY	B	LR2
63	02.03.420	64	\N	\N	Obstbaumreihe und -allee	\N	BYO	\N	\N	154	\N	BYO	BY	B	LR2
64	02.03.440	65	\N	\N	Kopfbaum und Kopfbaumreihe	\N	BYK	\N	\N	155	\N	BYK	BY	B	LR2
65	02.03.430	66	\N	\N	Einzelbaum, Baumgruppe	\N	BYE	\N	\N	156	\N	BYE	BY	B	LR2
66	11.03.120	67	\N	\N	Park, sonstiger Gehölzbestand	\N	BYP	\N	\N	157	\N	BYP	BY	B	LR2
67	03.01.100	68	9	naturnaher Quellbereich §	Naturnaher Quellbereich	FQ	FQ	21	§	158	38	FQ	FQ	F	LR4
68	03.01.110	69	9	Sturzquelle §	Sturzquelle	FQS	FQS	21	§	159	39	FQS	FQ	F	LR4
69	03.01.120	70	9	Tümpelquelle §	Tümpelquelle	FQT	FQT	21	§	160	40	FQT	FQ	F	LR4
70	03.01.101	71	9	Sickerquelle §	\N	FQN	\N	21	\N	41	\N	FQN	FQ	F	LR4
71	03.01.130	72	9	\N	Kalkarme Sickerquelle	\N	FQA	\N	§	161	\N	FQA	FQ	F	LR4
72	03.01.140	73	9	\N	Kalkreiche Sickerquelle	\N	FQR	\N	§	162	\N	FQR	FQ	F	LR4
73	03.01.150	74	9	\N	Kalktuffquelle	\N	FQK	\N	§	163	\N	FQK	FQ	F	LR4
74	03.02.100	75	10	naturnaher Bach §	Naturnaher Bach	FB	FB	22	§	164	42	FB	FB	F	LR4
75	03.02.111	76	10	naturnaher Mittelgebirgsbach §	\N	FBM	\N	22	\N	43	\N	FBM	FB	F	LR4
76	03.02.110	77	10	\N	Naturnaher sommerkalter Bach (Berglandbach)	\N	FBB	\N	§	165	\N	FBB	FB	F	LR4
77	03.02.120	78	10	naturnaher Flachlandbach §	Naturnaher sommerwarmer Bach (Tieflandbach)	FBN	FBN	22	§	166	44	FBN	FB	F	LR4
78	03.02.210	79	\N	\N	Begradigter/ausgebauter Bach mit naturnahen Elementen	\N	FBA	\N	\N	167	\N	FBA	FB	F	LR4
79	03.03.100	80	10	naturnaher Fluß §	Naturnaher Fluss	FF	FF	22	§	168	45	FF	FF	F	LR4
80	03.03.110	81	10	\N	Naturnaher sommerkalter Fluss	\N	FFB	\N	§	169	\N	FFB	FF	F	LR4
81	03.03.120	82	10	\N	Naturnaher sommerwarmer Fluss	\N	FFN	\N	§	170	\N	FFN	FF	F	LR4
82	03.03.210	83	\N	\N	Begradigter/ausgebauter Fluss mit naturnahen Elementen	\N	FFA	\N	\N	171	\N	FFA	FF	F	LR4
83	03.05.000	84	10	\N	Zeitweilig trockenfallende Schlammflächen mit Pioniervegetation	\N	FFS	\N	§	172	\N	FFS	FF	F	LR4
84	03.04.110	85	\N	Graben/Kanal	Naturnaher Graben	FG	FG	\N	\N	173	46	FG	FG	F	LR4
85	03.06.000	86	10	\N	Sonstige Überschwemmungsgebiete	\N	FU	\N	§	174	\N	FU	FU	F	LR4
86	04.01.000	87	32	naturnahes Kleingewässer §	Naturnahes Kleingewässer	SK	SK	24	§	47	\N	SK	SK	S	LR3
87	04.01.100	88	32	naturnahes, temporäres Kleingewässer §	Naturnahes temporäres Kleingewässer (Tümpel)	SKT	SKT	24	§	175	48	SKT	SK	S	LR3
88	04.01.210	89	32	naturnahes, ausdauerndes Kleingewässer §	Naturnahes ausdauerndes nährstoffarmes Kleingewässer	SKA	SKA	24	§	176	49	SKA	SK	S	LR3
89	04.01.220	90	32	\N	Naturnahes ausdauerndes nährstoffreiches Kleingewässer	\N	SKR	24	§	177	\N	SKR	SK	S	LR3
90	04.02.000	91	1	Moorgewässer §	Moorgewässer	SM	SM	11	§	178	50	SM	SM	S	LR3
91	04.02.100	92	1	\N	Moorgewässer natürlicher Entstehung	\N	SMN	11	§	179	\N	SMN	SM	S	LR3
92	04.02.200	93	1	\N	Naturnahes anthropogenes Moorgewässer	\N	SMM	11	§	180	\N	SMM	SM	S	LR3
93	04.03.000	94	11	Altwasser §	Altwasser	SA	SA	23	§	181	51	SA	SA	S	LR4
94	04.04.000	95	32	Teich	Naturnaher Teich/Weiher	SS	SS	\N	§	182	52	SS	SS	S	LR3
95	04.04.100	96	32	\N	Naturnaher mesotropher Teich/Weiher	\N	SSA	\N	§	183	\N	SSA	SS	S	LR3
96	04.04.200	97	32	\N	Naturnaher eutropher Teich/Weiher	\N	SSR	\N	§	184	\N	SSR	SS	S	LR3
97	04.05.100	98	32	\N	Naturnahe Rest- und Abbaugewässer	\N	SR	\N	§	185	\N	SR	SR	S	LR3
98	04.05.110	99	32	\N	Naturnahes nährstoffarmes Abbaugewässer	\N	SRA	\N	§	186	\N	SRA	SR	S	LR3
99	04.05.120	100	32	\N	Naturnahes nährstoffreiches Abbaugewässer	\N	SRR	\N	§	187	\N	SRR	SR	S	LR3
100	04.05.200	101	\N	sonstiges Stillgewässer	Sonstiges naturnahes Stillgewässer	SY	SY	\N	(§)	188	53	SY	SY	S	LR3
101	04.05.210	102	\N	\N	Sonstiges naturnahes nährstoffarmes Stillgewässer	\N	SYA	\N	(§)	189	\N	SYA	SY	S	LR3
102	04.05.220	103	\N	\N	Sonstiges naturnahes nährstoffreiches Stillgewässer	\N	SYR	\N	(§)	190	\N	SYR	SY	S	LR3
103	04.07.100	104	32	\N	Verlandungsbereiche mesotropher Stillgewässer	\N	SO	\N	§	191	\N	SO	SO	S	LR3
104	04.07.110	105	32	\N	Tauch- und Schwimmblattvegetation mesotropher Stillgewässer	\N	SOW	\N	§	192	\N	SOW	SO	S	LR3
105	04.07.120	106	32	\N	Strandlingsfluren und Zwergbinsen-Gesellschaften	\N	SOS	\N	§	193	\N	SOS	SO	S	LR3
106	04.07.130	107	32	\N	Röhricht mesotropher Stillgewässer	\N	SOR	\N	§	194	\N	SOR	SO	S	LR3
107	04.07.140	108	32	\N	Großseggen-, Wollgras- und Binsenbestände mesotropher Gewässer	\N	SOG	\N	§	195	\N	SOG	SO	S	LR3
108	04.07.200	109	32	Verlandungsbereich stehender Gewässer §	Verlandungsbereiche eutropher Stillgewässer	SV	SV	25	§	196	54	SV	SV	S	LR3
109	04.07.210	110	32	Tauch- und Schwimmblattvegetation §	Tauch- und Schwimmblattvegetation eutropher Stillgewässer	SVW	SVW	25	§	197	55	SVW	SV	S	LR3
110	04.07.220	111	32	Röhricht (an Gewässern) §	Röhricht eutropher Stillgewässer	SVR	SVR	25	§	198	56	SVR	SV	S	LR3
111	04.07.230	112	32	Großseggenried (an Gewässern) §	Großseggenried eutropher Stillgewässer	SVG	SVG	25	§	199	57	SVG	SV	S	LR3
112	05.01.000	113	1	Hoch- und Zwischenmoor §	Hoch- und Zwischenmoor	MH	MH	11	§	58	\N	MH	MH	M	LR5
113	05.01.100	114	1	Hochmoor §	Hochmoor	MHH	MHH	11	§	200	59	MHH	MH	M	LR5
114	05.01.200	115	\N	Zwischenmoor §	\N	MHZ	\N	11	\N	60	\N	MHZ	MH	M	LR5
115	05.01.210	116	1	\N	Zwischenmoor des Tieflandes	\N	MHN	\N	§	201	\N	MHN	MH	M	LR5
116	05.01.220	117	1	\N	Zwischenmoor des Berglandes	\N	MHB	\N	§	202	\N	MHB	MH	M	LR5
117	05.02.000	118	1	Torfstich in Regeneration §	Moordegenerations- und -regenerationsstadien	MT	MT	11	§	203	61	MT	MT	M	LR5
118	05.02.100	119	1	\N	Moorstadium mit Dominanz von Wollgras	\N	MTW	\N	§	204	\N	MTW	MT	M	LR5
119	05.02.200	120	1	\N	Moorstadium mit Dominanz von Zwergsträuchern	\N	MTZ	\N	§	205	\N	MTZ	MT	M	LR5
120	05.02.300	121	1	\N	Moorstadium mit Dominanz von Pfeifengras	\N	MTP	\N	§	206	\N	MTP	MT	M	LR5
121	05.00.001	122	1	Niedermoor/Sumpf §	\N	MN	\N	11	\N	62	\N	MN	MN	M	LR5
122	05.04.101	123	1	Kleinseggenried §	\N	MNK	\N	11	\N	63	\N	MNK	MN	M	LR5
123	05.04.100	124	1	\N	Kleinseggenried	\N	MK	\N	§	207	\N	MK	MK	M	LR5
124	05.04.110	125	1	\N	Kleinseggenried basenarmer Standorte	\N	MKA	\N	§	208	\N	MKA	MK	M	LR5
125	05.04.120	126	1	\N	Kleinseggenried basenreicher Standorte	\N	MKR	\N	§	209	\N	MKR	MK	M	LR5
126	05.04.201	127	\N	Großseggenried (außerhalb Verland.) §	\N	MNG	\N	12	\N	64	\N	MNG	MN	M	LR5
127	05.04.200	128	2	\N	Großseggenried (außerhalb stehender Gewässer)	\N	MG	\N	§	210	\N	MG	MG	M	LR5
128	05.04.210	129	2	\N	Großseggenried nährstoffreicher Standorte	\N	MGR	\N	§	211	\N	MGR	MG	M	LR5
129	05.04.220	130	2	\N	Großseggenried nährstoffarmer Standorte	\N	MGA	\N	§	212	\N	MGA	MG	M	LR5
130	05.04.301	131	2	Binsen-, Waldsimsen-, Schachtelhalmsumpf §	\N	MNB	\N	12	\N	65	\N	MNB	MN	M	LR5
131	05.04.300	132	2	\N	Binsen-, Waldsimsen- und Schachtelhalmsumpf	\N	MB	\N	§	213	\N	MB	MB	M	LR5
132	05.04.401	133	3	Röhricht (außerhalb Verland.) §	\N	MNR	\N	13	\N	66	\N	MNR	MN	M	LR5
133	05.04.400	134	3	\N	Röhricht (außerhalb stehender Gewässer)	\N	MR	\N	§	214	\N	MR	MR	M	LR5
134	05.04.410	135	3	\N	Schilfröhricht	\N	MRS	\N	§	215	\N	MRS	MR	M	LR5
135	05.04.420	136	3	\N	Rohrglanz-Röhricht	\N	MRP	\N	§	216	\N	MRP	MR	M	LR5
136	05.04.430	137	3	\N	Wasserschwaden-Röhricht	\N	MRW	\N	§	217	\N	MRW	MR	M	LR5
137	05.04.440	138	3	\N	Rohrkolben-Röhricht	\N	MRR	\N	§	218	\N	MRR	MR	M	LR5
138	05.04.450	139	3	\N	Schneiden-Röhricht	\N	MRC	\N	§	219	\N	MRC	MR	M	LR5
139	05.04.460	140	3	\N	Sonstiges Landröhricht	\N	MRY	\N	§	220	\N	MRY	MR	M	LR5
140	06.01.000	141	\N	Feuchtgrünland (extensiv) (§)	Sonstiges Feucht- und Nassgrünland (extensiv)	GF	GF	\N	(§)	224	67	GF	GF	G	LR5
141	06.01.100	142	4	Naßwiese §	Nasswiese	GFS	GFS	14	§	225	68	GFS	GF	G	LR5
142	06.01.300	143	4	\N	Wechselfeuchte Stromatalwiese	\N	GFA	\N	§	226	\N	GFA	GF	G	LR5
143	06.01.201	144	4	Pfeifengraswiese §	\N	GFP	\N	14	\N	69	\N	GFP	GF	G	LR5
144	06.01.200	145	4	\N	Pfeifengras-Wiese	\N	GP	\N	§	221	\N	GP	GP	G	LR5
145	06.01.210	146	4	\N	Pfeifengras-Wiese basenreicher Standorte	\N	GPR	\N	§	222	\N	GPR	GP	G	LR5
146	06.01.220	147	4	\N	Pfeifengras-Wiese bodensaurer Standorte	\N	GPA	\N	§	223	\N	GPA	GP	G	LR5
147	06.01.400	148	4	seggen- und binsenreiche Feuchtweiden §	Seggen- und binsenreiche Feuchtweiden und Flutrasen	GFF	GFF	14	§	227	70	GFF	GF	G	LR5
148	06.01.500	149	\N	sonstiges Feuchtgrünland	Sonstiges artenreiches Feuchtgrünland	GFY	GFY	\N	\N	228	71	GFY	GF	G	LR5
149	06.02.100	150	\N	Grünland frischer Standorte (extensiv) (§)	Extensiv genutztes mageres Grünland frischer Standorte	GM	GM	\N	§	229	72	GM	GM	G	LR5
150	06.02.110	151	15	magere Frischwiese §	Magere Frischwiese	GMM	GMM	32	§	230	73	GMM	GM	G	LR5
151	06.02.130	152	15	\N	Submontane Goldhafer-Frischwiese	\N	GMS	\N	§	231	\N	GMS	GM	G	LR5
152	06.02.120	153	15	\N	Magerweide frischer Standorte	\N	GMW	\N	§	232	\N	GMW	GM	G	LR5
153	06.02.200	154	\N	\N	Sonstiges extensiv genutztes Grünland frischer Standorte	\N	GY	\N	\N	233	\N	GY	GY	G	LR5
154	06.02.211	155	\N	sonstige, extensiv genutzte Frischwiese	\N	GMY	\N	\N	\N	74	\N	GMY	GM	G	LR5
155	06.02.210	156	\N	\N	Sonstige extensiv genutzte Frischwiese	\N	GYM	\N	\N	234	\N	GYM	GY	G	LR5
156	06.02.220	157	\N	\N	Sonstige extensiv genutzte Weide frischer Standorte	\N	GYW	\N	\N	235	\N	GYW	GY	G	LR5
157	06.02.230	158	\N	\N	Sonstiges extensiv genutztes frisches Grünland	\N	GYY	\N	\N	303	\N	GYY	GY	G	LR5
158	06.02.300	159	15	Bergwiese §	Bergwiese	GB	GB	32	§	236	75	GB	GB	G	LR5
159	07.01.100	160	\N	Staudenflur feuchter Standorte (§)	Staudenfluren feuchter Standorte	LF	LF	\N	(§)	237	76	LF	LF	L	LR5
160	07.01.110	161	2	Hochstaudenflur sumpfiger Standorte §	Hochstaudenflur sumpfiger Standorte	LFS	LFS	12	§	238	77	LFS	LF	L	LR5
161	07.01.120	162	10	Uferstaudenflur (§)	Uferstaudenflur	LFU	LFU	22	(§)	239	78	LFU	LF	L	LR5
162	07.01.130	163	\N	\N	Hochmontan-subalpine Hochstaudenfluren	\N	LFB	\N	§	240	\N	LFB	LF	L	LR5
163	07.01.200	164	\N	\N	Staudenfluren und Säume frischer Standorte	\N	LM	\N	\N	241	\N	LM	LM	L	LR5
164	07.01.210	165	\N	\N	Staudenflur nährstoffreicher frischer Standorte	\N	LMR	\N	\N	242	\N	LMR	LM	L	LR5
165	07.01.220	166	\N	\N	Staudenflur nährstoffärmerer frischer Standorte	\N	LMA	\N	\N	243	\N	LMA	LM	L	LR5
166	07.01.300	167	18	Staudenflur trockenwarmer Standorte §	Staudenfluren und Säume trockenwarmer Standorte	LT	LT	41	§	244	79	LT	LT	L	LR5
167	07.03.000	168	\N	Ruderalflur	Ruderalfluren	LR	LR	\N	\N	245	80	LR	LR	L	LR5
168	07.03.100	169	\N	\N	Ruderalflur trockenwarmer Standorte	\N	LRT	\N	\N	246	\N	LRT	LR	L	LR5
169	07.03.200	170	\N	\N	Ruderalflur frischer bis feuchter Standorte	\N	LRM	\N	\N	247	\N	LRM	LR	L	LR5
170	07.03.300	171	\N	\N	Dörfliche Ruderalflur	\N	LRR	\N	\N	248	\N	LRR	LR	L	LR5
171	08.01.000	172	17	Zwergstrauchheide §	Zwergstrauchheide	HZ	HZ	34	§	81	\N	HZ	HZ	H	LR5
172	08.01.100	173	17	Feuchtheide §	Feuchtheide	HZF	HZF	34	§	249	82	HZF	HZ	H	LR5
173	08.01.200	174	17	trockene Sandheide §	Trockene Sandheide	HZS	HZS	34	§	250	83	HZS	HZ	H	LR5
174	08.01.300	175	17	Berg- und Felsheide §	Bergheide	HZB	HZB	34	§	251	84	HZB	HZ	H	LR5
175	08.01.400	176	17	\N	Felsbandheide	\N	HZG	\N	§	252	\N	HZG	HZ	H	LR5
176	08.02.000	177	17	Besenginsterheide §	Besenginsterheide	HG	HG	34	§	253	85	HG	HG	H	LR5
177	08.03.000	178	17	\N	Wacholderheiden und -gebüsche	\N	HW	\N	§	254	\N	HW	HW	H	LR5
178	08.04.000	179	16	Borstgrasrasen §	Borstgrasrasen	RB	RB	33	§	255	86	RB	RB	H	LR5
179	08.04.100	180	16	\N	Borstgrasrasen frischer bis trockener Standorte	\N	RBM	\N	§	256	\N	RBM	RB	H	LR5
180	08.04.200	181	16	\N	Borstgrasrasen feuchter Standorte	\N	RBF	\N	§	257	\N	RBF	RB	H	LR5
181	08.05.000	182	14	Trockenrasen §	\N	RT	\N	31	\N	87	\N	RT	RT	H	LR5
182	08.05.101	183	14	Sand- und Silikatmagerrasen §	\N	RTS	\N	31	\N	88	\N	RTS	RT	H	LR5
183	08.05.100	184	14	\N	Sand- und Silikatmagerrasen	\N	RS	\N	§	258	\N	RS	RS	H	LR5
184	08.05.110	185	14	\N	Annueller Sandmagerrasen	\N	RSA	\N	§	259	\N	RSA	RS	H	LR5
185	08.05.120	186	14	\N	Silbergrasrasen	\N	RSS	\N	§	260	\N	RSS	RS	H	LR5
186	08.05.130	187	14	\N	Sonstiger Sand- und Silikatmagerrasen	\N	RSY	\N	§	261	\N	RSY	RS	H	LR5
187	08.05.001	188	14	Halbtrockenrasen §	\N	RTH	\N	31	\N	89	\N	RTH	RT	H	LR5
188	08.05.200	189	14	\N	Trocken- und Halbtrockenrasen	\N	RH	\N	§	262	\N	RH	RH	H	LR5
189	08.05.210	190	14	\N	Subkontinentaler Halbtrockenrasen	\N	RHS	\N	§	263	\N	RHS	RH	H	LR5
190	08.05.220	191	14	\N	Kontinentaler Steppen-Trockenrasen	\N	RHK	\N	§	264	\N	RHK	RH	H	LR5
191	08.05.230	192	14	\N	Submediterraner Halbtrockenrasen	\N	RHM	\N	§	265	\N	RHM	RH	H	LR5
192	08.05.240	193	14	\N	Halbtrockenrasen bodensaurer Standorte	\N	RHC	\N	§	266	\N	RHC	RH	H	LR5
193	08.06.000	194	29	\N	Schwermetallrasen	\N	RM	\N	§	267	\N	RM	RM	H	LR5
194	09.02.100	195	21	offene Felsbildung §	Offene natürliche und naturnahe Felsbildungen	YF	YF	51	§	268	90	YF	YF	Y	LR5
195	09.02.110	196	21	\N	Natürlicher Kalkfels	\N	YFK	\N	§	269	\N	YFK	YF	Y	LR5
196	09.02.120	197	21	\N	Natürlicher basenarmer Silikatfels	\N	YFA	\N	§	270	\N	YFA	YF	Y	LR5
197	09.02.130	198	21	\N	Natürlicher basenreicher Silikatfels	\N	YFR	\N	§	271	\N	YFR	YF	Y	LR5
198	09.02.140	199	30	\N	Natürlicher Serpentinitfels	\N	YFS	\N	§	272	\N	YFS	YF	Y	LR5
199	09.02.200	200	22	offene nat. Block- und Geröllhalde §	Offene natürliche Block- und Geröllhalde	YG	YG	52	§	273	91	YG	YG	Y	LR5
200	09.02.210	201	22	\N	Natürliche Block- und Geröllhalde aus basenreichem Silikatgestein	\N	YGR	\N	§	274	\N	YGR	YG	Y	LR5
201	09.02.220	202	22	\N	Natürliche Block- und Geröllhalde aus basenarmen Silikatgestein	\N	YGA	\N	§	275	\N	YGA	YG	Y	LR5
202	09.02.230	203	\N	\N	Naturnahe Block- und Geröllhalden aus Serpentinitgestein	\N	YGS	\N	(§)	276	\N	YGS	YG	Y	LR5
203	09.01.000	204	\N	Stollen früherer Bergwerke §	Höhlen und Stollen	YT	YT	62	§	277	92	YT	YT	Y	LR2
204	09.01.100	205	\N	\N	Höhle	\N	YTH	\N	§	278	\N	YTH	YT	Y	LR2
205	09.01.200	206	25	\N	Stollen früherer Bergwerke	\N	YTS	\N	§	279	\N	YTS	YT	Y	LR2
206	09.03.000	207	23	offene Binnendüne §	Offene Binnendüne	YB	YB	53	§	280	93	YB	YB	Y	LR5
207	09.03.100	208	23	\N	Offene Binnendüne mit lückigen Grasfluren	\N	YBG	\N	§	281	\N	YBG	YB	Y	LR5
208	09.03.200	209	23	\N	Offene Binnendüne mit trockenen Sandheiden	\N	YBH	\N	§	282	\N	YBH	YB	Y	LR5
209	09.04.000	210	\N	\N	Steilwände aus Lockergestein	\N	YW	\N	(§)	283	\N	YW	YW	Y	LR5
210	09.04.100	211	\N	\N	Sand- und Kieswand	\N	YWS	\N	(§)	284	\N	YWS	YW	Y	LR5
211	09.04.200	212	31	\N	Lehm- und Lößwand	\N	YWL	\N	§	285	\N	YWL	YW	Y	LR5
212	09.07.200	213	26	Steinrücken §	Steinrücken	YS	YS	63	§	290	94	YS	YS	Y	LR5
213	09.07.100	214	\N	\N	Unbefestigte Wege	\N	YH	\N	\N	286	\N	YH	YH	Y	LR5
214	09.07.111	215	27	Hohlweg §	\N	YH	\N	64	\N	95	\N	YH	YH	Y	LR5
215	09.07.110	216	27	\N	Hohlweg	\N	YHH	\N	§	287	\N	YHH	YH	Y	LR5
216	09.07.120	217	\N	\N	Unbefestigter Feldweg	\N	YHF	\N	\N	288	\N	YHF	YH	Y	LR5
217	09.07.130	218	\N	\N	Sonstiger unbefestigter Weg	\N	YHY	\N	\N	289	\N	YHY	YH	Y	LR5
218	09.07.301	219	28	Trockenmauer §	\N	YM	\N	65	\N	96	\N	YM	YM	Y	LR5
219	09.07.300	220	28	\N	Trockenmauer	\N	YMT	\N	§	292	\N	YMT	YM	Y	LR5
220	09.07.400	221	\N	\N	Sonstige Natursteinmauer	\N	YMY	\N	\N	293	\N	YMY	YM	Y	LR5
221	10.01.100	222	\N	Acker, extensiv	Extensiv genutzter wildkrautreicher Acker	UA	UA	\N	\N	294	\N	UA	UA	U	LR2
222	10.01.110	223	\N	\N	Sandacker	\N	UAS	\N	\N	295	\N	UAS	UA	U	LR2
223	10.01.120	224	\N	\N	Basenarmer Löß- und Lehmacker	\N	UAA	\N	\N	296	\N	UAA	UA	U	LR2
224	10.01.130	225	\N	\N	Basenreicher Löß- und Lehmacker	\N	UAR	\N	\N	297	\N	UAR	UA	U	LR2
225	10.01.140	226	\N	\N	Acker auf skelettreichem Silikatverwitterungsboden des Berglandes	\N	UAB	\N	\N	298	\N	UAB	UA	U	LR2
226	10.04.100	227	\N	Weinberg, extensiv (§)	Weinberg, extensiv	UR	UR	\N	(§)	299	\N	UR	UR	U	LR2
227	11.06.000	228	\N	zoologisch/botanisch wertvoller Bereich	Zoologisch/botanisch wertvoller Bereich	ZB	ZB	\N	\N	300	\N	ZB	ZB	U	LR5
228	11.06.100	229	\N	\N	Botanisch wertvoller Bereich	\N	ZBB	\N	\N	301	\N	ZBB	ZB	U	LR5
229	11.06.200	230	\N	\N	Zoologisch wertvoller Bereich	\N	ZBZ	\N	\N	302	\N	ZBZ	ZB	U	LR5
\.


--
-- Data for Name: erhaltungszustand; Type: TABLE DATA; Schema: referenzen; Owner: biotope_admin
--

COPY referenzen.erhaltungszustand (id, wert) FROM stdin;
0	keine Angabe
1	hervorragend
2	gut
3	mittel bis schlecht
\.


--
-- Data for Name: gefaehrdung; Type: TABLE DATA; Schema: referenzen; Owner: biotope_admin
--

COPY referenzen.gefaehrdung (id, name, nummer, identity) FROM stdin;
1	Aufforstung | Bepflanzung	10	GefahrArtComposite-20130502-2003-17
2	keine Gefährdung	1	GefahrArtComposite-20130502-2003-22
3	Aufschüttung | Einebnung	5	GefahrArtComposite-20130502-2003-5
4	Ausbreitung von Neophyten	25	GefahrArtComposite-20130502-2003-25
5	Flächenverlust	22	GefahrArtComposite-20130502-2003-9
6	Biozideinsatz	15	GefahrArtComposite-20130502-2003-18
7	sonstige Ablagerung	7	GefahrArtComposite-20130502-2003-11
8	Eutrophierung	14	GefahrArtComposite-20130502-2003-20
9	Zerschneidung	23	GefahrArtComposite-20130502-2003-12
10	Baumaßnahmen | Ausbau	2	GefahrArtComposite-20130502-2003-8
11	Ablagerung | Müll | Abfall	6	GefahrArtComposite-20130502-2003-0
12	Immissionsschäden	20	GefahrArtComposite-20130502-2003-7
13	Gewässerausbau	3	GefahrArtComposite-20130502-2003-19
14	Entwässerung	13	GefahrArtComposite-20130502-2003-10
15	Landwirtschaft	26	GefahrArtComposite-20130502-2003-26
16	Umbruch	12	GefahrArtComposite-20130502-2003-1
17	Abbau | Abgrabung	4	GefahrArtComposite-20130502-2003-2
18	Verkehr	17	GefahrArtComposite-20130502-2003-14
19	Schadstoffeintrag	18	GefahrArtComposite-20130502-2003-21
20	Erosion	21	GefahrArtComposite-20130502-2003-6
21	Aufgabe der Nutzung	8	GefahrArtComposite-20130502-2003-13
22	Gewässerverunreinigung	19	GefahrArtComposite-20130502-2003-3
23	Freizeitaktivitäten	16	GefahrArtComposite-20130502-2003-15
24	sonstige Gefährdung	24	GefahrArtComposite-20130502-2003-23
25	Abholzung | Rodung	11	GefahrArtComposite-20130502-2003-4
26	Intensivierung der Nutzung	9	GefahrArtComposite-20130502-2003-16
27	Eigentümer/Anwohner	27	GefahrArtComposite-20140122-0900-0
28	Industrie	28	GefahrArtComposite-20140610-1445-0
29	Fischerei	29	GefahrArtComposite-20141001-1301-0
\.


--
-- Data for Name: kartierer; Type: TABLE DATA; Schema: referenzen; Owner: biotope_admin
--

COPY referenzen.kartierer (id, kartierer, anschrift, art_beauftragung) FROM stdin;
1	Administrator	\N	\N
2	Test	\N	\N
3	User	\N	\N
4	Mustermann	\N	\N
5	Musterfrau	\N	\N
6	Musterdivers	\N	\N
\.


--
-- Data for Name: massnahmen; Type: TABLE DATA; Schema: referenzen; Owner: biotope_admin
--

COPY referenzen.massnahmen (id, referenz, massnahme, beschreibung, lr1, lr2, lr3, lr4, lr5) FROM stdin;
1	1.01.01	Gehölzentfernung einmalig/Rodung	1.01.01 Gehölzentfernung einmalig/Rodung	1	1	1	1	1
2	1.01.02	Gehölzentfernung regelmäßig/Beseitigung von Neuaustrieb	1.01.02 Gehölzentfernung regelmäßig/Beseitigung von Neuaustrieb	1	1	1	1	1
3	1.02	Beseitigung krautiger Konkurrenzpflanzen/Neophyten	1.02 Beseitigung krautiger Konkurrenzpflanzen/Neophyten	1	1	1	1	1
4	1.03	Beseitigung von Ablagerungen (Schnittgut, Holz, Müll, Kirrungen etc.)	1.03 Beseitigung von Ablagerungen (Schnittgut, Holz, Müll, Kirrungen etc.)	0	1	1	1	1
5	1.04	Beseitigung militärischer Altlasten	1.04 Beseitigung militärischer Altlasten	1	0	0	0	1
6	1.05.01	umfassende Gewässerrenaturierung (bitte erläutern)	1.05.01 umfassende Gewässerrenaturierung (bitte erläutern)	0	0	0	1	0
7	1.05.02	Umbau/Neubau der Stauanlagen	1.05.02 Umbau/Neubau der Stauanlagen	0	0	1	0	0
8	1.05.03	Umbau/Neubau der Zuleitungsanlagen	1.05.03 Umbau/Neubau der Zuleitungsanlagen	0	0	1	0	0
9	1.05.04	Beseitigung von Querverbauungen/Sicherung der Durchgängigkeit	1.05.04 Beseitigung von Querverbauungen/Sicherung der Durchgängigkeit	0	0	1	1	0
10	1.05.05	Beseitigung von Uferverbauungen	1.05.05 Beseitigung von Uferverbauungen	0	0	1	1	0
11	1.05.06	Öffnen von verrohrten/kanalisierten Gewässerabschnitten	1.05.06 Öffnen von verrohrten/kanalisierten Gewässerabschnitten	0	0	0	1	0
12	1.05.07	Anlage / Instandsetzung von Fischpässen/-treppen	1.05.07 Anlage / Instandsetzung von Fischpässen/-treppen	0	0	0	1	0
13	1.05.08	Anlage von Durchlässen/Unterführungen	1.05.08 Anlage von Durchlässen/Unterführungen	0	0	0	1	0
14	1.05.09	Gewässeranbindung (z. B. Altwasser)	1.05.09 Gewässeranbindung (z. B. Altwasser)	0	0	1	0	0
15	1.05.10	Förderung einer erhöhten Fließgewässerdynamik/Schaffung von Strukturen	1.05.10 Förderung einer erhöhten Fließgewässerdynamik/Schaffung von Strukturen	1	0	0	1	1
16	1.06.01	Anlage/Optimierung von Nistplätzen/-hilfen (Horste, Nist- und Quartierkästen, Brutinseln)	1.06.01 Anlage/Optimierung von Nistplätzen/-hilfen (Horste, Nist- und Quartierkästen, Brutinseln)	1	1	1	1	1
17	1.06.02	Anlage/Optimierung von Versteckplätzen/Hangplätzen, einschließlich Wärmekammern	1.06.02 Anlage/Optimierung von Versteckplätzen/Hangplätzen, einschließlich Wärmekammern	1	1	0	0	0
18	1.06.03	Verdunklungsmaßnahmen in Dachräumen	1.06.03 Verdunklungsmaßnahmen in Dachräumen	0	1	0	0	0
19	1.06.04	Herrichtung und Bereitstellung von Gebäudeteilen (z. B. Dachräume)	1.06.04 Herrichtung und Bereitstellung von Gebäudeteilen (z. B. Dachräume)	0	1	0	0	0
20	1.06.05	Vergitterung (Fledermaus-Winterquartiere)	1.06.05 Vergitterung (Fledermaus-Winterquartiere)	0	1	0	0	0
21	1.06.06	Schaffung/Sicherung von Einflug-/Einschlupföffnungen	1.06.06 Schaffung/Sicherung von Einflug-/Einschlupföffnungen	0	1	0	0	0
22	1.06.07	Verhindern des Eindringens von Tauben	1.06.07 Verhindern des Eindringens von Tauben	0	1	0	0	0
23	1.06.08	Vermauern von Fenster-/Türöffnungen (Verhinderung Vandalismus)	1.06.08 Vermauern von Fenster-/Türöffnungen (Verhinderung Vandalismus)	0	1	0	0	0
24	1.06.09	Sicherung Zugang durch vandalismussichere Tür	1.06.09 Sicherung Zugang durch vandalismussichere Tür	0	1	0	0	0
25	1.06.10	Abwehr von Prädatoren (z. B. Manschetten an Nistplätzen)	1.06.10 Abwehr von Prädatoren (z. B. Manschetten an Nistplätzen)	1	1	0	0	0
26	1.07.01	Beseitigung/Rückbau von baulichen Anlagen (Wege, Brücken, Tunnel etc.)	1.07.01 Beseitigung/Rückbau von baulichen Anlagen (Wege, Brücken, Tunnel etc.)	1	0	1	1	1
27	1.07.02	Anlage von Steilwänden/Bodenabbrüchen	1.07.02 Anlage von Steilwänden/Bodenabbrüchen	0	1	1	1	0
28	1.07.03	Ansitzwarten für Vögel	1.07.03 Ansitzwarten für Vögel	0	1	0	0	1
29	1.08.01	Minimierung des Sedimenteintrages unspezifiziert	1.08.01 Minimierung des Sedimenteintrages unspezifiziert	1	0	1	1	1
30	1.08.02	unbewirtschafteter Gewässerrandstreifen	1.08.02 unbewirtschafteter Gewässerrandstreifen	0	0	1	1	0
31	1.08.03	Bodenschonender Ackerbau	1.08.03 Bodenschonender Ackerbau	0	0	1	1	1
32	1.08.04	Umwandlung Acker in Grünland	1.08.04 Umwandlung Acker in Grünland	0	0	1	1	1
33	1.08.06	morphologische Veränderung von Eintragsbahnen (Verlegung, Rückstaue)	1.08.06 morphologische Veränderung von Eintragsbahnen (Verlegung, Rückstaue)	0	1	0	0	0
34	1.08.07	Anlage von Pufferstreifen/-flächen 	1.08.07 Anlage von Pufferstreifen/-flächen 	1	0	1	1	1
35	1.09	Unterbinden von Einleitungen	1.09 Unterbinden von Einleitungen	0	0	1	1	0
36	1.10	Abwasserklärung im Einzugsgebiet	1.10 Abwasserklärung im Einzugsgebiet	0	0	1	1	0
37	1.11	Verminderung der Grundwasserentnahme	1.11 Verminderung der Grundwasserentnahme	0	0	1	1	1
38	1.12	Sicherung einer Mindestwassermenge in Ausleitungsstrecken	1.12 Sicherung einer Mindestwassermenge in Ausleitungsstrecken	0	0	0	1	0
39	1.13	Beseitigung von Viehtränken	1.13 Beseitigung von Viehtränken	0	0	1	1	1
40	1.14	Auszäunung sensibler Bereiche bzw. der LRT-Fläche	1.14 Auszäunung sensibler Bereiche bzw. der LRT-Fläche	0	0	1	1	1
41	1.15	Reduzierung des (Schwarz-)Wildbestandes	1.15 Reduzierung des (Schwarz-)Wildbestandes	1	0	1	0	1
42	1.16	Horstschutzzone	1.16 Horstschutzzone	1	0	1	0	0
43	1.17	Verlagerung jagdlicher Einrichtungen	1.17 Verlagerung jagdlicher Einrichtungen	1	0	0	0	1
44	1.18	Wegsperrung	1.18 Wegsperrung	1	1	1	1	1
45	1.19	Bewachung	1.19 Bewachung	1	0	1	0	0
46	1.20	Sonstige Verminderung von Beeinträchtigungen (bitte erläutern)	1.20 Sonstige Verminderung von Beeinträchtigungen (bitte erläutern)	1	1	1	1	1
47	2.01.01	Belassen von Brach- und Saumstreifen	2.01.01 Belassen von Brach- und Saumstreifen	0	0	0	0	1
48	2.01.02	Pferchen außerhalb der Fläche oder hangabwärts	2.01.02 Pferchen außerhalb der Fläche oder hangabwärts	0	0	0	0	1
49	2.01.03	Anpassung der Besatzdichte (bitte erläutern)	2.01.03 Anpassung der Besatzdichte (bitte erläutern)	0	0	0	0	1
50	2.01.04	Hoch angesetzter Grasschnitt (i. d. R. ≥7 cm)	2.01.04 Hoch angesetzter Grasschnitt (i. d. R. ≥7 cm)	0	0	0	0	1
51	2.01.05	Aushagerung (zeitweilig erhöhte Schnitthäufigkeit/Beweidungsintensität ohne Düngung)	2.01.05 Aushagerung (zeitweilig erhöhte Schnitthäufigkeit/Beweidungsintensität ohne Düngung)	0	0	0	0	1
52	2.01.06 	Mahdgutübertragung	2.01.06  Mahdgutübertragung	0	0	0	0	1
53	2.01.07	Belassen des Mahdgutes auf der Fläche für mehrere Tage	2.01.07 Belassen des Mahdgutes auf der Fläche für mehrere Tage	0	0	0	0	1
54	2.01.08	Keine dauerhafte Mahdgutablagerung auf oder im Umfeld der Fläche	2.01.08 Keine dauerhafte Mahdgutablagerung auf oder im Umfeld der Fläche	0	0	0	1	1
55	2.01.09	Einsatz bodenschonender Technik	2.01.09 Einsatz bodenschonender Technik	0	0	0	0	1
56	2.01.10	Verwendung tierschonender Mahdtechnik	2.01.10 Verwendung tierschonender Mahdtechnik	0	0	0	0	1
57	2.01.11	Schaffung kleinflächiger vegetationsoffener Bereiche	2.01.11 Schaffung kleinflächiger vegetationsoffener Bereiche	0	0	0	0	1
58	2.01.12	Plaggen/flächiges Abschieben von Oberboden	2.01.12 Plaggen/flächiges Abschieben von Oberboden	0	0	0	0	1
59	2.01.13	Kontrolliertes Brennen/Flämmen	2.01.13 Kontrolliertes Brennen/Flämmen	0	0	0	0	1
60	2.01.14	Mahd mit Kleintechnik	2.01.14 Mahd mit Kleintechnik	0	0	0	0	1
61	2.01.14.01	Handmahd (Sense, Freischneider…)	2.01.14.01 Handmahd (Sense, Freischneider…)	0	0	0	0	1
62	2.01.14.02	Mahd mit Einachsmäher/handgeführtem Balkenmäher	2.01.14.02 Mahd mit Einachsmäher/handgeführtem Balkenmäher	0	0	0	0	1
63	2.01.15.01	Mahd, Nachbeweidung möglich	2.01.15.01 Mahd, Nachbeweidung möglich	0	0	0	0	1
64	2.01.15.02	Mahd ohne Nachbeweidung	2.01.15.02 Mahd ohne Nachbeweidung	0	0	0	0	1
65	2.01.15.03	Beweidung	2.01.15.03 Beweidung	0	0	0	0	1
66	2.01.15.04	Alternativ Mahd und/oder Beweidung	2.01.15.04 Alternativ Mahd und/oder Beweidung	0	0	0	0	1
67	2.01.15.05	Keine regelmäßige Nutzung/Pflege	2.01.15.05 Keine regelmäßige Nutzung/Pflege	0	0	0	0	1
68	2.01.16.01	Staffelmahd/Mahd nur in Teilbereichen (bitte erläutern)	2.01.16.01 Staffelmahd/Mahd nur in Teilbereichen (bitte erläutern)	0	0	0	0	1
69	2.01.16.02	Selektive Mahd (bitte erläutern)	2.01.16.02 Selektive Mahd (bitte erläutern)	0	0	0	0	1
70	2.01.16.03	Nutzungspause (> 6-8 Wochen)	2.01.16.03 Nutzungspause (> 6-8 Wochen)	0	0	0	0	1
71	2.01.16.04	Nutzungspause (ca. 12 Wochen)	2.01.16.04 Nutzungspause (ca. 12 Wochen)	0	0	0	0	1
72	2.01.16.05	spezielle Mahdmuster (z. B. von innen nach außen; bitte erläutern)	2.01.16.05 spezielle Mahdmuster (z. B. von innen nach außen; bitte erläutern)	0	0	0	0	1
73	2.01.16.06	Keine Vorgabe zur Form der Mahd	2.01.16.06 Keine Vorgabe zur Form der Mahd	0	0	0	0	1
74	2.01.16.07	Nutzungspause (ca. 15 Wochen)	2.01.16.07 Nutzungspause (ca. 15 Wochen)	0	0	0	0	1
75	2.01.22.01	1-schürig	2.01.22.01 1-schürig	0	0	0	0	1
76	2.01.22.02	1- bis 2-schürig	2.01.22.02 1- bis 2-schürig	0	0	0	0	1
77	2.01.22.03	2-schürig	2.01.22.03 2-schürig	0	0	0	0	1
78	2.01.22.04	2- bis 3-schürig	2.01.22.04 2- bis 3-schürig	0	0	0	0	1
79	2.01.22.05	3-schürig	2.01.22.05 3-schürig	0	0	0	0	1
80	2.01.22.06	Mahd alle 1 bis 3 Jahre	2.01.22.06 Mahd alle 1 bis 3 Jahre	0	0	0	0	1
81	2.01.22.07	Mahd bei Bedarf in mehrjährigen Abständen	2.01.22.07 Mahd bei Bedarf in mehrjährigen Abständen	0	0	0	0	1
82	2.01.17.01	Nur Schafe/Ziegen	2.01.17.01 Nur Schafe/Ziegen	0	0	0	0	1
83	2.01.17.04	Nur Rinder/Schafe/Ziegen	2.01.17.04 Nur Rinder/Schafe/Ziegen	0	0	0	0	1
84	2.01.17.02	Andere Beschränkung Weidevieh (bitte erläutern)	2.01.17.02 Andere Beschränkung Weidevieh (bitte erläutern)	0	0	0	0	1
85	2.01.17.03	Keine Vorgabe zu Weidetierarten	2.01.17.03 Keine Vorgabe zu Weidetierarten	0	0	0	0	1
86	2.01.17.05	Vorgaben zur Art der Weidetierhaltung (Stand-, Hüte-, Umtriebs-, Triftweide)	2.01.17.05 Vorgaben zur Art der Weidetierhaltung (Stand-, Hüte-, Umtriebs-, Triftweide)	0	0	0	0	1
87	2.01.18.01	Erster Nutzungstermin bis Ende Mai	2.01.18.01 Erster Nutzungstermin bis Ende Mai	0	0	0	0	1
88	2.01.18.02	Frühester Nutzungstermin ab 1. Juni	2.01.18.02 Frühester Nutzungstermin ab 1. Juni	0	0	0	0	1
89	2.01.18.03	Frühester Nutzungstermin ab 15. Juni	2.01.18.03 Frühester Nutzungstermin ab 15. Juni	0	0	0	0	1
90	2.01.18.04	Frühester Nutzungstermin ab 1. Juli	2.01.18.04 Frühester Nutzungstermin ab 1. Juli	0	0	0	0	1
91	2.01.18.05	Frühester Nutzungstermin ab 15. Juli	2.01.18.05 Frühester Nutzungstermin ab 15. Juli	0	0	0	0	1
92	2.01.18.06	Frühester Nutzungstermin ab 1. August	2.01.18.06 Frühester Nutzungstermin ab 1. August	0	0	0	0	1
93	2.01.18.07	Frühester Nutzungstermin ab 1. September	2.01.18.07 Frühester Nutzungstermin ab 1. September	0	0	0	0	1
94	2.01.18.08 	Wintermahd	2.01.18.08  Wintermahd	0	0	0	0	1
95	2.01.18.09	Keine Vorgabe zum frühesten Nutzungs-/Pflegetermin	2.01.18.09 Keine Vorgabe zum frühesten Nutzungs-/Pflegetermin	0	0	0	0	1
96	2.01.18.12	sonstige Vorgaben zum frühesten Nutzungstermin (bitte erläutern)	2.01.18.12 sonstige Vorgaben zum frühesten Nutzungstermin (bitte erläutern)	0	0	0	0	1
97	2.01.19.01	Keine N-Düngung	2.01.19.01 Keine N-Düngung	0	0	0	0	1
98	2.01.19.03	N-Düngung maximal in Höhe des Entzugs	2.01.19.03 N-Düngung maximal in Höhe des Entzugs	0	0	0	0	1
99	2.01.19.04	Keine Vorgabe zur N-Düngung	2.01.19.04 Keine Vorgabe zur N-Düngung	0	0	0	0	1
100	2.01.20.01	Keine Grunddüngung	2.01.20.01 Keine Grunddüngung	0	0	0	0	1
101	2.01.20.03	Grunddüngung maximal in Höhe des Entzugs	2.01.20.03 Grunddüngung maximal in Höhe des Entzugs	0	0	0	0	1
102	2.01.20.04	Keine Vorgabe zur Grunddüngung	2.01.20.04 Keine Vorgabe zur Grunddüngung	0	0	0	0	1
103	2.01.21.01	Keine Grünlandkalkung	2.01.21.01 Keine Grünlandkalkung	0	0	0	0	1
104	2.01.21.02	Vorgaben zur Grünlandkalkung (bitte erläutern)	2.01.21.02 Vorgaben zur Grünlandkalkung (bitte erläutern)	0	0	0	0	1
105	2.01.21.03	Keine Vorgabe zur Grünlandkalkung	2.01.21.03 Keine Vorgabe zur Grünlandkalkung	0	0	0	0	1
106	2.02.01	Gehölzpflanzung mit standortheimischen Arten	2.02.01 Gehölzpflanzung mit standortheimischen Arten	0	1	1	1	1
107	2.02.02	Gehölzpflanzung nur lückig bzw. in kleineren Bereichen	2.02.02 Gehölzpflanzung nur lückig bzw. in kleineren Bereichen	0	1	0	1	0
108	2.02.03	Einzelbaumpflanzung	2.02.03 Einzelbaumpflanzung	0	1	0	0	1
109	2.02.04	Gehölzpflege (Heckenschnitt, Kopfweiden, Obstbäume etc.)	2.02.04 Gehölzpflege (Heckenschnitt, Kopfweiden, Obstbäume etc.)	0	1	1	1	1
110	2.02.05	Gehölze in Anteilen unter 10% belassen	2.02.05 Gehölze in Anteilen unter 10% belassen	0	0	1	1	1
111	2.02.06	sonstige Maßnahmen zu Gehölzstrukturen (bitte erläutern)	2.02.06 sonstige Maßnahmen zu Gehölzstrukturen (bitte erläutern)	0	0	1	1	1
112	2.03.01.01	Mehrschichtigkeit aktiv erhalten	2.03.01.01 Mehrschichtigkeit aktiv erhalten	1	0	0	0	0
113	2.03.01.02	Mehrschichtigkeit verbessern/entwickeln	2.03.01.02 Mehrschichtigkeit verbessern/entwickeln	1	0	0	0	0
114	2.03.01.03	Vor-/Unterbau mit lebensraumtypischen Baumarten	2.03.01.03 Vor-/Unterbau mit lebensraumtypischen Baumarten	1	0	0	0	0
115	2.03.01.04	Lebensraumtyp kleinflächig verjüngen	2.03.01.04 Lebensraumtyp kleinflächig verjüngen	1	0	0	0	0
116	2.03.01.05	Plenterstruktur erhalten	2.03.01.05 Plenterstruktur erhalten	1	0	0	0	0
117	2.03.01.06	Plenterstruktur verbessern/entwickeln	2.03.01.06 Plenterstruktur verbessern/entwickeln	1	0	0	0	0
118	2.03.01.07	Auslichten dichter Gehölzbestände/Entfernung bestimmter Gehölze	2.03.01.07 Auslichten dichter Gehölzbestände/Entfernung bestimmter Gehölze	1	0	0	0	1
119	2.03.01.08	Anlage/Erhalt von Lichtungen und Freiflächen im Wald	2.03.01.08 Anlage/Erhalt von Lichtungen und Freiflächen im Wald	1	0	0	0	1
120	2.03.01.09	Mittelwaldartige Bewirtschaftung	2.03.01.09 Mittelwaldartige Bewirtschaftung	1	0	0	0	0
121	2.03.01.10	Niederwaldartige Bewirtschaftung	2.03.01.10 Niederwaldartige Bewirtschaftung	1	0	0	0	0
122	2.03.01.11	Anlage von Waldinnen- und Außenmänteln und –säumen	2.03.01.11 Anlage von Waldinnen- und Außenmänteln und –säumen	1	0	0	0	0
123	2.03.01.12	Erntenutzungszeitraum verlängern	2.03.01.12 Erntenutzungszeitraum verlängern	1	0	0	0	0
124	2.03.01.13	Fläche nicht bewirtschaften	2.03.01.13 Fläche nicht bewirtschaften	1	0	0	0	0
125	2.03.01.14	Außerregelmäßige Bewirtschaftung (a. r. B.)	2.03.01.14 Außerregelmäßige Bewirtschaftung (a. r. B.)	1	0	0	0	0
126	2.03.01.15	Belassen von Altholz 	2.03.01.15 Belassen von Altholz 	1	0	0	0	0
127	2.03.01.16	Sonstige Maßnahmen zugunsten der Waldstruktur (bitte erläutern)	2.03.01.16 Sonstige Maßnahmen zugunsten der Waldstruktur (bitte erläutern)	1	0	0	0	0
128	2.03.01.17	Maßnahmen zugunsten sonstiger Strukturmerkmale (bitte erläutern)	2.03.01.17 Maßnahmen zugunsten sonstiger Strukturmerkmale (bitte erläutern)	1	0	0	0	0
129	2.03.02.01	Starkes stehendes und liegendes Totholz belassen (mind. 3 Stück/ha)	2.03.02.01 Starkes stehendes und liegendes Totholz belassen (mind. 3 Stück/ha)	1	0	0	0	0
130	2.03.02.02	Starkes stehendes oder liegendes Totholz belassen (mind. 1 Stück/ha)	2.03.02.02 Starkes stehendes oder liegendes Totholz belassen (mind. 1 Stück/ha)	1	0	0	0	0
131	2.03.02.03	Starkes stehendes und liegendes Totholz anreichern (mind. 3 Stück/ha)	2.03.02.03 Starkes stehendes und liegendes Totholz anreichern (mind. 3 Stück/ha)	1	0	0	0	0
132	2.03.02.04	Starkes stehendes oder liegendes Totholz anreichern (mind. 1 Stück/ha)	2.03.02.04 Starkes stehendes oder liegendes Totholz anreichern (mind. 1 Stück/ha)	1	0	0	0	0
133	2.03.02.05	Belassen von Totholz/Baumstubben	2.03.02.05 Belassen von Totholz/Baumstubben	1	0	1	1	1
134	2.03.03.01	Biotopbäume belassen (mind. 12 Stück/ha, Artenschutz)	2.03.03.01 Biotopbäume belassen (mind. 12 Stück/ha, Artenschutz)	1	0	0	0	0
135	2.03.03.02	Biotopbäume belassen (mind. 6 Stück/ha)	2.03.03.02 Biotopbäume belassen (mind. 6 Stück/ha)	1	0	0	0	0
136	2.03.03.03	Biotopbäume belassen (mind. 3 Stück/ha)	2.03.03.03 Biotopbäume belassen (mind. 3 Stück/ha)	1	0	0	0	0
137	2.03.03.04	Biotopbäume anreichern (mind. 12 Stück/ha, Artenschutz)	2.03.03.04 Biotopbäume anreichern (mind. 12 Stück/ha, Artenschutz)	1	0	0	0	0
138	2.03.03.05	Biotopbäume anreichern (mind. 6 Stück/ha)	2.03.03.05 Biotopbäume anreichern (mind. 6 Stück/ha)	1	0	0	0	0
139	2.03.03.06	Biotopbäume anreichern (mind. 3 Stück/ha)	2.03.03.06 Biotopbäume anreichern (mind. 3 Stück/ha)	1	0	0	0	0
140	2.03.03.07	Belassen von Horst- und Höhlenbäumen	2.03.03.07 Belassen von Horst- und Höhlenbäumen	1	0	0	0	0
141	2.03.04.01	Anteil der lebensraumtypischen Hauptbaumarten aktiv erhalten (A-Status)	2.03.04.01 Anteil der lebensraumtypischen Hauptbaumarten aktiv erhalten (A-Status)	1	0	0	0	0
142	2.03.04.02	Anteil der lebensraumtypischen Hauptbaumarten aktiv erhalten (B-Status)	2.03.04.02 Anteil der lebensraumtypischen Hauptbaumarten aktiv erhalten (B-Status)	1	0	0	0	0
143	2.03.04.03	Anteil der lebensraumtypischen Nebenbaumarten aktiv erhalten (A-Status)	2.03.04.03 Anteil der lebensraumtypischen Nebenbaumarten aktiv erhalten (A-Status)	1	0	0	0	0
144	2.03.04.04	Anteil der lebensraumtypischen Nebenbaumarten aktiv erhalten (B-Status)	2.03.04.04 Anteil der lebensraumtypischen Nebenbaumarten aktiv erhalten (B-Status)	1	0	0	0	0
145	2.03.04.05	Anteil lebensraumtypischer Hauptbaumarten erhöhen	2.03.04.05 Anteil lebensraumtypischer Hauptbaumarten erhöhen	1	0	0	0	0
146	2.03.04.06	Anteil lebensraumtypischer Nebenbaumarten erhöhen	2.03.04.06 Anteil lebensraumtypischer Nebenbaumarten erhöhen	1	0	0	0	0
147	2.03.04.07	Naturverjüngung lebensraumtypischer Baumarten fördern	2.03.04.07 Naturverjüngung lebensraumtypischer Baumarten fördern	1	0	0	0	0
148	2.03.04.08	Lebensraumtyp durch Pflanzung oder Saat verjüngen	2.03.04.08 Lebensraumtyp durch Pflanzung oder Saat verjüngen	1	0	0	0	0
149	2.03.04.09	Gesellschaftsfremden Baumartenanteil bei Hiebsreife reduzieren	2.03.04.09 Gesellschaftsfremden Baumartenanteil bei Hiebsreife reduzieren	1	0	0	0	0
150	2.03.04.10	Gesellschaftsfremden Baumartenanteil vor der Hiebsreife reduzieren	2.03.04.10 Gesellschaftsfremden Baumartenanteil vor der Hiebsreife reduzieren	1	0	0	0	0
151	2.03.04.11	Verjüngung gesellschaftsfremder Gehölze reduzieren	2.03.04.11 Verjüngung gesellschaftsfremder Gehölze reduzieren	1	0	0	0	0
152	2.03.04.12	Sonstige Maßn. zugunsten des lebensraumtyp. Baumarteninventars (bitte erläutern)	2.03.04.12 Sonstige Maßn. zugunsten des lebensraumtyp. Baumarteninventars (bitte erläutern)	1	0	0	0	0
153	2.03.04.13	Förderung bestimmter Baumarten (bitte erläutern)	2.03.04.13 Förderung bestimmter Baumarten (bitte erläutern)	1	0	0	0	0
154	2.03.05.01	Untypische Dominanzen in der Bodenvegetation regulieren	2.03.05.01 Untypische Dominanzen in der Bodenvegetation regulieren	1	0	0	0	0
155	2.03.05.02	Sonstige Maßn. zugunsten der lebensraumtyp. Bodenvegetation (bitte erläutern)	2.03.05.02 Sonstige Maßn. zugunsten der lebensraumtyp. Bodenvegetation (bitte erläutern)	1	0	0	0	0
156	2.03.06.01	Keine Befahrung	2.03.06.01 Keine Befahrung	1	0	0	0	0
157	2.03.06.02	Befahrung nur auf permanenten Rückegassen	2.03.06.02 Befahrung nur auf permanenten Rückegassen	1	0	0	0	0
158	2.03.06.03	Befahrung nur in Trockenperioden oder bei Dauerfrost	2.03.06.03 Befahrung nur in Trockenperioden oder bei Dauerfrost	1	0	0	0	0
159	2.03.06.04	Bodenschonende Rückeverfahren anwenden	2.03.06.04 Bodenschonende Rückeverfahren anwenden	1	0	0	0	0
160	2.03.06.05	Holz mit Seilkran rücken	2.03.06.05 Holz mit Seilkran rücken	1	0	0	0	0
161	2.03.06.06	Torfabbau/Materialentnahme einstellen	2.03.06.06 Torfabbau/Materialentnahme einstellen	1	0	1	0	1
162	2.03.06.07	Sonstige Maßnahmen zugunsten der Bodenstruktur (bitte erläutern)	2.03.06.07 Sonstige Maßnahmen zugunsten der Bodenstruktur (bitte erläutern)	1	0	0	0	0
163	2.03.07.01	Eutrophierung reduzieren/einstellen	2.03.07.01 Eutrophierung reduzieren/einstellen	1	0	0	0	0
164	2.03.07.02	Auf Kalkung verzichten	2.03.07.02 Auf Kalkung verzichten	1	0	0	0	0
165	2.03.07.03	Kompensationskalkung durchführen	2.03.07.03 Kompensationskalkung durchführen	1	0	0	0	0
166	2.03.07.04	Organische Ablagerungen beseitigen	2.03.07.04 Organische Ablagerungen beseitigen	1	0	0	0	0
167	2.03.07.05	Müll/anorganische Ablagerungen beseitigen	2.03.07.05 Müll/anorganische Ablagerungen beseitigen	1	0	0	0	0
168	2.03.07.06	Schadstoffimmission reduzieren	2.03.07.06 Schadstoffimmission reduzieren	1	0	0	0	0
169	2.03.07.07	Sonstige Maßnahmen zugunsten des Stoffhaushaltes (bitte erläutern)	2.03.07.07 Sonstige Maßnahmen zugunsten des Stoffhaushaltes (bitte erläutern)	1	0	0	0	0
170	2.03.08.01	Entwässerungsgräben nicht wieder instand setzen	2.03.08.01 Entwässerungsgräben nicht wieder instand setzen	1	0	0	0	1
171	2.03.08.02	Entwässerungsgräben schließen	2.03.08.02 Entwässerungsgräben schließen	1	0	0	0	1
172	2.03.08.03	(Wieder-)Vernässung zulassen	2.03.08.03 (Wieder-)Vernässung zulassen	1	0	0	0	1
173	2.03.08.04	Lebensraumuntypische Vernässung reduzieren/einstellen	2.03.08.04 Lebensraumuntypische Vernässung reduzieren/einstellen	1	0	0	0	1
174	2.03.08.05	Maßnahmen in der hydrologischen Schutzzone	2.03.08.05 Maßnahmen in der hydrologischen Schutzzone	1	0	0	0	1
175	2.03.08.06	Sonstige Maßnahmen zugunsten des Wasserhaushaltes (bitte erläutern)	2.03.08.06 Sonstige Maßnahmen zugunsten des Wasserhaushaltes (bitte erläutern)	1	0	0	0	1
176	2.03.08.07	aktuell keine Maßnahmen zugunsten des Wasserhaushaltes erforderlich	2.03.08.07 aktuell keine Maßnahmen zugunsten des Wasserhaushaltes erforderlich	0	0	0	0	1
177	2.03.08.08	hydrologisches Gutachten erforderlich	2.03.08.08 hydrologisches Gutachten erforderlich	1	0	1	0	1
178	2.03.09.01	Verbissbelastung reduzieren	2.03.09.01 Verbissbelastung reduzieren	1	0	0	0	0
179	2.03.09.02	Schälschäden reduzieren	2.03.09.02 Schälschäden reduzieren	1	0	0	0	0
180	2.03.09.03	Zäunung zum Schutz der Verjüngung	2.03.09.03 Zäunung zum Schutz der Verjüngung	1	0	0	0	0
181	2.03.09.04	Sonstige Maßnahmen zur Verringerung/Beseitigung von Schäden an der Vegetationsstruktur (bitte erläutern)	2.03.09.04 Sonstige Maßnahmen zur Verringerung/Beseitigung von Schäden an der Vegetationsstruktur (bitte erläutern)	1	0	0	0	0
182	2.03.10.01	Lärmimmission reduzieren	2.03.10.01 Lärmimmission reduzieren	1	0	0	0	0
183	2.03.10.02	Erholungsnutzung einschränken/einstellen	2.03.10.02 Erholungsnutzung einschränken/einstellen	1	0	0	0	0
184	2.03.10.03	Rückbau von Wegen	2.03.10.03 Rückbau von Wegen	1	0	0	0	0
185	2.03.10.04	Sonstige Maßnahmen zur Verringerung/Beseitigung von Störungen (bitte erläutern)	2.03.10.04 Sonstige Maßnahmen zur Verringerung/Beseitigung von Störungen (bitte erläutern)	1	0	0	0	0
186	2.03.11	Rodung/Umwandlung von Wald in eine andere Nutzungsart	2.03.11 Rodung/Umwandlung von Wald in eine andere Nutzungsart	1	0	0	0	1
187	2.03.12	Entwicklung zusätzlicher LRT-Flächen (bitte erläutern)	2.03.12 Entwicklung zusätzlicher LRT-Flächen (bitte erläutern)	1	0	0	0	0
188	2.03.13	naturnahe Waldbewirtschaftung/Walderhaltung	2.03.13 naturnahe Waldbewirtschaftung/Walderhaltung	1	0	0	0	0
189	2.03.14	besondere Aufmerksamkeit, um seltenen A-Zustand zu erhalten - erhöhte Anforderungen berücksichtigen	2.03.14 besondere Aufmerksamkeit, um seltenen A-Zustand zu erhalten - erhöhte Anforderungen berücksichtigen	1	0	0	0	0
190	2.03.15	besondere Aufmerksamkeit, damit sich der ungünstige Zustand nicht noch weiter verschlechtert - ein günstiger Zustand soll möglichst hergestellt werden	2.03.15 besondere Aufmerksamkeit, damit sich der ungünstige Zustand nicht noch weiter verschlechtert - ein günstiger Zustand soll möglichst hergestellt werden	1	0	0	0	0
191	2.04.01	Schonung/Förderung der Wildfischbestände	2.04.01 Schonung/Förderung der Wildfischbestände	0	0	1	0	0
192	2.04.02	Anlage von Fischschonbezirken 	2.04.02 Anlage von Fischschonbezirken 	0	0	1	1	0
193	2.04.03	Traditionelle Bewirtschaftung als Fischteich	2.04.03 Traditionelle Bewirtschaftung als Fischteich	0	0	1	0	0
194	2.04.04	Wasserstandsregulierung	2.04.04 Wasserstandsregulierung	0	0	1	0	1
195	2.04.05	Trockenlegung im Winter	2.04.05 Trockenlegung im Winter	0	0	1	0	0
196	2.04.06	Trockenlegung im Sommer/Herbst (Sömmerung)	2.04.06 Trockenlegung im Sommer/Herbst (Sömmerung)	0	0	1	0	0
197	2.04.07	Instandhaltung von Stauanlagen	2.04.07 Instandhaltung von Stauanlagen	0	0	1	0	0
198	2.04.08	Neuanlage von Gewässern	2.04.08 Neuanlage von Gewässern	0	0	1	0	0
199	2.04.09	Schaffung zusätzlicher Uferstrukturen/Flachwasserzonen	2.04.09 Schaffung zusätzlicher Uferstrukturen/Flachwasserzonen	0	0	1	1	0
200	2.04.10	Anlage/Unterhaltung von Nahrungsteichen, Mehrbesatz	2.04.10 Anlage/Unterhaltung von Nahrungsteichen, Mehrbesatz	0	0	1	0	0
201	2.04.11	Erhalt von Uferstrukturen/Flachwasserzonen	2.04.11 Erhalt von Uferstrukturen/Flachwasserzonen	0	0	1	1	0
202	2.04.12.01	sofortiger Wiederanstau/Winterbespannung	2.04.12.01 sofortiger Wiederanstau/Winterbespannung	0	0	1	0	0
203	2.04.12.02	Bespannung spätestens am 1. März	2.04.12.02 Bespannung spätestens am 1. März	0	0	1	0	0
204	2.04.12.03	mehrjähriger Ablassrhythmus	2.04.12.03 mehrjähriger Ablassrhythmus	0	0	1	0	0
205	2.04.12.04	ganzjährige Bespannung	2.04.12.04 ganzjährige Bespannung	0	0	1	0	0
206	2.04.12.05	sonstige Vorgaben zur Bespannung (bitte erläutern)	2.04.12.05 sonstige Vorgaben zur Bespannung (bitte erläutern)	0	0	1	0	0
207	2.04.12.06	keine Bespannungsvorgabe	2.04.12.06 keine Bespannungsvorgabe	0	0	1	0	0
208	2.04.12.07	mind. 6-wöchige Trockenlegung von Teilbereichen im Sommer oder Herbst	2.04.12.07 mind. 6-wöchige Trockenlegung von Teilbereichen im Sommer oder Herbst	0	0	1	0	0
209	2.04.13	Abfischen ohne Neubesatz	2.04.13 Abfischen ohne Neubesatz	0	0	1	0	0
210	2.04.14	Erhalt und Förderung lebensraumtypischer Unterwasser- und Schwimmblattvegetation	2.04.14 Erhalt und Förderung lebensraumtypischer Unterwasser- und Schwimmblattvegetation	0	0	1	0	0
211	2.05.01	extensive Gewässerunterhaltungsmaßnahmen unspezifiziert	2.05.01 extensive Gewässerunterhaltungsmaßnahmen unspezifiziert	0	0	1	1	0
212	2.05.02	Mahd am Gewässerufer 	2.05.02 Mahd am Gewässerufer 	0	0	1	1	0
213	2.05.03	schonende Entkrautung	2.05.03 schonende Entkrautung	0	0	1	1	0
214	2.05.04	schonender Schilfschnitt/Röhrichterhalt	2.05.04 schonender Schilfschnitt/Röhrichterhalt	0	0	1	0	0
215	2.05.05	schonende Entlandung (Stillgewässer)	2.05.05 schonende Entlandung (Stillgewässer)	0	0	1	0	0
216	2.05.06	schonende Grabenräumung/-pflege	2.05.06 schonende Grabenräumung/-pflege	0	0	1	1	0
217	2.05.07	Unterhaltung abschnittsweise/in mehrjährigen Abständen 	2.05.07 Unterhaltung abschnittsweise/in mehrjährigen Abständen 	0	0	1	1	0
218	2.06	Anlage von Schlenken	2.06 Anlage von Schlenken	0	0	0	0	1
219	2.07	Schaffung stationärer Schutzanlagen	2.07 Schaffung stationärer Schutzanlagen	0	0	1	0	1
220	2.08	Einsatz mobiler Schutzanlagen an Verkehrswegen	2.08 Einsatz mobiler Schutzanlagen an Verkehrswegen	0	0	1	0	1
221	2.09.01	mehrjährige Ackerbrache	2.09.01 mehrjährige Ackerbrache	0	1	0	0	0
222	2.09.02	Brachestreifen/Blühstreifen	2.09.02 Brachestreifen/Blühstreifen	0	1	0	0	0
223	2.09.03	Ackerrandstreifen	2.09.03 Ackerrandstreifen	0	1	0	0	0
224	2.09.04	spezielle Anbauverfahren (bitte erläutern)	2.09.04 spezielle Anbauverfahren (bitte erläutern)	0	1	0	0	0
225	2.09.05	Vorgaben für die Fruchtfolge (bitte erläutern)	2.09.05 Vorgaben für die Fruchtfolge (bitte erläutern)	0	1	0	0	0
226	2.09.06	Vorgaben zur Düngung (bitte erläutern)	2.09.06 Vorgaben zur Düngung (bitte erläutern)	0	1	0	0	0
227	2.09.07	Vorgaben zum Einsatz von Pflanzenschutzmitteln (bitte erläutern)	2.09.07 Vorgaben zum Einsatz von Pflanzenschutzmitteln (bitte erläutern)	0	1	0	0	0
228	2.09.08	punktuelle Maßnahmen im Acker (Kiebitzinseln, Feldlerchenfenster, Brutplatzschonung)	2.09.08 punktuelle Maßnahmen im Acker (Kiebitzinseln, Feldlerchenfenster, Brutplatzschonung)	0	1	0	0	0
229	2.09.09	sonstige Ackerbauliche Maßnahmen (bitte erläutern)	2.09.09 sonstige Ackerbauliche Maßnahmen (bitte erläutern)	0	1	0	0	0
230	2.10	Beachtung von Vorkommen gefährdeter Arten (bitte erläutern)	2.10 Beachtung von Vorkommen gefährdeter Arten (bitte erläutern)	1	1	1	1	1
231	2.11	Sonstige Pflegehinweise (bitte erläutern)	2.11 Sonstige Pflegehinweise (bitte erläutern)	1	1	1	1	1
232	3.01.01	Keine Neuansaat/Nachsaat	3.01.01 Keine Neuansaat/Nachsaat	0	0	0	0	1
233	3.01.02	Keine Gehölzpflanzungen	3.01.02 Keine Gehölzpflanzungen	0	0	0	0	1
234	3.01.03	Keine Pflanzung von Nadelhölzern im LRT-Umfeld	3.01.03 Keine Pflanzung von Nadelhölzern im LRT-Umfeld	0	0	0	0	1
235	3.01.04	Kein Walzen/Schleppen im Sommerhalbjahr	3.01.04 Kein Walzen/Schleppen im Sommerhalbjahr	0	0	0	0	1
236	3.01.05	Kein Einsatz von Gülle	3.01.05 Kein Einsatz von Gülle	0	0	0	0	1
237	3.01.06	Keine Zufütterung bei Weidetieren	3.01.06 Keine Zufütterung bei Weidetieren	0	0	0	0	1
238	3.01.07	Keine Pflanzung standortfremder Gehölze im LRT-Umfeld	3.01.07 Keine Pflanzung standortfremder Gehölze im LRT-Umfeld	0	0	0	0	1
239	3.02.01	Rücknahme/Regulierung der fischereiwirtschaftlichen Nutzung	3.02.01 Rücknahme/Regulierung der fischereiwirtschaftlichen Nutzung	0	0	1	0	0
240	3.02.02	kein Fischbesatz und keine fischereiwirtschaftliche Nutzung	3.02.02 kein Fischbesatz und keine fischereiwirtschaftliche Nutzung	0	0	1	1	0
241	3.02.03	kein Besatz mit gebietsfremden Fischarten	3.02.03 kein Besatz mit gebietsfremden Fischarten	0	0	1	1	0
242	3.02.04	keine Gewässerunterhaltung	3.02.04 keine Gewässerunterhaltung	0	0	0	1	0
243	3.02.05	Keine Ablagerungen auf Kies- und Schlammbänken während der Vegetationszeit	3.02.05 Keine Ablagerungen auf Kies- und Schlammbänken während der Vegetationszeit	0	0	0	1	0
244	3.02.06.01	keinerlei Fischbesatz	3.02.06.01 keinerlei Fischbesatz	0	0	1	0	0
245	3.02.06.02	quantitative Ertrags- oder Besatzvorgabe (bitte erläutern)	3.02.06.02 quantitative Ertrags- oder Besatzvorgabe (bitte erläutern)	0	0	1	0	0
246	3.02.06.03	keine Besatzvorgabe	3.02.06.03 keine Besatzvorgabe	0	0	1	0	0
247	3.02.07.01	Beschränkung Graskarpfenbesatz (bitte erläutern)	3.02.07.01 Beschränkung Graskarpfenbesatz (bitte erläutern)	0	0	1	0	0
248	3.02.07.02	Beschränkung Raubfischbesatz (bitte erläutern)	3.02.07.02 Beschränkung Raubfischbesatz (bitte erläutern)	0	0	1	0	0
249	3.02.07.03	Beschränkung Graskarpfen- und Raubfischbesatz (bitte erläutern)	3.02.07.03 Beschränkung Graskarpfen- und Raubfischbesatz (bitte erläutern)	0	0	1	0	0
250	3.02.07.04	Kein Graskarpfenbesatz	3.02.07.04 Kein Graskarpfenbesatz	0	0	1	0	0
251	3.02.07.05	Kein Raubfischbesatz	3.02.07.05 Kein Raubfischbesatz	0	0	1	0	0
252	3.02.07.06	Kein Graskarpfen- und Raubfischbesatz	3.02.07.06 Kein Graskarpfen- und Raubfischbesatz	0	0	1	0	0
253	3.02.07.07	Keine Vorgabe zu Graskarpfen- und Raubfischbesatz	3.02.07.07 Keine Vorgabe zu Graskarpfen- und Raubfischbesatz	0	0	1	0	0
254	3.02.07.08	sonstige Vorgaben zum Fischbesatz (bitte erläutern)	3.02.07.08 sonstige Vorgaben zum Fischbesatz (bitte erläutern)	0	0	1	0	0
255	3.02.08.01	keine Teichdüngung	3.02.08.01 keine Teichdüngung	0	0	1	0	0
256	3.02.08.02	Beschränkung Teichdüngung (bitte erläutern)	3.02.08.02 Beschränkung Teichdüngung (bitte erläutern)	0	0	1	0	0
257	3.02.08.03	keine Vorgabe zur Teichdüngung	3.02.08.03 keine Vorgabe zur Teichdüngung	0	0	1	0	0
258	3.02.09.01	keine Teichkalkung	3.02.09.01 keine Teichkalkung	0	0	1	0	0
259	3.02.09.02	Beschränkung Teichkalkung (bitte erläutern)	3.02.09.02 Beschränkung Teichkalkung (bitte erläutern)	0	0	1	0	0
260	3.02.09.03	keine Vorgabe zur Teichkalkung	3.02.09.03 keine Vorgabe zur Teichkalkung	0	0	1	0	0
261	3.02.10.01	keine Zufütterung Teichwirtschaft/Naturnahrung	3.02.10.01 keine Zufütterung Teichwirtschaft/Naturnahrung	0	0	1	0	0
262	3.02.10.02	nur angemessene Getreidefütterung	3.02.10.02 nur angemessene Getreidefütterung	0	0	1	0	0
263	3.02.10.03	angemessene Getreide- oder Pelletfütterung/Mischfutter nur zur Konditionierung	3.02.10.03 angemessene Getreide- oder Pelletfütterung/Mischfutter nur zur Konditionierung	0	0	1	0	0
264	3.02.10.04	sonstige Beschränkung Zufütterung Teichwirtschaft (bitte erläutern)	3.02.10.04 sonstige Beschränkung Zufütterung Teichwirtschaft (bitte erläutern)	0	0	1	0	0
265	3.02.10.05	keine Vorgabe zur Zufütterung Teichwirtschaft	3.02.10.05 keine Vorgabe zur Zufütterung Teichwirtschaft	0	0	1	0	0
266	3.03.01	Betretungsverbot	3.03.01 Betretungsverbot	0	1	1	0	1
267	3.03.02	Besucherlenkung/Regelung der Freizeitnutzung (Sport, Zelten, Angeln, Bootfahren etc.)	3.03.02 Besucherlenkung/Regelung der Freizeitnutzung (Sport, Zelten, Angeln, Bootfahren etc.)	1	1	1	1	1
268	3.03.03	Kein Einsatz von Pflanzenschutzmitteln	3.03.03 Kein Einsatz von Pflanzenschutzmitteln	0	0	0	0	1
269	3.03.04	keine Kalkung im hydrologischen Einzugsgebiet	3.03.04 keine Kalkung im hydrologischen Einzugsgebiet	1	0	1	0	1
270	3.03.05	Vorgaben zur Wege- und Teichdammpflege (bitte erläutern)	3.03.05 Vorgaben zur Wege- und Teichdammpflege (bitte erläutern)	0	0	1	0	0
271	3.03.06	keine Beleuchtung von Gebäudeteilen (Fledermausschutz) 	3.03.06 keine Beleuchtung von Gebäudeteilen (Fledermausschutz) 	0	1	0	0	0
272	3.03.07	kein Einsatz von Bioziden (Rodentizide, Insektizide etc.)	3.03.07 kein Einsatz von Bioziden (Rodentizide, Insektizide etc.)	1	1	1	0	1
273	3.04	Sonstige Verbote/Unterlassungen (bitte erläutern)	3.04 Sonstige Verbote/Unterlassungen (bitte erläutern)	1	1	1	1	1
274	4.01	Natürliche Sukzession/Teilbereiche ohne Bewirtschaftung	4.01 Natürliche Sukzession/Teilbereiche ohne Bewirtschaftung	0	1	1	1	1
275	4.02.01	Ausweisung von Schutzgebieten unspezifiziert	4.02.01 Ausweisung von Schutzgebieten unspezifiziert	1	0	1	1	1
276	4.02.02	Ausweisung/Erweiterung NSG	4.02.02 Ausweisung/Erweiterung NSG	1	0	1	1	1
277	4.02.03	Ausweisung Naturdenkmal	4.02.03 Ausweisung Naturdenkmal	1	1	1	1	1
278	4.02.04	Geschwindigkeitsbegrenzung	4.02.04 Geschwindigkeitsbegrenzung	1	1	0	0	1
279	4.03	Bestandsstützende Maßnahmen/Vermehrungskultur	4.03 Bestandsstützende Maßnahmen/Vermehrungskultur	1	0	1	1	1
280	4.04	Aufstellen von Informationstafeln	4.04 Aufstellen von Informationstafeln	1	1	1	1	1
281	4.05	Beheizung Hufeisennasen-Quartiere	4.05 Beheizung Hufeisennasen-Quartiere	0	1	0	0	0
282	4.06	weitere sonstige Maßnahmen (bitte erläutern)	4.06 weitere sonstige Maßnahmen (bitte erläutern)	1	1	1	1	1
283	5	Maßnahmen zugunsten der lebensraumtypischen Fauna (bitte erläutern)	5 Maßnahmen zugunsten der lebensraumtypischen Fauna (bitte erläutern)	1	1	0	0	0
284	6.01	allgemein: LRT-spezifische Behandlungsgrundsätze beachten	6.01 allgemein: LRT-spezifische Behandlungsgrundsätze beachten	1	0	0	0	0
285	6.02	Standardmaßnahmen LRT 9110	6.02 Standardmaßnahmen LRT 9110	1	0	0	0	0
286	6.03	Standardmaßnahmen LRT 9130	6.03 Standardmaßnahmen LRT 9130	1	0	0	0	0
287	6.04	Standardmaßnahmen LRT 9160	6.04 Standardmaßnahmen LRT 9160	1	0	0	0	0
288	6.05	Standardmaßnahmen LRT 9170	6.05 Standardmaßnahmen LRT 9170	1	0	0	0	0
289	6.06	Standardmaßnahmen LRT 9180*	6.06 Standardmaßnahmen LRT 9180*	1	0	0	0	0
290	6.07	Standardmaßnahmen LRT 9190	6.07 Standardmaßnahmen LRT 9190	1	0	0	0	0
291	6.08	Standardmaßnahmen LRT 91D1*	6.08 Standardmaßnahmen LRT 91D1*	1	0	0	0	0
292	6.09	Standardmaßnahmen LRT 91D2*	6.09 Standardmaßnahmen LRT 91D2*	1	0	0	0	0
293	6.10	Standardmaßnahmen LRT 91D3*	6.10 Standardmaßnahmen LRT 91D3*	1	0	0	0	0
294	6.11	Standardmaßnahmen LRT 91D4*	6.11 Standardmaßnahmen LRT 91D4*	1	0	0	0	0
295	6.12	Standardmaßnahmen LRT 91E0*	6.12 Standardmaßnahmen LRT 91E0*	1	0	0	0	0
296	6.13	Standardmaßnahmen LRT 91F0	6.13 Standardmaßnahmen LRT 91F0	1	0	0	0	0
297	6.14	Standardmaßnahmen LRT 91G0*	6.14 Standardmaßnahmen LRT 91G0*	1	0	0	0	0
298	6.15	Standardmaßnahmen LRT 91T0	6.15 Standardmaßnahmen LRT 91T0	1	0	0	0	0
299	6.16	Standardmaßnahmen LRT 91U0	6.16 Standardmaßnahmen LRT 91U0	1	0	0	0	0
300	6.17	Standardmaßnahmen LRT 9410	6.17 Standardmaßnahmen LRT 9410	1	0	0	0	0
\.


--
-- Data for Name: pflege; Type: TABLE DATA; Schema: referenzen; Owner: biotope_admin
--

COPY referenzen.pflege (id, name, nummer, beschreibung, identity) FROM stdin;
1	Pflegenutzung fortsetzen (Bestandssicherung)	null	null	PflegeArtComposite-20130409-1423-0
2	Waldumbau	null	null	PflegeArtComposite-20130409-1434-1
3	Gelegentliche Pflegemaßnahmen (Bestandssicherung)	null	null	PflegeArtComposite-20130409-1433-0
4	Pflegenutzung wiederaufnehmen (Bestandssicherung)	null	null	PflegeArtComposite-20130409-1433-1
5	Zulassen von natürlicher Sukzession	null	null	PflegeArtComposite-20130409-1434-0
6	Entnahme von Fichten an Bachläufen und Feuchtstandorten	null	null	PflegeArtComposite-20130409-1436-1
\.


--
-- Data for Name: schutzstatus; Type: TABLE DATA; Schema: referenzen; Owner: biotope_admin
--

COPY referenzen.schutzstatus (id, wert) FROM stdin;
1	§ 30
2	§ 21
3	wertvoll
4	§21 / §30
\.


--
-- Data for Name: stoerung; Type: TABLE DATA; Schema: referenzen; Owner: biotope_admin
--

COPY referenzen.stoerung (id, name, nummer, identity) FROM stdin;
1	Ablagerung / Müll / Abfall	6	StoerungsArtComposite-20120413-2023-3556
2	Umbruch	12	StoerungsArtComposite-20120413-2023-3562
3	Abbau / Abgrabung	4	StoerungsArtComposite-20120413-2023-3554
4	Gewässerverunreinigung	19	StoerungsArtComposite-20120413-2023-3569
5	Abholzung / Rodung	11	StoerungsArtComposite-20120413-2023-3561
6	Aufschüttung / Einebnung	5	StoerungsArtComposite-20120413-2023-3555
7	Erosion	21	StoerungsArtComposite-20120413-2023-3571
8	Immissionsschäden	20	StoerungsArtComposite-20120413-2023-3570
9	Baumaßnahmen / Ausbau	2	StoerungsArtComposite-20120413-2023-3552
10	Flächenverlust	22	StoerungsArtComposite-20120413-2023-3572
11	Entwässerung	13	StoerungsArtComposite-20120413-2023-3563
12	sonstige Ablagerung	7	StoerungsArtComposite-20120413-2023-3557
13	Zerschneidung	23	StoerungsArtComposite-20120413-2023-3573
14	Aufgabe der Nutzung	8	StoerungsArtComposite-20120413-2023-3558
15	Verkehr	17	StoerungsArtComposite-20120413-2023-3567
16	Freizeitaktivitäten	16	StoerungsArtComposite-20120413-2023-3566
17	Intensivierung der Nutzung	9	StoerungsArtComposite-20120413-2023-3559
18	Aufforstung / Bepflanzung	10	StoerungsArtComposite-20120413-2023-3560
19	Biozideinsatz	15	StoerungsArtComposite-20120413-2023-3565
20	Gewässerausbau	3	StoerungsArtComposite-20120413-2023-3553
21	Eutrophierung	14	StoerungsArtComposite-20120413-2023-3564
22	Schadstoffeintrag	18	StoerungsArtComposite-20120413-2023-3568
23	keine Beeinträchtigung	1	StoerungsArtComposite-20120413-2023-3551
24	sonstige Beeinträchtigung	24	StoerungsArtComposite-20120413-2023-3574
25	Ausbreitung von Neophyten	25	StoerungsArtComposite-20130322-1123-0
26	Landwirtschaft	26	StoerungsArtComposite-20130322-1124-0
\.


--
-- Name: biotope_objnr_seq; Type: SEQUENCE SET; Schema: biotope; Owner: biotope_admin
--

SELECT pg_catalog.setval('biotope.biotope_objnr_seq', 50006, true);


--
-- Name: biotope_ogc_fid_seq; Type: SEQUENCE SET; Schema: biotope; Owner: biotope_admin
--

SELECT pg_catalog.setval('biotope.biotope_ogc_fid_seq', 15, true);


--
-- Name: locks_id_seq; Type: SEQUENCE SET; Schema: biotope; Owner: biotope_admin
--

SELECT pg_catalog.setval('biotope.locks_id_seq', 1, false);


--
-- Name: biotope_historie_revision_seq; Type: SEQUENCE SET; Schema: historie; Owner: biotope_admin
--

SELECT pg_catalog.setval('historie.biotope_historie_revision_seq', 7, true);


--
-- Name: aenderungen_id_seq; Type: SEQUENCE SET; Schema: referenzen; Owner: biotope_admin
--

SELECT pg_catalog.setval('referenzen.aenderungen_id_seq', 1, false);


--
-- Name: beeintraechtigungen_id_seq; Type: SEQUENCE SET; Schema: referenzen; Owner: biotope_admin
--

SELECT pg_catalog.setval('referenzen.beeintraechtigungen_id_seq', 1, false);


--
-- Name: biotoptypen_id_seq; Type: SEQUENCE SET; Schema: referenzen; Owner: biotope_admin
--

SELECT pg_catalog.setval('referenzen.biotoptypen_id_seq', 1, false);


--
-- Name: erhaltungszustand_id_seq; Type: SEQUENCE SET; Schema: referenzen; Owner: biotope_admin
--

SELECT pg_catalog.setval('referenzen.erhaltungszustand_id_seq', 1, false);


--
-- Name: gefaehrdung_id_seq; Type: SEQUENCE SET; Schema: referenzen; Owner: biotope_admin
--

SELECT pg_catalog.setval('referenzen.gefaehrdung_id_seq', 29, true);


--
-- Name: kartierer_id_seq; Type: SEQUENCE SET; Schema: referenzen; Owner: biotope_admin
--

SELECT pg_catalog.setval('referenzen.kartierer_id_seq', 6, true);


--
-- Name: massnahmen_id_seq; Type: SEQUENCE SET; Schema: referenzen; Owner: biotope_admin
--

SELECT pg_catalog.setval('referenzen.massnahmen_id_seq', 300, true);


--
-- Name: pflege_id_seq; Type: SEQUENCE SET; Schema: referenzen; Owner: biotope_admin
--

SELECT pg_catalog.setval('referenzen.pflege_id_seq', 6, true);


--
-- Name: schutzstatus_id_seq; Type: SEQUENCE SET; Schema: referenzen; Owner: biotope_admin
--

SELECT pg_catalog.setval('referenzen.schutzstatus_id_seq', 1, false);


--
-- Name: stoerung_id_seq; Type: SEQUENCE SET; Schema: referenzen; Owner: biotope_admin
--

SELECT pg_catalog.setval('referenzen.stoerung_id_seq', 26, true);


--
-- Name: biotope_edit_biotope_admin biotope_edit_biotope_admin_pkey; Type: CONSTRAINT; Schema: biotope; Owner: biotope_admin
--

ALTER TABLE ONLY biotope.biotope_edit_biotope_admin
    ADD CONSTRAINT biotope_edit_biotope_admin_pkey PRIMARY KEY (ogc_fid);


--
-- Name: locks biotope_locks_uk1; Type: CONSTRAINT; Schema: biotope; Owner: biotope_admin
--

ALTER TABLE ONLY biotope.locks
    ADD CONSTRAINT biotope_locks_uk1 UNIQUE (biotop_id);


--
-- Name: biotope biotope_pkey; Type: CONSTRAINT; Schema: biotope; Owner: biotope_admin
--

ALTER TABLE ONLY biotope.biotope
    ADD CONSTRAINT biotope_pkey PRIMARY KEY (ogc_fid);


--
-- Name: locks locks_pkey; Type: CONSTRAINT; Schema: biotope; Owner: biotope_admin
--

ALTER TABLE ONLY biotope.locks
    ADD CONSTRAINT locks_pkey PRIMARY KEY (id);


--
-- Name: biotope_historie biotope_historie_pkey; Type: CONSTRAINT; Schema: historie; Owner: biotope_admin
--

ALTER TABLE ONLY historie.biotope_historie
    ADD CONSTRAINT biotope_historie_pkey PRIMARY KEY (revision);


--
-- Name: aenderungen aenderungen_pkey; Type: CONSTRAINT; Schema: referenzen; Owner: biotope_admin
--

ALTER TABLE ONLY referenzen.aenderungen
    ADD CONSTRAINT aenderungen_pkey PRIMARY KEY (id);


--
-- Name: beeintraechtigungen beeintraechtigungen_pkey; Type: CONSTRAINT; Schema: referenzen; Owner: biotope_admin
--

ALTER TABLE ONLY referenzen.beeintraechtigungen
    ADD CONSTRAINT beeintraechtigungen_pkey PRIMARY KEY (id);


--
-- Name: biotoptypen biotoptypen_pkey; Type: CONSTRAINT; Schema: referenzen; Owner: biotope_admin
--

ALTER TABLE ONLY referenzen.biotoptypen
    ADD CONSTRAINT biotoptypen_pkey PRIMARY KEY (id);


--
-- Name: erhaltungszustand erhaltungszustand_pkey; Type: CONSTRAINT; Schema: referenzen; Owner: biotope_admin
--

ALTER TABLE ONLY referenzen.erhaltungszustand
    ADD CONSTRAINT erhaltungszustand_pkey PRIMARY KEY (id);


--
-- Name: gefaehrdung gefaehrdung_pkey; Type: CONSTRAINT; Schema: referenzen; Owner: biotope_admin
--

ALTER TABLE ONLY referenzen.gefaehrdung
    ADD CONSTRAINT gefaehrdung_pkey PRIMARY KEY (id);


--
-- Name: kartierer kartierer_pkey; Type: CONSTRAINT; Schema: referenzen; Owner: biotope_admin
--

ALTER TABLE ONLY referenzen.kartierer
    ADD CONSTRAINT kartierer_pkey PRIMARY KEY (id);


--
-- Name: massnahmen massnahmen_pkey; Type: CONSTRAINT; Schema: referenzen; Owner: biotope_admin
--

ALTER TABLE ONLY referenzen.massnahmen
    ADD CONSTRAINT massnahmen_pkey PRIMARY KEY (id);


--
-- Name: pflege pflege_pkey; Type: CONSTRAINT; Schema: referenzen; Owner: biotope_admin
--

ALTER TABLE ONLY referenzen.pflege
    ADD CONSTRAINT pflege_pkey PRIMARY KEY (id);


--
-- Name: schutzstatus schutzstatus_pkey; Type: CONSTRAINT; Schema: referenzen; Owner: biotope_admin
--

ALTER TABLE ONLY referenzen.schutzstatus
    ADD CONSTRAINT schutzstatus_pkey PRIMARY KEY (id);


--
-- Name: stoerung stoerung_pkey; Type: CONSTRAINT; Schema: referenzen; Owner: biotope_admin
--

ALTER TABLE ONLY referenzen.stoerung
    ADD CONSTRAINT stoerung_pkey PRIMARY KEY (id);


--
-- Name: biotope_revision_bearbeitung_wann_idx; Type: INDEX; Schema: biotope; Owner: biotope_admin
--

CREATE INDEX biotope_revision_bearbeitung_wann_idx ON biotope.biotope USING btree (bearbeitung_wann);


--
-- Name: biotope_revision_erfassung_wann_idx; Type: INDEX; Schema: biotope; Owner: biotope_admin
--

CREATE INDEX biotope_revision_erfassung_wann_idx ON biotope.biotope USING btree (erfassung_wann);


--
-- Name: biotope_revision_flaeche_idx; Type: INDEX; Schema: biotope; Owner: biotope_admin
--

CREATE INDEX biotope_revision_flaeche_idx ON biotope.biotope USING btree (flaeche);


--
-- Name: biotope_revision_identity_idx; Type: INDEX; Schema: biotope; Owner: biotope_admin
--

CREATE INDEX biotope_revision_identity_idx ON biotope.biotope USING btree (identity);


--
-- Name: biotope_revision_ogc_fid_idx; Type: INDEX; Schema: biotope; Owner: biotope_admin
--

CREATE INDEX biotope_revision_ogc_fid_idx ON biotope.biotope USING btree (ogc_fid);


--
-- Name: biotope_revision_umfang_idx; Type: INDEX; Schema: biotope; Owner: biotope_admin
--

CREATE INDEX biotope_revision_umfang_idx ON biotope.biotope USING btree (umfang);


--
-- Name: biotope_wkb_geometry_geom_idx; Type: INDEX; Schema: biotope; Owner: biotope_admin
--

CREATE INDEX biotope_wkb_geometry_geom_idx ON biotope.biotope USING gist (wkb_geometry);


--
-- Name: sidx_biotope_edit_biotope_admin_wkb_geometry; Type: INDEX; Schema: biotope; Owner: biotope_admin
--

CREATE INDEX sidx_biotope_edit_biotope_admin_wkb_geometry ON biotope.biotope_edit_biotope_admin USING gist (wkb_geometry);


--
-- Name: biotope_historie_action_idx; Type: INDEX; Schema: historie; Owner: biotope_admin
--

CREATE INDEX biotope_historie_action_idx ON historie.biotope_historie USING btree (action);


--
-- Name: biotope_historie_modtime_idx; Type: INDEX; Schema: historie; Owner: biotope_admin
--

CREATE INDEX biotope_historie_modtime_idx ON historie.biotope_historie USING btree (modtime);


--
-- Name: biotope_revision_idx; Type: INDEX; Schema: historie; Owner: biotope_admin
--

CREATE INDEX biotope_revision_idx ON historie.biotope_historie USING btree (revision);


--
-- Name: sidx_biotope_historie_wkb_geometry; Type: INDEX; Schema: historie; Owner: biotope_admin
--

CREATE INDEX sidx_biotope_historie_wkb_geometry ON historie.biotope_historie USING gist (wkb_geometry);


--
-- Name: biotope biotope_trigger; Type: TRIGGER; Schema: biotope; Owner: biotope_admin
--

CREATE TRIGGER biotope_trigger AFTER INSERT OR DELETE OR UPDATE ON biotope.biotope FOR EACH ROW EXECUTE FUNCTION historie.log_history();


--
-- Name: SCHEMA biotope; Type: ACL; Schema: -; Owner: biotope_admin
--

GRANT USAGE ON SCHEMA biotope TO biotope_editor;


--
-- Name: SCHEMA historie; Type: ACL; Schema: -; Owner: biotope_admin
--

GRANT USAGE ON SCHEMA historie TO biotope_editor;


--
-- Name: SCHEMA referenzen; Type: ACL; Schema: -; Owner: biotope_admin
--

GRANT USAGE ON SCHEMA referenzen TO biotope_editor;


--
-- Name: SEQUENCE biotope_ogc_fid_seq; Type: ACL; Schema: biotope; Owner: biotope_admin
--

GRANT SELECT,USAGE ON SEQUENCE biotope.biotope_ogc_fid_seq TO biotope_editor;


--
-- Name: TABLE biotope; Type: ACL; Schema: biotope; Owner: biotope_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE biotope.biotope TO biotope_editor;


--
-- Name: TABLE biotope_edit_biotope_admin; Type: ACL; Schema: biotope; Owner: biotope_admin
--

GRANT SELECT ON TABLE biotope.biotope_edit_biotope_admin TO biotope_editor;


--
-- Name: SEQUENCE biotope_objnr_seq; Type: ACL; Schema: biotope; Owner: biotope_admin
--

GRANT SELECT,USAGE ON SEQUENCE biotope.biotope_objnr_seq TO biotope_editor;


--
-- Name: SEQUENCE locks_id_seq; Type: ACL; Schema: biotope; Owner: biotope_admin
--

GRANT SELECT,USAGE ON SEQUENCE biotope.locks_id_seq TO biotope_editor;


--
-- Name: TABLE locks; Type: ACL; Schema: biotope; Owner: biotope_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE biotope.locks TO biotope_editor;


--
-- Name: TABLE locked_biotope; Type: ACL; Schema: biotope; Owner: biotope_admin
--

GRANT SELECT ON TABLE biotope.locked_biotope TO biotope_editor;


--
-- Name: SEQUENCE biotope_historie_revision_seq; Type: ACL; Schema: historie; Owner: biotope_admin
--

GRANT SELECT,USAGE ON SEQUENCE historie.biotope_historie_revision_seq TO biotope_editor;


--
-- Name: TABLE biotope_historie; Type: ACL; Schema: historie; Owner: biotope_admin
--

GRANT SELECT,INSERT,UPDATE ON TABLE historie.biotope_historie TO biotope_editor;


--
-- Name: TABLE biotope_deleted_features; Type: ACL; Schema: historie; Owner: biotope_admin
--

GRANT SELECT ON TABLE historie.biotope_deleted_features TO biotope_editor;


--
-- Name: TABLE aenderungen; Type: ACL; Schema: referenzen; Owner: biotope_admin
--

GRANT SELECT ON TABLE referenzen.aenderungen TO biotope_editor;


--
-- Name: TABLE beeintraechtigungen; Type: ACL; Schema: referenzen; Owner: biotope_admin
--

GRANT SELECT ON TABLE referenzen.beeintraechtigungen TO biotope_editor;


--
-- Name: TABLE biotoptypen; Type: ACL; Schema: referenzen; Owner: biotope_admin
--

GRANT SELECT ON TABLE referenzen.biotoptypen TO biotope_editor;


--
-- Name: TABLE erhaltungszustand; Type: ACL; Schema: referenzen; Owner: biotope_admin
--

GRANT SELECT ON TABLE referenzen.erhaltungszustand TO biotope_editor;


--
-- Name: TABLE gefaehrdung; Type: ACL; Schema: referenzen; Owner: biotope_admin
--

GRANT SELECT ON TABLE referenzen.gefaehrdung TO biotope_editor;


--
-- Name: TABLE kartierer; Type: ACL; Schema: referenzen; Owner: biotope_admin
--

GRANT SELECT ON TABLE referenzen.kartierer TO biotope_editor;


--
-- Name: TABLE massnahmen; Type: ACL; Schema: referenzen; Owner: biotope_admin
--

GRANT SELECT ON TABLE referenzen.massnahmen TO biotope_editor;


--
-- Name: TABLE pflege; Type: ACL; Schema: referenzen; Owner: biotope_admin
--

GRANT SELECT ON TABLE referenzen.pflege TO biotope_editor;


--
-- Name: TABLE schutzstatus; Type: ACL; Schema: referenzen; Owner: biotope_admin
--

GRANT SELECT ON TABLE referenzen.schutzstatus TO biotope_editor;


--
-- Name: TABLE stoerung; Type: ACL; Schema: referenzen; Owner: biotope_admin
--

GRANT SELECT ON TABLE referenzen.stoerung TO biotope_editor;


--
-- PostgreSQL database dump complete
--

