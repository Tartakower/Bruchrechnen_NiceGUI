= Lösung: Die Klasse Bruch

== Die Klassen und ihre Attribute

Die Annotation *\@dataclass(frozen=True)* bewirkt zweierlei:

- Die Attribute können explizit mit Namen und Datentyp angegeben werden.
- Die Attribute werden durch _frozen=True_ fixiert und können nur einmalig bei der Objekterzeugung gesetzt werden.

```python
@dataclass(frozen=True)
class Bruch():

    zaehler: int
    nenner: int
```

== Der Konstruktor zur Objekterzeugung

Weil die Attribute unveränderliche Werte haben und nur initial in der \_\_init\_\_()-Methode gesetzt werden können, ist die Notation in Python etwas umständlich.
Falls der Parameter für den Nenner den Wert 0 enthält, wird ein Fehler ausgelöst.

```python
def __init__(self: Bruch, zaehler: int, nenner: int):
        if nenner == 0:
            raise ValueError("Nenner darf nicht 0 sein.")
        object.__setattr__(self, 'zaehler', zaehler)
        object.__setattr__(self, 'nenner', nenner)
```


== Eine Funktion zur Berechnung des Zahlenwertes

Der Bruchstrich drückt die Division von Zähler durch Nenner aus, also mittelbar den Wert des Bruchs als Kommazahl.

```python
def berechne_wert(self) -> float:
        return self.zaehler / self.nenner
```

```python
def test_berechne_wert():
    assert Bruch(1,2).berechne_wert() == 0.5
    assert Bruch(1,4).berechne_wert() == 0.25
    assert Bruch(3,4).berechne_wert() == 0.75
    assert Bruch(2,1).berechne_wert() == 2.0
    assert Bruch(5,2).berechne_wert() == 2.5
```

== Eine Funktion für einen positiven Nenner

Grundsätzlich können Zähler oder Nenner negative Zahlen sein. Bei den Ergebnissen möchten wir den Nenner immer positiv haben. Implementiere eine Funktion _normiere_bruch()_, die einen Bruch mit demselben Wert erstellt, dessen Nenner positiv ist.

Teste diese Funktion!