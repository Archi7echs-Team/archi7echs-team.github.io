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
  #title[Analisi dei Capitolati]
  
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
      [#strong[Tipologia Documento:] Interno],
      [#strong[Ultima Modifica:] 29/10/2024 16:25],
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
        [1.1], [29/10/2024], [Correzioni], [Gabriele Checchinato], [Leonardo Lucato], [Leonardo Lucato],
        [1.0], [28/10/2024], [Prima stesura documento], [Team], [Leonardo Lucato], [Leonardo Lucato],

    )
    <tab:my_label>
  ]
]
#pagebreak(weak: true)

#set align(left)
#set par(justify:true)

#outline(depth: 1)

#pagebreak(weak: true)


= Capitolato scelto: C5 - 3Dataviz <quinto-punto>

== Descrizione
*Proponente*: Sanmarco Informatica S.p.A.\
*Committenti*: Prof. Tullio Vardanega e Prof. Riccardo Cardin.\
*Obiettivo*: Realizzare una piattaforma di visualizzazione tridimensionale dei dati, che consenta agli utenti di navigare e interagire con grafici 3D rappresentanti dati complessi, utili per l'analisi e la presentazione di informazioni.\

    
== Dominio applicativo
    
L’obiettivo del progetto è facilitare la comprensione di grandi quantità di dati attraverso una rappresentazione visiva in 3D. I dati ricevuti saranno visualizzati sotto forma di istogrammi tridimensionali, con supporto per rotazione, pan, zoom e selezione interattiva delle barre. Gli utenti principali della piattaforma saranno le aziende che necessitano di strumenti avanzati per l’analisi e la visualizzazione di dati, utilizzabili sia internamente che per la comunicazione con clienti e stakeholder.

== Dominio tecnologico
    
Le tecnologie suggerite per questo progetto includono:

- Librerie per la visualizzazione 3D: Three.js per la grafica tridimensionale e D3.js per la manipolazione dei dati.
- Framework frontend: React e Angular, scelti per le loro capacità di supportare interfacce interattive complesse.
- Gestione dei dati: Possibilità di scegliere tra dati inseriti manualmente tramite UI, database SQL o attraverso REST API pubbliche.

== Motivazione della scelta
    
I motivi principali per la scelta di questo capitolato includono:

- Interesse per la visualizzazione e la manipolazione tridimensionale dei dati, una competenza tecnica considerata dal gruppo interessante e innovativa.
- Potenzialità per lo sviluppo delle conoscenze di programmazione 3D e gestione dati in contesti complessi.
- Accesso a figure di supporto qualificate all'interno dell'azienda proponente, disponibili per rispondere a eventuali dubbi durante lo sviluppo.

== Conclusioni
    
Il progetto 3Dataviz risulta stimolante per il gruppo di lavoro, offrendo opportunità di crescita tecnica e approfondimento di tecnologie innovative. Il riscontro positivo nell'incontro con il rappresentante aziendale ha rafforzato la scelta del capitolato come progetto di riferimento per il gruppo, in quanto permette una piena integrazione delle competenze tecniche acquisite.

#pagebreak(weak: true)

= C1 - Artificial QI <primo-punto>

== Descrizione
*Proponente*: Zucchetti S.p.A.\
*Committenti*: Prof. Tullio Vardanega e Prof. Riccardo Cardin.\
*Obiettivo*: Creare un sistema di test per applicazioni che utilizzano LLM. Confrontare le loro risposte con delle risposte attese verificandone il grado di correttezza.

  
== Dominio applicativo
  
Il dominio applicativo del capitolato si concentra sulla valutazione delle performance dei Large Language Models (LLM) attraverso un sistema di test strutturato. L'obiettivo è sviluppare una soluzione che permetta di esaminare i risultati dei LLM utilizzati in applicazioni pratiche, in modo da verificare la loro effettiva utilità e affidabilità.

== Dominio tecnologico
  
Le tecnologie suggerite comprendono:
- Utilizzo di Database per l'archiviazione delle domande e risultati attesi.
- Interfacciarsi ai LLM utilizzando chiamate API.
- Confronto tra le risposte attese e quelle degli LLM in maniera automatica.

== Aspetti positivi
  
- Imparare ed applicare l'utilizzo di tecnologie innovative come i LLM
- Approfondire l'utilizzo di API.
- Collaborare con un'azienda consolidata a livello mondiale nel settore dello sviluppo software.

== Fattori critici
  
