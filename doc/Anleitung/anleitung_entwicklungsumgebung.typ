#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.8": *

= Die Entwicklungsumgebung <entwicklungsumgebung>

Unsere Entwicklungsumgebung umfasst folgende Komponenten:

- das Software Developer Kit (SDK), also die Programmiersprache Python einschließlich des Interpreters und vieler Bibliotheken
- eine integrierte Entwicklungsumgebung zum Editieren von Quellcode
- eine einheitliche Ordnerstruktur im Dateisystem für Softwareentwicklungsprojekte
- eine virtuelle Umgebung
- ein Testframework
- weitere Bibliotheken von Drittanbietern
- eine lokale Versionsverwaltung

Wer bereits Erfahrung mit den Werkzeugen für die Softwareentwicklung hat, kann folgende Komponenten zusätzlich integrieren:

- eine Software zur Verwaltung des Python-Projektes
- einen Account für eine cloudgestützte Versionsverwaltung

== Installationsquellen und Lizenzbedingungen

Wir werden verschiedene Tools zur Unterstützung der Programmierung herunterladen und installieren. Dabei sind zwei Aspekte sehr, sehr wichtig:

==== Verwende nur seriöse Installationsquellen!

Die Installation von Software auf dem Computer birgt immer das Risiko, den Computer mit Schadsoftware zu infizieren. Das muss unbedingt vermieden werden!

Die sichersten Installationsquellen bilden entweder die Paketverwaltung des Betriebssystems oder die Webseite des Herstellers.

==== Halte die Lizenzbedingungen der Software ein!

Jede Software enthält eine Lizenz, deren Bedingungen bei Nutzung unbedingt eingehalten werden müssen. Andernfalls begeht man als Nutzer eine Straftat! Das gilt auch für freie und kostenlose Software! Informiere dich über die jeweiligen Lizenzen und halten deren Bedingungen unbedingt ein.

== Das SDK für Python

In einer aktuellen Linux-Installation sollte in der Regel eine aktuelle Version von Python bereits installiert sein. Unter MS Windows kann eine aktuelle Version von Python über den Microsoft Shop installiert werden.

Aufgaben:
- Recherchiere, welche Versionen von Python als aktuell gelten.
- Finde heraus, wie auf einem Computer geprüft werden kann, ob Python installiert ist und gegebenenfalls welche Version vorliegt.

== Die integrierte Entwicklungsumgebung (IDE)

Eine integrierte Entwicklungsumgebung (Integrated Developer Environment, *IDE*) enthält als Kernkomponente einen Editor zum Erstellen und Bearbeiten von Quellcode. Dieser Codeeditor unterstützt die Entwicklerin durch farbige Markierung des Quelltextes und laufende Prüfungen beim Programmieren.

Darüber hinaus besteht eine IDE aus weiteren zahlreichen Hilfsprogrammen für die Softwareentwicklung, z.B. zur Bedienung der Versionsverwaltung oder zur Ausführung der Testprogramme. Alle Funktionalitäten sind benutzerfreundlich innerhalb einer Bedienoberfläche zusammen gefasst.

*Tipp:* Verwende zum Programmieren unbedingt eine für die jeweilige Programmiersprache optimierte IDE.

Für Python existieren zwei sehr gut geeignete IDE:

- Microsoft Visual Code (VS Code)
- JetBrains Pycharm

Bei diesem Hackathon verwenden wir VS Code. Falls du bereits Erfahrung mit Pycharm besitzt, darfst du natürlich weiterhin Pycharm verwenden.

=== VS Code

Informiere dich über VS Code. Aufgaben:

- Woher kannst du VS Code beziehen?
- Wie viel kostet es?
- VS Code allein ist gar keine IDE, sondern nur ein Code-Editor. Wie wird VS Code zur vollwertigen IDE?
- Installiere VS Code und die Plugins, die für Python-Programmierung erforderlich sind.

== Die Ordnerstruktur im Dateisystem

Jetzt schaffen wir eine übersichtliche Ordnerstruktur, damit wir den Quellcode wiederfinden.

- Erzeuge in deinem Benutzerverzeichnis einen Unterordner _Programmierprojekte_.
- Erzeuge in diesem Ordner einen Unterordner _Bruchrechnen_ für unser aktuelles Projekt.
- Im Ordner _Bruchrechnen_ selbst werden alle Dateien gespeichert, die eine übergeordnete Bedeutung im Projekt besitzen.
- Der Ordner _Bruchrechnen_ erhält nur zwei Unterordner:
  - Der Ordner _src_ wird die Quellcodedateien für den funktionalen Code enthalten.
  - Im Ordner _test_ werden die Unittest-Dateien gespeichert.
- Ein weiteren versteckten Ordner werden wir als virtuelle Python-Umgebung anlegen.

== Die virtuelle Entwicklungsumgebung in Python

 Wir möchten das Programmierprojekt möglichst gut von dem restlichen Dateisystem abschirmen, um mögliche Wechselwirkungen zwischen der allgemeinen Funktion des Computers und der Programmiertätigkeit auszuschließen.