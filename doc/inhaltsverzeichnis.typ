#let toc(doc) = [
  #pagebreak()
  #set text(font: "DejaVu Sans", size: 16pt)
  #show outline.entry: it => {
    if it.level == 1 {
      v(1em)
      text(weight: "bold")[#it]
    } else {
      it
    }
  }
  #outline(depth: 3)
  #doc
]