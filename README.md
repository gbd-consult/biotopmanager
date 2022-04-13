# GBD Biotopmanager

QGIS Plugin zum Management von Biotopdaten (Fachanwendung).

Das QGIS Plugin dient der Erfassung, Bearbeitung und Historisierung von Biotopdaten. Es wurde initial für das Referat Naturschutz des LK Mittelsachsen entwickelt und kann an die Anforderungen landesspezifischer Naturschutzgesetze angepasst werden. Die Daten werden in PostgreSQL/PostGIS gemanaged.

Das Plugin ermöglicht, neue Biotope zu erstellen, sowie vorhandene Biotope zu bearbeiten oder zu löschen (archivieren). In Bearbeitung befindliche Biotope sind über einen Locking Mechanismus für andere Benutzer gesperrt. Mehrere Benutzer können also gleichzeitig an den Daten arbeiten, ohne dass ein Konflikt entsteht. Zu jedem Biotop kann ein Report erstellt und die Sachdaten können im CSV-Format exportiert werden. Außerdem bietet das Biotopmanager Plugin eine Historisierung, welche es ermöglicht, jede Veränderung aus der Vergangenheit nachzuvollziehen.

<img src="/images/biotopmanager.png" width="500">

## Installation

Das Plugin wird über das Plugin Repository der Geoinformatikbüro Dassau GmbH bereitgestellt, welches über den QGIS Pluginmanager eingebunden werden kann.

<img src="/help/_images/repodetails.png" width="500">

## Vorbereitung

Um das Plugin nutzen zu können muss es auf eine PostgreSQL Datenbank, mit der richtigen Struktur, zugreifen können. Ein passender Datenbank Dump befindet sich unter:
> adminref -> db_dump -> backup_biotope.sql
dieses Backup kann in eine bestehende Datenbank eingespielt werden. Hierfür muss zuerst die Datenbank biotope erstellt werden:
> CREATE DATABASE biotope;
danach kann über psql, als User postgres, der Dump eingespielt werden:
> psql -d biotope -f ~*path*/*to*/*...*/gbd-biotopemanager/adminref/db_dump/backup_biotope.sql