- Il progetto richiede un notevole impegno nell'integrazione e gestione di modelli LLM molte volte non propriamente allenati.
- Nonostante l'interesse iniziale all'interno del team di sviluppo, la presentazione del progetto da parte del proponente ed il successivo approfondimento non è risultata abbastanza convincente.
  
== Conclusione
   
Nonostante l’ottima impressione che l’azienda ha lasciato sul gruppo, il capitolato in questione non è stato scelto a causa dello scarso interesse generale dei componenti per il tema e gli obiettivi fissati dal progetto.
  

#pagebreak(weak: true)

= C2 - Vimar Geniale <secondo-punto>

== Descrizione
*Proponente*: Vimar S.p.A.\
*Committenti*: Prof. Tullio Vardanega e Prof. Riccardo Cardin.\
*Obiettivo*: Creare un’applicazione per installatori che permetta di ottenere risposte rapide e dettagliate su prodotti Vimar tramite domande tecniche. L’applicazione include una componente web, una server, e un’infrastruttura compatibile con il cloud.

  
== Dominio applicativo
  
  Il progetto si concentra sulla creazione di una piattaforma di supporto tecnico per installatori che lavorano con prodotti Vimar. L’applicazione consentirebbe loro di accedere a risposte testuali e visive per configurazioni e problematiche tecniche, con l’integrazione di un sistema di estrazione dati dal sito Vimar, indicizzazione e interrogazione tramite un Large Language Model (LLM).

== Dominio tecnologico
  
Le tecnologie suggerite comprendono:
- Data Engineering per l’estrazione, il salvataggio e l’indicizzazione dei dati.
- Data Science con utilizzo di modelli di linguaggio e approccio RAG (Retrieval-Augmented Generation).
- Cloud Computing con integrazione di Infrastructure as Code (IaC) e containerizzazione.
- Testing avanzato: include test di unità, integrazione ed end-to-end, con una copertura minima richiesta tra il 75% e il 90%.

== Aspetti positivi

- La possibilità di apprendere e applicare tecnologie moderne come LLM, cloud e data engineering.
- Collaborazione con un’azienda consolidata nel settore domotico e con esperienza in IoT e cloud.
- Opportunità di sviluppo in un ambiente tecnologico diversificato e accesso a esperti del settore.

== Fattori critici

- Il progetto richiede un notevole impegno nell'integrazione e gestione di modelli di linguaggio avanzati, ritenuto non prioritario dal gruppo.
- La necessità di competenze avanzate in Data Science e gestione cloud, non completamente in linea con gli interessi di sviluppo del gruppo.

== Conclusioni

Il capitolato offre un'opportunità stimolante per lavorare con tecnologie innovative ed apprendere concetti avanzati. Tuttavia, dopo un'attenta valutazione, il team ha deciso di escluderlo dalle scelte principali, ritenendolo troppo complesso e poco in linea con gli interessi di tutto il gruppo.
   
   

#pagebreak(weak: true)

= C3 - Automatizzare le routine digitali tramite l’intelligenza generativa <terzo-punto>

== Descrizione
  
*Proponente*: Var Group.\
*Committenti*: Prof. Tullio Vardanega e Prof. Riccardo Cardin.\
*Obiettivo*: Automatizzare attività quotidiane svolte manualmente dall’utente tramite un workflow modulare usando un’interfaccia conversazionale per descrivere l’attività da automatizzare in linguaggio naturale.

== Dominio applicativo
  
Il progetto proposto vuole creare un modo facile e veloce per automatizzare attività quotidiane usando i sistemi di AI. Questo richiede lo sviluppo di un sistema in grado di produrre automazioni da eseguire localmente o nei servizi finali. L’utilizzo avviene tramite client per ambiente Windows o Apple dotato di interfaccia drag & drop per disegnare flussi di automazione tramite l’uso di “blocchi” funzionali, tra i quali possono essere inserite attività che il software deve generare in autonomia in base alla descrizione fornita in linguaggio naturale.

== Dominio tecnologico
  
Le tecnologie suggerite per questo progetto includono:
- Sviluppo in ambiente Windows: Python o C\# per il back-end e React per il front-end.
- Sviluppo in ambiente Apple: Swift per il back-end e Swift UI per il front-end.
- Il database consigliato è MongoDB per entrambi gli ambienti o qualsiasi altro database locale.
- Sviluppo API cloud: NodeJS, Python e Typescript.

== Aspetti positivi
  
- Opportunità di apprendere tecnologie avanzate come AWS e strumenti per l'intelligenza artificiale generativa.
- Formazione da parte del team Var Group su tecnologie impiegate in fase di sviluppo e supporto nelle varie fasi del progetto.
- Copertura del codice richiesta stimola l’uso di best practices e review tecniche con esperti per sviluppo di codice all’avanguardia.

