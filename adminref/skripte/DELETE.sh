#!/bin/bash
# Löschen der Datenbank mit allen Benutzern, ausführen als Benutzer postgres

dropdb biotope
dropuser biotope_admin
dropuser biotope_editor

