= Einrichten des Entwicklungsprojektes <anleitung_projekt>

In diesem Kapitel werden wir die Infrastruktur für unser Entwicklungsprojekt einrichten. Das sollte überwiegend in VS Code durchgeführt werden, damit alle Komponenten reibungslos zusammen arbeiten.

== Der Hauptordner des Projektes

Lege im Dateisystem unter dem Ordner _Programmierprojekte_ einen neuen Ordner _Bruchrechnen_ an. Dieser neue Ordner wird der Hauptordner des Projektes sein.

Ab jetzt werden alle Einstellungen in VS Code vorgenommen.

== Der Arbeitsbereich in VS Code

- Starte VS Code.
- Öffne dort den Ordner _Bruchrechnen_.
- Lege einen Arbeitsbereich an: Im Menüpunkt _Datei/Arbeitsbereich speichern unter..._ den Vorschlag annehmen.
- Der Arbeitsbereich lässt sich zukünftig über die Datei _Bruchrechnen.code-workspace_ öffnen und schließen.

== Die Ordner für den Quellcode

Lege im Ordner _Bruchrechnen_ folgende Unterordner an.

- _src_: Hier speichern wir die Quellcode-Dateien für funktionalen Code.
- _test_: Hier werden die Unittests gespeichert.

== Die Pfadangabe für die Python-Module

Damit sich alle Python-Module untereinander kennen, gibt es die Umgebungsvariable PYTHONPATH, die wir ergänzen müssen.

- Lege im Hauptordner die Datei _.env_ an. Beachte: Der Name beginnt mit einem Punkt.
- Schreibe folgende Zeile in diese Datei: `PYTHONPATH=$PYTHONPATH:.:./src:./test`

== Die virtuelle Entwicklungsumgebung

Dieser Schritt sollte unbedingt in VS Code erfolgen! Die Einrichtung einer virtuellen Umgebung ohne VS Code kann große Probleme für unser Vorhaben erzeugen.

- Öffne die Befehlspalette.
- Wähle _Python: Umgebung erstellen_.
- Wähle _Venv_ aus.
- Wähle den Interpreter `/bin/python3` aus.

Im Hintergrund wird eine virtuelle Umgebung angelegt. Dass es geklappt hat, erkennst du an:

- Im Hauptordner gibt es einen neuen Unterordner _.venv_.
- Wenn du ein neues Terminal startest, dann ist die virtuelle Umgebung aktiviert. Der Pfadname des Terminalprompts beginnt mit `(.venv)`

== Konfiguration der Softwaretest und Installation des Testframeworks

- Öffne die Befehlspalette.
- Wähle _Python: Tests konfigurieren_.
- Wähle _pytest_.
- Wähle _. Root directory_.

Im Hintergrund wird das Testframework Pytest installiert. Prüfe:

- Starte ein Terminal.
- Der Befehl `pip list` sollte pytest auflisten.
- Drücke im Navigator auf der linken Seite auf den Erlenmeyerkolben.
  - Zeigt dieser den Hauptordner an? Dann sollte alles in Ordnung sein.
  - Zeigt der Navigator einen Fehler? Dieser sollte nach dem Aktualisieren verschwinden.

== Installation des GUI-Frameworks NiceGui

- Öffne ein Terminal.
- Ist die virtuelle Umgebung aktiviert? Andernfalls bitte aktivieren: `source .venv/bin/activate`
- Der Befehl `python -m pip install nicegui` installiert das GUI-Framework.