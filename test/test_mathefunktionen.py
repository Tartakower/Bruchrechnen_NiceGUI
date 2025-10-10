import mathefunktionen

def test_berechne_ggt():
    assert 6 == mathefunktionen.berechne_ggt(12,18)
    assert 6 == mathefunktionen.berechne_ggt(18,12)
    assert 13 == mathefunktionen.berechne_ggt(65,143)
    assert 8 == mathefunktionen.berechne_ggt(8,48)
    assert 1 == mathefunktionen.berechne_ggt(24,59)
    assert 1 == mathefunktionen.berechne_ggt(59,86413)
    assert 1 == mathefunktionen.berechne_ggt(1,24)