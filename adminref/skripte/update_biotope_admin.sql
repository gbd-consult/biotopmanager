-- # Bearbeitungstabelle für den Administrator biotope_admin erstellen

CREATE TABLE biotope.biotope_edit_biotope_admin AS TABLE biotope.biotope WITH NO DATA;

ALTER TABLE biotope.biotope_edit_biotope_admin ADD PRIMARY KEY (ogc_fid);
ALTER TABLE biotope.biotope_edit_biotope_admin ALTER COLUMN ogc_fid SET DEFAULT nextval('biotope.biotope_ogc_fid_seq'::regclass) ;
ALTER TABLE biotope.biotope_edit_biotope_admin ALTER COLUMN objnr SET DEFAULT nextval_objnr();
ALTER TABLE biotope.biotope_edit_biotope_admin ALTER COLUMN beeintraechtigung_ids TYPE character varying COLLATE pg_catalog."default";

ALTER TABLE biotope.biotope_edit_biotope_admin ALTER COLUMN status TYPE character varying COLLATE pg_catalog."default";
ALTER TABLE biotope.biotope_edit_biotope_admin ADD COLUMN pflege_zustand_code INTEGER;

-- # INDEX sidx_biotope_edit_biotope_admin_wkb_geometry
  
CREATE INDEX sidx_biotope_edit_biotope_admin_wkb_geometry
  ON biotope.biotope_edit_biotope_admin USING gist
  (wkb_geometry)
  TABLESPACE pg_default;

GRANT SELECT, INSERT, UPDATE, DELETE, TRUNCATE ON TABLE biotope.biotope_edit_biotope_admin TO biotope_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE biotope.locks TO biotope_admin;
