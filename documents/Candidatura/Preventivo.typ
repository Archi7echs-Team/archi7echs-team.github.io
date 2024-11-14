#import "@preview/plotst:0.2.0": *

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
  #title[Preventivo e Dich. Impegni]
  
  //#subtitle[Documento esterno]
  
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
      [#strong[Autore:] Team Archi7echs],
      [#strong[Tipologia Documento:] Esterno],
      [#strong[Ultima Modifica:]04/10/2024 18:00],
      [#strong[Stato:] Approvato],
    )]
  )
  #pagebreak(weak: true)
]

#set par(justify:true)
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
        [1.2], [04/11/2024], [Correzioni], [Leonardo\ Lucato], [Leonardo\ Lucato], [Leonardo\ Lucato],
        [1.1], [04/11/2024], [Aggiunta grafico impegno orario,  motivazione suddivisione ore ecriterio di rotazione ruoli], [Team], [Gabriele Checchinato], [Leonardo\ Lucato],
        [1.0], [29/10/2024], [Prima stesura documento], [Team], [Leonardo\ Lucato], [Leonardo\ Lucato],

    )
    <tab:my_label>
  ]
]

#v(18em)

#outline(depth: 1)

#pagebreak(weak: true)

Si riporta di seguito la suddivisione degli impegni per ciascun membro del gruppo con relativo preventivo e stima di consegna per la realizzazione del progetto.



= Impegni orari
Ogni membro del gruppo Archi7echs si impegna a dedicare nr. *91* ore produttive al fine di realizzare il progetto proposto.

Le ripartizione delle ore per ciascun ruolo è stata pianificata come segue:

#table(
    columns: (1fr, auto, auto, auto, auto),
    align: (col, row) => (center, center, center, center, center).at(col),
    inset: 6pt,
    table.header([*Ruolo*], [*Costo/h*], [*Ore*],[*Costo ruolo*], [*Ore/Membro*]),
    [Responsabile], [30€], [63h], [1890€], [9h],
    [Amministratore], [20€], [56h], [1120€], [8h],
    [Verificatore], [15€], [154h], [2310€], [22h],
    [Progettista], [25€], [105h], [2625€], [15h],
    [Programmatore], [15€], [189h], [2835€], [27h],
    [Analista], [25€], [70h], [1750€], [10h]
)

#let perc(i) = str(calc.round(i*100/637, digits: 2)) + "%"

#{
  let plot = plot(data: (
    (63, "Responsabile - " + perc(63)),
    (56, "Amministratore - " + perc(56)),
    (154, "Verificatore - " + perc(154)),
    (105, "Progettista - " + perc(105)),
    (189, "Programmatore - " + perc(189)),
    (70, "Analista - " + perc(70)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Divisione ore", display_style: "hor-legend-chart")
}



= Ruoli e motivazioni delle ore dedicate<quinto-punto>
Da regolamento del progetto didattico i ruoli, secondo i quali sono state ripartite le ore, sono i seguenti:
- *Responsabile*: colui che rappresenta il team al di fuori del gruppo di lavoro e si occupa del coordinamento e gestione delle risorse.
- *Amministratore*: con il compito di assicurare l'efficienza, gestione e controllo dell'ambiente IT di lavoro.
- *Analista*: colui che conosce il dominio del problema.
- *Progettista*: il quale ha competenze tecniche da poter determinare scelte realizzative.
- *Programmatore*: con il compito di svolgere le attività per la realizzazione e manutenzione del prodotto.
- *Verificatore*: colui che ha conoscenza del way of working ed ha capacita di giudizio e relazione.
Alla figura del programmatore sono state attribuite 189 ore, poiché i compiti a lui assegnati, insieme a quelli del progettista (105 ore) e del verificatore (154 ore), sono stati definiti in base alle decisioni prese dai responsabili, dagli analisti e dall'amministratore. Grazie a questi tre ruoli con il maggior numero di ore dedicate, sarà possibile ottenere un feedback concreto sull'operato. Sarà compito dell'analista, il quale tempo sarà impiegato maggiormente durante le prime fasi del progetto, fornire un'analisi dettagliata con relativi elementi per la realizzazione. L'amministratore, invece, avrà un ruolo costante durante tutte le fasi del progetto, come il responsabile. Tuttavia, abbiamo ritenuto opportuno assegnargli un numero di ore leggermente superiore rispetto a quest'ultimo, poiché sarà l'unico a rappresentare il gruppo nei confronti del committente e del proponente, oltre a fungere da punto di riferimento per l'intero team.
Inoltre, le ore assegnate al verificatore sono proporzionate a quanto proposto durante la conferenza con l'azienda. Sono stati infatti richiesti numerosi test da effettuare per tutta la durata del progetto, che sarà oggetto di valutazione e di consegna al proponente stesso.
La scelta di assegnare un elevato numero di ore al progettista deriva dalla complessità dell'architettura del progetto stesso. Il suo ruolo sarà fondamentale per l'intera durata del progetto, poiché le sue decisioni saranno cruciali per garantire una struttura solida del software.

= Rotazione dei ruoli
Il gruppo prevede, nella fase iniziale, di assegnare i ruoli in base alle esigenze di ognuno, questo per garantire un punto d'inizio come "studio" del ruolo assegnato. Successivamente si procederà con una suddivisione equa e ripartita attraverso le ore prefissate del preventivo, questo per garantire il soddisfacimento delle ore individuali e concorrere all'apprendimento di ognuno dei singoli ruoli sopracitati. Infine il tempo di rotazione sarà variabile in base al carico di lavoro del gruppo e di impegni universitari. 


= Preventivo e stima di consegna

L'impegno orario totale è quindi di nr. *637 ore* mentre, l'importo del preventivo, ammonta ad *€12.530*.
\
Si stima di consegnare il progetto entro e non oltre martedì *25/03/2025* in quanto sono presenti delle tecnologie sconosciute da tutto il gruppo e i tempi di apprendimento e allenamento nel loro utilizzo possono variare di molto da persona a persona. Per questi motivi abbiamo preferito scegliere una data più prudente, in vista dei ritardi considerati.

#pagebreak(weak: true)