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
  #title[Verbale incontro 25/10/2024]
  
  #subtitle[Documento interno - verbale nr. 4]
  
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
      [#strong[Ultima Modifica:] 04/11/2024 16:45],
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
        [1.2], [04/11/2024], [Aggiunta sezione "Decisioni" e sistemazione tab. revisioni], [Francesco Pozzobon], [Gabriele Checchinato], [Team],
        [1.1], [29/10/2024], [Correzioni], [Gabriele Checchinato], [Leonardo Lucato], [Team],
        [1.0], [25/10/2024], [Prima stesura documento], [Francesco Pozzobon], [Leonardo Lucato], [Team],
        
    )
    <tab:my_label>
  ]
]
 #pagebreak(weak: true)

#set align(left)

#set par(justify: true)

_Dopo essersi accordati, via mail, con Alex Beggiato di Sanmarco Informatica per una call per l'approfondimento del capitolato, prevista per venerdì 25/10/2024 alle ore 17.00, si decide di convocare una riunione del gruppo con il seguente ordine del giorno:_

= Ordine del Giorno <ordine-del-giorno>

+ Preparazione call con Sanmarco Informatica
+ Preparazione primo Diario di Bordo - lunedì 28/10/2024
+ Varie ed eventuali

= Dettagli dell'incontro <dettagli-incontro>

#strong[Data e ora convocazione] Venerdì 25/10/2024 - ore 16:00 \
  
#strong[Luogo] Online - Piattaforma Discord \
  
#strong[Destinatari] Tutti i componenti del gruppo \

= Verbale <verbale>
#set list(indent: 12pt)

L'incontro inizia, come da programma, alle ore 16:00. Sono presenti tutti i componenti del team:
- Gabriele Checchinato
- Leonardo Lucato
- Giacomo Pesenato
- Francesco Pozzobon
- Giovanni Salvò
- Gioele Scandaletti
- Pietro Valdagno

Francesco Pozzobon si propone come verbalizzante dell’incontro.
Si procede alla discussione in ordine dei punti all’ordine del giorno.

#pagebreak(weak: true)

= Punto 1 - Preparazione call con Sanmarco Informatica <primo-punto>

#set list(indent: 12pt)
Letto nuovamente il capitolato dell’azienda e la risposta alla mail inviata il 17/10/2024 contenenente una serie di domande già poste (rif. Verbale Interno nr. 2 e Allegato 1, risposta dell'azienda)  si procede ad una discussione di gruppo per predisporre un elenco di domande da chiedere all’azienda durante la call. L’obiettivo è quello di ottenere maggiori dettagli circa il progetto proposto e sulla gestione dei dati che l'applicativo utilizzerà per realizzare i grafici, chiedendo inoltre un consiglio, come fatto con Azzurrodigitale, sui tool da utilizzare per la gestione del progetto. Gabriele Checchinato e Giovanni Salvò si propongono per tenere nota in un documento di quanto emerso dalla discussione del team al fine di poter formulare al meglio le domande qui sotto riportate:
  
- Che tipo di trasformazioni o pre-elaborazioni dei dati saranno necessarie prima della visualizzazione?
- Sono richiesti dei test di performance per valutare la reattività dell’interfaccia in presenza di dataset di grandi dimensioni?
- Per quanto riguarda la gestione del frontend e del backend, vista la vostra esperienza nel settore, quali linguaggi e/o framework consigliereste di utilizzare oltre a quelli già specificati nella presentazione del capitolato. (e in quelli inseriti nel capitolato quale consigliereste / usate in azienda)
- Oltre alle tecnologie gia’ consigliate per il frontend si potrebbe, eventualmente, usare SVELTE?
- Ci sono strumenti specifici che l’azienda suggerisce per la gestione del progetto (ad esempio piattaforme di task management) e, in tema AGILE, cosa consigliate/usate in azienda?


= Punto 2 - Preparazione primo Diario di Bordo <secondo-punto>

In vista del primo diario di bordo previsto per lunedì prossimo, il 28/10/2024, Leonardo Lucato illustra i punti che dovranno essere relazionati:
- Attività completate
- Prossime attività in programma
- Difficoltà incontrate
- Dubbi ed incertezze

Dalla discussione del team è emerso quanto segue:
- Attività completate
  - Creazione gruppo informale (Telegram)
  - Scelta del nome del gruppo, creazione del logo dell'indirizzo email
  - Discussione e valutazione dei capitolati
  - Prime interazioni con le aziende
  - Creazione repository documentale (Github)
- Prossime attività in programma
  - Preparazione preventivo dei costi e previsione di consegna
  - Redazione lettera di presentazione
- Difficoltà incontrate
  - Nessuno in questo periodo
- Dubbi ed incertezze
  - Stiamo affrontando le attività nel modo corretto?
  - I diari di bordo fanno parte della documentazione del progetto?

Definiti i punti da esporre si passa alla scelta del template delle slides. Si è deciso di utilizzare Canva e, una volta approvato il layout delle diapositive si decide di terminare la presentazione in maniera asincrona.
  
= Punto 3 - Varie ed eventuali <terzo-punto>

Gioele Scandaletti illustra la bozza di sito del team che ha realizzato con Github pages, raggiungibile all'indirizzo #text(blue)[https://archi7echs-team.github.io].\ L'obiettivo è quello di raccogliere in una pagina web intuitiva tutti i puntatori ai documenti redatti durante il progetto. I pareri sul lavoro fatto sono ottimi, Gioele comunica che dovrà sistemare solo la parte mobile.
  
Non essendoci altri argomenti da discutere la riunione del team Archi7echs è terminata alle 16:40

`Il presente verbale verrà approvato da tutto il team nella prossima seduta`

= Decisioni
  
#table(
  columns: (auto, 1.5fr, 1fr),
  align: (col, row) => (center, center, center).at(col),
  inset: 6pt,
  table.header([*Pt.*], [*Argomento*], [*Decisione*]),
    [1],[Call Sanmarco Informatica],[preparate domande da porre all'azienda],
    [2],[Primo diario di bordo], [stesura punti da esporre]
)
  
_Per il dettaglio delle decisioni si rimanda al punto dell'OdG._

#v(3cm)

#align(block[
  #set align(left)
  Padova, 26 ottobre 2024
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