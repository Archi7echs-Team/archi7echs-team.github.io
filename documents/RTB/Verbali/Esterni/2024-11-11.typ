#let horizontalrule = [
  #line(start: (0%, 0%), end: (100%, 0%))
]
#set text(lang: "it", font:"New Computer Modern")
#set align(left)

#let title(t) = text(size: 22pt, top-edge: 0pt)[== #t]
#let subtitle(st) = text(size: 18pt, bottom-edge: 0pt)[#emph[#st]]

#set text(size: 12pt)

#page(background: align(bottom + right, image("//img/logounipd.png", width: 70%)))[
  #set align(center)
  
  #figure(image(width: 50%, "//img/logo.png"))
  
  #v(2em)
  
  #text(size: 16pt)[Archi7echs - archi7echs\@gmail.com] \
  
  Progetto di #strong[Ingegneria del Software] \
  A.A. 2024/2025 \

  #align(horizon)[
  #horizontalrule
  #v(12pt)
  #title[Verbale incontro 11/11/2024]
  
  #subtitle[Call con Sanmarco Informatica - verbale esterno nr. 3]
  
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
      [#strong[Autore:] Francesco Pozzobon],
      [#strong[Tipologia Documento:] Esterno],
      [#strong[Ultima Modifica:] 12/11/2024 17:20],
      [#strong[Stato:] Approvato],
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
        columns: (auto, auto, auto, auto, auto, auto),
        align: (col, row) => (center, center, center, center, center, center,).at(col),
        inset: 6pt,
      
        table.header([*Rev.*], [*Data*], [*Descrizione*], [*Elaborazione*], [*Verifica*], [*Approvazione*]),
        [1.2], [12/10/2024], [Modifica introduzioni], [Pietro Valdagno], [Leonardo Lucato], [Team e\ Alex Beggiato _Sanmarco Informatica_],
        [1.1], [11/10/2024], [Correzioni], [Gabriele Checchinato], [Leonardo Lucato], [Team],
        [1.0], [11/10/2024], [Prima stesura documento], [Francesco Pozzobon], [Leonardo Lucato], [Team],
    )
    <tab:my_label>
  ]
]
#pagebreak(weak: true)

#set align(left)

#set par(justify: true)

_Dopo l'aggiudicazione del capitolato C5 proposto da Sanmarco Informatica si decide, una volta contattato Alex Beggiato (System Architect Team Leader) di convocare una call con il seguente ordine del giorno:_

= Ordine del Giorno <ordine-del-giorno>

+ Definizione prima fase di progetto
+ Conclusioni
+ Varie ed eventuali

= Dettagli dell'incontro <dettagli-incontro>

#strong[Data e ora convocazione] Lunedì 11/11/2024 - ore 16:30
  
#strong[Luogo] Online - Piattaforma Google Meet
  
#strong[Destinatari] Azienda Sanmarco Informatica e tutti i componenti del gruppo Archi7echs

= Verbale <verbale>
#set list(indent: 12pt)

L'incontro inizia alle ore 16:30. Sono presenti i seguenti componenti del team:
- Gabriele Checchinato
- Giacomo Pesenato
- Francesco Pozzobon
- Giovanni Salvò
- Gioele Scandaletti
- Pietro Valdagno

Per Sanmarco Informatica, invece, è presente:
- Alex Beggiato - System Architect Team Leader

Francesco Pozzobon si propone come verbalizzante dell’incontro.
Si procede alla discussione in ordine dei punti all’ordine del giorno.

#pagebreak(weak: true)

#set par(justify:true)

= Punto 1 - Definizione prima fase di progetto <primo-punto>

Durante l’incontro sono stati analizzati i concetti di requisiti e di use cases, citando alcuni esempi di requisiti preliminari e affrontando la documentazione necessaria. È stato posto l’accento sui requisiti di qualità, performance e sulle limitazioni da tenere presenti nello sviluppo del progetto.\
Francesco Pozzobon, facendo riferimento alla documentazione messa a disposizione dal committente, descrive gli obiettivi previsti dal progetto didattico per questa fase di progetto che condurrà alla prima revisione, la RTB. \
Alex Beggiato consiglia al team di procedere con l'analisi dei requisiti dove, a seguito della domanda posta, viene sottolineato che ogni ruolo previsto è importante per definire requisiti e obiettivi di ogni parte del progetto. \
Vengono definite le modalità di contatto con l'azienda, ovvero:
- Google Chat, per rapide informazioni e dubbi
- Call programmate ogni 2/3 settimane per revisione Stato Avanzamento Lavori (SAL)

In merito al diario di bordo previsto per domani, 12/11/2024, il team si impegna ad aggiornare l'azienda con i punti più importanti che emergeranno e, di conseguenza, fissare la prossima call (ipoteticamente tra 3 settimane).

Il team nel prossimo futuro prevede la stesura delle norme di progetto e l'analisi dei requisiti che sarà frutto di revisione nella prossima riunione con l'azienda.

= Punto 2 - Decisioni

#table(
  columns: (auto, 0.6fr, 1.5fr),
  align: (col, row) => (center, center, center).at(col),
  inset: 6pt,
  table.header([*Pt.*], [*Argomento*], [*Decisione*]),
    [1],[Prima fase \ di progetto],[Definizione Way Of Working a supporto di tutte le attività],
    [1],[Prima fase \ di progetto],[Stesura Analisi dei requisiti],
    [1], [Definizione ruoli],[Assegnare ruolo diverso ad ogni componente per analisi dei requisiti],
    [1], [Modalità di contatto],[Google Chat per informazioni/dubbi veloci],
    [1], [Diario di Bordo], [Aggiornare l'azienda se accade qualcosa di rilevante],
    [1], [Prossimo incontro avanzamento],[Da confermare - indicativamente tra 3 settimane]

)

_Per il dettaglio delle decisioni si rimanda al punto dell'OdG._

= Punto 3 - Varie ed eventuali <secondo-punto>
    
Non essendoci altri argomenti da discutere la riunione del team Archi7echs con l’azienda Sanmarco Informatica è terminata alle 16:50.

`Il presente verbale verrà approvato da tutto il team nella prossima seduta`


#v(3em)
Padova, 11 novembre 2024 \
\
#figure(
  [#table(
    columns: (auto, 1fr),
    stroke: none,
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Il Verbalizzante:\ Francesco Pozzobon],
    [Il responsabile di Progetto:\ Leonardo Lucato],
  )]
)
#v(2em)
#figure(
  [#grid(
    columns: (auto, 1fr),
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Per Sanmarco Informatica:\ Alex Beggiato \
    #place(center, image("//img/smi_sign.png", width: 120%))
    ],
  )]
)
/*
#figure(
  [#table(
    columns: (auto, 1fr),
    stroke: none,
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [L'azienda:\ AzzurroDigitale \
    #place(center, image("//img/ad_sign.png", width: 120%))
    ],
  )]
)

*/

