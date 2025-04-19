#import "/templates/documento.typ": *
#import "/lib/plotst.typ": *

#show: conf.with(
  title: "Piano di Progetto",
  subtitle: "",
  author: "Il team",
  intern: false,
  show_outline: true,
  outline_depth: 3,
  changelog: (
    "1.7.0", "18-04-2025", "Stesura dodicesimo periodo e resoconto PB", p.checchinato, (p.salvo, p.lucato),
    "1.6.0", "12-04-2025", "Stesura undicesimo periodo", p.checchinato, (p.lucato,p.salvo),
    "1.5.0", "07-04-2025", "Stesura decimo periodo", p.salvo, (p.lucato, p.pesenato),
    "1.4.0", "01-04-2025", "Stesura nono periodo", p.salvo, (p.checchinato,p.lucato),
    "1.3.0", "19-03-2025", "Stesura ottavo periodo", p.valdagno, (p.salvo, p.pesenato),
    "1.2.0", "17-03-2025", "Stesura settimo periodo", p.scandaletti, (p.pesenato,p.checchinato),
    "1.1.1", "13-03-2025", "Fix indice", p.scandaletti, (p.pesenato,p.checchinato),
    "1.1.0", "09-03-2025", "Aggiunta consuntivo aggiornato", p.salvo, (p.scandaletti,p.lucato),
    "1.0.0", "13-02-2025", "Revisione per incontro RTB", p.valdagno, (p.pozzobon,p.lucato),
    "0.8.0", "12-02-2025", "Stesura sesto periodo", p.lucato, (p.pozzobon, p.pesenato),
    "0.7.0", "06-02-2025", "Stesura quinto periodo", p.lucato, (p.valdagno, p.pesenato),
    "0.6.1", "31-01-2025", "Aggiunta termini glossario", p.scandaletti, (p.pozzobon,p.lucato),
    "0.6.0", "27-01-2025", "Stesura quarto periodo", p.pesenato, (p.lucato,p.salvo),
    "0.5.1", "13-01-2025", "Fix tabella delle revisioni", p.valdagno, (p.pesenato, p.pozzobon),
    "0.5.0", "03-01-2025", "Stesura terzo periodo", p.pozzobon, (p.lucato, p.scandaletti),
    "0.4.1", "23-12-2024", "Fix versioni tabella delle revisioni", p.valdagno, (p.scandaletti,p.checchinato),
    "0.4.0", "16-12-2024", "Stesura andamento secondo periodo", p.valdagno, (p.salvo,p.pozzobon),
    "0.3.1", "09-12-2024", "Aggiunti nuovi rischi individuati", p.checchinato, p.valdagno,
    "0.3.0", "08-12-2024",  "Stesura andamento primo periodo", p.checchinato, p.valdagno,
    "0.2.0", "23-11-2024",  "Stesura Gestione dei Rischi", p.lucato, p.salvo,
    "0.1.0", "23-11-2024",  "Prima introduzione PdP", p.lucato, p.checchinato,
    
  )
)

#let costo_ora = (res: 30, amm: 20, ver: 15, proge: 25, progr: 15, ana: 25)

= Introduzione
Il #glossario("PdP") è il documento che fornisce una guida strutturata per l'esecuzione e il monitoraggio continuo del #glossario("progetto"), fino al suo completamento. Lo scopo è quello di assicurare che ci sia una chiara comprensione degli obiettivi, delle #glossario("attività") pianificate, dei ruoli e delle risorse investite durante gli sprint effettuati. Questo permette al team e allo stakeholder di avere un singolo documento dove potersi allineare con lo stato di avanzamento del #glossario("progetto").

== Glossario
All'#glossario("interno") del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html")[_glossario_]. Tutte le parole consultabili nel glossario saranno identificate da una "G" in colore blu. Premendoci sopra si aprirà il glossario 

== Il capitolato
L’obiettivo del #glossario("progetto") è facilitare la comprensione di grandi quantità di dati attraverso una rappresentazione visiva in #glossario("3D"). I dati ricevuti saranno visualizzati sotto forma di istogrammi tridimensionali, con supporto per rotazione, pan, zoom e selezione interattiva delle barre. Gli utenti principali della #glossario("piattaforma") saranno le aziende che necessitano di strumenti avanzati per l’analisi e la visualizzazione di dati, utilizzabili sia internamente sia per la comunicazione con clienti e stakeholder.

== Riferimenti utili
=== Link al capitolato C5 - 3Dataviz
- Riferimento al #glossario("capitolato") 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]] - _Ultimo accesso al documento 22/11/2024_
=== Slide del corso IS
- Riferimento alle slide IS: *_Regolamento del #glossario("progetto") didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]] -  _Ultimo accesso al documento 12/12/2024_
- Riferimento alle slide IS: *_Gestione di progetto_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf]] - _Ultimo accesso al documento 01/02/2025_

#pb()

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

=== Seconda stesura - 09-03-2025
A seguito della revisione RTB gli obiettivi che il gruppo si impegna di raggiungere e rispettare sono soggetti ad un limite di tempo, con le date riportate di seguito:

