#import "//templates/documento.typ": *
#import "@preview/plotst:0.2.0": *

#show: conf.with(
  title: "Piano di Progetto",
  subtitle: "",
  author: "Il team",
  state: "Bozza",
  show_outline: true,
  outline_depth: 2,
  changelog: (
    "0.1.0", "18-11-2024",  "Prima introduzione PdP", p.lucato, "", "",
  )
)

#let costo_ora = (res: 30, amm: 20, ver: 15, proge: 25, progr: 15, ana: 25)

= Introduzione
Il #glossario("PdP") è il documento che fornisce una guida strutturata per l'esecuzione e il monitoraggio continuo del #glossario("progetto"), fino al suo completamento. Lo scopo è quello di assicurare che ci sia una chiara comprensione degli obiettivi, delle attività pianificate, dei ruoli e delle risorse investite durante gli sprint effettuati. Questo permette al team e allo stakeholder di avere un singolo documento dove potersi allineare con lo stato di avanzamento del #glossario("progetto").


== Glossario
All'interno del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html")[_glossario_]. Tutte le parole consultabili nel gloassario saranno identificate da una "G" in colore blu. Premendoci sopra si aprirà il glossario 

== Il capitolato
L’obiettivo del #glossario("progetto") è facilitare la comprensione di grandi quantità di dati attraverso una rappresentazione visiva in 3D. I dati ricevuti saranno visualizzati sotto forma di istogrammi tridimensionali, con supporto per rotazione, pan, zoom e selezione interattiva delle barre. Gli utenti principali della piattaforma saranno le aziende che necessitano di strumenti avanzati per l’analisi e la visualizzazione di dati, utilizzabili sia internamente che per la comunicazione con clienti e stakeholder.

== Riferimenti utili
=== Link al capitolato C5 - 3Dataviz
- Riferimento al capitolato 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]]
=== Slide del corso IS
- Riferimento alle slide IS: *_Regolamento del progetto didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]]
- Riferimento alle slide IS: *_Gestione di progetto_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf]]

= Informazioni del progetto

== Introduzione
Questa sezione elenca tutte le informazioni utili del progetto, con le eventuali modifiche nelle sezioni apposite effettuate con l'integrazione/cambiamenti.



== Date di consegna del progetto
=== Introduzione
Il #glossario("progetto") durante l'arco della progettazione e sviluppo potrà subire diverse modificazioni. In questa sezione dunque saranno segnalate tutte le modifiche relative alle date di consegna preventivate per il documento dell'RTB e del PB

=== Prima stesura - 19-11-2024
In base a quanto riportato in questo documento e le difficoltà incontrate, gli obiettivi che il gruppo si impegna di raggiungere e rispettare sono soggetti ad un limite di tempo, con le date riportate di seguito:

