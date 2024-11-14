#let horizontalrule = [
  #line(start: (0%, 0%), end: (100%, 0%))
]
#let linked = [
  #link("")[#text(blue)[Allegato 1]]
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
  #title[Verbale incontro 18/10/2024]
  
  #subtitle[Documento interno - verbale nr. 2]
  
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
      [#strong[Tipologia Documento:] Interno],
      [#strong[Ultima Modifica:] 04/11/2024 16:35],
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
        columns: 6,
        align: (col, row) => (center, center, center, center, center, center,).at(col),
        inset: 6pt,
        table.header([*Rev.*], [*Data*], [*Descrizione*], [*Elaborazione*], [*Verifica*], [*Approvazione*]),
        [1.3], [04/11/2024], [Aggiunta allegato a fine documento], [Gioele Scandaletti], [Gabriele Checchinato], [Team],
        [1.2], [04/11/2024], [Aggiunta sezione "Decisioni" e sistemazione tab. revisioni], [Francesco Pozzobon], [Gabriele Checchinato], [Team],
        [1.1], [24/10/2024], [Riscrittura in typst], [Giacomo Pesenato], [Leonardo Lucato], [Team],
        [1.0], [18/10/2024], [Prima stesura documento], [Francesco Pozzobon], [Leonardo Lucato], [Team],

    )
    <tab:my_label>
  ]
]
#pagebreak(weak: true)

#set align(left)
#set par(justify: true)

_Vista la celere risposta di Sanmarco Informatica si è deciso di riunirsi per discutere quanto segue:_

= Ordine del Giorno <ordine-del-giorno>

+ Prossimi step per la valutazione dei capitolati
+ Varie ed eventuali

= Dettagli dell'incontro <dettagli-incontro>

#strong[Data e ora convocazione] Venerdì 18/10/2024 - ore 15.20 \
  
#strong[Luogo] Online - Piattaforma Discord \

#strong[Destinatari] Componenti del gruppo liberi (visto lo scarso preavviso) \

= Allegati <allegati>

#link(<allegato1>)[#text(blue)[Allegato 1] _Risposta Sanmarco Informatica_]

= Verbale <verbale>

#set list(indent: 12pt)
L'incontro inizia, come da programma, alle ore 15.25. Sono presenti i seguenti componenti del team:
- Gabriele Checchinato
- Leonardo Lucato
- Francesco Pozzobon
- Pietro Valdagno

Francesco Pozzobon si propone come verbalizzante dell'incontro. Si procede alla discussione in ordine dei punti all'ordine del giorno.
  

#pagebreak(weak: true)

#set par(justify:true)
= Punto 1 - Prossimi step per la valutazione dei capitolati <primo-punto>

Vista la risposta di Sanmarco Informatica (#link(<allegato1>)[#text(blue)[Allegato 1]]) si valuta di chiedere all'azienda una call per una prima analisi più dettagliata del capitolato. Ricevuta, attraverso il gruppo Telegram, l’opinione favorevole da parte di tutti i componenti del team si decide di rispondere all’azienda chiedendo disponibilità per quanto precedentemente proposto. Si decide di procedere in modo analogo anche con _Azzurrodigitale_ chiedendo all’azienda di poter fissare una call per la stessa motivazione. 
  
= Punto 2 - Varie ed eventuali <secondo-punto>

Si propone di fissare una riunione online del team tra lunedì 21/10/2024 e martedì 22/10/2024, accordandosi per giorno ed orario attraverso il gruppo Telegram.

Gabriele Checchinato propone di valutare l’utilizzo di Slack come canale di comunicazione per la gestitone del progetto (sviluppo, tasks, aggiornamenti ed issue). Nessuno dei presenti all’incontro ha mai usato la piattaforma ma, vista la diffusione della stessa e le funzionalità che essa esprime, si è deciso di provarla individualmente nei prossimi giorni in modo da trattare il punto nel prossimo incontro.

Su proposta di Gioele Scandaletti, presentata informalmente nel canale di comunicazione, si valuta e approva il passaggio del sistema di scrittura documentale da LaTeX a Typst per la maggiore possibilità di collaborazione di quest'ultimo.
  
Non essendoci altri argomenti da discutere la riunione del team Archi7echs è terminata alle 16:05.

`Il presente verbale verrà approvato da tutto il team nella prossima seduta_`

= Decisioni

#table(
  columns: (auto, 1.5fr, 1fr),
  align: (col, row) => (center, center, center).at(col),
  inset: 6pt,
  table.header([*Pt.*], [*Argomento*], [*Decisione*]),
    [1],[Sanmarco Informatica],[chiedere call per approfondire il capitolato],
    [1],[AzzurroDigitale],[chiedere call per approfondire il capitolato],
    [2 - Varie],[Gestione collaborativa documentazione] ,[Typst],
)

_Per il dettaglio delle decisioni si rimanda al punto dell'OdG._

#v(2em)

#align(block[
  #set align(left)
  Padova, 18 ottobre 2024
])

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

#pagebreak(weak: true)

<allegato1>

#figure(image("//img/rispostaSanmarco.png", width: 100%))