//template per allegati

#let horizontalrule = [
  #line(start: (0%,0%), end: (100%,0%))
]

#let firma = [Il team _Archi7echs_]

#let conf(
  title: none,
  subtitle: none,
  id_allegato: none,
  id_verbale: none,
  date: none,
  paper: "a4",
  margin: (x: 1cm, y: 1cm),
  lang: "it",
  font: "New Computer Modern",
  fontsize: 12pt,
  justify: true,
  doc,
  ) = {
    set page(
      paper: paper,
      margin: margin,
    )
    
    set text(
      lang: lang,
      font: font,
      size: fontsize
    )
             
    set par(justify: justify)
    box(height: 120pt)[
      #place(left + horizon, image(height: 100%, "/img/logo.png"))
      #h(1fr)
      #place(right + horizon)[
        #block[
          #text(size: 1.5em)[= Allegato #id_allegato]
          #emph[Verbale esterno nr. #id_verbale]\
          #emph(date)
        ]
      ]
    ]

    if title != none {
      [
        = #title <titoloAllegato>
      ]
    }

    if subtitle != none {
      [
        == #subtitle <sottotitoloAllegato>
      ]
    }
    
    v(1em)
    
    doc
  }

//applicare le modifiche per la configurazione qua sotto
  
#show: doc => conf(
  title: lorem(5),
  id_allegato: 1,
  id_verbale: 2,
  date: "25/10/2024",
  doc)


#lorem(100)
