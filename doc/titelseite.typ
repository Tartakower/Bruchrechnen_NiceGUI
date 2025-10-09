#let titelseite(titel, untertitel, autor, ortzeit, doc) = [
  #align(center + horizon)[
    #text(font: "DejaVu Sans", size: 36pt)[#titel]

    #text(font: "DejaVu Sans", size: 24pt, style: "italic")[#untertitel]

    #v(5em)
    #text(font: "DejaVu Sans", size: 24pt)[#autor]

    #text(font: "DejaVu Sans", size: 18pt, style: "italic")[#ortzeit]
  ]
  #doc
]