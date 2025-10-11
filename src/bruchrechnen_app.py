from ctypes import ArgumentError
from nicegui import ui

from operatoren import Operator
from zahl import Bruch


def berechne(op: Operator, bruch_1: Bruch, bruch_2: Bruch) -> Bruch:        
        if op == Operator.PLUS:
            return bruch_1.addiere(bruch_2)
        elif op == Operator.MINUS:
            return bruch_1.subtrahiere(bruch_2)
        elif op == Operator.MULT:
            return bruch_1.multipliziere(bruch_2)
        elif op == Operator.DIV:
            return bruch_1.dividiere(bruch_2)
        else:
            raise ArgumentError("Unbekannter Operator")


def werte_aus() -> None:
    b1 = Bruch(int(zaehler_1.value), int(nenner_1.value))
    b2 = Bruch(int(zaehler_2.value), int(nenner_2.value))
    b: Bruch = berechne(Operator(op_select.value), b1, b2)
    zaehler_res.set_text(str(b.zaehler))
    nenner_res.set_text(str(b.nenner))


with ui.card(align_items='center'):
    with ui.row(align_items='center'):
        with ui.column():
            zaehler_1 = ui.number(label='Zähler', value=1)
            nenner_1 = ui.number(label='Nenner', value=1)
        op_select = ui.select([member.value for member in Operator], value=Operator.PLUS.value)
        with ui.column():
            zaehler_2 = ui.number(label='Zähler', value=1)
            nenner_2 = ui.number(label='Nenner', value=1)
        ui.button('=', on_click=lambda: werte_aus())
        with ui.column(align_items='stretch'):
            zaehler_res = ui.label('Zähler')
            nenner_res = ui.label('Nenner')


ui.run()