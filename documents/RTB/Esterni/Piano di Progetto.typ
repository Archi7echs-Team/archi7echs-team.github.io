#import "//templates/documento.typ": *
#import "@preview/plotst:0.2.0": *

#show: conf.with(
  title: "Piano di Progetto",
  subtitle: "",
  author: "Il team",
  state: "Approvato",
  intern: false,
  show_outline: true,
  outline_depth: 2,
  changelog: (
    "0.1.4", "15-12-2024", "Stesura andamento secondo periodo", p.valdagno, "",
    "0.1.3", "09-12-2024", "Aggiunti nuovi rischi individuati", p.checchinato, p.valdagno,
    "0.1.2", "08-12-2024",  "Stesura andamento primo periodo", p.checchinato, p.valdagno,
    "0.1.1", "23-11-2024",  "Stesura Gestione dei Rischi", p.lucato, p.salvo,
    "0.1.0", "23-11-2024",  "Prima introduzione PdP", p.lucato, p.checchinato,
    
  )
)

#let costo_ora = (res: 30, amm: 20, ver: 15, proge: 25, progr: 15, ana: 25)

= Introduzione
Il #glossario("PdP") è il documento che fornisce una guida strutturata per l'esecuzione e il monitoraggio continuo del #glossario("progetto"), fino al suo completamento. Lo scopo è quello di assicurare che ci sia una chiara comprensione degli obiettivi, delle #glossario("attività") pianificate, dei ruoli e delle risorse investite durante gli sprint effettuati. Questo permette al team e allo stakeholder di avere un singolo documento dove potersi allineare con lo stato di avanzamento del #glossario("progetto").

== Glossario
All'interno del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html")[_glossario_]. Tutte le parole consultabili nel glossario saranno identificate da una "G" in colore blu. Premendoci sopra si aprirà il glossario 

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
Questa sezione elenca tutte le informazioni utili del #glossario("progetto"), con le eventuali modifiche nelle sezioni apposite effettuate con l'integrazione/cambiamenti.



== Date di consegna del progetto
=== Introduzione
Il #glossario("progetto") durante l'arco della progettazione e sviluppo potrà subire diversi cambiamenti. In questa sezione dunque saranno segnalate tutte le modifiche relative alle date di consegna preventivate per il documento dell'#glossario("RTB") e del #glossario("PB")

=== Prima stesura - 19-11-2024
In base a quanto riportato in questo documento e le difficoltà incontrate, gli obiettivi che il gruppo si impegna di raggiungere e rispettare sono soggetti ad un limite di tempo, con le date riportate di seguito:

