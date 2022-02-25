-- # Rechte für die Gruppe biotope_editor anpassen

GRANT USAGE ON SCHEMA biotope TO biotope_editor;
GRANT USAGE ON SCHEMA historie TO biotope_editor;
GRANT USAGE ON SCHEMA referenzen TO biotope_editor;

GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA biotope to biotope_editor;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA historie to biotope_editor;

GRANT SELECT ON ALL TABLES IN SCHEMA referenzen TO biotope_editor;
GRANT SELECT ON ALL TABLES IN SCHEMA historie TO biotope_editor;
GRANT SELECT ON ALL TABLES IN SCHEMA biotope TO biotope_editor;

GRANT INSERT, UPDATE, DELETE ON TABLE biotope.biotope TO biotope_editor;
GRANT INSERT, UPDATE ON TABLE historie.biotope_historie TO biotope_editor;
GRANT SELECT ON TABLE biotope.locked_biotope TO biotope_editor;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE biotope.locks TO biotope_editor;
