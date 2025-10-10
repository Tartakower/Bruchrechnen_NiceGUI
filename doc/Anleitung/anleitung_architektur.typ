= Die Softwarearchitektur <softwarearchitektur>

== Die Problemstellung

Ein einziges Programm mit vielen Zeilen Code ist unübersichtlich und schwer zu pflegen. Fehler sind schwer zu finden und Änderungen können nur aufgenommen vorgenommen werden.

== Die Lösung

Wir teilen das Programm ein verschiedene Einzelmodule auf. Jedes Modul nimmt eine Aufgabe wahr. So wird das Gesamtprogramm viel übersichtlicher und kann besser gewartet werden.

Die Unterteilung in Module und deren Zusammenspiel nennt man *Softwarearchitektur*.

== Trennung von funktionalem Quellcode und Testcode

Eine erste Trennung haben wir bereits bei der Einrichtung der Projektinfrastruktur angelegt:

- Der Ordner _src_ wird den Quellcode enthalten, der für das Lunktionieren des Programms verantwortlich ist.
- Im Ordner _test_ speichern wir die Testprogramme.

== Trennung von Logik und Darstellung

Ein einfaches Architekturprinzip lautet:

*Trenne die Programmlogik von der der Darstellung auf der Oberfläche.*

Wir haben also mindestens zwei Module:

- Ein Modul enthält die Datenstruktur für einen Bruch und die Rechenoperationen mit Brüchen. Das Modul nennen wir _Model_.
- Ein Modul enthält die Oberfläche, mit der die Rechnung dargestellt wird. Dieses Modul nennen wir _View_.

Die Module müssen natürlich zusammen arbeiten, damit das Gesamtprogramm funktioniert. Damit wir trotzdem eine möglichst gute Trennung zwischen den beiden Modulen erhalten, wenden wir ein zweites Architekturprinzip an:

*Die View kennt das Model, aber das Model kennt die View nicht.*

Wie wir das umsetzen und weshalb das sinnvoll ist, werden wir später sehen.