#let horizontalrule = [
  #line(start: (0%, 0%), end: (100%, 0%))
]

#set text(lang: "it", font:"New Computer Modern")
#set align(left)

#let title(t) = text(size: 22pt, top-edge: 0pt)[== #t]
#let subtitle(st) = text(size: 18pt, bottom-edge: 0pt)[#emph[#st]]

#set text(size: 12pt)
#set par(justify: true)

// pagina 0
#page(background: align(bottom + right, image("//img/logounipd.png", width: 80%)))[
  #set align(center)
  #figure(image(width: 50%, "//img/logo.png"))
  
  #v(2em)
  
  #text(size: 16pt)[Archi7echs - archi7echs\@gmail.com] \
  
  Progetto di #strong[Ingegneria del Software] \
  A.A. 2024/2025 \

  #align(horizon)[
  #horizontalrule
  #v(12pt)
  #title[Titolo Documento]
  #subtitle[Sottotitolo]
  #v(12pt)
  #horizontalrule
  ]
  #figure(
    placement:bottom,
    [#table(
      columns: (auto, 1fr),
      stroke: none,
      align: (col, row) => (left, right,).at(col),
      inset: 6pt,
      [#strong[Autore:] Nome Cognome],
      [#strong[Tipologia Documento:] Interno],
      [#strong[Ultima Modifica:] 25/09/2024 10:04],
      [#strong[Stato:] Released],
    )]
  )
  #pagebreak(weak: true)
]

#set page(numbering: "1")
#counter(page).update(1)


#set align(left)

== Tabella delle Revisioni <tabella-delle-revisioni>
#v(1em)
#align(center)[
  #figure[
    #table(
        columns: 6,
        align: (col, row) => (center, center, center, center, left, center,).at(col),
        inset: 6pt,
        table.header([*Rev.*], [*Data*], [*Descrizione*], [*Elaborazione*], [*Verifica*], [*Approvazione*]),
        [1], [ff], [#lorem(2)], [g], [w], [r],
        [0.3], [dd], [#lorem(2)], [rr], [w], [r],
        [0.2], [ss], [#lorem(2)], [e], [we], [f],
        [0.1], [xx], [#lorem(2)], [w], [w], [f],
    )
    <tab:my_label>
  ]
]

#set par(justify:true)
= Prima sezione documento <prima-sezione-documento> \
#lorem(50)

== Subsection <subsection> \
#lorem(100)
