= Bruch: Objektorientierte Analyse und objektorientiertes Design (OOAD) <ooad_bruch>

== Aufgabenstellung OOAD

Beantworte folgende Fragen:

- Was ist ein Bruch? Aus welchen Einzelteilen besteht er?
- Was drückt der Bruchstrich aus?
- Was bedeutet das Kürzen von Brüchen?
- Wie funktionieren die Grundrechenarten bei Brüchen?

== Für Betreuer: Das didaktische Format

Die OOAD kann in Gruppenarbeit oder im Plenum mit allen TeilermerInnen an einer Tafel o.ä. durchgeführt werden.

== Eigenschaften eines Bruchs

Ein Bruch besitzt folgende Eigenschaften (Attribute):

- Er besteht aus zwei Ganzzahlen, dem Zähler und dem Nenner.
- Der Nenner muss von 0 verschieden sein. Der Versuch, einen Bruch mit dem Nenner 0 zu erzeugen, muss einen Fehler auslösen.
- Zähler oder Nenner dürfen negative Zahlen sein.

== Vorzeichen in Zähler und Nenner

Zähler oder Nenner dürfen negative Zahlen sein. Der Anwender des Programms darf beliebige Zahlen eingeben, solange der Nenner ungleich 0 bleibt.

In der Ergebnisdarstellung möchten wir ein einzelnes negatives Vorzeichen immer in den Zähler schreiben. Tragen sowohl Zähler als auch Nenner ein negatives Vorzeichen, so soll das Ergebnis zwei positive Zahlen besitzen. Das ist eine reine Konvention, damit das Ergebnis ordentlich aussieht.

== Der Bruchstrich

Der Bruchstrich drückt eine Rechenoperation aus, nämlich die Berechung des Wertes als Kommazahl.

== Die Gleichheit von Brüchen

Mathematisch sind Brüche gleich, wenn sie denselben Wert als Kommmazahl ausdrücken:

$frac(1,2) = frac(2,4)$

Dabei ist unerheblich, ob ein Bruch gekürzt oder ungekürzt ist.

In der Programmierung möchten wir strenger sein, damit wir einen Bruch eindeutig identifizieren können. Wir legen dazu fest: In unserem Programmcode gelten zwei Brüche genau dann als gleich, wenn beide Brüche jeweils denselben Zähler und denselben Nenner besitzen.

== Die Unveränderlichkeit von Brüchen

Damit wir die Gleichung

$frac(2,4) = frac(1,2)$

(also die Kürzungsoperation) in unserem Programm ausdrücken können, dürfen wir den Bruch auf der linken Seite im Programmcode nicht verändern. Andernfalls laufen wir Gefahr, dass die Eingabe von

$frac(2,4) =$

das Ergebnis

$frac(1,2) = frac(1,2)$

zeigt. Das ist zwar richtig, hat aber die linke Seite der Gleichung unbeabsichtigt verändert.

Wir legen also fest:

- Ein Bruch-Objekt ist unveränderlich.
- Jede Rechenoperation mit einem Bruch legt für das Ergebnis einen neuen Bruch an, dessen Zähler und Nenner das Rechenergebnis bilden.

== Das Kürzen von Brüchen

Ein Bruch kann gekürzt vorliegen, d.h. Zähler und Nenner besitzen die minimalen Werte, die dem Kommazahlwert entsprechen.

Das Programm soll und muss auch mit ungekürzten Brüchen arbeiten können. Das erste Zwischenergebnis ist in der Regel ein ungekürzter Bruch

Für das Kürzen eines Bruchs wird zunächst der gemeinsame größte Teiler von Zähler und Nenner bestimmt. Danach werden Zähler und Nenner jeweils durch den ggT geteilt.

== Das Erweitern von Brüchen

Ein Bruch wird erweitert, indem Zähler und Nenner mit demselben Faktor (ungleich 0) multipliziert werden. Das Erweitern wird für die Addition von Brüchen benötigt.