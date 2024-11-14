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
  #title[Verbale incontro 21/10/2024]
  
  #subtitle[Documento interno - verbale nr. 3]
  
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
        [1.4], [04/11/2024], [Aggiunta sezione "Decisioni" e sistemazione tab. revisioni], [Francesco Pozzobon], [Gabriele Checchinato], [Team],
        [1.3], [29/10/2024], [Correzioni], [Gabriele Checchinato], [Leonardo Lucato], [Team],
        [1.2], [25/10/2024], [Correzioni], [Francesco Pozzobon], [Leonardo Lucato], [Team],
        [1.1], [24/10/2024], [Riscrittura in typst], [Giacomo Pesenato], [Leonardo Lucato], [Team],        
        [1.0], [21/10/2024], [Prima stesura documento], [Francesco Pozzobon], [Leonardo Lucato], [Team],
    )
    <tab:my_label>
  ]
]

#pagebreak(weak: true)

#set align(left)

#set par(justify: true)

_Azzurrodigitale ha proposto come primo slot disponibile lunedì 21/10/2024 tra le 15:00 e le 17:00. Dopo aver raccolto informalmente le preferenze sull’orario e aver fissato l’incontro per le 16:00, si decide di convocare una riunione del gruppo con il seguente ordine del giorno:_

= Ordine del Giorno <ordine-del-giorno>

+ Preparazione call con Azzurrodigitale
+ Varie ed eventuali

= Dettagli dell'incontro <dettagli-incontro>

#strong[Data e ora convocazione] Lunedì 21/10/2024 - ore 14:30 \
  
#strong[Luogo] Online - Piattaforma Discord \
  
#strong[Destinatari] Tutti i componenti del gruppo \

= Verbale <verbale>
#set list(indent: 12pt)

L'incontro inizia, come da programma, alle ore 14:30. Sono presenti i seguenti componenti del team (6 su 7):
- Gabriele Checchinato
- Leonardo Lucato
- Giacomo Pesenato
- Francesco Pozzobon
- Giovanni Salvò
- Pietro Valdagno

Francesco Pozzobon si propone come verbalizzante dell’incontro.
Si procede alla discussione in ordine dei punti all’ordine del giorno.

#pagebreak(weak: true)

#set par(justify:true)

= Punto 1 - Preparazione call con Azzurrodigitale <primo-punto>

#set list(indent: 12pt)
Letto nuovamente il capitolato dell’azienda si procede ad una discussione di gruppo per
predisporre un elenco di domande da chiedere all’azienda durante la call. L’obiettivo è quello di ottenere maggiori dettagli circa il progetto proposto e sulle tecnologie che si dovranno utilizzare. Leonardo Lucato si propone per tenere nota in un documento di quanto emerso dalla discussione del team al fine di poter formulare le domande nel miglior modo possibile, per sfruttare al meglio l’opportunità offertaci da Azzurrodigitale, senza sforare i 30min di chiamata prefissati.
Le domande che verranno poste sono le seguenti:
  
- Quali sono le piattaforme che dovranno essere OBBLIGATORIAMENTE “interrogate” per richiedere i dati?(_Quali sono quindi le piattaforme nell’MVP?_)
  
- Dovremmo creare noi un ambiente per ogni piattaforma da cui ricevere i dati oppure ci verranno fornite delle credenziali di “profili demo” da poter interrogare e su cui poter effettuare dei test?
  
- Come sarà la fase iniziale? Ci saranno delle indicazioni specifiche su che cosa affrontare e “in quale ordine”? Ci saranno meeting settimanali o comunque ogni 2 settimane, 1 al mese, ecc. . . ?
  
- Come funziona nello specifico la metodologia agile? Ci sono piattaforme che aiutano lo svolgimento del progetto utilizzando queste metodologie? Slack potrebbe essere un’opzione?
  
- Per quanto riguarda la gestione del frontend e del backend, vista la vostra esperienza nel settore, quali linguaggi e/o framework consigliereste di utilizzare oltre a quelli già specificati nella presentazione del capitolato.
  
- Che cosa si intende come “Persistenza su Database di domande e risposte”. Serve solo per fornire gli “ultimi messaggi scritti/ricevuti” durante una conversazione specifica oppure saranno dati utili (“pesati”) durante la risposta di domande future?

- Come si intende impostare la schermata del bot? Deve essere disponibilie uno storico delle conversazioni oppure ad ogni domanda si avvia una nuova chat?

= Punto 2 - Varie ed eventuali <secondo-punto>

Non essendoci altri argomenti da discutere la riunione del team Archi7echs è terminata alle 15:20

`Il presente verbale verrà approvato da tutto il team nella prossima seduta`

#v(0.6cm)

= Decisioni

#table(
  columns: (auto, 1.5fr, 1fr),
  align: (col, row) => (center, center, center).at(col),
  inset: 6pt,
  table.header([*Pt.*], [*Argomento*], [*Decisione*]),
    [1],[Call AzzurroDigitale],[preparate domande da porre all'azienda],
)
_Per il dettaglio delle decisioni si rimanda al punto dell'OdG._

#v(3em)

#align(block[
  #set align(left)
  Padova, 25 ottobre 2024
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