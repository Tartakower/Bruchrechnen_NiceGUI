= Ausbaustufen

== Eine Klasse für Kommazahlen

Wir möchten mit Kommazahlen ebenso rechnen können wie mit Brüchen. Außerdem sollen

- ein Bruch in eine Kommazahl umgewandelt werden,
- eine Kommazahl in einen Bruch umgewandelt werden,
- Brüche und Kommazahlen miteinander addiert, subtrahiert, multipliziert oder dividiert werden.

Tipp: Der Datentyp *float* in Python bildet die Grundlage für Kommazahlen, lässt sich aber nicht unmittelbar verwenden. Informiere dich über das *Entwurfsmuster Adapter*.

== Eine Klasse für unechte Brüche

Bei einem unechten Bruch ist der Zähler größer als der Nenner. Häufig ist für einen unechten Bruch der Zahlenwert nicht einfach abzulesen. Wie viel ist $frac(70,12)$?

Deshalb werden unechte Brüche häufig als *gemischte Zahl* geschrieben:

$frac(70,12) = 5 frac(5,6)$

Programmiere eine Klasse für gemischte Zahlen.