== Fattori critici
  
- Il progetto richiede una buona conoscenza di AWS e dei suoi strumenti di Generative AI, aspetto che rappresenta una sfida per il gruppo.
- È necessario un notevole impegno nella gestione di molteplici tecnologie, oltre a dover gestire la modularità del workflow.

== Conclusioni
  
Il progetto non ha suscitato l'interesse del gruppo, sia per le tecnologie coinvolte che per il tema affrontato, e pertanto è stato scartato sin dall'inizio. Anche in seguito a una riflessione su tutti i capitolati, la sua posizione è rimasta invariata.
  

#pagebreak(weak: true)

= C4 - NearYou - Smart custom advertising platform <quarto-punto>

== Descrizione
*Proponente*: Sync Lab.\
*Committenti*: Prof. Tullio Vardanega e Prof. Riccardo Cardin.\
*Obiettivo*: Creare una piattaforma di pubblicità personalizzata basata su IA, progettata per generare annunci dinamici e mirati utilizzando dati contestuali degli utenti, tra cui posizione geografica e preferenze personali.
  
== Dominio applicativo
  
Il progetto mira a risolvere il problema della scarsa personalizzazione nella pubblicità digitale, che spesso non tiene conto del contesto o delle preferenze degli utenti. Attraverso una piattaforma basata su LLM e tecnologie di prossimità, gli annunci pubblicitari sono adattati al contesto e alle interazioni precedenti degli utenti, migliorando il coinvolgimento e il ritorno sugli investimenti per i brand. La piattaforma consente di visualizzare annunci solo quando risultano rilevanti, massimizzando l’efficacia del messaggio pubblicitario.

== Dominio tecnologico

  Le tecnologie proposte includono:
- Data Stream Processing per la raccolta e l'arricchimento in tempo reale di dati dagli utenti.
- Generative AI tramite LLM, per la creazione di messaggi pubblicitari personalizzati.
- Database e Storage: raccomandati sistemi come PostGIS e ClickHouse per la gestione di dati geospaziali e in serie temporale.
- Data Visualization: strumenti come Grafana e Superset per monitorare i dati sia dal lato utente che cliente.
- Test avanzati: implementazione di test end-to-end e copertura minima dell'80%.

== Aspetti positivi

- Possibilità di sperimentare tecnologie all'avanguardia come LLM, data stream processing e geolocalizzazione.
- Accesso al supporto tecnico di Sync Lab, con una vasta esperienza in ICT e sistemi IoT.
- Sviluppo di competenze nei settori della pubblicità digitale personalizzata e della gestione dati.

== Fattori critici

- Complessità nell'integrazione delle tecnologie di AI con i dati di prossimità e la personalizzazione degli annunci.
- Impegno necessario per realizzare una piattaforma affidabile e in tempo reale, con potenziale di scalabilità nel mercato pubblicitario.

== Conclusioni

Il progetto non ha suscitato interesse nel gruppo a causa delle tematiche affrontate. Tuttavia, le tecnologie di sviluppo consigliate rimangono preziose, data la loro ampia applicabilità nel settore software.


#pagebreak(weak: true)

= C6 - 	Sistema di gestione di un magazzino distribuito <sesto-punto>

== Descrizione
*Proponente*: M31.\
*Committenti*: Prof. Tullio Vardanega e Prof. Riccardo Cardin.\
*Obiettivo*: Realizzare un sistema che fornisca una visibilità centralizzata e in real-time dell’inventario distribuito tra più sedi in modo da bilanciare l’inventario e che le operazioni di magazzino possano essere eseguite senza interruzioni.

  
== Dominio applicativo
  
Creare un sistema distribuito che sia scalabile e basato su un’architettura a microservizi. Il progetto deve garantire l’interoperabilità tra i magazzini e la disponibilità in informazioni centralizzate attraverso una dashboard. Particolarità del sistema è che deve essere in grado di gestire richieste simultanee e scenari di elevato carico di dati, garantendo prestazioni elevate.

== Dominio tecnologico
  
Le tecnologie richieste dal capitolato devono essere in linea con quelle già in uso dall’azienda e rispettando il requisito della scalabilità e di sistema distribuito.
- Per i microservizi: Node.js e Nest.js (usando TypeScript come linguaggio), grazie alla loro capacità di creare applicazioni server-side performanti e modulari.
- Per i componenti che richiedono alte prestazioni: Go.
- Per la comunicazione tra microservizi: NATS o Apache Kafka, vista la loro robustezza.
- Per la l’orchestrazione del sistema e la gestione centralizzata: Google Cloud. 
- Per la memorizzazione dei dati: MongoDB per i dati non strutturati e PostgreSQL per i dati strutturati.
- Per il sistema di caching: Redis.
- Per il frontend: Angular.
 
