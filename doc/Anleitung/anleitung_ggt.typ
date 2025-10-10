= Eine Funktion in Python: Programmierung und Testen

Versuchen, die beiden unten angegebenen Aufgaben selbstständig, eventuelle im Team oder mit Hilfe des Betreuers zu lösen. Falls du nicht weiter kommst oder dein Ergebnis überprüfen willst, steht im nächsten Kapitel die Musterlösung. (@loesung_ggt)

== Die Funktion zur Berechnung des größten gemeinsamen Teilers

Für das Kürzen von Brüchen benötigen wir die Berechnung des größten gemeinsamen Teilers zweier Ganzzahlen.

*Aufgabe*:
- Lege in Ordner _src_ eine Python-Datei mit dem Namen _mathehelfer.py_ an.
- Programmiere darin eine Funktion, die zwei Ganzzahlen als Parameter entgegen nimmt und den zugehörigen ggT berechnet. Namensvorschlag: _berechne_ggt_
- Tipp: Verwende Type-Hints für die Deklaration der Parameter und für den Rückgabetyp der Funktion.
- Tipp: Zur Berechnung des ggT gibt es den sogenannten Euklidischen Algorithmus in einer iterativen, schnellen Variante.

== Der Unittest

Ein professioneller Softwareentwickler programmiert die Tests für den eigenen funktionalen Quellcode selbst. Das wollen wir uns abschauen. Wir programmieren für jede Funktion eine zugehörige Testfunktion.

*Aufgabe*:
- Lege im Ordner _test_ eine Python-Datei mit dem Namen _test_mathehelfer.py_ an.
- Programmiere darin eine Funktion namens _test_berechne_ggt_.
- Überlege: Für welche Werte sollten wir die Berechnung des ggT testen?
- Programmiere die von dir als sinnvoll angesehenen Test jeweils als _assert_-Befehl.
- Öffne die Testansicht (Erlenmeyerkolben im Navigator).
- Führe die Tests aus.
- Sind nur grüne Haken zu sehen? Oder gibt es auch rote Kreuze.