#table(
    columns: (2fr, 1fr),
    align: center,
    inset: 6pt,
    table.header([*Accettazione milestone*], [*Data*], ),
      [#glossario("RTB")- Requirements and Technology Baseline], [15/01/2025], 
    [#glossario("PB") - Product Baseline], [25/03/2025], 
)

== Costi del progetto

=== Introduzione

Questa sezione tiene traccia delle eventuali modifiche che vengono apportate alla suddivisione oraria dei ruoli durante tutta la durata del #glossario("progetto").

=== Dopo la candidatura del 04/11/2024

La tabella riporta quanto deciso nel _Preventivo_ redatto per la candidatura del capitolato. Il costo totale preventivato è di €12.530 (*limite invalicabile*) suddiviso in:

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

#let perc(i,tot) = str(calc.round(i*100/tot, digits: 2)) + "%"

#{
  let plot = plot(data: (
    (63, "Responsabile - " + perc(63,637)),
    (56, "Amministratore - " + perc(56,637)),
    (154, "Verificatore - " + perc(154,637)),
    (105, "Progettista - " + perc(105,637)),
    (189, "Programmatore - " + perc(189,637)),
    (70, "Analista - " + perc(70,637)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Divisione ore", display_style: "hor-legend-chart")
}

\

=== Scelta della metodologia da utilizzare <scelta_metodologia>
Per il progetto è stata scelta la metodologia Agile-Scrum come framework operativo. Questa decisione si basa sulla necessità di affrontare la complessità del progetto in modo dinamico e adattivo, favorendo un approccio collaborativo e iterativo che consente di consegnare valore allo stakeholder in modo incrementale e frequente.\
Le motivazioni per l'adozione di Agile-Scrum
+ *Flessibilità e Adattamento*: La metodologia Scrum consente di affrontare cambiamenti nei requisiti anche in fase avanzata del progetto, rispondendo prontamente a nuove esigenze o priorità. Ogni periodo rappresenta un ciclo breve e pianificabile, garantendo un processo continuo di revisione e miglioramento.
+ *Focus sul Valore*: Il lavoro viene suddiviso in User Stories prioritarie, permettendo di concentrarsi sulle funzionalità che portano il massimo valore agli utenti finali. L’approccio iterativo facilita la consegna frequente di incrementi tangibili e utilizzabili del prodotto.
+ *Collaborazione e Trasparenza*: La comunicazione regolare tra i membri del team durante comunicazioni veloci (vie brevi), Sprint Planning (pianificazione del periodo), e Sprint Review (retrospettiva del periodo) migliora la coesione del team e l’allineamento degli obiettivi. Lo stakeholder è coinvolto attivamente durante le revisioni dei periodi, mantenendo alta la trasparenza.
+ *Gestione dei Rischi*: I rischi vengono identificati e gestiti continuamente, riducendo la probabilità di fallimenti significativi. Il formato iterativo consente di testare e validare frequentemente le ipotesi. Questo, se applicato correttamente, garantisce di aggiungere/modificare la _@gestione_dei_rischi _, relativa alla gestione dei rischi, non solo in base a "periodi brevi" ma soprattutto anche a "lungo raggio".
+ *Incremento della Produttività*: Grazie al lavoro suddiviso in periodi e all’enfasi sulla rimozione degli impedimenti (eventi esterni, nuove funzionalità da implementare, ecc...), il team è in grado di ottimizzare le proprie prestazioni.

= Gestione dei rischi <gestione_dei_rischi> 

= Descrizione di un periodo

== Introduzione
In questa sezione viene descritta la modalità utilizzata dal gruppo per la descrizione di ogni singolo periodo.
Avendo adottato la metodologia Agile-Scrum (_@scelta_metodologia _), è importante documentare le informazioni chiave, così da poter monitorare i progressi, facilitare la riflessione e il miglioramento continuo. Per garantire queste caratteristiche, una singola descrizione è composta da due componenti: la pianificazione e l'esito effettivo.

== Struttura della pianificazione

+ *Titolo*: identifica il periodo (es. Periodo1, ID-Periodo, ecc...)
+ *Periodo*: identifica la data d'inizio e di fine 
+ *Ruoli*: identifica una tabella con i ruoli assegnati
+ *Descrizione obiettivi*: identifica la sezione in cui vengono elencati, per ruolo, gli obiettivi da raggiungere durante il periodo
+ *Possibili rischi*: identifica la sezione in cui si pensano quali rischi possono occorrere durante il periodo. Questo è molto importante per tutto il team in quanto garantisce una visione generale delle problematiche che potrebbero essere incontrate e risolte tramite la gestione dei rischi.
+ *Tabella preventivo*: identifica la tabella con l'impegno in ore che ogni componente del gruppo decide di dedicare al determinato ruolo
+ *Suddivisione ore*: viene identificato da un grafico a torta che visualizza la percentuale dedicata ai ruoli in base al totale delle ore preventivate del periodo.
=== Esempio punti 6,7
*Esempio tabella preventivo*:
#table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto),
    align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
    inset: 6pt,
    table.header([*Persona*], [*Res.*], [*Amm.*],[*Ver.*], [*Proge.*], [*Progr.*], [*Ana.*], [*Costo persona*]),
    [Nome1],[0],[0],[2],[0],[0],[0],[€ #(2*costo_ora.ver)],
    [Nome2],[0],[2],[0],[0],[0],[0],[€ #(2*costo_ora.amm)],
    [...],[-],[-],[-],[-],[-],[-],[-],
    [NomeX],[0],[0],[0],[1],[0],[0],[€ #(1*costo_ora.proge)],
    [*Costo per ruolo*],[0],[€ #(2*costo_ora.amm)],[€ #(2*costo_ora.ver)],[€ #(1*costo_ora.proge)],[0],[0],[#text(blue)[*€ #(30+40+25)*]],
)
Il *Costo persona* viene ricavato tramite una somma (per riga) delle moltiplicazioni tra le ore effettuate dei ruoli e il loro rispettivo costo per ora.\
Il *Costo per ruolo* viene ricavato tramite una somma (per colonna) delle ore dedicate al ruolo moltiplicato per il suo costo orario.\
Il costo in #text(blue)[blu] è il costo preventivato del periodo.\
*Esempio suddivisione ore*:
#{
  let plot = plot(data: (
    (0, "Responsabile - " + perc(0,5)),
    (2, "Amministratore - " + perc(2,5)),
    (2, "Verificatore - " + perc(2,5)),
    (1, "Progettista - " + perc(1,5)),
    (0, "Programmatore - " + perc(0,5)),
    (0, "Analista - " + perc(0,5)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Divisione ore periodo", display_style: "hor-legend-chart")
}


== Struttura dell'esito effettivo

+ *Obiettivi non raggiunti*: identifica la sezione in cui vengono elencati gli obiettivi che non sono stati raggiunti. E' molto importante indicare le motivazioni reali e concrete, per permettere un miglioramento nelle pianificazioni successive o uno studio più approfondito dei rischi.
+ *Problematiche non attese*: identifica la sezione in cui vengono elencate tutte quelle problematiche che non erano state considerate durante la fase preliminare o nelle fasi preliminari di periodi precedenti.
+ *Possibili cambiamenti*: identifica la sezione in cui vengono discussi dei miglioramenti presi in considerazione in base a quanto rilevato durante il periodo affrontato. In questa parte il team ritiene molto importante identificare _tutti_ i cambiamenti da attuare, dunque non solo quelli per il periodo successivo ma anche (e soprattutto) in visione "a lungo raggio".
+ *Tabella esito effettivo*: identifica la tabella che riporta il quantitativo di ore utilizzate nell'effettivo. Questo permettere di avere un feedback immediato sullo stato del #glossario("progetto"), con relativo incremento/decremento o invarianza del costo totale del periodo.
+ *Stato di avanzamento*: in questa sezione verrà creato un grafico a torta che identifica la percentuale di #glossario("attività") svolte in base a tutte quelle presenti nel #glossario("backlog"), della #glossario("milestone") da raggiungere (#glossario("RTB") o #glossario("PB"))

=== Esempio punti 4,5
*Esempio tabella esito effettivo*:
#table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto),
    align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
    inset: 6pt,
    table.header([*Persona*], [*Res.*], [*Amm.*],[*Ver.*], [*Proge.*], [*Progr.*], [*Ana.*], [*Costo persona*]),
    [Nome1],[0],[0],[2(#text(red)[+1])],[0],[0],[0],[€ #(2*costo_ora.ver) (#text(red)[+€ #(1*costo_ora.ver)])],
    [Nome2],[0],[2(#text(green)[-1])],[0],[0],[0],[0],[€ #(2*costo_ora.amm) (#text(green)[-€ #(1*costo_ora.amm)])],
    [...],[-],[-],[-],[-],[-],[-],[-],
    [NomeX],[0],[0],[0],[1],[0],[0],[€ #(1*costo_ora.proge)],
    [*Costo per ruolo*],[0],[€ #(2*costo_ora.amm)],[€ #(2*costo_ora.ver)],[€ #(1*costo_ora.proge)],[0],[0],[#text(blue)[*€ #(30+40+25)*] (#text(green)[-€ 5])],
)
#pagebreak()
*Esempio stato di avanzamento*:

#{
  let plot = plot(data: (
    (40, "Da fare - " + perc(40,100)),
    (60, "Fatto - " + perc(60,100)),
  ))
  //TODO: cambiare il colore delle sezioni del grafico: da fare in rosso, fatto in verde
  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento RTB/PB", display_style: "hor-legend-chart")
}