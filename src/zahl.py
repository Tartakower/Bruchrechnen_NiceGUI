from __future__ import annotations
from abc import abstractmethod
from dataclasses import dataclass
import mathefunktionen as mathefunktionen

class Zahl():

    @abstractmethod
    def berechne_bruch(self) -> Bruch:
        pass


@dataclass(frozen=True)
class Bruch(Zahl):

    zaehler: int
    nenner: int

    def __init__(self: Bruch, zaehler: int, nenner: int):
        if nenner == 0:
            raise ValueError("Nenner darf nicht 0 sein.")
        
        faktor = 1 if nenner > 0 else -1
        object.__setattr__(self, 'zaehler', faktor * zaehler)
        object.__setattr__(self, 'nenner', faktor * nenner)

    def berechne_bruch(self) -> Bruch:
        return self

    def kuerze(self) -> Bruch:
        ggT = mathefunktionen.berechne_ggt(self.zaehler, self.nenner)
        return Bruch(self.zaehler // ggT, self.nenner // ggT)

    def erweitere(self, faktor: int) -> Bruch:
        return Bruch(faktor * self.zaehler, faktor * self.nenner)

    def berechne_additiv_inverses(self) -> Bruch:
        return Bruch(-1 * self.zaehler, self.nenner)

    def berechne_kehrwert(self) -> Bruch:
        return Bruch(self.nenner, self.zaehler)

    def berechne_dezimalzahl(self) -> Dezimalzahl:
        return Dezimalzahl(self.zaehler / self.nenner)
    
    def multipliziere(self, b: Bruch) -> Bruch:
        neuer_zaehler = self.zaehler * b.zaehler
        neuer_nenner = self.nenner * b.nenner
        return Bruch(neuer_zaehler, neuer_nenner)
    
    def dividiere(self, b: Bruch) -> Bruch:
        kehrwert = b.berechne_kehrwert()
        return self.multipliziere(kehrwert)
    
    def addiere(self, b: Bruch) -> Bruch:
        kgv = mathefunktionen.berechne_kgv(self.nenner, b.nenner)
        zaehler_1 = self.zaehler * kgv // self.nenner
        zaehler_2 = b.zaehler * kgv // b.nenner
        return Bruch(zaehler_1 + zaehler_2, kgv)
    
    def subtrahiere(self, b: Bruch) -> Bruch:
        inverses = b.berechne_additiv_inverses()
        return self.addiere(inverses)


@dataclass(frozen=True)
class Dezimalzahl(Zahl):

    kommazahl: float

    def berechne_bruch(self) -> Bruch:
        nenner = mathefunktionen.berechne_zehner_potenz(self.kommazahl)
        zaehler = int(self.kommazahl * nenner)
        return Bruch(zaehler, nenner).kuerze()


@dataclass(frozen=True)
class GemischteZahl(Zahl):

    ganzzahl: int
    bruch: Bruch

    def berechne_bruch(self) -> Bruch:
        return Bruch(self.ganzzahl * self.bruch.nenner + self.bruch.zaehler, self.bruch.nenner).kuerze()

    def normiere(self) -> GemischteZahl:
        ganzzahl = self.bruch.zaehler // self.bruch.nenner
        bruch = Bruch(self.bruch.zaehler - ganzzahl * self.bruch.nenner, self.bruch.nenner)
        return GemischteZahl(ganzzahl, bruch)