#table(
    columns: (2fr, 1fr),
    align: center,
    inset: 6pt,
    table.header([*Accettazione #glossario("milestone")*], [*Data*], ),
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
Per il #glossario("progetto") è stata scelta la metodologia Agile-Scrum come framework operativo. Questa decisione si basa sulla necessità di affrontare la complessità del #glossario("progetto") in modo dinamico e adattivo, favorendo un approccio collaborativo e iterativo che consente di consegnare valore allo stakeholder in modo incrementale e frequente.\
Le motivazioni per l'adozione di Agile-Scrum sono:
+ *Flessibilità e Adattamento*: La metodologia Scrum consente di affrontare cambiamenti nei requisiti anche in fase avanzata del #glossario("progetto"), rispondendo prontamente a nuove esigenze o priorità. Ogni periodo rappresenta un ciclo breve e pianificabile, garantendo un processo continuo di revisione e miglioramento.
+ *Focus sul Valore*: Il lavoro viene suddiviso in User Stories prioritarie, permettendo di concentrarsi sulle funzionalità che portano il massimo valore agli utenti finali. L’approccio iterativo facilita la consegna frequente di incrementi tangibili e utilizzabili del prodotto.
+ *Collaborazione e Trasparenza*: La comunicazione regolare tra i membri del team durante colloqui veloci (vie brevi), Sprint Planning (pianificazione del periodo), e Sprint Review (retrospettiva del periodo) migliora la coesione del team e l’allineamento degli obiettivi. Lo stakeholder è coinvolto attivamente durante le revisioni dei periodi, mantenendo alta la trasparenza.
+ *Gestione dei Rischi*: I rischi vengono identificati e gestiti continuamente, riducendo la probabilità di fallimenti significativi. Il formato iterativo consente di testare e validare frequentemente le ipotesi. Questo, se applicato correttamente, garantisce di aggiungere/modificare la _@gestione_dei_rischi _, relativa alla gestione dei rischi, non solo in base a "periodi brevi" ma soprattutto anche a "lungo raggio".
+ *Incremento della Produttività*: Grazie al lavoro suddiviso in periodi e all’enfasi sulla rimozione degli impedimenti (eventi esterni, nuove funzionalità da implementare, ecc...), il team è in grado di ottimizzare le proprie prestazioni.

== Introduzione struttura per descrizione dei periodi
In questa sezione viene descritta la modalità utilizzata dal gruppo per la descrizione di ogni singolo periodo.
Avendo adottato la metodologia Agile-Scrum (_@scelta_metodologia _), è importante documentare le informazioni chiave, così da poter monitorare i progressi, facilitare la riflessione e il miglioramento continuo. Per garantire queste caratteristiche, una singola descrizione è composta da due componenti: la pianificazione e l'esito effettivo.

== Struttura della pianificazione

+ *Titolo*: identifica il periodo (es. Periodo1, ID-Periodo, ecc...)
+ *Periodo*: identifica la data d'inizio e di fine 
+ *Ruoli*: identifica una tabella con i ruoli assegnati
+ *Descrizione obiettivi*: individua la sezione contenente una breve descrizione del periodo e degli obiettivi da raggiungere.
+ *Possibili rischi*: identifica la sezione in cui si pensano quali rischi possono occorrere durante il periodo. Questo è molto importante per tutto il team in quanto garantisce una visione generale delle problematiche che potrebbero essere incontrate e risolte tramite la gestione dei rischi.
+ *Tabella preventivo*: identifica la tabella con l'impegno in ore che ogni componente del gruppo decide di dedicare al determinato ruolo
+ *Distribuzione preventivata delle ore*: il grafico a torta rappresenta la suddivisione percentuale delle ore preventivate per ciascun ruolo, calcolata rispetto al totale delle ore pianificate per il periodo considerato.
=== Esempio punti 6,7
*Esempio tabella preventivo*:
#table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto),
    align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
    inset: 6pt,
    table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
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
    (40, "Amministratore - " + perc(2,5)),
    (40, "Verificatore - " + perc(2,5)),
    (20, "Progettista - " + perc(1,5)),
    (0, "Programmatore - " + perc(0,5)),
    (0, "Analista - " + perc(0,5)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore periodo", display_style: "hor-legend-chart")
}


== Struttura dell'esito effettivo

+ *Obiettivi non raggiunti*: identifica la sezione in cui vengono elencati gli obiettivi che non sono stati raggiunti. E' molto importante indicare le motivazioni reali e concrete, per permettere un miglioramento nelle pianificazioni successive o uno studio più approfondito dei rischi.
+ *Problematiche non attese*: identifica la sezione in cui vengono elencate tutte quelle problematiche che non erano state considerate durante la fase preliminare o nelle fasi preliminari di periodi precedenti.
+ *Mitigazione rischi verificati*: identifica la sezione in cui vengono elencate le azioni intraprese per mitigare i rischi (sia quelli preventivati che non)che si sono verificati durante il periodo. Questo permette di avere un feedback immediato sullo stato del #glossario("progetto") e di capire se le azioni intraprese sono state efficaci o meno.
+ *Possibili cambiamenti*: identifica la sezione in cui vengono discussi dei miglioramenti presi in considerazione in base a quanto rilevato durante il periodo affrontato. In questa parte il team ritiene molto importante identificare _tutti_ i cambiamenti da attuare, dunque non solo quelli per il periodo successivo ma anche (e soprattutto) in visione "a lungo raggio".
+ *Tabella esito effettivo*: identifica la tabella che riporta il quantitativo di ore utilizzate nell'effettivo. Questo permettere di avere un feedback immediato sullo stato del #glossario("progetto"), con relativo incremento/decremento o invarianza del costo totale del periodo.
+ *Distribuzione effettiva delle ore*: il grafico a torta mostra la reale distribuzione delle ore impiegate per i vari ruoli, calcolata in base ai dati effettivi raccolti al termine del periodo. Questo consente di confrontare quanto previsto con quanto realmente accaduto.
+ *Progresso delle attività* : in questa sezione verrà creato un grafico a torta che identifica la percentuale di #glossario("attività") svolte in base a tutte quelle presenti nel #glossario("backlog") della #glossario("milestone") del periodo.\

=== Esempio punti 4,5
*Esempio tabella esito effettivo*:
#table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto),
    align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
    inset: 6pt,
    table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
    [Nome1],[0],[0],[2(#text(red)[+1])],[0],[0],[0],[€ #(2*costo_ora.ver) (#text(red)[+€ #(1*costo_ora.ver)])],
    [Nome2],[0],[2(#text(green)[-1])],[0],[0],[0],[0],[€ #(2*costo_ora.amm) (#text(green)[-€ #(1*costo_ora.amm)])],
    [...],[-],[-],[-],[-],[-],[-],[-],
    [NomeX],[0],[0],[0],[1],[0],[0],[€ #(1*costo_ora.proge)],
    [*Costo per ruolo*],[0],[€ #(2*costo_ora.amm)],[€ #(2*costo_ora.ver)],[€ #(1*costo_ora.proge)],[0],[0],[#text(blue)[*€ #(30+40+25)*] (#text(green)[-€ 5])],
)
*Esempio stato di avanzamento*:

#{
  let plot = plot(data: (
    (40, "Non fatto - " + perc(40,100)),
    (60, "Fatto - " + perc(60,100)),
  ))
  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo X", display_style: "hor-legend-chart",colors: (red, green))
}

= Gestione dei rischi <gestione_dei_rischi> 
== Introduzione
La gestione dei rischi è un'attività fondamentale per il successo del #glossario("progetto"). Essa permette di identificare, analizzare e gestire i potenziali problemi che potrebbero influenzare negativamente il raggiungimento degli obiettivi. In questa sezione vengono elencati i rischi individuati e le strategie adottate per mitigarli.

== Rischi individuati
=== Introduzione
In questa sezione vengono elencati i rischi individuati dal team durante la fase di analisi del #glossario("progetto"). Per ciascun rischio vengono specificati la probabilità di occorrenza, l'impatto sul #glossario("progetto") e le strategie adottate per mitigarlo. Questa sezione verrà aggiornata nel caso si verificassero situazioni non identificate in precedenza in modo da garantire una gestione efficace dei rischi, con l'obiettivo di minimizzare le possibili conseguenze negative.

=== Problemi interni al team
==== Rischio 1 - Problemi di comunicazione <RI-1>
- *Identificativo*: RI-1
- *Descrizione*: difficoltà di comunicazione tra i membri del team, con conseguente ritardo nella consegna delle attività.
- *Probabilità*: alta
- *Impatto*: medio
- *Strategie di mitigazione*: il responsabile dovrà occuparsi di organizzare meeting periodici e attuare un'assegnazione chiara dei compiti.

==== Rischio 2 - Problemi personali dei membri del team <RI-2>
- *Identificativo*: RI-2
- *Descrizione*: difficoltà di gestione dei propri impegni personali (università, lavoro, impegni personali, ecc...)
- *Probabilità*: alta
- *Impatto*: alto
- *Strategie di mitigazione*: il responsabile dovrà essere in grado di gestire le attività in modo flessibile, cercando di assegnare compiti in base alle disponibilità di ciascun membro del team. E' importante dunque che ci sia una partecipazione attiva nel comunicare eventuali problemi o difficoltà da parte di tutti i componenti del gruppo.

==== Rischio 3 - Problemi di coordinamento <RI-3>
- *Identificativo*: RI-3
- *Descrizione*: difficoltà nel coordinamento delle attività tra i membri del team, con conseguente sovrapposizione di compiti e ritardi nella consegna.
- *Probabilità*: media
- *Impatto*: alto
- *Strategie di mitigazione*: il responsabile dovrà dare definizioni più chiare dei ruoli e delle responsabilità con una pianificazione dettagliata delle attività.

==== Rischio 4 - Mancanza di conoscenze tecniche <RI-4>
- *Identificativo*: RI-4
- *Descrizione*: difficoltà nell'implementazione delle funzionalità richieste, con conseguente ritardo nella consegne.
- *Probabilità*: media
- *Impatto*: alto
- *Strategie di mitigazione*: lo studio individuale è parte fondamentale del processo di "allenamento" che caratterizza l'apprendimento di ogni componente del team. Se previsto, una mitigazione possibile è l'organizzazione "straordinaria" di un meeting con l'azienda per una breve consulenza. Nel caso si verificassero casi molto particolari, è possibile affiancare un componente del team con maggiore esperienza.

==== Rischio 5 - Mancanza di allineamento sugli obiettivi <RI-5>
- *Identificativo*: RI-5
- *Descrizione*: mancanza di chiarezza sugli obiettivi del #glossario("progetto"), con conseguente disallineamento tra i membri del team. Si identifica tramite la consegna di attività non conformi a quanto pianificato o richiesto.
- *Probabilità*: media
- *Impatto*: alto
- *Strategie di mitigazione*: il responsabile si impegna a dare una definizione chiara degli obiettivi, comunicare costante con i membri del team per comprendere se ci sono dubbi o incomprensioni che non sono emerse durante la pianificazione. 

==== Rischio 6 - Sovraccarico di lavoro <RI-6>
- *Identificativo*: RI-6
- *Descrizione*: eccessivo carico di lavoro assegnato ai membri del team, che potrebbe causare burnout o ridurre l'efficienza.
- *Probabilità*: media
- *Impatto*: alto
- *Strategie di mitigazione*: pianificare una distribuzione equa dei compiti e monitorare regolarmente lo stato di avanzamento delle attività, adattando il carico in base alla disponibilità di ciascun membro.

==== Rischio 7 - Problemi di motivazione <RI-7>
- *Identificativo*: RI-7
- *Descrizione*: calo di motivazione dei membri del team, che potrebbe compromettere la qualità del lavoro svolto.
- *Probabilità*: bassa
- *Impatto*: medio
- *Strategie di mitigazione*: mantenere un clima di lavoro positivo, riconoscere i contributi individuali e promuovere attività di team building.

#pagebreak();

==== Rischio 8 - Assenza di un membro del team per malattia o altri impegni <RI-8>
- *Identificativo*: RI-8
- *Descrizione*: un membro del team potrebbe assentarsi a causa di malattia o di un impegno, compromettendo le scadenze e aumentando il carico di lavoro per gli altri membri.
- *Probabilità*: media
- *Impatto*: alto
- *Strategie di mitigazione*: prevedere una documentazione accurata e aggiornata delle attività svolte da ciascun membro del team, in modo da facilitare la continuità del lavoro e consentire ad altri di subentrare agevolmente se necessario. Assegnare i ruoli con una certa flessibilità per permettere una rapida riassegnazione dei compiti in caso di imprevisti. 

=== Problemi esterni al team
==== Rischio 1 - Problemi di comunicazione con l'azienda <RE-1>
- *Identificativo*: RE-1
- *Descrizione*: difficoltà di comunicazione con l'azienda che potrebbe ritardare una risposta o un meeting richiesto.
- *Probabilità*: media/bassa (dipende dalla comunicazione con l'azienda)
- *Impatto*: alto
- *Strategie di mitigazione*: il responsabile dovrà occuparsi di organizzare meeting periodici, ma soprattutto dovrà ragionare in modo "proattivo" e non "reattivo" per evitare che la comunicazione con l'azienda possa essere un problema. 

==== Rischio 2 - Utilizzo di librerie di terze parti <RE-2>
- *Identificativo*: RE-2
- *Descrizione*: molto spesso capita che quando si utilizza una libreria di terze parti, si possano incontrare problemi di compatibilità o di implementazione, non attribuibili direttamente al team.
- *Probabilità*: media
- *Impatto*: medio
- *Strategie di mitigazione*: una soluzione possibile è quella di chiedere un confronto con l'azienda che, data la maggiore esperienza, potrebbe fornire un'alternativa valida o un supporto per la risoluzione del problema.

==== Rischio 3 - Ritardi nelle consegne da parte di terzi <RE-3>
- *Identificativo*: RE-3
- *Descrizione*: ritardi nella fornitura di materiale, dati o feedback necessari per il proseguimento delle attività del team.
- *Probabilità*: bassa
- *Impatto*: medio
- *Strategie di mitigazione*: identificare con anticipo le dipendenze da terze parti e predisporre soluzioni alternative in caso di ritardi.

= Periodi
== Periodo 1
=== Pianificazione
*Periodo*: 05/11/2024 - 26/11/2024\
*Ruoli*: Viene riportata di seguito la suddivisione del periodo
#align(center)[
  #table(
    columns: 2,
    align: (col, row) => (center, center).at(col),
    inset: 6pt,
    table.header([*Ruolo*], [*Membri*]),
      [Responsabile(Re)],[Leonardo Lucato],
      [Amministratore(Am)],[Francesco Pozzobon],
      [Analista(An)],[Pietro Valdagno],
      [Programmatore(Prg)],[Gioele Scandaletti],
      [Verificatori(Ve)],[ Gabriele Checchinato\ Giovanni Salvò],
      [Progettista(Prt)], [Giacomo Pesenato]
  )
]
*Obiettivi*:\
Nel primo periodo del progetto, il team si concentrerà principalmente sull’organizzazione e sulla redazione dei documenti fondamentali. L’obiettivo iniziale è stabilire una base solida per il proseguimento del lavoro, attraverso la prima stesura del Piano di Progetto, delle Norme di Progetto, dell’Analisi dei Requisiti e del Glossario. Durante questo periodo, ci concentreremo anche sulla definizione di modalità di lavoro chiare per garantire una gestione produttiva ed efficiente del team.

Gli obiettivi principali di questa fase sono quindi:

- Iniziare la stesura del Piano di Progetto, Norme di Progetto, Analisi dei Requisiti e Glossario.
- Definire il way of working del team per garantire una gestione chiara e produttiva.
- Iniziare la creazione del Glossario e inserire i primi termini e concetti fondamentali.
- Automatizzare la compilazione dei documenti, così che il PDF risultante sia disponibile sia sulla repository GitHub che sul sito del team creato tramite GitHub Pages.
- Pianificare e realizzare i primi passi per la gestione efficace delle attività del team.



*Possibili rischi*:\
I rischi che ci aspettiamo di incontrare durante questo periodo sono:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]
- #link(<RI-3>)[*RI-3 - Problemi di coordinamento*]
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]

#pagebreak();

*Tabella preventivo*:\ // to do
#align(center)[
  #table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto),
    align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
    inset: 6pt,
    table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
    [Gabriele Checchinato],[0],[0],[6],[0],[0],[0],[€ #(6*costo_ora.ver)],
    [Leonardo Lucato],[4],[0],[0],[0],[0],[0],[€ #(4*costo_ora.res)],
    [Giacomo Pesenato],[0],[0],[0],[5],[0],[0],[€ #(5*costo_ora.proge)],
    [Francesco Pozzobon],[0],[3],[0],[0],[0],[0],[€ #(3*costo_ora.amm)],
    [Giovanni Salvò],[0],[0],[5],[0],[0],[0],[€ #(5*costo_ora.ver)],
    [Gioele Scandaletti],[0],[0],[0],[0],[5],[0],[€ #(5*costo_ora.progr)],
    [Pietro Valdagno],[0],[0],[0],[0],[0],[5],[€ #(5*costo_ora.ana)],
    [*Costo per ruolo*],[€ #(4*costo_ora.res)],[€ #(3*costo_ora.amm)],[€ #(11*costo_ora.ver)],[€ #(5*costo_ora.proge)],[€ #(5*costo_ora.progr)],[€ #(5*costo_ora.ana)],[#text(blue)[*€ #(120+60+165+125+75+125)*]],
  )
]
*Distribuzione preventivata delle ore*:\ // da mettere a posto

#{
  let plot = plot(data: (
    (12.12, "Responsabile - " + perc(4,33)),
    (9.09, "Amministratore - " + perc(3,33)),
    (33.33, "Verificatore - " + perc(11,33)),
    (15.15, "Progettista - " + perc(5,33)),
    (15.15, "Programmatore - " + perc(5,33)),
    (15.15, "Analista - " + perc(5,33)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore periodo", display_style: "hor-legend-chart")
}

=== Esito
*Obiettivi non raggiunti*:\
Nel periodo appena concluso, alcuni obiettivi non sono stati raggiunti. È fondamentale comprendere le motivazioni per migliorare la pianificazione e la gestione futura del progetto. Di seguito vengono elencate le task non completate:

- *Stesura dell'andamento del primo periodo nel Piano di Progetto*: questa attività non è stata completata in quanto si è ritenuto che fosse compito del responsabile del periodo successivo. La decisione è stata presa per ottimizzare i tempi e concentrare gli sforzi su altre attività.
- *Gestione dell’assegnazione dei ruoli nelle Norme di Progetto*: non è stata realizzata la sezione dedicata all’assegnazione dei ruoli per mancanza di tempo.
- *Sezione sui requisiti nell’Analisi dei Requisiti*: la parte relativa all'identificazione e descrizione dei requisiti non è stata sviluppata per motivi di tempo. Si è preferito concentrarsi su altre attività e lasciarla in sospeso.
- *Inizio del tracciamento dei requisiti nell’Analisi dei Requisiti*: la creazione della sezione per il tracciamento dei requisiti non è stata portata avanti anch'essa per mancanza di tempo e quindi si è deciso di rimandarla.

*Problematiche non attese*:\
Durante il periodo non sono state riscontrate problematiche non attese.

*Mitigazione rischi verificati*:\
Durante il periodo sono stati riscontrati alcuni dei rischi preventivati. Di seguito vengono descritte le azioni intraprese per mitigarli:

- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]: i problemi personali sono stati gestiti con una pianificazione flessibile, assegnando i compiti in base alla disponibilità dei membri per evitare sovraccarichi. La comunicazione aperta ha permesso di affrontare tempestivamente eventuali difficoltà, mantenendo un equilibrio nelle attività del team. L’impatto è stato contenuto, con ritardi minimi che non hanno compromesso la qualità complessiva del lavoro.
- #link(<RI-3>)[*RI-3 - Problemi di coordinamento*]: il rischio di disallineamenti e sovrapposizioni di compiti è stato gestito attraverso una pianificazione chiara delle attività e una definizione precisa di ruoli e responsabilità. Ogni membro ha lavorato con consapevolezza delle proprie scadenze e obiettivi, mentre la supervisione costante da parte del responsabile ha garantito un buon livello di coordinamento. L’impatto è stato contenuto, con rallentamenti occasionali che non hanno generato significativi disagi nel flusso di lavoro.
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]: il rischio è stato affrontato attraverso lo studio individuale e l’autoapprendimento. In caso di difficoltà, i membri con maggiore esperienza hanno supportato quelli con meno competenze, organizzando momenti di confronto e formazione interna. Grazie a questa collaborazione, l’impatto è stato limitato, consentendo al team di rispettare le scadenze e di affrontare efficacemente le problematiche tecniche emerse.

*Possibili cambiamenti*:\
Durante il periodo affrontato, il team ha identificato alcuni aspetti da migliorare per ottimizzare il lavoro nelle fasi successive del progetto e garantire una maggiore efficienza a lungo termine.\
Cambiamenti operativi e gestionali individuati:
- *Pianificazione più dettagliata*: è emerso che una pianificazione più approfondita delle attività, con micro-obiettivi settimanali, potrebbe facilitare il monitoraggio del progresso e l’identificazione tempestiva di eventuali criticità.
- *Rafforzamento della comunicazione interna*: incentivare incontri regolari per confrontarsi sui progressi, evidenziare difficoltà e ridefinire priorità. Questo permetterà di mantenere una maggiore coesione e coordinazione tra i membri del team.
#pagebreak();
*Tabella esito effettivo*:\ 
#align(center)[
  #table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto),
    align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
    inset: 6pt,
    table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo\ persona*]),
    [Gabriele\ Checchinato],[0],[0],[7(#text(red)[+1])],[0],[0],[0],[€ #(7*costo_ora.ver) (#text(red)[+€ #(1*costo_ora.ver)])],
    [Leonardo\ Lucato],[4],[2(#text(red)[+2])],[0],[0],[0],[0],[€ #(4*costo_ora.res+2*costo_ora.amm) (#text(red)[+€ #(2*costo_ora.amm)])],
    [Giacomo\ Pesenato],[0],[0],[0],[0(#text(green)[-5])],[0],[6(#text(red)[+6])],[€ #(6*costo_ora.ana) (#text(red)[+€ #(25)])],
    [Francesco\ Pozzobon],[1(#text(red)[+1])],[5(#text(red)[+2])],[0],[0],[0],[0],[€ #(5*costo_ora.amm+1*costo_ora.res) (#text(red)[+€ #(2*costo_ora.amm+1*costo_ora.res)])],
    [Giovanni\ Salvò],[0],[0],[4(#text(green)[-1])],[0],[0],[0],[€ #(4*costo_ora.ver) (#text(green)[-€ #(1*costo_ora.ver)])],
    [Gioele\ Scandaletti],[0],[0],[0],[0],[5],[0],[€ #(5*costo_ora.progr)],
    [Pietro\ Valdagno],[0],[0],[0],[0],[0],[5],[€ #(5*costo_ora.ana)],
    [*Costo\ per ruolo*],[€ #(5*costo_ora.res) (#text(red)[+€ #(1*costo_ora.res)])],[€ #(7*costo_ora.amm) (#text(red)[+€ #(4*costo_ora.amm)])],[€ #(11*costo_ora.ver)],[€ #(0) (#text(green)[-€ #(5*costo_ora.proge)])],[€ #(5*costo_ora.progr)],[€ #(11*costo_ora.ana) (#text(red)[+€ #(6*costo_ora.ana)])],[#text(blue)[*€ #(150+140+165+0+75+275)*] (#text(red)[*+€ #(30+80+0-125+0+150)*])],
  )
]

*Distribuzione effettiva delle ore*:\

#{
  let plot = plot(data: (
    (12.82, "Responsabile - " + perc(5,39)),
    (17.95, "Amministratore - " + perc(7,39)),
    (28.21, "Verificatore - " + perc(11,39)),
    (0, "Progettista - " + perc(0,39)),
    (12.82, "Programmatore - " + perc(5,39)),
    (28.21, "Analista - " + perc(11,39)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Effettiva divisione ore periodo", display_style: "hor-legend-chart")
}
#pagebreak();
*Progresso delle attività*:\
#{
  let plot = plot(data: (
    (11.76, "Non fatto - " + perc(4,34)),
    (88.24, "Fatto - " + perc(30,34)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo 1", display_style: "hor-legend-chart",colors: (red, green))
}

== Periodo 2
=== Pianificazione
*Periodo*: 27/11/2024 - 10/12/2024\
*Ruoli*: Viene riportata di seguito la suddivisione del periodo
#align(center)[
  #table(
    columns: 2,
    align: (col, row) => (center, center).at(col),
    inset: 6pt,
    table.header([*Ruolo*], [*Membri*]),
      [Responsabile(Re)],[Gabriele Checchinato],
      [Amministratore(Am)],[Giovanni Salvò],
      [Analista(An)],[Francesco Pozzobon],
      [Programmatori(Prg)],[Leonardo Lucato, Giacomo Pesenato],
      [Verificatore(Ve)],[Pietro Valdagno],
      [Progettista(Prt)], [Gioele Scandaletti]
  )
]
*Obiettivi*:\
Nel secondo periodo del progetto, il team proseguirà con la redazione dei documenti iniziati nel periodo precedente e in parallello si dedicherà allo sviluppo di più simil-#glossario("PoC") per studiare le tecnologie proposte dal #glossario("capitolato") e allo stesso tempo per affiancare e porre ulteriori basi all'attività di analisi.

Gli obiettivi principali di questa fase sono quindi:

- Terminare le #glossario("task") non completate nel primo periodo.
- Proseguire con la stesura del #glossario("Piano di Progetto"), #glossario("Norme di Progetto") e #glossario("Analisi dei Requisiti").
- Aggiornare il glossario con i termini significativi individuati e raccolti durante il periodo.
- Studiare e comprendere le tecnologie proposte dal #glossario("capitolato") per confrontare le possibili soluzioni e successivamente approfondire meglio l'analisi.



*Possibili rischi*:\
I rischi che ci aspettiamo di incontrare durante questo periodo sono:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]
- #link(<RI-3>)[*RI-3 - Problemi di coordinamento*]
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]
- #link(<RE-2>)[*RE-2 - Utilizzo di librerie di terze parti*]

*Tabella preventivo*:\ // to do
#align(center)[
  #table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto),
    align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
    inset: 6pt,
    table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
    [Gabriele\ Checchinato],[4],[0],[0],[0],[0],[0],[€ #(4*costo_ora.res)],
    [Leonardo\ Lucato],[0],[0],[0],[0],[7],[0],[€ #(7*costo_ora.progr)],
    [Giacomo\ Pesenato],[0],[0],[0],[0],[7],[0],[€ #(7*costo_ora.progr)],
    [Francesco\ Pozzobon],[0],[0],[0],[0],[0],[5],[€ #(5*costo_ora.ana)],
    [Giovanni\ Salvò],[0],[6],[0],[0],[0],[0],[€ #(6*costo_ora.amm)],
    [Gioele\ Scandaletti],[0],[0],[0],[3],[0],[0],[€ #(3*costo_ora.proge)],
    [Pietro\ Valdagno],[0],[0],[8],[0],[0],[0],[€ #(8*costo_ora.ver)],
    [*Costo per ruolo*],[€ #(4*costo_ora.res)],[€ #(6*costo_ora.amm)],[€ #(8*costo_ora.ver)],[€ #(3*costo_ora.proge)],[€ #(14*costo_ora.progr)],[€ #(5*costo_ora.ana)],[#text(blue)[*€ #(120+120+120+75+210+125)*]],
  )
]
*Distribuzione preventivata delle ore*:\ 

#{
  let plot = plot(data: (
    (10, "Responsabile - " + perc(4,40)),
    (15, "Amministratore - " + perc(6,40)),
    (20, "Verificatore - " + perc(8,40)),
    (7.5, "Progettista - " + perc(3,40)),
    (35, "Programmatore - " + perc(14,40)),
    (12.5, "Analista - " + perc(5,40)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore periodo", display_style: "hor-legend-chart")
}

=== Esito
*Obiettivi non raggiunti*:\
Il periodo appena concluso ha avuto un rallentamento, in particolare nella stesura dei documenti. Questo aspetto era già stato preso in considerazione in quanto il ruolo di programmatore è stato assegnato a più membri, tuttavia è doveroso sottolineare che il rallentamento è stato maggiore rispetto al previsto. Di seguito sono elencate le #glossario("task") non completate

- *Gestione dell’assegnazione dei ruoli nelle #glossario("Norme di Progetto")*: l'attività non è stata verificata in quanto il materiale da controllare è stato consegnato troppo tardi, di conseguenza l'attività non si può considerare completata.
- *Aggiornamento del glossario*: l'attività non è stata completata, sono state raccolti i termini da inserire nel glossario ma non sono state fornite le definizioni.

*Problematiche non attese*:\
Nel periodo si sono verificate delle problematiche non attese:

- #link(<RI-8>)[*RI-8 - Assenza di un membro del team per malattia o altri impegni*]

*Mitigazione rischi verificati*:\
Durante il periodo oltre alla problematica non attesa sono stati riscontrati alcuni dei rischi preventivati. Di seguito vengono descritte le azioni di mitigazione intraprese:

- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]: il rischio è stato affrontato attraverso lo studio individuale e l’autoapprendimento. Essendo un rischio previsto l’impatto è stato limitato e non ha causato problemi significativi.
- #link(<RI-8>)[*RI-8 - Assenza di un membro del team per malattia o altri impegni*]: il rischio è stato gestito ridistribuendo le ore del membro assente tra gli altri membri del team, cercando di evitare sovraccarichi. Sebbene l'impatto sia stato significativo, causando rallentamenti nello studio delle tecnologie, il team è riuscito a contenere le conseguenze grazie a una gestione efficace della situazione.
- #link(<RE-2>)[*RE-2 - Utilizzo di librerie di terze parti*]: il rischio è stato affrontato attraverso lo studio individuale e il confrontro tra i programmatori. Anche in questo caso l'impatto è stato limitato e non ha causato problemi significativi.


*Possibili cambiamenti*:\
Il rallentamento che si è verificato è un aspetto critico su cui il team ha riflettuto per comprendere quali soluzioni adottare nei prossimi periodi. Il team quindi ha identificato alcuni aspetti da migliorare per ottimizzare il lavoro e garantire una maggiore efficienza a lungo termine.\
Cambiamenti operativi e gestionali individuati:
- *Comprensione dello stato di avanzamento*: il team deve aver consapevolezza dello stato di avanzamento del progetto e di conseguenza gestire le ore in modo tale da intervenire dove c'è più bisogno o dove ci sono rallentamenti. 
- *Distribuzione controllata delle attività*: il team si è reso conto che può essere molto utile dividere le attività dei periodi in due parti in modo tale da pianificare delle attività da completare nella prima parte del periodo e, solo in caso queste siano state completate, pianificarne altre per la seconda parte, così da avere una visione più controllata dell'andamento ed evitare che vengano create attività che rischiano di essere rimandate ai periodi successivi.
- *Gestione delle attività rimandate*: se un periodo inizia con delle attività rimandate dal periodo precedente è fondamentale dare loro priorità, in modo tale da evitare che vengano rimandate ulterioriormente.


*Tabella esito effettivo*:\ 
#align(center)[
  #table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto),
    align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
    inset: 6pt,
    table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo\ persona*]),
    [Gabriele\ Checchinato],[5(#text(red)[+1])],[0],[0],[0],[0],[0],[€ #(5*costo_ora.res) (#text(red)[+€ #(1*costo_ora.res)])],
    [Leonardo\ Lucato],[0],[0],[0],[0],[7],[0],[€ #(7*costo_ora.progr)],
    [Giacomo\ Pesenato],[0],[0],[0],[0],[10(#text(red)[+3])],[0],[€ #(10*costo_ora.progr)  (#text(red)[+€ #(3*costo_ora.progr)])],
    [Francesco\ Pozzobon],[0],[2(#text(red)[+2])],[0],[0],[0],[3.5(#text(green)[-1.5])],[€ #(2*costo_ora.amm+3.5*costo_ora.ana) (#text(red)[+€ #(2*costo_ora.amm - 1.5*costo_ora.ana)])],
    [Giovanni\ Salvò],[0.5(#text(red)[+0.5])],[5.5(#text(green)[-0.5])],[0],[0],[0],[0],[€ #(0.5*costo_ora.res+5.5*costo_ora.amm) (#text(red)[+€ #(0.5*costo_ora.res - 0.5*costo_ora.amm)])],
    [Gioele\ Scandaletti],[0],[0],[0],[0(#text(red)[-3])],[1(#text(red)[+1])],[0],[€ #(1*costo_ora.progr) (#text(green)[-€ #(3*costo_ora.proge - 1*costo_ora.progr)])],
    [Pietro\ Valdagno],[0],[0],[7(#text(green)[-1])],[0],[0],[0],[€ #(7*costo_ora.ver) (#text(green)[-€ #(1*costo_ora.ver)])],
    [*Costo\ per ruolo*],[€ #(5.5*costo_ora.res) (#text(red)[+€ #(1.5*costo_ora.res)])],[€ #(7.5*costo_ora.amm) (#text(red)[+€ #(1.5*costo_ora.amm)])],[€ #(7*costo_ora.ver) (#text(green)[-€ #(1*costo_ora.ver)])],[€ #(0*costo_ora.proge) (#text(green)[-€ #(3*costo_ora.proge)])],[€ #(18*costo_ora.progr) (#text(red)[+€ #(4*costo_ora.progr)])],[€ #(3.5*costo_ora.ana) (#text(green)[-€ #(1.5*costo_ora.ana)])],[#text(blue)[*€ #(165+150+105+0+270+87.5)*] (#text(red)[*+€ #(45+30-15+-75+60-37.5)*])],
  )
]

#pagebreak();

*Distribuzione effettiva delle ore*:\

#{
  let plot = plot(data: (
    (13.25, "Responsabile - " + perc(5.5,41.5)),
    (18.07, "Amministratore - " + perc(7.5,41.5)),
    (16.87, "Verificatore - " + perc(7,41.5)),
    (0, "Progettista - " + perc(0,41.5)),
    (43.37, "Programmatore - " + perc(18,41.5)),
    (8.43, "Analista - " + perc(3.5,41.5)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Effettiva divisione ore periodo", display_style: "hor-legend-chart")
}

*Progresso delle attività*:\
#{
  let plot = plot(data: (
    (13.79, "Non fatto - " + perc(4,29)),
    (86.21, "Fatto - " + perc(25,29)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo 2", display_style: "hor-legend-chart",colors: (red, green))
}

  








