#let horizontalrule = [
  #line(start: (0%, 0%), end: (100%, 0%))
  
]
#set text(lang: "it", font:"New Computer Modern")
#set align(left)

#set page(
  margin: (x: 1cm, y: 1cm),
)

#set text(size: 12pt)

#page()[
  #box(height: 120pt)[
      #place(left + horizon, image(height: 100%, "//img/logo.png"))
      #h(1fr)
      #place(right + horizon)[
        #block[
          #text(size: 1.2em)[*Università degli Studi di Padova*]\
          #text(size: 1.1em)[Corso di Ingegneria del Software A.A. 2024/25]\
          #text(size: 1.1em)[Progetto Didattico]\
          #text(size: 1.1em)[*Gruppo Archi7echs* - *archi7echs\@gmail.com*]\
        ]
      ]
    ]

    #box(height: 100pt)[
      #h(1fr)
      #place(right + horizon)[
        #block[
          #text()[_Spett.le_]\
          #text()[_Prof. Tullio Vardanega_]\
          #text()[_Prof. Riccardo Cardin_]\
          
          #text()[#underline[A mezzo e-mail]]
        ]
      ]
    ]

    #box(height: 10pt)[
      #h(1fr)
      #place(left + horizon)[
        #block[
          #text(1.1em)[*Oggetto: Candidatura RTB*]\
        ]
      ]
    ]

    Buongiorno,\
    con la presente il gruppo numero 13, *Archi7echs*, intende presentare ufficialmente la propria candidatura per la revisione dell'RTB del _capitolato numero 5_, proposto dall'azienda _Sanmarco Informatica_ e denominato: 
    #box(height: 10pt)[
      #h(1fr)
      #place(center + horizon)[
        #block[
          #text(1.1em)[*3Dataviz - (3D data-visualization)*]\
        ]
      ]
    ]

    == Documentazione 
    La documentazione relativa alla prima parte di progetto, Requirements and Technology Baseline, è reperibile nella sezione “*RTB*” al seguente link:

    #show link: set text(blue)
    #align(center)[#link("https://archi7echs-team.github.io/")[https://archi7echs-team.github.io/]]
  
    Nel dettaglio sono disponibili i seguenti documenti:\
    *Documenti interni*:
    - Glossario v1.0.0
    - Norme di Progetto v1.0.0
    - Verbali interni
    *Documenti esterni*:
    - Analisi dei Requisiti v1.0.0
    - Piano di Progetto v1.0.0
    - Piano di Qualifica v1.0.0
    - Verbali esterni
#pagebreak()
Riportiamo di seguito i componenti del gruppo Archi7echs:
#figure()[
  #table(
    columns: (auto, auto),
    align: (col, row) => (center, center).at(col),
    inset: 6pt,
    table.header([*Nominativo*], [*Matricola*]),
        [Gabriele Checchinato], [2073957],
        [Leonardo Lucato], [2075528],
        [Giacomo Pesenato], [2076429],
        [Francesco Pozzobon], [2075513],
        [Giovanni Salvò], [2074010],
        [Gioele Scandaletti], [2076444],
        [Pietro Valdagno], [2000561],
  )
]

#box(height: 40pt)[
      #h(1fr)
      #place(left + horizon)[
        #block[
          Rimaniamo a disposizione per ogni eventuale chiarimento.
          
          Si coglie l’occasione per porgere cordiali saluti.
        ]
      ]
    ]

#box(height: 80pt)[
      #h(1fr)
      #place(left + horizon)[
        #block[
          #text()[_Padova, 9 febbraio 2025_]\
        ]
      ]
      #place(right + horizon)[
        #block[
          _Il team Archi7echs_
        ]
      ]
    ]


]

