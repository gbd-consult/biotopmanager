Rechteverwaltung
================

Prinzipiell muss für jeden Anwender des Biotopmanager Plugins ein eigener Benutzer angelegt werden der Mitglied der Gruppe ``biotope_editor`` ist. Kein Anwender, der Biotope erfasst oder ändert darf Administrator sein oder dessen Rechte haben. Die Rechte müssen so angelegt werden, dass keine Tabellen gelöscht werden dürfen und das die Lookup Tabellen read-only sind.

Anwender benötigen Lese- und Schreibrechte auf dem Hauptdatenbestand, der Historie und der Sperrtabelle. Auch wenn sie diese nicht direkt als Layer editieren können (diese werden als read-only Layer in QGIS geladen), tut dies jedoch das Plugin.

Damit Anwender parallel arbeiten können, muss für jeden Benutzer eine separate Bearbeitungstabelle angelegt werden, auf welcher nur dieser und der Administrator schreiben darf. Die anderen Anwender dürfen diese Tabelle nicht editieren.

In der Basiskonfiguration, die in dieser Anleitung beschrieben wird, gibt es einen Administrator ``biotope_admin`` und eine Gruppenrolle ``biotope_editor``. Die Bearbeitungstabellen sind leere, exakte Kopien der Biotoptabelle. Jeder Benutzer brauch eine. 

Sehr wichtig ist ausserdem, dass die Editier-Tabellen die gleiche Sequence für den Primärschlüssel verwenden, wie die original Biotopkatastertabelle. Dabei muss folgende Namensstruktur für die Bearbeitungstabelle zwingend eingehalten werden, damit das Plugin die entsprechenden Benutzertabellen erkennt:

* Für den Benutzer "biotope_admin" nennt sich die Bearbeitungstabelle: biotope_edit_biotope_admin
* Für den Benutzer "mustermann" nennt sich die Bearbeitungstabelle: biotope_edit_mustermann

Diese Namenskonvention ist im Plugin fest einprogrammiert. Die Bearbeitungstabellen müssen auch im gleichen Schema liegen, wie die Haupttabelle.


