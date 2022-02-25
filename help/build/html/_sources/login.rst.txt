Anmeldung
=========

Wenn der ``GBD Biotopmanager`` gestartet wurde, erfolgt zuerst eine Anmeldung, um auf die Biotope Datenbank zugreifen zu können. Klicken Sie dazu auf  |login| ``Login Biotopmanager Datenbank``, wodurch sich das folgende Anmeldefenster öffnet.

.. figure:: ./screenshots/login.png
  :align: center

Hier kann nun ein für den Datenzugriff autorisierte Benutzer mit dem dazugehörigen Passwort eingetragen werden. In der Einführung wurde drauf hingewiesen, dass die Daten in einer PostgreSQL/PostGIS Datenbank ablegt sind und dort gemanaged werden. 

Wenn der Benutzer mit Passwort und die gewünschte Datenbank eingetragen wurden klickt man auf ``Login``. Nun lädt das Plugin die Daten aus der PostGIS-Datenbank und stellt diese als Layer da.

.. note::

   Das GBD Biotopmanager Plugin ist so umgesetzt, dass Benutzer und Passwort immer wieder neu eingetragen werden. Das Plugin speichert diese nirgends ab, auch wenn es benutzerfreundlicher wäre. Dadurch wird vermieden, dass unerlaubter Zugriff stattfinden kann. Speichern Sie den aktuellen Stand daher bitte auch nicht in ein QGIS Projekt und legen Sie kein unverschlüsselte Datenbankverbindung in QGIS an, falls Ihnen die Parameter bekannt sind. 

 .. |login| image:: ./images/leaf-login-01.svg
  :width: 25em
  