#table(
    columns: (2fr, 1fr),
    align: center,
    inset: 6pt,
    table.header([*Accettazione #glossario("milestone")*], [*Data*], ),
      [#glossario("RTB")- Requirements and Technology Baseline], [27/02/2025], 
    [#glossario("PB") - Product Baseline], [04/04/2025], 
)

=== Terza stesura - 16-03-2025
Prima della revisione #glossario("PB"), gli obiettivi che il gruppo si impegna di raggiungere e rispettare sono soggetti ad un limite di tempo, con le date riportate di seguito:

#table(
    columns: (2fr, 1fr),
    align: center,
    inset: 6pt,
    table.header([*Accettazione #glossario("milestone")*], [*Data*], ),
      [#glossario("RTB")- Requirements and Technology Baseline], [27/02/2025], 
    [#glossario("PB") - Product Baseline], [04/05/2025], 
)

== Costi del progetto

=== Introduzione

Questa sezione tiene traccia delle eventuali modifiche che vengono apportate alla suddivisione oraria dei ruoli durante tutta la durata del #glossario("progetto").

=== Dopo la candidatura del 04/11/2024

La tabella riporta quanto deciso nel _Preventivo_ redatto per la candidatura del #glossario("capitolato"). Il costo totale preventivato è di €12.530 (*limite invalicabile*) suddiviso in:

#table(
    columns: (1fr, auto, auto, auto, auto),
    align: (col, row) => (center, center, center, center, center).at(col),
    inset: 6pt,
    table.header([*Ruolo*], [*Costo/h*], [*Ore*],[*Costo ruolo*], [*Ore/Membro*]),
    [#glossario("Responsabile")], [30€], [63h], [1890€], [9h],
    [#glossario("Amministratore")], [20€], [56h], [1120€], [8h],
    [#glossario("Verificatore")], [15€], [154h], [2310€], [22h],
    [#glossario("Progettista")], [25€], [105h], [2625€], [15h],
    [#glossario("Programmatore")], [15€], [189h], [2835€], [27h],
    [#glossario("Analista")], [25€], [70h], [1750€], [10h]
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

=== Dopo la revisione RTB del 27/02/2025
La tabella riporta quanto deciso a seguito di una redistribuzione delle ore necessaria per adattare le ore disponibili ai bisogni del team. Il costo totale preventivato rimane di €12.530 (*limite invalicabile*) suddiviso in:

#table(
    columns: (1fr, auto, auto, auto),
    align: (col, row) => (center, center, center, center).at(col),
    inset: 6pt,
    table.header([*Ruolo*], [*Costo/h*], [*Ore*],[*Costo ruolo*], ),
    [#glossario("Responsabile")], [30€], [67h], [2010€],
    [#glossario("Amministratore")], [20€], [76h], [1520€],
    [#glossario("Verificatore")], [15€], [111h], [1665€],
    [#glossario("Progettista")], [25€], [100h], [2500€],
    [#glossario("Programmatore")], [15€], [189h], [2835€],
    [#glossario("Analista")], [25€], [80h], [2000€],
)

\

=== Scelta della metodologia da utilizzare <scelta_metodologia>
Per il #glossario("progetto") è stata scelta la metodologia Agile-Scrum come #glossario("framework") operativo. Questa decisione si basa sulla necessità di affrontare la complessità del #glossario("progetto") in modo dinamico e adattivo, favorendo un approccio collaborativo e iterativo che consente di consegnare valore allo stakeholder in modo incrementale e frequente.\
Le motivazioni che hanno portato all'adozione di Agile-Scrum sono:
+ *Flessibilità e Adattamento*: La metodologia Scrum consente di affrontare cambiamenti nei requisiti anche in fase avanzata del #glossario("progetto"), rispondendo prontamente a nuove esigenze o priorità. Ogni #glossario("periodo") rappresenta un ciclo breve e pianificabile, garantendo un #glossario("processo") continuo di #glossario("revisione") e miglioramento.
+ *Focus sul Valore*: Il lavoro viene suddiviso in User Stories prioritarie, permettendo di concentrarsi sulle #glossario("funzionalità") che portano il massimo valore agli utenti finali. L’approccio iterativo facilita la consegna frequente di incrementi tangibili e utilizzabili del prodotto.
+ *Collaborazione e Trasparenza*: La comunicazione regolare tra i membri del team durante colloqui veloci (vie brevi), Sprint Planning (pianificazione del #glossario("periodo")), e Sprint Review (#glossario("retrospettiva") del #glossario("periodo")) migliora la coesione del team e l’allineamento degli obiettivi. Lo stakeholder è coinvolto attivamente durante le revisioni dei periodi, garantendo trasparenza.
+ *Gestione dei Rischi*: I rischi vengono identificati e gestiti continuamente, riducendo la probabilità di fallimenti significativi. Il formato iterativo consente di testare e validare frequentemente le ipotesi. Questo, se applicato correttamente, garantisce di aggiungere/modificare la _@gestione_dei_rischi _, relativa alla gestione dei rischi, non solo in base a "periodi brevi" ma soprattutto anche a "lungo raggio".
+ *Incremento della Produttività*: Grazie al lavoro suddiviso in periodi e all’enfasi sulla rimozione degli impedimenti (eventi #glossario("esterni"), nuove #glossario("funzionalità") da implementare, ecc...), il team è in grado di ottimizzare le proprie prestazioni.

== Introduzione struttura per descrizione dei periodi
In questa sezione viene descritta la modalità utilizzata dal gruppo per la descrizione di ogni singolo #glossario("periodo").
Avendo adottato la metodologia Agile-Scrum (_@scelta_metodologia _), è importante documentare le informazioni chiave, così da poter monitorare i progressi, facilitare la riflessione e il miglioramento continuo. Per garantire queste caratteristiche, una singola descrizione è composta da due componenti: la pianificazione e l'esito effettivo.

== Struttura della pianificazione

+ *Titolo*: identifica il #glossario("periodo") (es. Periodo1, #glossario("ID")-#glossario("Periodo"), ecc...)
+ *#glossario("Periodo")*: identifica la data d'inizio e di fine 
+ *Ruoli*: identifica una tabella con i ruoli assegnati
+ *Descrizione obiettivi*: individua la sezione contenente una breve descrizione del #glossario("periodo") e degli obiettivi da raggiungere.
+ *Possibili rischi*: identifica la sezione in cui si pensano quali rischi possono occorrere durante il #glossario("periodo"). Questo è molto importante per tutto il team in quanto garantisce una visione generale delle problematiche che potrebbero essere incontrate e risolte tramite la gestione dei rischi.
+ *Tabella preventivo*: identifica la tabella con l'impegno in ore che ogni componente del gruppo decide di dedicare al determinato ruolo
+ *Distribuzione preventivata delle ore*: il grafico a torta rappresenta la suddivisione percentuale delle ore preventivate per ciascun ruolo, calcolata rispetto al totale delle ore pianificate per il #glossario("periodo") considerato.
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
Il costo in #text(blue)[blu] è il costo preventivato del #glossario("periodo").\
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
+ *Mitigazione rischi verificati*: identifica la sezione in cui vengono elencate le azioni intraprese per mitigare i rischi (sia quelli preventivati che non)che si sono verificati durante il #glossario("periodo"). Questo permette di avere un feedback immediato sullo stato del #glossario("progetto") e di capire se le azioni intraprese sono state efficaci o meno.
+ *Possibili cambiamenti*: identifica la sezione in cui vengono discussi dei miglioramenti presi in considerazione in base a quanto rilevato durante il #glossario("periodo") affrontato. In questa parte il team ritiene molto importante identificare _tutti_ i cambiamenti da attuare, dunque non solo quelli per il #glossario("periodo") successivo ma anche (e soprattutto) in visione "a lungo raggio".
+ *Tabella esito effettivo*: identifica la tabella che riporta il quantitativo di ore utilizzate nell'effettivo. Questo permettere di avere un feedback immediato sullo stato del #glossario("progetto"), con relativo incremento/decremento o invarianza del costo totale del #glossario("periodo").
+ *Distribuzione effettiva delle ore*: il grafico a torta mostra la reale distribuzione delle ore impiegate per i vari ruoli, calcolata in base ai dati effettivi raccolti al termine del #glossario("periodo"). Questo consente di confrontare quanto previsto con quanto realmente accaduto.
+ *Progresso delle #glossario("attività")* : in questa sezione verrà creato un grafico a torta che identifica la percentuale di #glossario("attività") svolte in base a tutte quelle presenti nel #glossario("backlog") della #glossario("milestone") del #glossario("periodo").\

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

#pb()

= Gestione dei rischi <gestione_dei_rischi> 
== Introduzione
La gestione dei rischi è un'#glossario("attività") fondamentale per il successo del #glossario("progetto"). Essa permette di identificare, analizzare e gestire i potenziali problemi che potrebbero influenzare negativamente il raggiungimento degli obiettivi. In questa sezione vengono elencati i rischi individuati e le strategie adottate per mitigarli.

== Rischi individuati
=== Introduzione
In questa sezione vengono elencati i rischi individuati dal team durante la fase di analisi del #glossario("progetto"). Per ciascun rischio vengono specificati la probabilità di occorrenza, l'impatto sul #glossario("progetto") e le strategie adottate per mitigarlo. Questa sezione verrà aggiornata nel caso si verificassero situazioni non identificate in precedenza in modo da garantire una gestione efficace dei rischi, con l'obiettivo di minimizzare le possibili conseguenze negative.

=== Problemi interni al team
==== Rischio 1 - Problemi di comunicazione <RI-1>
- *Identificativo*: RI-1
- *Descrizione*: difficoltà di comunicazione tra i membri del team, con conseguente ritardo nella consegna delle #glossario("attività").
- *Probabilità*: alta
- *Impatto*: medio
- *Strategie di mitigazione*: il #glossario("responsabile") dovrà occuparsi di organizzare meeting periodici e attuare un'assegnazione chiara dei compiti.

==== Rischio 2 - Problemi personali dei membri del team <RI-2>
- *Identificativo*: RI-2
- *Descrizione*: difficoltà di gestione dei propri impegni personali (università, lavoro, impegni personali, ecc...)
- *Probabilità*: alta
- *Impatto*: alto
- *Strategie di mitigazione*: il #glossario("responsabile") dovrà essere in grado di gestire le #glossario("attività") in modo flessibile, cercando di assegnare compiti in base alle disponibilità di ciascun membro del team. E' importante dunque che ci sia una partecipazione attiva nel comunicare eventuali problemi o difficoltà da parte di tutti i componenti del gruppo.

==== Rischio 3 - Problemi di coordinamento <RI-3>
- *Identificativo*: RI-3
- *Descrizione*: difficoltà nel coordinamento delle #glossario("attività") tra i membri del team, con conseguente sovrapposizione di compiti e ritardi nella consegna.
- *Probabilità*: media
- *Impatto*: alto
- *Strategie di mitigazione*: il #glossario("responsabile") dovrà dare definizioni più chiare dei ruoli e delle responsabilità con una pianificazione dettagliata delle #glossario("attività").

==== Rischio 4 - Mancanza di conoscenze tecniche <RI-4>
- *Identificativo*: RI-4
- *Descrizione*: difficoltà nell'implementazione delle #glossario("funzionalità") richieste, con conseguente ritardo nella consegne.
- *Probabilità*: media
- *Impatto*: alto
- *Strategie di mitigazione*: lo studio individuale è parte fondamentale del #glossario("processo") di "allenamento" che caratterizza l'apprendimento di ogni componente del team. Se previsto, una mitigazione possibile è l'organizzazione "straordinaria" di un meeting con l'azienda per una breve consulenza. Nel caso si verificassero casi molto particolari, è possibile affiancare un componente del team con maggiore esperienza.

==== Rischio 5 - Mancanza di allineamento sugli obiettivi <RI-5>
- *Identificativo*: RI-5
- *Descrizione*: mancanza di chiarezza sugli obiettivi del #glossario("progetto"), con conseguente disallineamento tra i membri del team. Si identifica tramite la consegna di #glossario("attività") non conformi a quanto pianificato o richiesto.
- *Probabilità*: media
- *Impatto*: alto
- *Strategie di mitigazione*: il #glossario("responsabile") si impegna a dare una definizione chiara degli obiettivi, comunicare costante con i membri del team per comprendere se ci sono dubbi o incomprensioni che non sono emerse durante la pianificazione. 

==== Rischio 6 - Sovraccarico di lavoro <RI-6>
- *Identificativo*: RI-6
- *Descrizione*: eccessivo carico di lavoro assegnato ai membri del team, che potrebbe causare burnout o ridurre l'efficienza.
- *Probabilità*: media
- *Impatto*: alto
- *Strategie di mitigazione*: pianificare una distribuzione equa dei compiti e monitorare regolarmente lo stato di avanzamento delle #glossario("attività"), adattando il carico in base alla disponibilità di ciascun membro.

==== Rischio 7 - Problemi di motivazione <RI-7>
- *Identificativo*: RI-7
- *Descrizione*: calo di motivazione dei membri del team, che potrebbe compromettere la qualità del lavoro svolto.
- *Probabilità*: bassa
- *Impatto*: medio
- *Strategie di mitigazione*: mantenere un clima di lavoro positivo, riconoscere i contributi individuali e promuovere #glossario("attività") di team building.

#pb()

==== Rischio 8 - Assenza di un membro del team per malattia o altri impegni <RI-8>
- *Identificativo*: RI-8
- *Descrizione*: un membro del team potrebbe assentarsi a causa di malattia o di un impegno, compromettendo le scadenze e aumentando il carico di lavoro per il resto del team.
- *Probabilità*: media
- *Impatto*: alto
- *Strategie di mitigazione*: prevedere una documentazione accurata e aggiornata delle #glossario("attività") svolte da ciascun membro del team, in modo da facilitare la continuità del lavoro e consentire ad altri di subentrare agevolmente se necessario. Assegnare i ruoli con una certa flessibilità per permettere una rapida riassegnazione dei compiti in caso di imprevisti. 

=== Problemi esterni al team
==== Rischio 1 - Problemi di comunicazione con l'azienda <RE-1>
- *Identificativo*: RE-1
- *Descrizione*: difficoltà di comunicazione con l'azienda che potrebbe ritardare una risposta o un meeting richiesto.
- *Probabilità*: media/bassa (dipende dalla comunicazione con l'azienda)
- *Impatto*: alto
- *Strategie di mitigazione*: il #glossario("responsabile") dovrà occuparsi di organizzare meeting periodici, ma soprattutto dovrà ragionare in modo "proattivo" e non "reattivo" per evitare che la comunicazione con l'azienda possa essere un problema. 

==== Rischio 2 - Utilizzo di librerie di terze parti <RE-2>
- *Identificativo*: RE-2
- *Descrizione*: molto spesso capita che quando si utilizza una #glossario("libreria") di terze parti, si possano incontrare problemi di compatibilità o di implementazione, non attribuibili direttamente al team.
- *Probabilità*: media
- *Impatto*: medio
- *Strategie di mitigazione*: una soluzione possibile è quella di chiedere un confronto con l'azienda che, data la maggiore esperienza, potrebbe fornire un'alternativa valida o un supporto per la risoluzione del problema.

==== Rischio 3 - Ritardi nelle consegne da parte di terzi <RE-3>
- *Identificativo*: RE-3
- *Descrizione*: ritardi nella fornitura di materiale, dati o feedback necessari per il proseguimento delle #glossario("attività") del team.
- *Probabilità*: bassa
- *Impatto*: medio
- *Strategie di mitigazione*: identificare con anticipo le dipendenze da terze parti e predisporre soluzioni alternative in caso di ritardi.

#pb()

= Periodi
== Periodo 1
=== Pianificazione
*#glossario("Periodo")*: 05/11/2024 - 26/11/2024\
*Ruoli*: Viene riportata di seguito la suddivisione del #glossario("periodo")
#figure()[
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
]
*Obiettivi*:\
Nel primo #glossario("periodo") del #glossario("progetto"), il team si concentrerà principalmente sull'organizzazione e sulla redazione dei documenti fondamentali. L’obiettivo iniziale è stabilire una base solida per il proseguimento del lavoro, attraverso la prima stesura del Piano di Progetto, delle Norme di Progetto, dell’#glossario("Analisi dei Requisiti") e del Glossario. Durante questo #glossario("periodo"), ci concentreremo anche sulla definizione di modalità di lavoro chiare per garantire una gestione produttiva ed efficiente del team.

Gli obiettivi principali di questa fase sono quindi:

- Iniziare la stesura del Piano di Progetto, Norme di Progetto, #glossario("Analisi dei Requisiti") e Glossario.
- Definire il way of working del team per garantire una gestione chiara e produttiva.
- Iniziare la creazione del Glossario e inserire i primi termini e concetti fondamentali.
- Automatizzare la compilazione dei documenti, così che il PDF risultante sia disponibile sia sulla #glossario("repository") #glossario("GitHub") che sul sito del team creato tramite #glossario("GitHub") Pages.
- Pianificare e realizzare i primi passi per la gestione efficace delle #glossario("attività") del team.



*Possibili rischi*:\
I rischi che ci aspettiamo di incontrare durante questo #glossario("periodo") sono:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]
- #link(<RI-3>)[*RI-3 - Problemi di coordinamento*]
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]


*Tabella preventivo*:\
#figure()[
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

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore primo periodo", display_style: "hor-legend-chart")
}

=== Esito
*Obiettivi non raggiunti*:\
Nel #glossario("periodo") appena concluso, alcuni obiettivi non sono stati raggiunti. È fondamentale comprendere le motivazioni per migliorare la pianificazione e la gestione futura del #glossario("progetto"). Di seguito vengono elencate le #glossario("task") non completate:

- *Stesura dell'andamento del primo #glossario("periodo") nel Piano di Progetto*: questa #glossario("attività") non è stata completata in quanto si è ritenuto che fosse compito del #glossario("responsabile") del #glossario("periodo") successivo. La decisione è stata presa per ottimizzare i tempi e concentrare gli sforzi su altre #glossario("attività").
- *Gestione dell’assegnazione dei ruoli nelle Norme di Progetto*: non è stata realizzata la sezione dedicata all’assegnazione dei ruoli per mancanza di tempo.
- *Sezione sui requisiti nell’#glossario("Analisi dei Requisiti")*: la parte relativa all'identificazione e descrizione dei requisiti non è stata sviluppata per motivi di tempo. Si è preferito concentrarsi su altre #glossario("attività") e lasciarla in sospeso.
- *Inizio del tracciamento dei requisiti nell’#glossario("Analisi dei Requisiti")*: la creazione della sezione per il tracciamento dei requisiti non è stata portata avanti anch'essa per mancanza di tempo e quindi si è deciso di rimandarla.

*Problematiche non attese*:\
Durante il #glossario("periodo") non sono state riscontrate problematiche non attese.

*Mitigazione rischi verificati*:\
Durante il #glossario("periodo") sono stati riscontrati alcuni dei rischi preventivati. Di seguito vengono descritte le azioni intraprese per mitigarli:

- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]: i problemi personali sono stati gestiti con una pianificazione flessibile, assegnando i compiti in base alla disponibilità dei membri per evitare sovraccarichi. La comunicazione aperta ha permesso di affrontare tempestivamente eventuali difficoltà, mantenendo un equilibrio nelle #glossario("attività") del team. L’impatto è stato contenuto, con ritardi minimi che non hanno compromesso la qualità complessiva del lavoro.
- #link(<RI-3>)[*RI-3 - Problemi di coordinamento*]: il rischio di disallineamenti e sovrapposizioni di compiti è stato gestito attraverso una pianificazione chiara delle #glossario("attività") e una definizione precisa di ruoli e responsabilità. Ogni membro ha lavorato con consapevolezza delle proprie scadenze e obiettivi, mentre la supervisione costante da parte del #glossario("responsabile") ha garantito un buon livello di coordinamento. L’impatto è stato contenuto, con rallentamenti occasionali che non hanno generato significativi disagi nel flusso di lavoro.
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]: il rischio è stato affrontato attraverso lo studio individuale e l’autoapprendimento. In caso di difficoltà, i membri con maggiore esperienza hanno supportato quelli con meno competenze, organizzando momenti di confronto e formazione interna. Grazie a questa collaborazione, l’impatto è stato limitato, consentendo al team di rispettare le scadenze e di affrontare efficacemente le problematiche tecniche emerse.

*Possibili cambiamenti*:\
Durante il #glossario("periodo") affrontato, il team ha identificato alcuni aspetti da migliorare per ottimizzare il lavoro nelle fasi successive del #glossario("progetto") e garantire una maggiore efficienza a lungo termine.\
Cambiamenti operativi e gestionali individuati:
- *Pianificazione più dettagliata*: è emerso che una pianificazione più approfondita delle #glossario("attività"), con micro-obiettivi settimanali, potrebbe facilitare il monitoraggio del progresso e l’identificazione tempestiva di eventuali criticità.
- *Rafforzamento della comunicazione interna*: incentivare incontri regolari per confrontarsi sui progressi, evidenziare difficoltà e ridefinire priorità. Questo permetterà di mantenere una maggiore coesione e coordinazione tra i membri del team.
*Tabella esito effettivo*:\ 
#figure()[
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

  pie_chart(plot, (40%, 30%), caption: "Effettiva divisione ore primo periodo", display_style: "hor-legend-chart")
}
#pb();
*Progresso delle #glossario("attività")*:\
#{
  let plot = plot(data: (
    (11.76, "Non fatto - " + perc(4,34)),
    (88.24, "Fatto - " + perc(30,34)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo 1", display_style: "hor-legend-chart",colors: (red, green))
}

== Periodo 2
=== Pianificazione
*#glossario("Periodo")*: 27/11/2024 - 10/12/2024\
*Ruoli*: Viene riportata di seguito la suddivisione del #glossario("periodo")
#figure()[
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
]
*Obiettivi*:\
Nel secondo #glossario("periodo") del #glossario("progetto") il team proseguirà con la redazione dei documenti iniziati nel #glossario("periodo") precedente e, in parallelo, si dedicherà allo sviluppo di più simil-#glossario("PoC") per studiare le tecnologie proposte dal #glossario("capitolato") e, allo stesso tempo, per affiancare e porre ulteriori basi all'#glossario("attività") di analisi.

Gli obiettivi principali di questa fase sono quindi:

- Terminare le #glossario("task") non completate nel primo #glossario("periodo").
- Proseguire con la stesura del #glossario("Piano di Progetto"), #glossario("Norme di Progetto") e #glossario("Analisi dei Requisiti").
- Aggiornare il glossario con i termini significativi individuati e raccolti durante il #glossario("periodo").
- Studiare e comprendere le tecnologie proposte dal #glossario("capitolato") per confrontare le possibili soluzioni e successivamente approfondire meglio l'analisi.



*Possibili rischi*:\
I rischi che ci aspettiamo di incontrare durante questo #glossario("periodo") sono:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]
- #link(<RI-3>)[*RI-3 - Problemi di coordinamento*]
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]
- #link(<RE-2>)[*RE-2 - Utilizzo di librerie di terze parti*]

*Tabella preventivo*:\ 
#figure()[
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

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore secondo periodo", display_style: "hor-legend-chart")
}

=== Esito
*Obiettivi non raggiunti*:\
Il #glossario("periodo") appena concluso ha avuto un rallentamento, in particolare nella stesura dei documenti. Questo aspetto era già stato preso in considerazione in quanto il ruolo di #glossario("programmatore") è stato assegnato a più membri, tuttavia è doveroso sottolineare che il rallentamento è stato maggiore rispetto al previsto. Di seguito sono elencate le #glossario("task") non completate

- *Gestione dell’assegnazione dei ruoli nelle #glossario("Norme di Progetto")*: l'#glossario("attività") non è stata verificata in quanto il materiale da controllare è stato consegnato troppo tardi, di conseguenza l'#glossario("attività") non si può considerare completata.
- *Aggiornamento del glossario*: l'#glossario("attività") non è stata completata, sono state raccolti i termini da inserire nel glossario ma non sono state fornite le definizioni.

*Problematiche non attese*:\
Nel #glossario("periodo") si sono verificate delle problematiche non attese:

- #link(<RI-8>)[*RI-8 - Assenza di un membro del team per malattia o altri impegni*]

*Mitigazione rischi verificati*:\
Durante il #glossario("periodo") oltre alla problematica non attesa sono stati riscontrati alcuni dei rischi preventivati. Di seguito vengono descritte le azioni di mitigazione intraprese:

- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]: il rischio è stato affrontato attraverso lo studio individuale e l’autoapprendimento. Essendo un rischio previsto l’impatto è stato limitato e non ha causato problemi significativi.
- #link(<RI-8>)[*RI-8 - Assenza di un membro del team per malattia o altri impegni*]: il rischio è stato gestito ridistribuendo le ore del membro assente tra gli altri membri del team, cercando di evitare sovraccarichi. Sebbene l'impatto sia stato significativo, causando rallentamenti nello studio delle tecnologie, il team è riuscito a contenere le conseguenze grazie a una gestione efficace della situazione.
- #link(<RE-2>)[*RE-2 - Utilizzo di librerie di terze parti*]: il rischio è stato affrontato attraverso lo studio individuale e il confronto tra i programmatori. Anche in questo caso l'impatto è stato limitato e non ha causato problemi significativi.


*Possibili cambiamenti*:\
Il rallentamento che si è verificato è un aspetto critico su cui il team ha riflettuto per comprendere quali soluzioni adottare nei prossimi periodi. Il team quindi ha identificato alcuni aspetti da migliorare per ottimizzare il lavoro e garantire una maggiore efficienza a lungo termine.\
Cambiamenti operativi e gestionali individuati:
- *Comprensione dello stato di avanzamento*: il team deve aver consapevolezza dello stato di avanzamento del #glossario("progetto") e di conseguenza gestire le ore in modo tale da intervenire dove c'è più bisogno o dove ci sono rallentamenti. 
- *Distribuzione controllata delle #glossario("attività")*: il team si è reso conto che può essere molto utile dividere le #glossario("attività") dei periodi in due parti in modo tale da pianificare delle #glossario("attività") da completare nella prima parte del #glossario("periodo") e, solo in caso queste siano state completate, pianificarne altre per la seconda parte, in modo da avere una visione controllata dell'andamento ed evitare che vengano create #glossario("attività") che rischiano di essere rimandate ai periodi successivi.
- *Gestione delle #glossario("attività") rimandate*: se un #glossario("periodo") inizia con delle #glossario("attività") rimandate dal #glossario("periodo") precedente è fondamentale dare loro priorità, in modo tale da evitare che vengano rimandate ulteriormente.


*Tabella esito effettivo*:\ 
#figure()[
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

  pie_chart(plot, (40%, 30%), caption: "Effettiva divisione ore secondo periodo", display_style: "hor-legend-chart")
}

*Progresso delle #glossario("attività")*:\
#{
  let plot = plot(data: (
    (13.79, "Non fatto - " + perc(4,29)),
    (86.21, "Fatto - " + perc(25,29)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo 2", display_style: "hor-legend-chart",colors: (red, green))
}

== Periodo 3
=== Pianificazione
*#glossario("Periodo")*: 11/12/2024 - 25/12/2024\
*Ruoli*: Viene riportata di seguito la suddivisione del #glossario("periodo")
#figure()[
  #align(center)[
    #table(
      columns: 2,
      align: (col, row) => (center, center).at(col),
      inset: 6pt,
      table.header([*Ruolo*], [*Membri*]),
        [Responsabile(Re)],[#p.valdagno],
        [Amministratore(Am)],[#p.checchinato, #p.pozzobon],
        [Analista(An)],[#p.lucato, #p.pesenato],
        [Programmatore(Prg)],[#p.pesenato],
        [Verificatore(Ve)],[#p.salvo, #p.scandaletti],
        [Progettista(Prt)], [_non presente_]
    )
  ]
]
*Obiettivi*:\
Durante il terzo #glossario("periodo") l'obiettivo del team è concentrarsi sulla documentazione, in modo da potenziare il lavoro in questa sezione in quanto, durante il #glossario("periodo") scorso, la progressione è stata, per programmazione del team, più lenta. Il gruppo si concentrerà quindi su #glossario("NdP") e #glossario("AdR"), con conseguente ricevimento con il committente, #p.cardin.

Gli obiettivi principali di questa fase sono quindi:

- Proseguire con la stesura delle #glossario("Norme di Progetto"), con relative sezioni nei #glossario("Processi Organizzativi") e #glossario("Processi di Supporto").
- Concentrarsi sull'#glossario("Analisi dei Requisiti"), assegnando tale compito ai membri del team che si sono concentrati sul test delle varie tecnologie in modo da definire l'apposita sezione e proseguire con gli #glossario("UC").
- Aggiornare il glossario con i termini significativi individuati e raccolti durante il #glossario("periodo"), con particolare attenzione alla #glossario("issue") non terminata nel #glossario("periodo") precedente

*Possibili rischi*:\
I rischi che ci aspettiamo di incontrare durante questo #glossario("periodo") sono:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]
- #link(<RI-3>)[*RI-3 - Problemi di coordinamento*]
#pb()
*Tabella preventivo*:\
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[0,5],[5],[0],[0],[0],[0],[€ #(0.5*costo_ora.res+5*costo_ora.amm)],
      [Leonardo\ Lucato],[0],[0],[0],[0],[0],[6],[€ #(6*costo_ora.ana)],
      [Giacomo\ Pesenato],[0],[0],[0],[0],[2],[4],[€ #(2*costo_ora.progr+4*costo_ora.ana)],
      [Francesco\ Pozzobon],[0,5],[5],[0],[0],[0],[0],[€ #(0.5*costo_ora.res+5*costo_ora.amm)],
      [Giovanni\ Salvò],[0],[0],[3.5],[0],[0],[0],[€ #(3.5*costo_ora.ver)],
      [Gioele\ Scandaletti],[0],[0],[3.5],[0],[0],[0],[€ #(3.5*costo_ora.ver)],
      [Pietro\ Valdagno],[5],[0],[0],[0],[0],[0],[€ #(5*costo_ora.res)],
      [*Costo per ruolo*],[€ #(6*costo_ora.res)],[€ #(10*costo_ora.amm)],[€ #(7*costo_ora.ver)],[€ - ],[€ #(2*costo_ora.progr)],[€ #(10*costo_ora.ana)],[#text(blue)[*€ #(180+200+105+30+250)*]],
    )
  ]
]
*Distribuzione preventivata delle ore*:\ 

#{
  let plot = plot(data: (
    (17, "Responsabile - " + perc(17,100)),
    (29, "Amministratore - " + perc(29,100)),
    (20, "Verificatore - " + perc(20,100)),
    (0, "Progettista - " + perc(0,100)),
    (6, "Programmatore - " + perc(6,100)),
    (29, "Analista - " + perc(29,100)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore terzo periodo", display_style: "hor-legend-chart")
}

=== Esito
*Obiettivi non raggiunti*:\
Di seguito sono elencate le #glossario("task") non completate

- *Aggiornamento del glossario*: l'#glossario("attività"), creata ancora durante il primo #glossario("periodo"), non è nuovamente stata presa in carico.

- *Fix aggiunta termini e definizioni al glossario*: #glossario("attività") del #glossario("periodo") in corso associata al glossario. Prevede l'aggiunta di eventuali nuovi termini contrassegnati al glossario del team.

*Problematiche non attese*:\
Durante il terzo #glossario("periodo") appena concluso si è verificato il seguente rischio che non era stato preventivato:

- #link(<RI-5>)[*RI-5 - Mancanza di allineamento sugli obiettivi*], verificatosi per la mancanza di presa in carico e completamento di una #glossario("issue"), già etichettata come critica visto il non completamento nel primo #glossario("periodo").

*Mitigazione rischi verificati*:\
Durante il #glossario("periodo") oltre alla problematica non attesa, non si sono verificati rischi che erano stati preventivati.

*Possibili cambiamenti*:\
La non presa in carico e termine dell'#glossario("issue") riferita al glossario e facente in origina parte del primo #glossario("Periodo") indica come il team debba puntare maggiormente sulla corretta gestione delle priorità nello svolgimento dei tasks, nel particolare: 

- *Gestione delle priorità a livello di #glossario("issue")*: le #glossario("issue") che potenzialmente presentare rischi o che sono state rallentate da problematiche, previste o non previste, verificatesi durante il corso del #glossario("periodo") devono essere categorizzate come *HIGH PRIORITY*, mediante l'apposito campo del #glossario("sistema di ticketing"). E' a cura del #glossario("responsabile") del #glossario("progetto") verificare personalmente l'avanzamento di tali #glossario("issue"), interfacciandosi direttamente con l'assegnatario, o gli assegnatari, preposti al completamento del #glossario("task"). Per questo tipo di #glossario("attività") si richiede ai componenti del gruppo una maggiore consapevolezza nell'organizzare il proprio lavoro per priorità.

#pb()
*Tabella esito effettivo*:\ 
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo\ persona*]),
      [Gabriele\ Checchinato],[0.75(#text(red)[+0.25])],[5],[0],[0],[0],[0],[€ #(0.75*costo_ora.res+5*costo_ora.amm) (#text(red)[+€ #(0.25*costo_ora.res)])],
      [Leonardo\ Lucato],[0],[0],[0],[0],[0],[8(#text(red)[+2])],[€ #(8*costo_ora.ana) (#text(red)[+€ #(2*costo_ora.ana)])],
      [Giacomo\ Pesenato],[0],[0],[0],[0],[2],[4],[€ #(2*costo_ora.progr+4*costo_ora.ana)],
      [Francesco\ Pozzobon],[0,5],[5],[0],[0],[0],[0],[€ #(0.5*costo_ora.res+5*costo_ora.amm)],
      [Giovanni\ Salvò],[0],[0],[3(#text(green)[-0.5])],[0],[0],[0],[€ #(3*costo_ora.ver) (#text(green)[-€ #(0.55*costo_ora.ver)])],
      [Gioele\ Scandaletti],[0],[0],[4.5 (#text(red)[+1])],[0],[0],[0],[€ #(4.5*costo_ora.ver) (#text(red)[+€ #(1*costo_ora.ver)])],
      [Pietro\ Valdagno],[5],[0],[0],[0],[0],[0],[€ #(5*costo_ora.res)],
      [*Costo\ per ruolo*],[€ #(6.25*costo_ora.res) (#text(red)[+€ #(0.25*costo_ora.res)])],[€ #(10*costo_ora.amm)],[€ #(7.5*costo_ora.ver) (#text(red)[+€ #(0.5*costo_ora.ver)])],[€ -],[€ #(2*costo_ora.progr) ],[€ #(12*costo_ora.ana) (#text(red)[+€ #(2*costo_ora.ana)])],[#text(blue)[*€ #(187.5+200+112.5+0+30+300)*] (#text(red)[*+€ #(15+50)*])],
    )
  ]
]

*Distribuzione effettiva delle ore*:\

#{
  let plot = plot(data: (
    (16.56, "Responsabile - " + perc(6.25,37.75)),
    (26.49, "Amministratore - " + perc(10,37.75)),
    (19.87, "Verificatore - " + perc(7.5,37.75)),
    (0, "Progettista - " + perc(0,37.75)),
    (5.3, "Programmatore - " + perc(2,37.75)),
    (31.79, "Analista - " + perc(12,37.75)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Effettiva divisione ore terzo periodo", display_style: "hor-legend-chart")
}
#pb()
*Progresso delle #glossario("attività")*:\
#{
  let plot = plot(data: (
    (7.41, "Non fatto - " + perc(2,27)),
    (92.59, "Fatto - " + perc(25,27)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo 3", display_style: "hor-legend-chart",colors: (red, green))
}

== Periodo 4
=== Pianificazione
*#glossario("Periodo")*: 26/12/2024 - 13/1/2025\
*Ruoli*: Viene riportata di seguito la suddivisione del #glossario("periodo")
#figure()[
  #align(center)[
    #table(
      columns: 2,
      align: (col, row) => (center, center).at(col),
      inset: 6pt,
      table.header([*Ruolo*], [*Membri*]),
        [Responsabile(Re)],[#p.pozzobon],
        [Amministratore(Am)],[#p.valdagno, #p.scandaletti],
        [Analista(An)],[#p.checchinato, #p.salvo],
        [Programmatore(Prg)],[_non presente_],
        [Verificatore(Ve)],[#p.pesenato, #p.lucato],
        [Progettista(Prt)], [_non presente_]
    )
  ]
]
*Obiettivi*:\
Durante il quarto #glossario("periodo") l'obiettivo del team è quello di concentrarsi sulla stesura dei documenti rimanenti, in particolare il #glossario("Piano di Qualifica"). Inoltre, verrà completata l'#glossario("Analisi dei Requisiti") e verranno ulteriormente aggiornate le #glossario("Norme di Progetto").

In particolare, gli obiettivi principali di questa fase sono:
- Ampliare la stesura delle #glossario("Norme di Progetto") con particolare attenzione alle metriche di qualità e la documentazione da consegnare.
- Per il #glossario("Piano di Qualifica") verrà completata la sezione relativa ai test e gli obiettivi di qualità.
- Per quanto riguarda invece l'#glossario("Analisi dei Requisiti") verranno completati i diagrammi #glossario("UML") in vista della #glossario("revisione") con il #p.cardin.

*Possibili rischi*:\
I rischi che ci aspettiamo di incontrare durante questo #glossario("periodo") sono:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]
- #link(<RI-3>)[*RI-3 - Problemi di coordinamento*]
*Tabella preventivo*:\
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[0],[0],[0],[0],[0],[5],[€ #(5*costo_ora.ana)],
      [Leonardo\ Lucato],[0],[0],[5],[0],[0],[0],[€ #(5*costo_ora.ver)],
      [Giacomo\ Pesenato],[0],[0],[6],[0],[0],[0],[€ #(6*costo_ora.ver)],
      [Francesco\ Pozzobon],[8],[1],[0],[0],[0],[0],[€ #(8*costo_ora.res+1*costo_ora.amm)],
      [Giovanni\ Salvò],[0],[0],[0],[0],[0],[5],[€ #(5*costo_ora.ana)],
      [Gioele\ Scandaletti],[0],[6],[0],[0],[0],[0],[€ #(6 * costo_ora.amm)],
      [Pietro\ Valdagno],[0],[9],[0],[0],[0],[0],[€ #(9*costo_ora.amm)],
      [*Costo per ruolo*],[€ #(8*costo_ora.res)],[€ #(16*costo_ora.amm)],[€ #(11*costo_ora.ver)],[€ - ],[€ - ],[€ #(10*costo_ora.ana)],[#text(blue)[*€ #(240+320+165+250)*]],
    )
  ]
]
*Distribuzione preventivata delle ore*:\ 

#{
  let plot = plot(data: (
    (18, "Responsabile - " + perc(18,100)),
    (36, "Amministratore - " + perc(36,100)),
    (24, "Verificatore - " + perc(24,100)),
    (0, "Progettista - " + perc(0,100)),
    (0, "Programmatore - " + perc(0,100)),
    (22, "Analista - " + perc(22,100)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore quarto periodo", display_style: "hor-legend-chart")
}

=== Esito
*Obiettivi non raggiunti*:\
Di seguito sono elencate le #glossario("task") non completate

- *Fix #glossario("template")*: l'#glossario("attività") non è stata completata entro la fine del #glossario("periodo")

*Problematiche non attese*:\
Durante il quarto #glossario("periodo") appena concluso si è verificato il seguente rischio che non era stato preventivato:

- #link(<RI-5>)[*RI-5 - Mancanza di allineamento sugli obiettivi*], verificatosi per la mancanza di presa in carico e completamento di una #glossario("issue").
*Mitigazione rischi verificati*:\
Durante il #glossario("periodo") oltre alla problematica non attesa, si è verificato una variazione importante dei costi da quanto preventivato che potrebbe avere delle ripercussioni nei periodi successivi. Al momento non causa particolari conseguenze dal punto di vista del costo preventivato in quanto le ore che dobbiamo dedicare al #glossario("progetto") sono ancora molte, tuttavia è corretto segnalarlo e tenerlo in considerazione per i periodi futuri

*Possibili cambiamenti*:\
La non presa in carico e termine dell'#glossario("issue") riferita al fix del #glossario("template") indica come il team debba puntare maggiormente sulla corretta gestione delle priorità nello svolgimento dei tasks, inoltre è richiesto anche una maggior precisione nell'assegnazione delle ore preventivate per evitare queste variazioni.

- *Gestione delle priorità a livello di #glossario("issue")*: le #glossario("issue") che potenzialmente possono presentare rischi o che sono state rallentate da problematiche, previste o non previste, verificatesi durante il corso del #glossario("periodo") devono essere categorizzate come *HIGH PRIORITY*, mediante l'apposito campo del #glossario("sistema di ticketing"). E' a cura del #glossario("responsabile") del #glossario("progetto") verificare personalmente l'avanzamento di tali #glossario("issue"), interfacciandosi direttamente con l'assegnatario, o gli assegnatari, preposti al completamento del #glossario("task"). Per questo tipo di #glossario("attività") si richiede ai componenti del gruppo una maggiore consapevolezza nell'organizzare il proprio lavoro per priorità.
- *Gestione delle ore preventivate*: il team deve fare attenzione a non sottostimare le ore preventivate per evitare variazioni significative come quelle verificatesi in questo #glossario("periodo"). Potrebbe essere utile inserire un breve momento durante le riunioni interne per andare a studiare lo stato del #glossario("periodo"), analizzando quanto preventivato e quanto effettivamente svolto, in modo tale da poter correggere eventuali errori e migliorare la stima delle ore nei periodi successivi.
#pb()
*Tabella esito effettivo*:\ 
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo\ persona*]),
      [Gabriele\ Checchinato],[0],[1(#text(red)[+1])],[0],[0],[0],[4(#text(green)[-1])],[€ #(4*costo_ora.ana+1*costo_ora.amm) (#text(green)[-€ #(1*costo_ora.ana - 1*costo_ora.amm)])],
      [Leonardo\ Lucato],[0],[4(#text(red)[+4])],[4(#text(green)[-1])],[0],[0],[3(#text(red)[+3])],[€ #(4*costo_ora.amm+4*costo_ora.ver+3*costo_ora.ana) (#text(red)[+€ #(3*costo_ora.ana+4*costo_ora.amm -1*costo_ora.ver)])],
      [Giacomo\ Pesenato],[0],[0],[6],[0],[0],[0],[€ #(6*costo_ora.ver)],
      [Francesco\ Pozzobon],[7.75(#text(green)[-0.25])],[2.25(#text(red)[+1.25])],[0],[0],[0],[0],[€ #(7.75*costo_ora.res+2.25*costo_ora.amm) (#text(red)[+€ #(1.25*costo_ora.amm - 0.25*costo_ora.res)])],
      [Giovanni\ Salvò],[0],[0],[0],[0],[0],[5],[€ #(5*costo_ora.ana) ],
      [Gioele\ Scandaletti],[0],[7(#text(red)[+1])],[0],[0],[0],[0],[€ #(7*costo_ora.amm) (#text(red)[+€ #(1*costo_ora.amm)])],
      [Pietro\ Valdagno],[0.75 (#text(red)[+0.75]) ],[9],[0.5(#text(red)[+0.5])],[0],[0],[0],[€ #(0.75*costo_ora.res+9*costo_ora.amm+0.5*costo_ora.ver) (#text(red)[+€ #(0.75*costo_ora.res+0.5*costo_ora.ver)])],
      [*Costo\ per ruolo*],[€ #(8.5*costo_ora.res) (#text(red)[+€ #(0.5*costo_ora.res)])],[€ #(23.25*costo_ora.amm) (#text(red)[+€ #(7.25*costo_ora.amm)])],[€ #(10.5*costo_ora.ver) (#text(green)[-€ #(0.5*costo_ora.ver)])],[€ -],[€ -],[€ #(12*costo_ora.ana) (#text(red)[+€ #(2*costo_ora.ana)])],[#text(blue)[*€ #(255+465+157.5+300)*] (#text(red)[*+€ #(15+145-7.5+50)*])],
    )
  ]
]

*Distribuzione effettiva delle ore*:
#{
  let plot = plot(data: (
    (16.92, "Responsabile - " + perc(8.5,50.25)),
    (46.27, "Amministratore - " + perc(23.25,50.25)),
    (20.9, "Verificatore - " + perc(10.5,50.25)),
    (0, "Progettista - " + perc(0,50.25)),
    (0, "Programmatore - " + perc(0,50.25)),
    (23.88, "Analista - " + perc(12,50.25)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Effettiva divisione ore quarto periodo", display_style: "hor-legend-chart")
}
#pb()
*Progresso delle #glossario("attività")*:\
#{
  let plot = plot(data: (
    (1.96, "Non fatto - " + perc(1,51)),
    (98.04, "Fatto - " + perc(50,51)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo 4", display_style: "hor-legend-chart",colors: (red, green))
}

== Periodo 5
=== Pianificazione
*#glossario("Periodo")*: 13/1/2025 - 30/1/2025 \
*Ruoli*: Viene riportata di seguito la suddivisione del #glossario("periodo")
#figure()[
  #align(center)[
    #table(
      columns: 2,
      align: (col, row) => (center, center).at(col),
      inset: 6pt,
      table.header([*Ruolo*], [*Membri*]),
        [Responsabile(Re)],[#p.pesenato],
        [Amministratore(Am)],[#p.salvo],
        [Analista(An)],[#p.pozzobon, #p.valdagno],
        [Programmatore(Prg)],[#p.scandaletti],
        [Verificatore(Ve)],[#p.lucato, #p.checchinato],
        [Progettista(Prt)], [_non presente_]
    )
  ]
]
*Obiettivi*:\
Seppur un periodo molto pesante a causa degli impegni universitari di ognuno dei membri del team, il gruppo si impone come obiettivo la continuazione, anche se con un ritmo inferiore, dei vari documenti. In particolare, durante il quinto #glossario("periodo") si pone attenzione all'#glossario("Analisi dei Requisiti") e al #glossario("Piano di Qualifica"). Per quest'ultimo viene deciso di completarlo con un #glossario("cruscotto") di #glossario("Grafana") per la visualizzazione delle metriche di qualità e dello stato di avanzamento del progetto. Inoltre si continua con il miglioramento del PoC in vista di una candidatura per l'RTB.

In particolare, gli obiettivi principali di questa fase sono:
- PoC: inserire alcuni miglioramenti come la sua presentazione con colori e nomi degli assi congrui e la possibilità di visualizzare i dati in modo più chiaro.
- #glossario("Piano di Qualifica"): verrà inserito un cruscotto di Grafana per la visualizzazione delle metriche di qualità e dello stato di avanzamento del progetto. Con questo cruscotto potremmo poi inserire le relative immagini dei grafici, così da poter avere una visione più chiara e veloce dello stato del progetto.
- #glossario("Analisi dei Requisiti"): verrà completata la sezione relativa ai diagrammi #glossario("UML") con le loro relative modifiche.
- Glossario: verrà aggiornato con tutti i nuovi termini presenti nei vari documenti, con le relative definizioni.


*Possibili rischi*:\
I rischi che ci aspettiamo di incontrare durante questo #glossario("periodo") sono:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]
- #link(<RI-3>)[*RI-3 - Problemi di coordinamento*]

*Tabella preventivo*:\
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[0],[0],[4],[0],[0],[0],[€ #(4*costo_ora.ver)],
      [Leonardo\ Lucato],[0],[0],[4],[0],[0],[0],[€ #(4*costo_ora.ver)],
      [Giacomo\ Pesenato],[5],[0],[0],[0],[0],[0],[€ #(5*costo_ora.res)],
      [Francesco\ Pozzobon],[0],[0],[0],[0],[0],[4],[€ #(4*costo_ora.ana)],
      [Giovanni\ Salvò],[0],[4],[0],[0],[0],[0],[€ #(4*costo_ora.amm)],
      [Gioele\ Scandaletti],[0],[0],[0],[0],[3],[0],[€ #(3 * costo_ora.progr)],
      [Pietro\ Valdagno],[0],[0.5],[0],[0],[0],[7],[€ #(0.5*costo_ora.amm+7*costo_ora.ana)],
      [*Costo per ruolo*],[€ #(5*costo_ora.res)],[€ #(4.5*costo_ora.amm)],[€ #(8*costo_ora.ver)],[€ - ],[€ #(3*costo_ora.progr) ],[€ #(11*costo_ora.ana)],[#text(blue)[*€ #(150+90+120+45+275)*]],
    )
  ]
]
#pb()
*Distribuzione preventivata delle ore*:\ 

#{
  let plot = plot(data: (
    (5, "Responsabile - " + perc(5,31.5)),
    (4.5, "Amministratore - " + perc(4.5,31.5)),
    (8, "Verificatore - " + perc(8,31.5)),
    (0, "Progettista - " + perc(0,31.5)),
    (3, "Programmatore - " + perc(3,31.5)),
    (11, "Analista - " + perc(11,31.5)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore quinto periodo", display_style: "hor-legend-chart")
}

=== Esito
*Obiettivi non raggiunti*:\
In questo quinto #glossario("periodo") non sono stati rilevati  obiettivi non raggiunti.


*Problematiche non attese*:\
In questo quinto #glossario("periodo") non sono state rilevate delle problematiche non attese.


*Mitigazione rischi verificati*:\
Durante il quinto #glossario("periodo") abbiamo riscontrato entrambi i rischi che erano stati preventivati, tuttavia non hanno avuto un impatto significativo sul lavoro svolto. Questo è stato possibile grazie alla corretta gestione dei rischi e alla consapevolezza del team nel riconoscerli e mitigarli, tramite errori compiuti in precedenza e le relative correzioni apportate. L'unico punto importante da considerare è che il team deve continuare a mantenere alta l'attenzione su questi rischi, in modo da evitare che possano avere un impatto significativo sul lavoro svolto, in quanto i ritardi affrontati nei periodi precedenti hanno portato sicuramente a dei ritardi nella conclusione della prima parte del #glossario("progetto") (#glossario("RTB")).

*Possibili cambiamenti*:\
Il quinto #glossario("periodo") è stato caratterizzato da una buona gestione dei rischi e da una corretta pianificazione delle ore, che ha portato a una buona distribuzione delle stesse. Tuttavia, il team deve continuare a mantenere alta l'attenzione sui rischi preventivati e sulle ore preventivate, in modo da evitare che possano avere un impatto significativo sul lavoro svolto. 

#pb()
*Tabella esito effettivo*:\ 
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[0],[0],[4],[0],[0],[0],[€ #(4*costo_ora.ver)],
      [Leonardo\ Lucato],[0],[0],[5 (#text(red)[+1])],[0],[0],[0],[€ #(5*costo_ora.ver) (#text(red)[+€ #(1*costo_ora.ver)])],
      [Giacomo\ Pesenato],[5],[0],[0],[0],[0],[0],[€ #(5*costo_ora.res)],
      [Francesco\ Pozzobon],[0],[0.5 (#text(red)[+0.5])],[0],[0],[0],[4],[€ #(0.5*costo_ora.amm+4*costo_ora.ana) (#text(red)[+€ #(0.5*costo_ora.amm)])],
      [Giovanni\ Salvò],[0],[4],[0],[0],[0],[0],[€ #(4*costo_ora.amm)],
      [Gioele\ Scandaletti],[0],[0],[0],[0],[3],[0],[€ #(3 * costo_ora.progr)],
      [Pietro\ Valdagno],[0],[0.5],[0],[0],[0],[7],[€ #(0.5*costo_ora.amm+7*costo_ora.ana)],
      [*Costo per ruolo*],[€ #(5*costo_ora.res)],[€ #(5*costo_ora.amm) (#text(red)[+€ #(0.5*costo_ora.amm)])],[€ #(9*costo_ora.ver) (#text(red)[+€ #(1*costo_ora.ver)])],[€ - ],[€ #(3*costo_ora.progr) ],[€ #(11*costo_ora.ana)],[#text(blue)[*€ #(150+100+135+45+275)*] (#text(red)[+€ 25])],
    )
  ]
]
*Distribuzione effettiva delle ore*:
#{
  let plot = plot(data: (
    (5, "Responsabile - " + perc(5,33)),
    (5, "Amministratore - " + perc(5,33)),
    (9, "Verificatore - " + perc(9,33)),
    (0, "Progettista - " + perc(0,33)),
    (3, "Programmatore - " + perc(3,33)),
    (11, "Analista - " + perc(11,33)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Effettiva divisione ore quinto periodo", display_style: "hor-legend-chart")
}
#pb()
*Progresso delle #glossario("attività")*:\
#{
  let plot = plot(data: (
    (0, "Non fatto - " + perc(0,100)),
    (100, "Fatto - " + perc(100,100)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo 5", display_style: "hor-legend-chart",colors: (red, green))
}


== Periodo 6
=== Pianificazione
*#glossario("Periodo")*: 31/1/2025 - 13/2/2025 \
*Ruoli*: Viene riportata di seguito la suddivisione del #glossario("periodo")
#figure()[
  #align(center)[
    #table(
      columns: 2,
      align: (col, row) => (center, center).at(col),
      inset: 6pt,
      table.header([*Ruolo*], [*Membri*]),
        [Responsabile(Re)],[#p.lucato],
        [Amministratore(Am)],[#p.pesenato],
        [Analista(An)],[#p.salvo],
        [Programmatore(Prg)],[#p.checchinato, #p.scandaletti],
        [Verificatore(Ve)],[#p.pozzobon, #p.valdagno],
        [Progettista(Prt)], [_non presente_]
    )
  ]
]
*Obiettivi*:\
Il #glossario("periodo") attuale, analogamente al precedente, risulta particolarmente intenso per il nostro gruppo a causa degli impegni universitari. Nonostante il ritmo rallentato, ogni membro continuerà a contribuire al progetto. Questo sprint è tra i più impegnativi, poiché si conclude la stesura dei documenti per passare alla loro revisione e correzione in preparazione della candidatura #glossario("RTB"), che richiede una verifica scrupolosa e l'approvazione di ogni aspetto. Gli obiettivi del gruppo sono quindi di validare e perfezionare tutti i documenti per la candidatura.


*Possibili rischi*:\
I rischi che ci aspettiamo di incontrare durante questo #glossario("periodo") sono:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]
- #link(<RI-3>)[*RI-3 - Problemi di coordinamento*]
- #link(<RI-6>)[*RI-6 - Sovraccarico di lavoro*]

*Tabella preventivo*:\
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[0],[0],[0],[0],[4],[0],[€ #(4*costo_ora.progr)],
      [Leonardo\ Lucato],[6],[0],[0],[0],[0],[0],[€ #(6*costo_ora.res)],
      [Giacomo\ Pesenato],[0],[6],[0],[0],[0],[0],[€ #(6*costo_ora.amm)],
      [Francesco\ Pozzobon],[0],[0],[8],[0],[0],[0],[€ #(8*costo_ora.ver)],
      [Giovanni\ Salvò],[0],[0],[0],[0],[0],[3],[€ #(3*costo_ora.ana)],
      [Gioele\ Scandaletti],[0],[0],[0],[0],[4],[0],[€ #(4 * costo_ora.progr)],
      [Pietro\ Valdagno],[0],[0],[6],[0],[0],[0],[€ #(6*costo_ora.ver)],
      [*Costo per ruolo*],[€ #(6*costo_ora.res)],[€ #(6*costo_ora.amm)],[€ #(14*costo_ora.ver)],[€ - ],[€ #(8*costo_ora.progr) ],[€ #(3*costo_ora.ana)],[#text(blue)[*€ #(180+120+210+120+75)*]],
    )
  ]
]

*Distribuzione preventivata delle ore*:\ 

#{
  let plot = plot(data: (
    (6, "Responsabile - " + perc(6,37)),
    (6, "Amministratore - " + perc(6,37)),
    (14, "Verificatore - " + perc(14,37)),
    (0, "Progettista - " + perc(0,37)),
    (8, "Programmatore - " + perc(8,37)),
    (3, "Analista - " + perc(3,37)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore sesto periodo", display_style: "hor-legend-chart")
}
#pb()
=== Esito
*Obiettivi non raggiunti*:\
In questo sesto #glossario("periodo") non sono stati rilevati  obiettivi non raggiunti.


*Problematiche non attese*:\
In questo sesto #glossario("periodo") non sono state rilevate delle problematiche non attese.


*Mitigazione rischi verificati*:\
Durante questo sesto #glossario("periodo") si sono verificati 2 dei 3 rischi preventivati ad inizio #glossario("periodo"): #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*] e #link(<RI-6>)[*RI-6 - Sovraccarico di lavoro*]. Questi rischi non hanno avuto un impatto significativo sul lavoro svolto, grazie alla corretta gestione dei rischi e alla consapevolezza del team nel riconoscerli e mitigarli. In base alle ore disponibili di ciascun membro del team, si è riusciti a distribuire il carico di lavoro in modo equo e a garantire il completamento di tutti gli obiettivi prefissati. 

*Possibili cambiamenti*:\
Durante il sesto #glossario("periodo") si è evidenziata un’efficace gestione dei rischi unita ad una pianificazione precisa delle ore. Questa strategia ha permesso una distribuzione equilibrata del tempo, portando al conseguimento di tutti gli obiettivi prefissati con un'ottima gestione di mitigazione dei rischi. Questo ha permesso di mantenere un ritmo di lavoro costante e di completare tutte le attività previste.


*Tabella esito effettivo*:\ 
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[0],[0],[0],[0],[4],[0],[€ #(4*costo_ora.progr)],
      [Leonardo\ Lucato],[6],[0],[0],[0],[0],[0],[€ #(6*costo_ora.res)],
      [Giacomo\ Pesenato],[0],[6],[0],[0],[0],[0],[€ #(6*costo_ora.amm)],
      [Francesco\ Pozzobon],[0],[0],[8.25\ (#text(red)[+0.25])],[0],[0],[0],[€ #(8.25*costo_ora.ver)\ (#text(red)[+€ #(0.25*costo_ora.ver)])],
      [Giovanni\ Salvò],[0],[0],[0],[0],[0],[3],[€ #(3*costo_ora.ana)],
      [Gioele\ Scandaletti],[0],[0],[0],[0],[4],[0],[€ #(4 * costo_ora.progr)],
      [Pietro\ Valdagno],[0],[0],[6.5\ (#text(red)[+0.5])],[0],[0],[0],[€ #(6.5*costo_ora.ver)\ (#text(red)[+€ #(0.5*costo_ora.ver)])],
      [*Costo per ruolo*],[€ #(6*costo_ora.res)],[€ #(6*costo_ora.amm)],[€ #((8.25+6.5)*costo_ora.ver)\ (#text(red)[+€ #((0.25+0.5)*costo_ora.ver)])],[€ - ],[€ #(8*costo_ora.progr) ],[€ #(3*costo_ora.ana)],[#text(blue)[*€ #(180+120+221.25+120+75)*\ (#text(red)[+€ #(0.75*costo_ora.ver)])]],
    )
  ]
]
#pb()
*Distribuzione effettiva delle ore*:
#{
  let plot = plot(data: (
    (6, "Responsabile - " + perc(6,37.75)),
    (6, "Amministratore - " + perc(6,37.75)),
    (14.75, "Verificatore - " + perc(14,37.75)),
    (0, "Progettista - " + perc(0,37.75)),
    (8, "Programmatore - " + perc(8,37.75)),
    (3, "Analista - " + perc(3,37.75)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Effettiva divisione ore sesto periodo", display_style: "hor-legend-chart")
}

*Progresso delle #glossario("attività")*:\
#{
  let plot = plot(data: (
    (0, "Non fatto - " + perc(0,100)),
    (100, "Fatto - " + perc(100,100)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo 6", display_style: "hor-legend-chart",colors: (red, green))
}
  
== Resoconto RTB
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Ruolo*],[*Periodo 1*], [*Periodo 2*], [*Periodo 3*],[*Periodo 4*], [*Periodo 5*], [*Periodo 6*], [*Costo tot*] ), 
      [Responsabile],[€ 150],[€ 165],[€ 187.5],[€ 255],[€ 150],[€ 180],[€ #(150+165+187.5+255+150+180)],
      [Amministratore],[€ 140],[€ 150],[€ 200],[€ 465],[€ 100],[€ 120],[€ #(140+150+200+465+100+120)],
      [Verificatore],[€ 165],[€ 105],[€ 112.5],[€ 157.5],[€ 135],[€ 221.25],[€ #(165+105+112.5+157.5+135+221.25)],
      [Progettista],[€ 0],[€ 0],[€ 0],[€ 0],[€ 0],[€ 0],[€ 0],
      [Programmatore],[€ 75],[€ 270],[€ 30],[€ 0],[€ 45],[€ 120],[€ #(75+270+30+0+45+120)],
      [Analista],[€ 275],[€ 87.5],[€ 300],[€ 300],[€ 275],[€ 75],[€ #(275+87.5+300+300+275+75)],
      [*Costo per periodo*],[€ 805],[€ 777.5],[€ 830],[€ 1177.5 ],[€ 705],[€ 716.25],[#text(blue)[*€ #(805+777.5+830+1177.5+705+716.25)*]],
    )
  ]
]


== Periodo 7

=== Pianificazione
*#glossario("Periodo")*: 03/3/2025 - 10/3/2025 \
*Ruoli*: Viene riportata di seguito la suddivisione del #glossario("periodo")
#figure()[
  #align(center)[
    #table(
      columns: 2,
      align: (col, row) => (center, center).at(col),
      inset: 6pt,
      table.header([*Ruolo*], [*Membri*]),
        [Responsabile(Re)],[#p.salvo],
        [Amministratore(Am)],[#p.lucato],
        [Analista(An)],[#p.checchinato, #p.pozzobon],
        [Programmatore(Prg)],[_non presente_],
        [Verificatore(Ve)],[#p.pesenato, #p.scandaletti],
        [Progettista(Prt)], [#p.checchinato, #p.lucato,\ #p.pesenato, #p.scandaletti,\ #p.valdagno]
    )
  ]
]
#pb()
*Obiettivi*:\
In questo periodo, il team si è concentrato sullo studio della progettazione software, approfondendo i pattern e le best practices per l’implementazione delle tecnologie adottate. Grazie alla presenza di più membri con il ruolo di #glossario("progettista"), è stato possibile analizzare diverse soluzioni e valutarne l’applicabilità nel contesto del progetto.
Gli obiettivi quindi sono stati:

  - *Approfondimento della progettazione* : analisi dei principali pattern software e delle best practices per l’integrazione delle tecnologie utilizzate, con particolare attenzione alla scalabilità e alla manutenibilità del sistema.
  - *Revisione del documento Analisi dei Requisiti* : applicazione delle modifiche richieste dal #p.cardin per affinare, correggere e migliorare il documento proposto in fase #glossario("RTB").
  - *Aggiornamento del Piano di Qualifica*: a seguito delle correzioni apportate all'Analisi dei requisiti, è stato rivisto anche il Piano di Qualifica modificando i test di sistema e di accettazione.

*Possibili rischi*\
I rischi che ci aspettiamo di incontrare durante questo #glossario("periodo") sono:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]

*Tabella preventivo*:\
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[0],[0],[0],[0],[0],[3],[€ #(3*costo_ora.ana)],
      [Leonardo\ Lucato],[0],[3],[0],[5],[0],[0],[€ #(3*costo_ora.amm+5*costo_ora.proge)],
      [Giacomo\ Pesenato],[0],[0],[3],[5],[0],[0],[€ #(3*costo_ora.ver+5*costo_ora.proge)],
      [Francesco\ Pozzobon],[0],[0],[0],[0],[0],[3],[€ #(3*costo_ora.ana)],
      [Giovanni\ Salvò],[4],[0],[0],[0],[0],[0],[€ #(4*costo_ora.res)],
      [Gioele\ Scandaletti],[0],[0],[3],[5],[0],[0],[€ #(3 * costo_ora.ver+5*costo_ora.proge)],
      [Pietro\ Valdagno],[0],[0],[0],[5],[0],[0],[€ #(5*costo_ora.proge)],
      [*Costo per ruolo*],[€ #(4*costo_ora.res)],[€ #(3*costo_ora.amm)],[€ #(6*costo_ora.ver)],[€ #(20*costo_ora.proge) ],[€ - ],[€ #(6*costo_ora.ana)],[#text(blue)[*€ #(120+60+90+500+150)*]],
    )
  ]
]
#pb()
*Distribuzione preventivata delle ore:* \
#{
  let plot = plot(data: (
    (4, "Responsabile - " + perc(4,39)),
    (3, "Amministratore - " + perc(3,39)),
    (6, "Verificatore - " + perc(6,39)),
    (20, "Progettista - " + perc(20,39)),
    (0, "Programmatore - " + perc(0,39)),
    (6, "Analista - " + perc(3,39)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore settimo periodo", display_style: "hor-legend-chart")
}

=== Esito 

*Obiettivi non raggiunti*:\
In questo settimo #glossario("periodo") non sono stati rilevati  obiettivi non raggiunti.

*Problematiche non attese*:\
In questo settimo #glossario("periodo") si è verificato il seguente rischio non preventivato:
- #link(<RE-2>)[*RE-2 - Utilizzo di librerie di terze parti*]: la libreria da noi utilizzata per la generazione dei grafici nei documenti ha riscontrato incompatibilità con la nuova versione di #glossario("typst").

*Mitigazione rischi verificati*:\
Oltre alla problematica non attesa, durante questo settimo #glossario("periodo") si è verificato solo 1 dei 2 rischi preventivati e queste sono le strategie di mitigazione adottate:
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]: tale rischio è stato mitigato grazie a uno studio più approfondito delle tecnologie critiche.
- #link(<RE-2>)[*RE-2 - Utilizzo di librerie di terze parti*]: tale rischio è stato mitigato con una soluzione a breve termine, ovvero mantenendo la precedente versione di #glossario("typst") per per la compilazione dei documenti, pianificando un cambio di libreria per il periodo successivo.

*Possibili cambiamenti*:\
Durante il settimo #glossario("periodo") si è evidenziata un'efficace gestione e mitigazione dei rischi, insieme a una buona pianificazione delle ore. Questa strategia ha permesso una distribuzione equilibrata del tempo, portando al conseguimento di tutti gli obiettivi prefissati, superando agilmente ogni ostacolo verificatosi. 

#pb();

*Tabella esito effettivo*:\ 
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[0],[0],[0],[0],[0],[5 (#text(red)[+2])],[€ #(5*costo_ora.ana) (#text(red)[+€ #(2*costo_ora.ana)])],
      [Leonardo\ Lucato],[0],[2 (#text(green)[-1])],[0],[7 (#text(red)[+2])],[0],[0],[€ #(2*costo_ora.amm+7*costo_ora.proge) (#text(red)[+€ 30])],
      [Giacomo\ Pesenato],[0],[0],[1 (#text(green)[-2])],[6 (#text(red)[+1])],[0],[0],[€ #(1*costo_ora.ver+6*costo_ora.proge) (#text(green)[-€ 5])],
      [Francesco\ Pozzobon],[0],[0],[0],[0],[0],[4.25 (#text(red)[+1.25])],[€ #(4.25*costo_ora.ana) \ (#text(red)[+€ #(1.25*costo_ora.ana)])],
      [Giovanni\ Salvò],[4],[0],[0],[0],[0],[0],[€ #(4*costo_ora.res)],
      [Gioele\ Scandaletti],[0],[0],[2 (#text(green)[-1])],[5],[0],[0],[€ #(2* costo_ora.ver+5*costo_ora.proge) (#text(green)[-€ #(costo_ora.ver)])],
      [Pietro\ Valdagno],[0],[0],[0],[6 (#text(red)[+1])],[0],[0],[€ #(6*costo_ora.proge) (#text(red)[+€ #(1*costo_ora.proge)])],
      [*Costo\ per ruolo*],[€ #(4*costo_ora.res)],[€ #(2*costo_ora.amm) (#text(green)[-€ #(costo_ora.amm)])],[€ #((1+2)*costo_ora.ver) (#text(green)[-€ #((3)*costo_ora.ver)])],[€ #(24*costo_ora.proge)\ (#text(red)[+€ #(4*costo_ora.proge)])],[€ -],[€ #(9.25*costo_ora.ana)\ (#text(red)[+€ #(3.25*costo_ora.ana)])],[#text(blue)[*€ #(120+40+45+600+231.25)*\ (#text(red)[+€ 116,25])]],
    )
  ]
]

*Distribuzione effettiva delle ore*:
#{
  let plot = plot(data: (
    (4, "Responsabile - " + perc(4,42.25)),
    (2, "Amministratore - " + perc(2,42.25)),
    (3, "Verificatore - " + perc(3,42.25)),
    (24, "Progettista - " + perc(24,42.25)),
    (0, "Programmatore - " + perc(0,42.25)),
    (9.25, "Analista - " + perc(9.25,42.25)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Effettiva divisione ore settimo periodo", display_style: "hor-legend-chart")
}

#pb()

*Progresso delle #glossario("attività")*:\
#{
  let plot = plot(data: (
    (0, "Non fatto - " + perc(0,100)),
    (100, "Fatto - " + perc(100,100)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo 7", display_style: "hor-legend-chart",colors: (red, green))
}


== Periodo 8

=== Pianificazione
*#glossario("Periodo")*: 10/3/2025 - 17/3/2025 \
*Ruoli*: Viene riportata di seguito la suddivisione del #glossario("periodo")
#figure()[
  #align(center)[
    #table(
      columns: 2,
      align: (col, row) => (center, center).at(col),
      inset: 6pt,
      table.header([*Ruolo*], [*Membri*]),
        [Responsabile(Re)],[#p.scandaletti],
        [Amministratore(Am)],[#p.checchinato],
        [Analista(An)],[#p.salvo],
        [Programmatore(Prg)],[#p.checchinato, #p.lucato,\ #p.pesenato, #p.scandaletti,\ #p.valdagno],
        [Verificatore(Ve)],[#p.pesenato],
        [Progettista(Prt)], [#p.salvo, #p.pozzobon]
    )
  ]
]
#pb()

*Obiettivi*:\
In questo #glossario("periodo"), l'obiettivo del team è proseguire con lo studio della progettazione software e iniziare la fase di codifica del #glossario("MVP") per comprendere meglio quali pattern applicare e quindi affiancare la fase di progettazione. Per questi motivi i ruoli di #glossario("programmatore") e progettista sono stati assegnati a più membri del team. I programmatori, inoltre, si divideranno i due sottogruppi: uno che si occuperà del lato backend e uno del lato frontend dell'applicazione.\
Nello specifico gli obiettivi di questo periodo sono:

  - *Continuazione della fase di progettazione* : continuare l'analisi dell'applicabilità dei pattern software studiati nel precedente periodo, supportandola concretamente con la fase di codifica.
  - *Inizio codifica #glossario("MVP")* : avviare la fase di sviluppo del #glossario("MVP"), suddividendo il lavoro tra frontend e backend per approfondire lo studio delle tecnologie e dei pattern.
  - *#glossario("Norme di Progetto")* : ampliare e approfondire alcune sezioni già presenti, aggiungendo dettagli sulla fase di codifica e riferimenti sulla fase del #glossario("PB").
  - *#glossario("Piano di Qualifica")* : aggiornare il documento includendo la descrizione e l'analisi dei grafici relativi alle metriche adottate, specificando il loro significato e l'impatto sulla valutazione della qualità del progetto.


*Possibili rischi*\
I rischi che ci aspettiamo di incontrare durante questo #glossario("periodo") sono:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]

*Tabella preventivo*:\
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[0],[2],[0],[0],[9],[0],[€ #(2*costo_ora.amm+9*costo_ora.progr)],
      [Leonardo\ Lucato],[0],[0],[0],[0],[14],[0],[€ #(14*costo_ora.progr)],
      [Giacomo\ Pesenato],[0],[0],[3],[0],[9],[0],[€ #(3*costo_ora.ver+9*costo_ora.progr)],
      [Francesco\ Pozzobon],[0],[0],[0],[9],[0],[0],[€ #(9*costo_ora.proge)],
      [Giovanni\ Salvò],[0],[0],[0],[5],[0],[1],[€ #(5*costo_ora.proge+1*costo_ora.ana)],
      [Gioele\ Scandaletti],[5],[0],[0],[0],[2],[0],[€ #(5*costo_ora.res+2*costo_ora.progr)],
      [Pietro\ Valdagno],[0],[0],[0],[0],[10],[0],[€ #(10*costo_ora.progr)],
      [*Costo per ruolo*],[€ #(5*costo_ora.res)],[€ #(2*costo_ora.amm)],[€ #(3*costo_ora.ver)],[€ #(14*costo_ora.proge) ],[€ #(44*costo_ora.progr)],[€ #(1*costo_ora.ana)],[#text(blue)[*€ #(150+40+45+350+660+25)*]],
    )
  ]
]
#pb()
*Distribuzione preventivata delle ore:* \
#{
  let plot = plot(data: (
    (5, "Responsabile - " + perc(5,69)),
    (2, "Amministratore - " + perc(2,69)),
    (3, "Verificatore - " + perc(3,69)),
    (14, "Progettista - " + perc(14,69)),
    (44, "Programmatore - " + perc(44,69)),
    (1, "Analista - " + perc(1,69)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore ottavo periodo", display_style: "hor-legend-chart")
}

=== Esito 

*Obiettivi non raggiunti*:\
In questo ottavo #glossario("periodo") non sono stati rilevati obiettivi non raggiunti.

*Problematiche non attese*:\
In questo ottavo #glossario("periodo") non sono state rilevate delle problematiche non attese.

*Mitigazione rischi verificati*:\
Durante questo ottavo #glossario("periodo") si è verificato solo 1 dei 2 rischi preventivati e queste sono le strategie di mitigazione adottate:
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]: tale rischio è stato mitigato grazie allo studio delle tecnologie che si sono rivelate più critiche e attraverso riunioni tra i membri col ruolo di #glossario("programmatore") per ottenere una maggiore consapevolezza della situazione attuale e valutare diverse strategie di risoluzione dei problemi.


*Possibili cambiamenti*:\
Durante l'ottavo #glossario("periodo") si è evidenziata un'efficace gestione e mitigazione dei rischi e una buona pianificazione delle ore, che hanno contribuito a un incremento della produttività. Questo ha permesso di completare tutti gli obiettivi prefissati e di gestire agevolmente le problematiche che si sono verificate. 

#pb();

*Tabella esito effettivo*:\ 
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[1 (#text(red)[+1])],[1 (#text(red)[-1])],[0],[0],[9],[0],[€ #(1*costo_ora.res+1*costo_ora.amm+9*costo_ora.progr) (#text(red)[+€ #(1*costo_ora.res - 1*costo_ora.amm)])],
      [Leonardo\ Lucato],[0],[0],[0],[0],[16 (#text(red)[+2])],[0],[€ #(16*costo_ora.progr) (#text(red)[+€ #(2*costo_ora.progr)])],
      [Giacomo\ Pesenato],[0],[0],[3],[0],[9],[0],[€ #(3*costo_ora.ver+9*costo_ora.progr)],
      [Francesco\ Pozzobon],[0],[0],[0],[9],[0],[0],[€ #(9*costo_ora.proge)],
      [Giovanni\ Salvò],[0],[0],[0],[5],[0],[1],[€ #(5*costo_ora.proge+1*costo_ora.ana)],
      [Gioele\ Scandaletti],[5],[0],[0],[0],[2],[0],[€ #(5* costo_ora.res+2*costo_ora.progr)],
      [Pietro\ Valdagno],[0],[0],[0],[0],[12 (#text(red)[+2])],[0],[€ #(12*costo_ora.progr) (#text(red)[+€ #(2*costo_ora.progr)])],
      [*Costo\ per ruolo*],[€ #(6*costo_ora.res) (#text(red)[+€ #(1*costo_ora.res)])],[€ #(1*costo_ora.amm) (#text(green)[-€ #(costo_ora.amm)])],[€ #(3*costo_ora.ver)],[€ #(14*costo_ora.proge)],[€ #(48*costo_ora.progr)\ (#text(red)[+€ #(4*costo_ora.progr)])],[€ #(1*costo_ora.ana)],[#text(blue)[*€ #(180+20+45+350+720+25)*\ (#text(red)[+€ 70])]],
    )
  ]
]

*Distribuzione effettiva delle ore*:
#{
  let plot = plot(data: (
    (6, "Responsabile - " + perc(6,73)),
    (1, "Amministratore - " + perc(1,73)),
    (3, "Verificatore - " + perc(3,73)),
    (14, "Progettista - " + perc(14,73)),
    (48, "Programmatore - " + perc(48,73)),
    (1, "Analista - " + perc(1,73)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Effettiva divisione ore ottavo periodo", display_style: "hor-legend-chart")
}

#pb()

*Progresso delle #glossario("attività")*:\
#{
  let plot = plot(data: (
    (0, "Non fatto - " + perc(0,100)),
    (100, "Fatto - " + perc(100,100)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo 8", display_style: "hor-legend-chart",colors: (red, green))
}

== Periodo 9

=== Pianificazione
*#glossario("Periodo")*: 17/3/2025 - 25/3/2025 \
*Ruoli*: Viene riportata di seguito la suddivisione del #glossario("periodo")
#figure()[
  #align(center)[
    #table(
      columns: 2,
      align: (col, row) => (center, center).at(col),
      inset: 6pt,
      table.header([*Ruolo*], [*Membri*]),
        [Responsabile(Re)],[#p.valdagno],
        [Amministratore(Am)],[#p.pesenato],
        [Analista(An)],[#p.checchinato],
        [Programmatore(Prg)],[#p.salvo, #p.pozzobon,\ #p.pesenato, #p.scandaletti,\ #p.lucato],
        [Verificatore(Ve)],[#p.salvo],
        [Progettista(Prt)], [#p.checchinato, #p.valdagno]
    )
  ]
]
#pb()

*Obiettivi*:\
In questo #glossario("periodo"), l'obiettivo del team è proseguire con lo studio della progettazione software e continuare la fase di codifica del #glossario("MVP"). Per questi motivi i ruoli di #glossario("programmatore") e #glossario("progettista") sono stati assegnati a più membri del team. I programmatori, inoltre, si divideranno i due sottogruppi: uno che si occuperà del lato back-end e uno del lato front-end dell'applicazione.\
Nello specifico gli obiettivi di questo periodo sono:
  - *Continuazione codifica #glossario("MVP")* : continuare la fase di sviluppo del #glossario("MVP"), suddividendo il lavoro tra front-end e back-end per approfondire lo studio delle tecnologie e dei pattern.
  - *#glossario("Norme di Progetto")*: ampliare e approfondire alcune sezioni già presenti come la sezione sviluppo e la sezione processi di supporto.
  - *#glossario("Analisi dei Requisiti")* : aggiornare il documento includendo le nuove tecnologie utilizzate a seguito del cambiamento deciso dal team e approvato dal #p.cardin e dall'azienda.


*Possibili rischi*\
I rischi che ci aspettiamo di incontrare durante questo #glossario("periodo") sono:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]

*Tabella preventivo*:\
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[0],[3],[0],[5],[0],[3],[€ #(3*costo_ora.amm+5*costo_ora.proge+3*costo_ora.ana)],
      [Leonardo\ Lucato],[0],[0],[0],[0],[6],[0],[€ #(6*costo_ora.progr)],
      [Giacomo\ Pesenato],[0],[4],[3],[0],[5],[0],[€ #(4*costo_ora.amm+3*costo_ora.ver+5*costo_ora.progr)],
      [Francesco\ Pozzobon],[0],[0],[0],[3],[10],[0],[€ #(3*costo_ora.proge+10*costo_ora.progr)],
      [Giovanni\ Salvò],[0],[0],[4],[0],[5],[0],[€ #(5*costo_ora.progr+4*costo_ora.ver)],
      [Gioele\ Scandaletti],[0],[0],[0],[2],[8],[0],[€ #(2*costo_ora.proge+8*costo_ora.progr)],
      [Pietro\ Valdagno],[5],[0],[0],[2],[2],[0],[€ #(5*costo_ora.res+2*costo_ora.proge+2*costo_ora.progr)],
      [*Costo per ruolo*],[€ #(5*costo_ora.res)],[€ #(7*costo_ora.amm)],[€ #(7*costo_ora.ver)],[€ #(12*costo_ora.proge) ],[€ #(36*costo_ora.progr)],[€ #(3*costo_ora.ana)],[#text(blue)[*€ #(150+140+105+300+540+75)*]],
    )
  ]
]
#pb()
*Distribuzione preventivata delle ore:* \
#{
  let plot = plot(data: (
    (5, "Responsabile - " + perc(5,70)),
    (7, "Amministratore - " + perc(7,70)),
    (7, "Verificatore - " + perc(7,70)),
    (12, "Progettista - " + perc(12,70)),
    (36, "Programmatore - " + perc(36,70)),
    (3, "Analista - " + perc(3,70)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore nono periodo", display_style: "hor-legend-chart")
}

=== Esito 

*Obiettivi non raggiunti*:\
In questo nono #glossario("periodo") non sono stati rilevati obiettivi non raggiunti.

*Problematiche non attese*:\
In questo nono #glossario("periodo") non sono state rilevate delle problematiche non attese.

*Mitigazione rischi verificati*:\
Durante questo nono #glossario("periodo") si sono verificati entrambi i rischi preventivati e queste sono le strategie di mitigazione adottate:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]: tale rischio è stato mitigato grazie all'aiuto tra i membri del team riducendo l'impatto sul lavoro da svolgere.
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]: tale rischio è stato mitigato grazie allo studio delle tecnologie che si sono rivelate più critiche e attraverso riunioni tra i membri col ruolo di #glossario("programmatore") e tra quelli col ruolo di #glossario("progettista") per ottenere una maggiore consapevolezza della situazione attuale e valutare diverse strategie di risoluzione dei problemi.


*Possibili cambiamenti*:\
Durante il nono #glossario("periodo") si è evidenziata un'efficace gestione e mitigazione dei rischi e una buona pianificazione delle ore, che hanno contribuito a un incremento della produttività seguendo il lavoro svolto nel periodo otto. Questo ha permesso di completare tutti gli obiettivi prefissati e di gestire agevolmente le problematiche che si sono verificate. 

#pb();

*Tabella esito effettivo*:\ 
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[0],[3],[0],[5],[0],[2 (#text(green)[-1])],[€ #(3*costo_ora.amm+5*costo_ora.proge+2*costo_ora.ana) (#text(green)[-€ #(1*costo_ora.ana)])],
      [Leonardo\ Lucato],[0],[0],[0],[0],[6],[0],[€ #(6*costo_ora.progr)],
      [Giacomo\ Pesenato],[0],[4],[3],[0],[5],[0],[€ #(4*costo_ora.amm+3*costo_ora.ver+5*costo_ora.progr)],
      [Francesco\ Pozzobon],[0],[0],[0],[3],[10],[0],[€ #(3*costo_ora.proge+10*costo_ora.progr)],
      [Giovanni\ Salvò],[0],[0],[4],[1(#text(red)[+1])],[8 (#text(red)[+3])],[0],[€ #(8*costo_ora.progr+4*costo_ora.ver+1*costo_ora.proge) (#text(red)[+€#(1*costo_ora.proge+3*costo_ora.progr)])],
      [Gioele\ Scandaletti],[0],[2(#text(red)[+2])],[0],[2],[8],[0],[€ #(2*costo_ora.proge+8*costo_ora.progr+2*costo_ora.amm) (#text(red)[+€#(2*costo_ora.amm)])],
      [Pietro\ Valdagno],[5],[0],[0],[2],[2],[0],[€ #(5*costo_ora.res+2*costo_ora.proge+2*costo_ora.progr)],
      [*Costo per ruolo*],[€ #(5*costo_ora.res)],[€ #(9*costo_ora.amm) (#text(red)[+€40])],[€ #(7*costo_ora.ver)],[€ #(13*costo_ora.proge) (#text(red)[+€25]) ],[€ #(39*costo_ora.progr) (#text(red)[+€45])],[€ #(2*costo_ora.ana) (#text(green)[-€25])],[#text(blue)[*€ #(150+180+105+325+585+50)*] (#text(red)[+€85])],
    )
  ]
]

*Distribuzione effettiva delle ore*:
#{
  let plot = plot(data: (
    (5, "Responsabile - " + perc(5,75)),
    (9, "Amministratore - " + perc(9,75)),
    (7, "Verificatore - " + perc(7,75)),
    (13, "Progettista - " + perc(13,75)),
    (39, "Programmatore - " + perc(36,75)),
    (2, "Analista - " + perc(2,75)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Effettiva divisione ore nono periodo", display_style: "hor-legend-chart")
}

#pb()

*Progresso delle #glossario("attività")*:\
#{
  let plot = plot(data: (
    (0, "Non fatto - " + perc(0,100)),
    (100, "Fatto - " + perc(100,100)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo 9", display_style: "hor-legend-chart",colors: (red, green))
}

== Periodo 10

=== Pianificazione
*#glossario("Periodo")*: 25/03/2025 - 03/04/2025 \
*Ruoli*: Viene riportata di seguito la suddivisione del #glossario("periodo")
#figure()[
  #align(center)[
    #table(
      columns: 2,
      align: (col, row) => (center, center).at(col),
      inset: 6pt,
      table.header([*Ruolo*], [*Membri*]),
        [Responsabile(Re)],[#p.salvo],
        [Amministratore(Am)],[#p.lucato],
        [Analista(An)],[#p.scandaletti],
        [Programmatore(Prg)],[#p.pozzobon,\ #p.pesenato, #p.scandaletti],
        [Verificatore(Ve)],[#p.checchinato],
        [Progettista(Prt)], [#p.checchinato, #p.valdagno \ #p.salvo, #p.lucato, #p.pesenato]
    )
  ]
]
#pb()

*Obiettivi*:\
In questo #glossario("periodo"), l'obiettivo del team è continuare la fase di codifica del #glossario("MVP") inserendo inoltre i test per raggiungere un code coverage adatto. Per questi motivi i ruoli di #glossario("programmatore") e #glossario("progettista") sono stati assegnati a più membri del team. I programmatori e i progettisti si divideranno i due sottogruppi: uno che si occuperà del lato back-end e uno del lato front-end dell'applicazione.\
Nello specifico gli obiettivi di questo periodo sono:
  - *Continuazione codifica #glossario("MVP")* : continuare la fase di sviluppo del #glossario("MVP"), suddividendo il lavoro tra front-end e back-end per facilitare il ruolo di #glossario("programmatore") e #glossario("progettista") .
  - *#glossario("PdQ")* : aggiungere riferimenti ai test di unita e di integrazione.
  - *#glossario("ST")* : scrivere sezioni su componenti front-end, back-end e sulle tecnologie utilizzate.


*Possibili rischi*\
I rischi che ci aspettiamo di incontrare durante questo #glossario("periodo") sono:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]

*Tabella preventivo*:\
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[3],[0],[4],[9],[2],[0],[€ #(3*costo_ora.res+4*costo_ora.ver+9*costo_ora.proge+2*costo_ora.progr)],
      [Leonardo\ Lucato],[0],[4],[0],[7],[0],[0],[€ #(4*costo_ora.amm+7*costo_ora.proge)],
      [Giacomo\ Pesenato],[0],[0],[0],[7],[1],[0],[€ #(7*costo_ora.proge+1*costo_ora.progr)],
      [Francesco\ Pozzobon],[0],[0],[0],[1],[14],[0],[€ #(1*costo_ora.proge+14*costo_ora.progr)],
      [Giovanni\ Salvò],[6],[0],[0],[0],[0],[0],[€ #(6*costo_ora.res)],
      [Gioele\ Scandaletti],[0],[0],[0],[2],[7],[6],[€ #(2*costo_ora.proge+7*costo_ora.progr+6*costo_ora.ana)],
      [Pietro\ Valdagno],[0],[0],[0],[6],[3],[0],[€ #(6*costo_ora.proge+3*costo_ora.progr)],
      [*Costo per ruolo*],[€ #(9*costo_ora.res)],[€ #(4*costo_ora.amm)],[€ #(4*costo_ora.ver)],[€ #(32*costo_ora.proge) ],[€ #(27*costo_ora.progr)],[€ #(6*costo_ora.ana)],[#text(blue)[*€ #(270+80+60+800+405+150)*]],
    )
  ]
]
#pb()
*Distribuzione preventivata delle ore:* \
#{
  let plot = plot(data: (
    (9, "Responsabile - " + perc(9,82)),
    (4, "Amministratore - " + perc(4,82)),
    (4, "Verificatore - " + perc(4,82)),
    (32, "Progettista - " + perc(32,82)),
    (27, "Programmatore - " + perc(27,82)),
    (6, "Analista - " + perc(6,82)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore decimo periodo", display_style: "hor-legend-chart")
}

=== Esito 

*Obiettivi non raggiunti*:\
In questo decimo #glossario("periodo") non sono stati rilevati obiettivi non raggiunti.

*Problematiche non attese*:\
In questo decimo #glossario("periodo") non sono state rilevate delle problematiche non attese.

*Mitigazione rischi verificati*:\
Durante questo decimo #glossario("periodo") si è verificato solo uno dei due rischi preventivati e queste sono le strategie di mitigazione adottate:
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]: tale rischio è stato mitigato grazie allo studio delle tecnologie che si sono rivelate più critiche e attraverso riunioni tra i membri col ruolo di #glossario("programmatore") e tra quelli col ruolo di #glossario("progettista") per ottenere una maggiore consapevolezza della situazione attuale e valutare diverse strategie di risoluzione dei problemi.


*Possibili cambiamenti*:\
Durante il decimo #glossario("periodo") si è evidenziata un'efficace gestione e mitigazione dei rischi e una buona pianificazione delle ore. Questo ha permesso di completare tutti gli obiettivi prefissati e di gestire agevolmente le problematiche che si sono verificate. 

#pb();

*Tabella esito effettivo*:\ 
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[3],[0],[4],[9],[2],[0],[€ #(3*costo_ora.res+4*costo_ora.ver+9*costo_ora.proge+2*costo_ora.progr)],
      [Leonardo\ Lucato],[0],[4],[0],[7],[0],[0],[€ #(4*costo_ora.amm+7*costo_ora.proge)],
      [Giacomo\ Pesenato],[0],[0],[0],[7],[1],[0],[€ #(7*costo_ora.proge+1*costo_ora.progr)],
      [Francesco\ Pozzobon],[0],[0],[0],[1],[15.5(#text(red)[+1.5])],[0],[€ #(1*costo_ora.proge+15.5*costo_ora.progr) (#text(red)[+€ #(1.5*costo_ora.progr)])],
      [Giovanni\ Salvò],[6],[0],[0],[1(#text(red)[+1])],[0],[0],[€ #(1*costo_ora.proge+6*costo_ora.res) (#text(red)[+€ #(1*costo_ora.proge)])],
      [Gioele\ Scandaletti],[0],[0],[0],[2],[7],[6],[€ #(2*costo_ora.proge+7*costo_ora.progr+6*costo_ora.ana)],
      [Pietro\ Valdagno],[0],[0],[0],[6],[3],[0],[€ #(6*costo_ora.proge+3*costo_ora.progr)],
      [*Costo per ruolo*],[€ #(9*costo_ora.res)],[€ #(4*costo_ora.amm)],[€ #(4*costo_ora.ver)],[€ #(33*costo_ora.proge) (#text(red)[+€ #(1*costo_ora.proge)]) ],[€ #(28.5*costo_ora.progr) (#text(red)[+€ #(1.5*costo_ora.progr)])],[€ #(6*costo_ora.ana)],[#text(blue)[*€ #(270+80+60+825+427.5+150)*] \ (#text(red)[+€ 47.5])],
    )
  ]
]

*Distribuzione effettiva delle ore*:
#{
  let plot = plot(data: (
    (9, "Responsabile - " + perc(8,84.5)),
    (4, "Amministratore - " + perc(4,84.5)),
    (4, "Verificatore - " + perc(4,84.5)),
    (33, "Progettista - " + perc(33,84.5)),
    (28.5, "Programmatore - " + perc(28.5,84.5)),
    (6, "Analista - " + perc(6,84.5)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Effettiva divisione ore decimo periodo", display_style: "hor-legend-chart")
}

#pb()

*Progresso delle #glossario("attività")*:\
#{
  let plot = plot(data: (
    (0, "Non fatto - " + perc(0,100)),
    (100, "Fatto - " + perc(100,100)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo 10", display_style: "hor-legend-chart",colors: (red, green))
}

== Periodo 11
=== Pianificazione
*#glossario("Periodo")*: 04/04/2025 - 11/04/2025 \
*Ruoli*: Viene riportata di seguito la suddivisione del #glossario("periodo")
#figure()[
  #align(center)[
    #table(
      columns: 2,
      align: (col, row) => (center, center).at(col),
      inset: 6pt,
      table.header([*Ruolo*], [*Membri*]),
        [Responsabile(Re)],[#p.pesenato],
        [Amministratore(Am)],[#p.pozzobon],
        [Analista(An)],[#p.scandaletti],
        [Programmatore(Prg)],[#p.checchinato,\ #p.salvo, #p.valdagno],
        [Verificatore(Ve)],[#p.lucato],
        [Progettista(Prt)], [#p.salvo]
    )
  ]
]

#pb()
*Obiettivi*:\
In questo #glossario("periodo"), l'obiettivo del team è completare le ultime attività previste prima della consegna finale del progetto. In particolare, l'attenzione si è focalizzata sulla finalizzazione del #glossario("MVP") e sull'aggiornamento dei documenti tecnici e di supporto. Per garantire il rispetto delle scadenze, è stata data priorità al testing del front-end e alla redazione della documentazione finale.
Nello specifico gli obiettivi di questo periodo sono:
- *Completamento #glossario("MVP")*: portare a termine le funzionalità principali dell'applicazione, consolidando l'integrazione tra front-end e back-end.
- *Testing front-end*: completare la scrittura e l'esecuzione dei test relativi all'interfaccia utente per garantire stabilità e corretto funzionamento delle funzionalità.
- *#glossario("Analisi dei Requisiti")*: aggiornare il documento includendo le ultime modifiche tecniche introdotte nel sistema.
- *#glossario("Piano di Qualifica")*: finalizzare il piano aggiornando le metriche di qualità e includendo i risultati ottenuti dal cruscotto di #glossario("Grafana").
- *#glossario("Specifica Tecnica")*: completare la descrizione di tutti i componenti sviluppati e delle scelte architetturali adottate.
- *#glossario("Manuale Utente")*: redigere il manuale con le istruzioni per l'uso dell'applicazione, facilitando la comprensione e l'adozione da parte degli utenti finali.


*Possibili rischi*\
I rischi che ci aspettiamo di incontrare durante questo #glossario("periodo") sono:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]
- #link(<RI-8>)[*RI-8 - Assenza di un membro del team per malattia o altri impegni*]

*Tabella preventivo*:\
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[0],[0],[0],[0],[12],[0],[€ #(12*costo_ora.progr)],
      [Leonardo\ Lucato],[0],[0],[5],[0],[0],[0],[€ #(5*costo_ora.ver)],
      [Giacomo\ Pesenato],[5],[0],[2],[0],[0],[0],[€ #(5*costo_ora.res+2*costo_ora.ver)],
      [Francesco\ Pozzobon],[0],[4],[0],[0],[0],[0],[€ #(4*costo_ora.amm)],
      [Giovanni\ Salvò],[0],[0],[0],[7],[3],[0],[€ #(7*costo_ora.proge+3*costo_ora.progr)],
      [Gioele\ Scandaletti],[0],[0],[0],[0],[0],[5],[€ #(5*costo_ora.ana)],
      [Pietro\ Valdagno],[0],[0],[0],[0],[10],[0],[€ #(10*costo_ora.progr)],
      [*Costo per ruolo*],[€ #(5*costo_ora.res)],[€ #(4*costo_ora.amm)],[€ #(7*costo_ora.ver)],[€ #(7*costo_ora.proge) ],[€ #(25*costo_ora.progr)],[€ #(5*costo_ora.ana)],[#text(blue)[*€ #(150+80+105+175+375+125)*]],
    )
  ]
]

#pb()
*Distribuzione preventivata delle ore:* \
#{
  let plot = plot(data: (
    (5, "Responsabile - " + perc(5,53)),
    (4, "Amministratore - " + perc(4,53)),
    (7, "Verificatore - " + perc(7,53)),
    (7, "Progettista - " + perc(7,53)),
    (25, "Programmatore - " + perc(25,53)),
    (5, "Analista - " + perc(5,53)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore undicesimo periodo", display_style: "hor-legend-chart")
}

=== Esito

*Obiettivi non raggiunti*:\
In questo undicesimo #glossario("periodo") non sono stati rilevati obiettivi non raggiunti.

*Problematiche non attese*:\
In questo undicesimo #glossario("periodo") non sono state rilevate delle problematiche non attese.

*Mitigazione rischi verificati*:\
Durante questo undicesimo #glossario("periodo") si sono verificati tutti e tre i rischi preventivati e queste sono le strategie di mitigazione adottate:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]: tale rischio è stato mitigato grazie alla flessibilità organizzativa del gruppo e alla disponibilità degli altri membri nel redistribuire temporaneamente le attività, garantendo la continuità del lavoro.  
- #link(<RI-4>)[*RI-4 - Mancanza di conoscenze tecniche*]: tale rischio è stato affrontato tramite sessioni di studio mirate e pair programming, oltre all'organizzazione di incontri tra i membri con più esperienza per facilitare l'apprendimento delle tecnologie più complesse.  
- #link(<RI-8>)[*RI-8 - Assenza di un membro del team per malattia o altri impegni*]: la suddivisione modulare delle attività e l'uso di strumenti collaborativi ha permesso ad altri membri di subentrare rapidamente nei compiti assegnati, minimizzando ritardi e rallentamenti nel progresso del progetto.

*Possibili cambiamenti*:\
Durante l'undicesimo #glossario("periodo") le attività sono state svolte con successo e senza intoppi, portando a termine gli obiettivi previsti. La gestione dei rischi si è rivelata efficace, consentendo al team di affrontare le sfide in modo proattivo e di mantenere il progetto in linea con le scadenze stabilite.
Questo ha contribuito ad un avanzamento significativo del lavoro e ad una buona pianificazione delle ore, garantendo il completamento delle attività in modo efficiente e tempestivo.

#pb();

*Tabella esito effettivo*:\
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[0],[0],[0],[0],[16(#text(red)[+4])],[0],[€ #(16*costo_ora.progr) (#text(red)[+€ #(4*costo_ora.progr)])],
      [Leonardo\ Lucato],[0],[0],[4(#text(green)[-1])],[0],[0],[0],[€ #(4*costo_ora.ver) (#text(green)[-€ #(1*costo_ora.ver)])],
      [Giacomo\ Pesenato],[5],[1 (#text(red)[+1])],[2],[0],[3 (#text(red)[+3])],[0],[€ #(5*costo_ora.res+1*costo_ora.amm+2*costo_ora.ver+3*costo_ora.progr) (#text(red)[+€ #(1*costo_ora.amm+3*costo_ora.progr)])],
      [Francesco\ Pozzobon],[0],[0 (#text(green)[-4])],[5 (#text(red)[+5])],[0],[0],[0],[€ #(5*costo_ora.ver) (#text(green)[-€ #(5)])],
      [Giovanni\ Salvò],[0],[0],[3 (#text(red)[+3])],[7],[3],[3 (#text(red)[+3])],[€ #(3*costo_ora.ver+7*costo_ora.proge+3*costo_ora.progr+3*costo_ora.ana) (#text(red)[+€ #(3*costo_ora.ver+3*costo_ora.ana)])],
      [Gioele\ Scandaletti],[0],[0],[0],[0],[10 (#text(red)[+10])],[0 (#text(green)[-5])],[€ #(10*costo_ora.progr) (#text(red)[+€ #(25)])],
      [Pietro\ Valdagno],[0],[0],[0],[0],[12 (#text(red)[+2])],[0],[€ #(12*costo_ora.progr) (#text(red)[+€ #(2*costo_ora.progr)])],
      [*Costo per ruolo*],[€ #(5*costo_ora.res)],[€ #(1*costo_ora.amm)\ (#text(green)[-€#(3*costo_ora.amm)])],[€ #(14*costo_ora.ver)\ (#text(red)[+€#(7*costo_ora.ver)])],[€ #(7*costo_ora.proge) ],[€ #(44*costo_ora.progr) \ (#text(red)[+€#(19*costo_ora.progr)])],[€ #(3*costo_ora.ana)\ (#text(green)[-€ #(2*costo_ora.ana)])],[#text(blue)[*€ #(150+20+210+175+660+75)*]\ (#text(red)[+€ 280])],
    )
  ]
]

*Distribuzione effettiva delle ore*:
#{
  let plot = plot(data: (
    (5, "Responsabile - " + perc(5,74)),
    (1, "Amministratore - " + perc(1,74)),
    (14, "Verificatore - " + perc(14,74)),
    (7, "Progettista - " + perc(7,74)),
    (44, "Programmatore - " + perc(44,74)),
    (3, "Analista - " + perc(3,74)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Effettiva divisione ore undicesimo periodo", display_style: "hor-legend-chart")
}

#pb()
*Progresso delle #glossario("attività")*:\

#{
  let plot = plot(data: (
    (0, "Non fatto - " + perc(0,100)),
    (100, "Fatto - " + perc(100,100)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo 11", display_style: "hor-legend-chart",colors: (red, green))
}

== Periodo 12
=== Pianificazione
*#glossario("Periodo")*: 12/04/2025 - 04/05/2025 \
*Ruoli*: Viene riportata di seguito la suddivisione del #glossario("periodo")
#figure()[
  #align(center)[
    #table(
      columns: 2,
      align: (col, row) => (center, center).at(col),
      inset: 6pt,
      table.header([*Ruolo*], [*Membri*]),
        [Responsabile(Re)],[#p.checchinato],
        [Amministratore(Am)],[#p.lucato],
        [Analista(An)],[#p.pesenato],
        [Programmatore(Prg)],[#p.salvo],
        [Verificatore(Ve)],[#p.pozzobon,#p.salvo,\ #p.scandaletti,#p.valdagno],
        [Progettista(Prt)], [_non presente_]
    )
  ]
]

#pb()
*Obiettivi*:\
In questa fase conclusiva del progetto, l’obiettivo primario del team è completare lo sviluppo dell’#glossario("MVP") e finalizzare tutta la documentazione necessaria per la chiusura ufficiale delle attività. Il lavoro si è quindi concentrato sia sul consolidamento del prodotto software che sulla revisione tecnica e formale dei documenti richiesti.
L’intento è garantire un rilascio stabile e ben documentato dell’applicazione, facilitando la valutazione del progetto e l’utilizzo da parte degli utenti.

Nello specifico, gli obiettivi di questo periodo sono:
  - *Finalizzazione #glossario("MVP")*: risolvere gli ultimi bug e ottimizzare le funzionalità implementate, garantendo un’applicazione stabile e performante.
  - *Approvazione aziendale*: presentare il prodotto finale all’azienda ospitante, con l’obiettivo di ottenere un riscontro positivo e l’approvazione definitiva del progetto.
	- *Revisione documentale*: rileggere e correggere i documenti prodotti, assicurandosi che siano aggiornati rispetto all’implementazione finale e coerenti tra loro.


*Possibili rischi*\
I rischi che ci aspettiamo di incontrare durante questo #glossario("periodo") sono:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]
- #link(<RI-6>)[*RI-6 - Sovraccarico di lavoro*]

*Tabella preventivo*:\
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[2],[0],[0],[0],[0],[0],[€ #(2*costo_ora.res)],
      [Leonardo\ Lucato],[0],[2],[0],[0],[0],[0],[€ #(2*costo_ora.amm)],
      [Giacomo\ Pesenato],[0],[0],[0],[0],[0],[2],[€ #(0*costo_ora.proge+2*costo_ora.ana)],
      [Francesco\ Pozzobon],[0],[0],[2],[0],[0],[0],[€ #(2*costo_ora.ver)],
      [Giovanni\ Salvò],[0],[0],[6],[0],[8],[0],[€ #(8*costo_ora.progr+6*costo_ora.ver)],
      [Gioele\ Scandaletti],[0],[0],[10],[0],[0],[0],[€ #(10*costo_ora.ver)],
      [Pietro\ Valdagno],[0],[0],[2],[0],[0],[0],[€ #(2*costo_ora.ver)],
      [*Costo per ruolo*],[€ #(2*costo_ora.res)],[€ #(2*costo_ora.amm)],[€ #(20*costo_ora.ver)],[€ #(0*costo_ora.proge) ],[€ #(8*costo_ora.progr)],[€ #(2*costo_ora.ana)],[#text(blue)[*€ #(60+40+300+0+120+50)*]],
    )
  ]
]

#pb()
*Distribuzione preventivata delle ore:* \
#{
  let plot = plot(data: (
    (2, "Responsabile - " + perc(2,34)),
    (2, "Amministratore - " + perc(2,34)),
    (20, "Verificatore - " + perc(20,34)),
    (0, "Progettista - " + perc(0,34)),
    (8, "Programmatore - " + perc(8,34)),
    (2, "Analista - " + perc(2,34)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Preventivo divisione ore dodicesimo periodo", display_style: "hor-legend-chart")
}

=== Esito
*Obiettivi non raggiunti*:\
In questo dodicesimo #glossario("periodo") non sono stati rilevati obiettivi non raggiunti.

*Problematiche non attese*:\
In questo dodicesimo #glossario("periodo") non sono state rilevate delle problematiche non attese.

*Mitigazione rischi verificati*:\
Durante questo dodicesimo #glossario("periodo") si è verificato solo uno dei due rischi preventivati e queste sono le strategie di mitigazione adottate:
- #link(<RI-2>)[*RI-2 - Problemi personali dei membri del team*]: Il rischio è stato mitigato tramite una riorganizzazione delle attività, redistribuendo i compiti urgenti tra i membri disponibili e mantenendo una comunicazione costante per garantire il rispetto delle scadenze.

*Possibili cambiamenti*:\
Durante il dodicesimo #glossario("periodo") il team ha raggiunto tutti gli obiettivi prefissati, completando con successo sia lo sviluppo del #glossario("MVP") sia la redazione e revisione della documentazione.
Nonostante il verificarsi di un rischio, la risposta è stata tempestiva ed efficace, permettendo di mantenere il progetto allineato con le scadenze pianificate.
Grazie a una gestione attenta delle attività e a una pianificazione coerente delle risorse, non sono emerse criticità rilevanti e il lavoro è proseguito senza intoppi, portando a un esito positivo per il progetto.
#pb();
*Tabella esito effettivo*:\
#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Persona*], [*Re.*], [*Am.*],[*Ve.*], [*Prt.*], [*Prg.*], [*An.*], [*Costo persona*]),
      [Gabriele\ Checchinato],[2],[0],[0],[0],[0],[0],[€ #(2*costo_ora.res)],
      [Leonardo\ Lucato],[0],[2],[0],[0],[0],[0],[€ #(2*costo_ora.amm)],
      [Giacomo\ Pesenato],[0],[0],[0],[1 (#text(red)[+1])],[0],[2],[€ #(1*costo_ora.proge+2*costo_ora.ana) (#text(red)[+€ #(1*costo_ora.proge)])],
      [Francesco\ Pozzobon],[0],[0],[3.5 \ (#text(red)[+1.5])],[0],[0],[0],[€ #(3.5*costo_ora.ver) (#text(red)[+€ #(1.5*costo_ora.ver)])],
      [Giovanni\ Salvò],[0],[0],[6],[0],[8],[0],[€ #(8*costo_ora.progr+6*costo_ora.ver)],
      [Gioele\ Scandaletti],[0],[0],[11.5 \ (#text(red)[+1.5])],[0],[0],[0],[€ #(11.5*costo_ora.ver) (#text(red)[+€ #(1.5*costo_ora.ver)])],
      [Pietro\ Valdagno],[0],[0],[2],[0],[0],[0],[€ #(2*costo_ora.ver)],
      [*Costo per ruolo*],[€ #(2*costo_ora.res)],[€ #(2*costo_ora.amm)],[€ #(23*costo_ora.ver) \ (#text(red)[+€ #(3*costo_ora.ver)]) ],[€ #(1*costo_ora.proge) \ (#text(red)[+€ #(1*costo_ora.proge)])],[€ #(8*costo_ora.progr)],[€ #(2*costo_ora.ana)],[#text(blue)[*€ #(60+40+345+25+120+50)*]],
    )
  ]
]

*Distribuzione effettiva delle ore*:
#{
  let plot = plot(data: (
    (2, "Responsabile - " + perc(2,38)),
    (2, "Amministratore - " + perc(2,38)),
    (23, "Verificatore - " + perc(23,38)),
    (1, "Progettista - " + perc(1,38)),
    (8, "Programmatore - " + perc(8,38)),
    (2, "Analista - " + perc(2,38)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Effettiva divisione ore dodicesimo periodo", display_style: "hor-legend-chart")
}

#pb()
*Progresso delle #glossario("attività")*:\
#{
  let plot = plot(data: (
    (0, "Non fatto - " + perc(0,100)),
    (100, "Fatto - " + perc(100,100)),
  ))

  pie_chart(plot, (40%, 30%), caption: "Stato di avanzamento Periodo 12", display_style: "hor-legend-chart",colors: (red, green))
}

== Resoconto PB

#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center, center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Ruolo*],[*Periodo 7*], [*Periodo 8*], [*Periodo 9*],[*Periodo 10*], [*Periodo 11*], [*Periodo 12*], [*Costo tot*] ), 
      [Responsabile],[€ 120],[€ 180],[€ 150],[€ 270],[€ 150],[€ 60],[€ #(120+180+150+270+150+60)],
      [Amministratore],[€ 40],[€ 20],[€ 180],[€ 80],[€ 20],[€ 40],[€ #(40+20+180+80+20+40)],
      [Verificatore],[€ 45],[€ 45],[€ 105],[€ 60],[€ 210],[€ 345],[€ #(45+45+105+60+210+345)],
      [Progettista],[€ 600],[€ 350],[€ 325],[€ 825],[€ 175],[€25],[€ #(600+350+325+825+175+25)],
      [Programmatore],[€ 0],[€ 720],[€ 585],[€ 427.5],[€ 660],[€ 120],[€ #(0+720+585+427.5+660+120)],
      [Analista],[€ 231.25],[€ 25],[€ 50],[€ 150],[€ 75],[€ 50],[€ #(231.25+25+50+150+75+50)],
      [*Costo per periodo*],[€ 1036.25],[€ 1340],[€ 1395],[€ 1812.5 ],[€ 1290],[€ 640],[#text(blue)[*€ #(1036.25+1340+1395+1812.5+1290+640)*]],
    )
  ]
]

#pb()

== Resoconto finale
Il consuntivo finale del progetto evidenzia una gestione efficace delle risorse, con uno scostamento minimo rispetto al preventivo iniziale. Nello specifico, durante la fase #glossario("RTB") sono stati impiegati *€5011,25*, mentre nella fase di #glossario("PB") sono stati spesi *€7513,75*, per un totale complessivo di *€12.525,00* sui *€12.530,00* preventivati. Inoltre la data prevista per la consegna del prodotto finale è entro il *04/05/2025*. Ecco un riepilogo delle ore e dei costi sostenuti durante il progetto:

#figure()[
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto),
      align: (col, row) => (center, center, center, center).at(col),
      inset: 6pt,
      table.header([*Ruolo*],[*Costo/h*], [*Ore*], [*Costo Ruolo*]), 
      [Responsabile],[€ 30],[67.25],[€ #(30*67.25)],
      [Amministratore],[€ 20],[77.75],[€ #(20*77.75)],
      [Verificatore],[€ 15],[113.75],[€ #(15*113.75)],
      [Progettista],[€ 25],[92],[€ #(25*92)],
      [Programmatore],[€ 15],[203.5],[€ #(15*203.5)],
      [Analista],[€ 25],[€ 75.75],[€ #(25*75.75)],
    )
  ]
]

#figure()[
  #align(center)[
    #table(
      columns: (auto, auto),
      align: (col, row) => (center, center).at(col),
      inset: 6pt,
      table.header([*Persona*],[*Ore totali*]), 
      [#p.checchinato],[92.75],
      [#p.lucato],[91],
      [#p.pesenato],[92],
      [#p.pozzobon],[91],
      [#p.salvo],[85],
      [#p.scandaletti],[87],
      [#p.valdagno],[91.25],
    )
  ]
]