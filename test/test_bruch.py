from zahl import Bruch


def test_kuerze():
    assert Bruch(1,2) == Bruch(6,12).kuerze()
    assert Bruch(1,3) == Bruch(2,6).kuerze()

def test_multipliziere():
    assert Bruch(2,6) == Bruch(1,2).multipliziere(Bruch(2,3))

def test_dividiere():
    assert Bruch(2,6) == Bruch(1,2).dividiere(Bruch(3,2))

def test_addiere():
    assert Bruch(3,4) == Bruch(1,2).addiere(Bruch(1,4))
    assert Bruch(7,20) == Bruch(1,4).addiere(Bruch(1,10))

def test_subtrahiere():
    assert Bruch(1,4) == Bruch(1,2).subtrahiere(Bruch(1,4))
    assert Bruch(3,20) == Bruch(1,4).subtrahiere(Bruch(1,10))