// #import "@preview/numbly:0.1.0": numbly

#let ueberschriften(doc) = [
  #set heading(numbering: "1.1")
  // #set heading(numbering: (..nums) => {
  //   let numbers = nums.pos()
  //   let length = numbers.len()
  //   if length == 1 {
  //     return numbering("I", numbers.first())
  //   } else if length == 2 {
  //     return numbering("1", numbers.at(1))
  //   } else if length == 3 {
  //     return numbering("1.1", numbers.at(1), numbers.at(2))
  //   } else {
  //     return none
  //   }
  // })
  
  #show heading.where(level: 1): h => [
    #pagebreak()
    #set text(font: "DejaVu Sans", size: 16pt)
    #h
    #v(1em)
  ]
  #show heading.where(level: 2): h => [
    #v(2em)
    #set text(font: "DejaVu Sans", size: 14pt)
    #h
    #v(1em)
  ]
  #show heading.where(level: 3): h => [
    #set text(font: "DejaVu Sans", size: 13pt)
    #v(2em)
    #h
    #v(1em)
  ]
  #show heading.where(level: 4): h => [
    #set text(font: "DejaVu Sans", size: 12pt)
    #h.body
  ]
  #doc
]