# GBD Biotopmanager

QGIS Plugin zum Management von Biotopdaten (Fachanwendung)

Das QGIS Plugin dient der Erfassung, Bearbeitung und Historisierung von Biotopdaten. Es wurde initial für das Referat Naturschutz des LK Mittelsachsen entwickelt und kann an die Anforderungen landesspezifischer Naturschutzgesetze angepasst werden. Die Daten werden in PostgreSQL/PostGIS gemanaged.

Das Plugin ermöglicht, neue Biotope zu erstellen, sowie vorhandene Biotope zu bearbeiten oder zu löschen (archivieren). In Bearbeitung befindliche Biotope sind über einen Locking Mechanismus für andere Benutzer gesperrt. Mehrere Benutzer können also gleichzeitig an den Daten arbeiten, ohne dass ein Konflikt entsteht. Zu jedem Biotop kann ein Report erstellt und die Sachdaten können im CSV-Format exportiert werden. Außerdem bietet das Biotopmanager Plugin eine Historisierung, welche es ermöglicht, jede Veränderung aus der Vergangenheit nachzuvollziehen.

<img src="/images/biotopmanager.png" width="500">
