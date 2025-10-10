= Lösung: Programmieren und Testen des ggT <loesung_ggt>

== Die Funktion zur Berechnung des ggT

```python
def berechne_ggt(a: int, b: int) -> int:
    while b != 0:
        (a,b) = (b, a % b)
    return a
```

Die Verwendung eines Tupels in Zeile 3 erspart eine Hilfsvariable zum Vertauschen der Werte.

== Sinnvolle Testwerte

- zwei einfache Werte: 6 = ggT(12,18)
- die Werte in umgekehrter Reihenfolge: 6 = ggT(18,12)
- zwei größere Zahlen: 13 = ggT(65,143)
- ein Faktor ist das Vielfaches des anderen Faktors: 8 = ggT(8,48)
- eine Primzahl: 1 = ggT(24,57)
- zwei Primzahlen: 1 = ggT(57,86413)
- der Trivialfall mit der Zahl 1: 1 = ggT(1,24)

== Die Testfunktion

```python
import mathefunktionen

def test_berechne_ggt():
    assert 6 == mathefunktionen.berechne_ggt(12,18)
    assert 6 == mathefunktionen.berechne_ggt(18,12)
    assert 13 == mathefunktionen.berechne_ggt(65,143)
    assert 8 == mathefunktionen.berechne_ggt(8,48)
    assert 1 == mathefunktionen.berechne_ggt(24,59)
    assert 1 == mathefunktionen.berechne_ggt(59,86413)
    assert 1 == mathefunktionen.berechne_ggt(1,24)
```