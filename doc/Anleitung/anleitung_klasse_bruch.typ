= Die Klasse Bruch

Hast du schon einmal objektorientiert mit Klassen und Objekten programmiert?

== Objektorientierung in Python

In Python gibt es zwei unterschiedliche Möglichkeiten, eine Klasse und ihre Attribute zu beschreiben. Wir verwenden hier die Annotation *\@dataclass*.

== Die Klassendefinition

Definiere eine Klasse mit Namen _Bruch_ mittels der \@dataclass-Annotation.

Die Objekte der Klasse sollen unveränderlich sein. (_immutable_)

== Die Deklaration der Attribute

Deklariere je ein Attribute für den Zähler und den Nenner.

== Der Konstruktor zur Objekterzeugung

Implementiere die Funktion \_\_init\_\_(). Beachte dabei:
- Der Nenner darf nicht 0 sein.
- Wie können die Werte für die Attribute gesetzt werden? Das ist bei unveränderlichen Objekte etwas eigen.

== Eine Funktion zur Berechnung des Zahlenwertes

Implementiere eine Funktion _berechne_wert()_, die für einen Bruch den numerischen Wert berechnet. Was hat diese Funktion mit dem Bruchstrich zu tun?

Teste diese Funktion!

== Eine Funktion für einen positiven Nenner

Grundsätzlich können Zähler oder Nenner negative Zahlen sein. Bei den Ergebnissen möchten wir den Nenner immer positiv haben. Implementiere eine Funktion _normiere_bruch()_, die einen Bruch mit demselben Wert erstellt, dessen Nenner positiv ist.

Teste diese Funktion!