Layer
=====

Wie auf dem folgenden Bild zu sehen ist, besteht die Struktur aus den beiden Gruppen ``GBD Biotopkataster`` und ``Referenzlisten``.

.. figure:: ./screenshots/grouplayer.png
  :align: center

Gruppe GBD Biotopkataster
~~~~~~~~~~~~~~~~~~~~~~~~~

Diese besteht aus den vier Layern ``Biotope Bearbeitungslayer``, ``Gesperrte Biotope``, ``Biotope`` und ``Archivierte Biotope``. Als normaler Bearbeiter der Biotopdaten brauchen Sie sich nur auf diese zu konzentrieren. Die Layer sind vorgegeben, was mit dem Aufbau und der Benutzung des Plugins zusammenhängt. 

Biotope Bearbeitungslayer
-------------------------

Damit Anwender parallel arbeiten können, legt das Plugin für jeden Benutzer einen eigenen Bearbeitungslayer in der Datenbank an, auf welchem nur dieser Benutzer und der Administrator schreiben darf. Die Darstellung im Kartenfenster ist eine schwarz schraffierte Fläche mit roter Umrandung. In diesem Layer werden neue Biotope erzeugt und vorhandene verändert oder gelöscht.  

.. figure:: ./screenshots/bearbeitungslayer.png
  :align: center

Gesperrte Biotope
-----------------

Wenn ein Benutzer aus dem Layer ``Biotope`` eine oder mehrere Flächen ausgewählt hat und diese nun bearbeiten möchte, nutzt er dazu die Funktionalität |edit| ``Ausgewählte Biotope editieren und sperren``. Die ausgewählten Flächen werden dann zum einen in den ``Biotope Bearbeitungslayer`` kopiert, zum anderen in den Layer ``Gesperrte Biotope``, damit andere Benutzer keine Änderungen vornehmen können, bis diese Layer wieder entsperrt sind. Die Darstellung im Kartenfenster ist eine rote Umrandung der Fläche.

.. figure:: ./screenshots/gesperrtebiotope.png
  :align: center

Biotope
-------

Der Layer ``Biotope`` umfasst den eigentlichen Datenbestand, also alle aktuellen Biotope. Er wird genutzt, um Informationen zu einem Biotop abzufragen oder um Biotope auszuwählen und dann über den ``Biotope Bearbeitungslayer`` zu bearbeiten. Die Darstellung im Kartenfenster ist dunkelgrau.

.. figure:: ./screenshots/biotopelayer.png
  :align: center

Archivierte Biotope
-------------------

Im Layer ``Archivierte Biotope`` sind alle Biotope abgelegt, die nicht mehr aktuell sind. Diese wurden durch einen bestimmten Benutzer aus dem aktuellen Datenbestand über die Funktion |archive| ``Ausgewählte Biotope archivieren`` mit einem Zeitstempel und einem Vermerk hierher verschoben. Die Darstellung im Kartenfenster ist hellgrau.

.. figure:: ./screenshots/archiviertebiotope.png
  :align: center

Gruppen Referenztabellen
~~~~~~~~~~~~~~~~~~~~~~~~

Der Gruppenlayer **Referenztabellen** besteht aus den Tabellen ``aenderungen``, ``beeintraechtigungen``, ``biotypen``, ``gefaehrdung``, ``kartierer`` ``massnahmen``, ``pflege``, ``stoerung``, ``schutzstatus`` und ``erhaltungszustand``. 

Diese Tabellen werden durch das Plugin genutzt, um dem Bearbeiter Auswahllisten mit vorgegebenen Werten in den Formularen zur Verfügung zu stellen. Als Beispiel sehen Sie hier den Inhalt der Referenzliste ``schutzstatus``.

.. figure:: ./screenshots/referenztabelle.png
  :align: center

Diese Referenzliste wird Ihnen im Reiter ``Basisdaten`` des Bearbeitungsformular als Dropdown-Menü zur Auswahl angeboten.

Um die Referenztabellen bearbeiten zu können, benötigen sie die Rechte eines Administratotors. 


 .. |edit| image:: ./images/leaf-edit-01.svg
   :width: 25em
 .. |archive| image:: ./images/leaf-archive-01.svg
   :width: 25em