== Aspetti positivi

- Possibilità di apprendere conoscenze che permettono di raggiungere gli obiettivi richiesti dal capitolato, quali sistemi distribuiti e real-time.
- Possibilità di sviluppare un progetto utilizzando il Cloud, tecnologia sempre più diffusa per l'affidabilità dell'infrastruttura.
- Possibilità di aumentare le proprie conoscenze riguardo il failover e l'alta affidabilità dei sistemi.

== Fattori critici

- Complessità del progetto, sia per l'infrastruttura da realizzare che per il vasto numero di tecnologie necessarie per lo sviluppo.
- Elevato numero di requisiti richiesti dal capitolato.

== Conclusioni
Il progetto ha inizialmente riscontrato interesse da parte del team perchè differente da tutti gli altri ma, in una fase di analisi più approfondita, si è scelto di scartarlo per la grande complessità e il vasto numero di tecnologie richieste, molte delle quali, ad oggi sconoscute a tutti i membri del gruppo.

#pagebreak(weak: true)

= C7 - 	LLM: Assistente virtuale <settimo-punto>

== Descrizione 
*Proponente:* Ergon. \
*Committenti:* Prof. Tullio Vardanega e Prof. Riccardo Cardin. \
*Obiettivo:* Implementazione di un assistente virtuale basato su LLM per il supporto clienti, progettato per fornire conoscenza approfondita sui prodotti di un catalogo. L’assistente, disponibile 24/7, fornisce risposte rapide e contestualizzate alle domande dei clienti. Grazie alla gestione di una notevole mole di dati del catalogo, l’assistente permette ai clienti di ottenere informazioni mirate in modo rapido e conciso, senza la necessità di avere Specialist differenti per ogni tipologia di prodotto.\
    
== Dominio applicativo
Il progetto mira a sviluppare una LLM per facilitare la ricerca di informazioni all'interno di una mole di dati in costante espansione. Il target principale sono le aziende con un volume crescente di dati, interessate a rendere più agevole la ricerca di informazioni specifiche sui prodotti all'interno di un catalogo. Questa soluzione risulta utile per tutte le realtà che necessitano di un sistema semplice e veloce per ottenere informazioni contestuali, senza dover ricorrere alla presenza di uno "Specialist" per chiarimenti.\
    
== Dominio tecnologico
L'azienda nella presentazione del capitolato consiglia le seguenti tecnologie:
- Per le basi di dati: Sql Server Express, MariaDB, MySql.
- Per l'interazione tra il database e l'applicativo:ORM - Entity Framework, ODBC, Middleware (es. JSON).
- Per l'interfaccia utente:.NET MAUI.
- LLM consigliate: BLOOM, Falcon AI, Pythia, Italia by iGenius, Minerva.

== Aspetti positivi
- Disponibilità dell'azienda: Ergon, nella presentazione dei capitolati, si è dimostrata molto partecipe nell'aiutare i gruppi nel percorso da svolgere nei mesi a venire tramite supporto con il team interno e interazioni da remoto, con possibilità di avere un set di dati disponibile per un caso di studio base.
- L'idea di affrontare argomenti moderni e ancora poco conosciuti nel pratico con l'aiuto di un'azienda a supporto è motivante.

== Fattori critici
- Un importante aspetto considerato dall'azienda è l'utilizzo di LLM ancora poco conosciute.
- La documentazione proposta da alcune LLM non sono risultate interessanti e utili al fine di questo progetto

== Conclusioni
Il progetto ha riscontrato alcuni aspetti positivi che hanno portato il gruppo a interessarsi del capitolato, visto il supporto fornito dall'azienda nel percorso di apprendimento alle nuove tecnologie. Sono stati evidenziati però degli aspetti negativi che hanno influito sulla decisione della scelta di questo capitolato. Il progetto proposto è risultato la nostra 3a scelta.

#pagebreak(weak: true)

= C8 - Requirement Tracker - Plug-in VS Code <ottavo-punto>

