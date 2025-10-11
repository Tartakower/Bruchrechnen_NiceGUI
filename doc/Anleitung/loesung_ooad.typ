= Lösung: Objektorientierte Analyse und objektorientiertes Design (OOAD) <loesung_ooad>

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

== Das Multiplizieren von Brüchen

Das Multiplizieren ist einfach: Zähler mal Zähler, Nenner mal Nenner.

$ frac(a,b) dot frac(c,d) = frac(a dot c, b dot d) $

== Das Dividieren von Brüchen

Brüche werden dividiert, indem der erste Faktor mit dem Kehrwert des zweiten Faktors multipliziert wird.

$ frac(a,b) div frac(c,d) = frac(a,b) dot frac(d,c) $

Wir programmieren also eine Funktion zur Bildung des Kehrwertes und führen die Division auf die Multiplikation zurück.

== Das Addieren von Brüchen

Für das Addieren müssen die Nenner gleichnamig gemacht werden, also ein gemeinsamer, der sogenannte Hauptnenner gefunden werden. Ein möglicher Hauptnenner ist das Produkt der beiden Nenner. (Alternativ kann aus den beiden Nenner deren kleinstes gemeinsames Vielfaches (*kgV*) gebildet werden.)

$ frac(a,b) + frac(c,d) = frac(a dot d,b dot d) + frac(c dot b, b dot d) = frac(a dot d + c dot b, b dot d) $

== Das Subtrahieren von Brüchen

Für das Subtrahieren stellen wir eine ähnliche Überlegung an wie für das Dividieren: Die Subtraktion ist eine Addition, wobei der zweite Summand einem Vorzeichenwechsel vollzieht. Wir programmieren also eine Funktion zum Vorzeichenwechsel bei einem Bruch und führen eine Addition aus.

$ frac(a,b) - frac(c,d) = frac(a,b) + frac(-c, d) $