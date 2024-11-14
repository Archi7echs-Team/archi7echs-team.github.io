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
          #text(1.1em)[*Oggetto: Candidatura gruppo capitolato num. 5 - 3Dataviz*]\
        ]
      ]
    ]

    Buongiorno,\
    con la presente il gruppo numero 13, *Archi7echs*, intende presentare ufficialmente la propria candidatura per la realizzazione del prodotto, da Voi commissionato, nel _capitolato numero 5_, proposto dall'azienda _Sanmarco Informatica_ e denominato: 

    #box(height: 10pt)[
      #h(1fr)
      #place(center + horizon)[
        #block[
          #text(1.1em)[*3Dataviz - (3D data-visualization)*]\
        ]
      ]
    ]

    == Motivazioni della scelta
    - *Diversità* nel tema rispetto agli altri capitolati proposti
    - *Interesse* da parte di tutto il gruppo nella modellazione dei dati in 3D
    - *Azienda estremamente disponibile*, veloce e concisa nelle risposte sia via e-mail che via call
    - *Utilizzo di librerie professionali*, moderne e ben documentate
    - *Libertà* di scelta delle tecnologie da utilizzare soprattutto nella parte frontend

    == Documentazione 
    La documentazione relativa alla gara di appalto è reperibile nella sezione “*1 - Candidatura*” al seguente link:

    #show link: set text(blue)
    #align(center)[#link("https://archi7echs-team.github.io/docs/")[https://archi7echs-team.github.io/docs/]]
  
    Nel dettaglio sono disponibili i seguenti documenti:
    - Valutazione dei capitolati
    - Preventivo dei costi e stima di consegna
    - Verbali interni
      - Incontro nr. 1 del 16/10/2024
      - Incontro nr. 2 del 18/10/2024
      - Incontro nr. 3 del 21/10/2024
      - Incontro nr. 4 del 25/10/2024
      - Incontro nr. 5 del 04/11/2024
    - Verbali esterni
      - Incontro nr. 1 del 21/10/2024 con _AzzurroDigitale_
      - Incontro nr. 2 del 25/10/2025 con _Sanmarco Informatica_

Come dettagliato nel file di preventivo il gruppo ha stimato la consegna del progetto entro e non oltre il *25/03/2025* con una spesa, a carico del committente, di *€ 12.530,00*

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
          #text()[_Padova, 4 novembre 2024_]\
        ]
      ]
      #place(right + horizon)[
        #block[
          _Il team Archi7echs_
        ]
      ]
    ]


]

