#let normaltext(doc) = [
  #set text(
    lang: "de",
    font: "DejaVu Serif",
    size: 12pt
  )
  #set par(
    leading: 1em, // Zeilenabstand
    spacing: 2em, // Absatzabstand
    justify: true
  )
  #doc
]