== Descrizione
*Proponente*: Bluewind s.r.l.\
*Committenti*: Prof. Tullio Vardanega e Prof. Riccardo Cardin.\
*Obiettivo*: Sviluppare un plug-in per Visual Studio Code in grado di automatizzare il tracciamento dei requisiti  nel codice sorgente, migliorando la loro qualità attraverso suggerimenti e correzioni generati tramite intelligenza artificiale e garantendo una struttura facilmente estensibile per aggiornamenti futuri.\

== Dominio applicativo
Il progetto si concentra sulla creazione di un plug-in con un’interfaccia che consenta di navigare tra requisiti, codice e file correlati, facilitando l’analisi dei requisiti stessi. Lo strumento quindi deve permettere di migliorare la chiarezza e la qualità dei requisiti attraverso suggerimenti e correzioni. Il progetto è destinato a sviluppatori software che lavorano su progetti complessi, soprattutto embedded, dove qualità e tracciabilità dei requisti sono aspetti cruciali. L’architettura modulare è uno degli obiettivi principali del progetto, per consentire l'aggiunta di nuove funzionalità senza richiedere modifiche sostanziali.

== Dominio tecnologico
Le tecnologie suggerite per questo progetto includono:

- Visual Studio Code Extension API: per lo sviluppo dell'architettura del plug-in.
- API REST: per connettere il plug-in ai modelli AI e per l’analisi del codice e dei requisiti.
- Python o Node.js per l'integrazione con le API AI.
- Modelli AI pre-addestrati per l’analisi semantica dei requisiti, consentendo quindi valutazioni della qualità e suggerimenti di miglioramento.

== Aspetti positivi
- Viene proposto un supporto continuo e approfondito con interazioni sia da remoto che in presenza, incentivando un contatto e apprendimento costante.
- La creazione del plug-in proposto è utile per comprendere come affrontare alcuni aspetti della realizzazione di un progetto in maniera efficace, in particolare la stesura dei requisiti e la loro analisi.
- Il plug-in deve essere progettato per evolversi e supportare nuove funzionalità senza modifiche complesse, rendendolo flessibile e adatto a progetti a lungo termine e permettendo quindi di affrontare attivamente i concetti tipici della modularità.

== Fattori critici
- Il progetto richiede l'implementazione di modelli di AI per l'analisi dei requisiti, aspetto che il gruppo considera non prioritario.
- La creazione di un plug-in per Visual Studio Code che integri intelligenza artificiale rappresenta una sfida intricata, che non ha suscitato sufficienti stimoli nel gruppo.

== Conclusioni
Il progetto di sviluppo del plug-in offre prospettive utili in ambito di tracciabilità e gestione dei requisiti ma le tecnologie trattate e l’ambito del progetto non hanno generato interesse nel gruppo e quindi è stato escluso dalle preferenze fin da subito.

#pagebreak(weak: true)

= C9 - BuddyBot <nono-punto>

== Descrizione
*Proponente*: Azzurrodigitale.\
*Committenti*: Prof. Tullio Vardanega e Prof. Riccardo Cardin.\
*Obiettivo*: Sviluppare un assistente virtuale che sia in grado di ottenere in modo facile e veloce informazioni dalle fonti specificate e di fornirle in base alle domande poste tramite chat in linguaggio naturale. \

== Dominio applicativo
Il progetto si concentra sulla creazione di un assistente virtuale in grado di centralizzare le informazioni da diversi canali come Jira, Confluence e GitHub fornendo risposte rapide sempre più precise grazie all'apprendimento e all'adattamento degli LLM come ChatGPT.\
Queste risposte devono essere di facile ed immediato accesso fornendo inoltre una cronologia delle chat.

== Dominio tecnologico
Le tecnologie suggerite per questo progetto includono:
- L'utilizzo di OpenAI per le funzionalità NLP.
- Per la parte di front-end l'utilizzo di Angular.
- Per la parte di back-end l'utilizzo di Node/NestJS.
- Utilizzo di una suite di test automatizzati per garantire il funzionamento del codice.

== Aspetti positivi
- Professionalità alle domande fornite durante una videoconferenza per chiedere informazioni aggiuntive del progetto (veloci, concisi ed esaustivi).
- Ottima presentazione del capitolato e interessante visione nell'utilizzo pratico all'interno di molte aziende.

== Fattori critici
- Al primo impatto risulta di semplice sviluppo ma dopo un'attenta e approfondita analisi vengono riscontrate ben più grandi variabili da gestire.
- Completa dipendenza da API esterne.

== Conclusioni
Il progetto ha stimolato fin da subito l'interesse del gruppo e dopo un'approfondita analisi, viste le criticità emerse, all'unanimità è risultata come la 2#super([a]) scelta.

#pagebreak(weak: true)