#import "/templates/documento.typ": *


#show: conf.with(
  title: "Glossario",
  author: "Team",
  show_outline: true,
  outline_depth: 1,
  heading_numbers: none,
  changelog: (
    "1.1.0","18-04-2025","Aggiunta termini e definizioni", p.checchinato, (p.valdagno,p.lucato),
    "1.0.0","09-02-2025","Revisione per incontro RTB", p.salvo, (p.pozzobon,p.lucato),
    "0.1.4","31-01-2025","Aggiunti termini e definizioni", p.scandaletti, (p.pozzobon,p.lucato),
    "0.1.3","07-01-2025","Aggiunta definizione di unità", p.pozzobon, (p.pesenato, p.scandaletti),
    "0.1.2", "03-01-2025",  "Correzione termini e definizioni", p.scandaletti, (p.valdagno, p.pozzobon),
    "0.1.1", "10-12-2024",  "Aggiunti termini e definizioni", p.salvo, p.scandaletti,
    "0.1.0", "19-11-2024",  "Prima stesura documento", p.pesenato, p.pozzobon,
  )
)

= Introduzione
Il presente Glossario nasce con l'obiettivo di fornire una raccolta strutturata e chiara dei termini e delle definizioni relative al progetto. Si propone come uno strumento di riferimento rapido e pratico, utile a facilitare la comprensione di alcuni termini specifici e talvolta sconosciuti.  \ Segue una struttura alfabetica e, per indicare se un termine contenuto nella documentazione è presente nel Glossario, questo sarà indicato in questo modo: Parola#sub(text(blue)[G]).

#pb();

= Caratteri speciali
- .csv
Formato di file (Comma-Separated Values) utilizzato per rappresentare dati tabulari, in cui i valori sono separati da virgole.

- 3d
Rappresentazione tridimensionale di oggetti o dati, utilizzata per creare visualizzazioni più realistiche e interattive.

- 3Dataviz
3Dataviz è il capitolato scelto dal team, proposto dall'azienda Sanmarco Informatica, che si concentra sulla creazione di visualizzazioni interattive di dati tridimensionali. L’obiettivo del progetto è sviluppare uno strumento innovativo che unisca usabilità, interattività e capacità analitiche, offrendo agli utenti un’esperienza immersiva e intuitiva nell’esplorazione dei dati.

#pb();

= A

- Accessibile  
Caratteristica di un sistema o applicazione progettato per essere utilizzabile da persone con diverse capacità, incluse quelle con disabilità motorie, sensoriali o cognitive. Rende i contenuti e le funzionalità fruibili senza barriere.

- Accoppiamento  
In ingegneria del software, l'accoppiamento si riferisce alla misura in cui i moduli o le componenti di un sistema sono interconnessi. Un basso accoppiamento indica che i moduli sono indipendenti, favorendo la manutenzione e l'estensibilità.

- ACID 
Acronimo di Atomicità, Coerenza, Isolamento e Durabilità. Questi sono i principi che garantiscono che le transazioni in un database siano gestite correttamente,        anche in caso di guasti o interruzioni.

- AdR  
Acronimo di Analisi dei requisiti.

- Agile scrum 
Metodo di gestione dei progetti che utilizza iterazioni brevi chiamate sprint. Si basa su collaborazione, adattabilità ai cambiamenti e consegne incrementali per massimizzare il valore generato.

- Alleanza  
Relazione tra due o più parti per collaborare su un obiettivo comune, spesso in un contesto di sviluppo software o di partnership commerciale.

- Amministratore 
Figura che si occupa della gestione amministrativa di un progetto. Figura responsabile della configurazione del progetto, garantisce che il progetto sia gestito in modo efficiente e conforme ai requisiti definiti.

- Analisi dei requisiti 
Processo fondamentale nello sviluppo di un software. Prevede la raccolta, l'analisi e la definizione delle esigenze di un sistema o software, espresse o implicite degli stakeholder o degli utenti, e mira a identificare e documentare ciò che un sistema (o software) deve fare per soddisfare gli obiettivi di progetto.

- Analisi dinamica 
Tecnica di analisi del software che esamina il comportamento del sistema durante l'esecuzione, in particolare per identificare errori, inefficienze o vulnerabilità che potrebbero emergere solo in fase di esecuzione.

- Analisi statica 
Tecnica di analisi del software che esamina il codice sorgente senza eseguirlo. Utilizzata per identificare errori, vulnerabilità o inefficienze nel codice, spesso prima che il sistema venga messo in produzione.

- Analista 
Figura professionale che si occupa dell'analisi dei requisiti, della progettazione e dello sviluppo del software. L'analista è responsabile di raccogliere le informazioni necessarie, documentare le esigenze e garantire che il sistema finale soddisfi le aspettative degli utenti.

- API  
Acronimo di Application Programming Interface, un insieme di regole e protocolli che consentono a diverse applicazioni software di comunicare tra loro, semplificando         l'integrazione.

- API REST  
Tipo di API che segue i principi del paradigma REST (Representational State Transfer). Permette di gestire risorse web tramite operazioni HTTP standard come GET, POST, PUT e  DELETE.

- Approvazione 
Conferma formale della validità e correttezza di un documento, piano o risultato.

- Architettura 
Struttura complessa che definisce i componenti principali di un sistema, le loro interazioni e il loro comportamento. In ambito software, l'architettura si riferisce alla progettazione e all'organizzazione di un sistema informatico, includendo la divisione in moduli, la gestione dei flussi di dati, la scelta delle tecnologie e dei pattern di design, nonché la definizione delle interfacce tra i vari componenti. Una buona architettura garantisce la scalabilità, la manutenibilità e l'affidabilità del sistema.

- Attività  
Unità di lavoro specifica e misurabile che deve essere svolta per raggiungere un obiettivo o completare una fase di un progetto. Ogni attività è caratterizzata da un insieme di risorse, una durata stimata, un responsabile e una sequenza logica rispetto ad altre attività.

#pb();

= B

- BAC 
Il BAC (acronimo di _Budget At Completion_) rappresenta il costo totale stimato per completare un progetto. Viene calcolato all’inizio del progetto e utilizzato come riferimento per monitorare l’andamento dei costi e identificare eventuali scostamenti rispetto al budget previsto.

- Back-end 
Parte di un’applicazione che gestisce la logica, l’elaborazione dei dati e la comunicazione con il database. È responsabile delle operazioni non visibili all’utente finale.

- Backlog 
Elenco ordinato e continuamente aggiornato di attività, requisiti, funzionalità o lavori da completare in un progetto, tipicamente utilizzato nei metodi di gestione Agile e con un ruolo fondamentale per la pianificazione. Il backlog rappresenta una lista di attività da completare che evolve in base alle priorità e alle necessità del progetto o del prodotto.

- Branch 
Copia separata del codice sorgente che consente sviluppo parallelo senza interferire con il ramo principale. Viene creata per sperimentazioni, sviluppo di nuove funzionalità o correzioni di bug, e successivamente fusa nel codice principale.

- Branch Coverage 
Tecnica di testing strutturale che misura se ogni possibile ramo (true/false) di una condizione logica è stato eseguito almeno una volta durante i test.

#pb();

= C

- Capitolato  
Documento che definisce specifiche, requisiti e condizioni di un progetto o appalto. Serve come riferimento contrattuale tra cliente e team di sviluppo.

- Caso di prova 
Un insieme di condizioni e azioni previste per verificare il corretto funzionamento di una funzionalità del sistema. Ogni caso di prova è progettato per testare una parte specifica del software, assicurandosi che soddisfi i requisiti stabiliti.

- Ciclo di vita 
Sequenza di fasi o step che un prodotto, progetto o sistema attraversa dalla sua concezione iniziale fino alla sua conclusione o dismissione. Include pianificazione, sviluppo, testing, rilascio, manutenzione e fine vita. Il ciclo di vita fornisce una struttura che guida la gestione e lo sviluppo, permettendo di pianificare, monitorare e controllare ogni fase.

- Codice univoco 
Identificatore unico e non ripetibile assegnato a elementi come utenti, oggetti o record in un sistema informatico. Garantisce l’assenza di ambiguità nei riferimenti.

- Collaudo 
Fase finale di un processo di verifica in cui un sistema, prodotto o componente viene testato per garantire che funzioni correttamente e soddisfi i requisiti previsti. Il collaudo include test finali che si effettuano prima del rilascio ufficiale o della consegna al cliente.

- Cruscotto 
Interfaccia grafica che fornisce una panoramica visiva delle informazioni più rilevanti, come metriche, dati o notifiche. I cruscotti sono utilizzati per monitorare lo stato di un sistema o di un processo in tempo reale, facilitando la visualizzazione e l’analisi dei dati. In inglese viene chiamato _dashboard_.

#pb();

= D

- Database 
Sistema organizzato per archiviare, gestire e recuperare dati strutturati. Può essere interrogato tramite linguaggi come SQL e rappresenta la base per molte applicazioni software che richiedono la gestione di grandi quantità di informazioni.

- Db 
Abbreviazione di _Database_.

- Debugging 
Processo di identificazione, analisi e correzione degli errori (bug) presenti nel codice di un software.

- Decision/Condition Coverage 
Tecnica di testing strutturale che verifica che ogni decisione (espressione booleana) e ogni possibile esito delle condizioni che la compongono siano stati valutati almeno una volta durante l'esecuzione dei test.

- Design architetturale 
Fase della progettazione software che definisce la struttura ad alto livello del sistema, le sue componenti principali e le relazioni tra esse. Fornisce la base per le successive fasi di progettazione dettagliata e implementazione.

- Diagrammi 
Rappresentazioni grafiche utilizzate per visualizzare concetti, relazioni o strutture all’interno del progetto. Possono includere diagrammi UML, diagrammi di flusso, di attività, di sequenza, ecc.

- Diario di Bordo 
Attività ricorrente in cui vengono illustrate le attività completate dal team nel periodo precedente, quelle pianificate per il periodo successivo e i dubbi o le perplessità emerse. Consente di monitorare lo stato di avanzamento del progetto in modo strutturato e condiviso.

- Discord 
Piattaforma di comunicazione e collaborazione utilizzata per chat, chiamate vocali, e condivisione di risorse, particolarmente utile nei contesti di lavoro di gruppo.

- Documentazione 
Insieme di materiali testuali o visivi che descrivono, spiegano o supportano lo sviluppo, l’uso e la manutenzione di un sistema software. Include manuali, guide tecniche, specifiche e report.

- Driver 
Componente software utilizzato durante il testing per simulare il comportamento di moduli superiori (che invocano quelli testati), in modo da testare unità isolate.

#pb();

= E

- E2E 
I test E2E (acronimo di _End-to-End_) simulano il comportamento dell’utente verificando il funzionamento di un’intera applicazione, dall’inizio alla fine. Questi test assicurano che tutti i componenti del sistema lavorino insieme come previsto, garantendo un’esperienza utente fluida e priva di errori.

- Elaboratori 
Sinonimo di computer o unità di elaborazione, sono dispositivi elettronici in grado di ricevere, processare e restituire dati. Gli elaboratori vengono utilizzati per eseguire programmi, gestire informazioni e supportare attività di calcolo in ambito personale, aziendale e scientifico.

- Esterni 
Entità o persone non interne al team di sviluppo del progetto.

- Esterno 
Se riferito alla documentazione, identifica che la visione del documento è finalizzata anche a membri esterni.

- Express 
Framework web minimalista e flessibile per Node.js che fornisce un robusto set di funzionalità per la creazione di applicazioni web e API. Express semplifica la gestione di routing, middleware e richieste HTTP, ed è comunemente usato per sviluppare back-end moderni.

#pb();

= F
- Framework
Un framework è una struttura predefinita che fornisce strumenti, librerie e modelli per facilitare lo sviluppo di applicazioni software. Permette di risparmiare tempo e risorse, fornendo una base solida e standardizzata su cui costruire il progetto.

- Front-end 
Parte di un'applicazione o sito web con cui gli utenti interagiscono direttamente. Il front-end si occupa della presentazione visiva e dell'esperienza utente (UX), utilizzando tecnologie come HTML, CSS e JavaScript. Il suo scopo è rendere l'interazione con il sistema semplice e intuitiva.

- Funzionalità
Caratteristica o capacità di un sistema progettata per soddisfare specifici requisiti. Rappresenta ciò che il software è in grado di fare per l’utente finale.

#pb();

= G
- Github
Piattaforma di sviluppo collaborativo e versionamento software. Fornisce strumenti per gestire repository Git, creare pull request e automatizzare processi CI/CD.

- Glossario
Documento strutturato in forma alfabetica che raccoglie e definisce termini specifici di un dominio, utile per garantire chiarezza e comprensione uniforme nella documentazione e comunicazione di un progetto.

- Google Sheets
Applicazione web di fogli di calcolo di Google, utile per la gestione e la condivisione collaborativa in tempo reale di dati.

- Grafana
Strumento open-source per la visualizzazione e il monitoraggio di metriche e log, utilizzato comunemente per dashboard analitici.

- GUI
La GUI (acronimo di _Graphical User Interface_) è l’interfaccia grafica che permette agli utenti di interagire con un software tramite elementi visivi come pulsanti, menu e finestre. Una buona GUI rende l’applicazione più accessibile e intuitiva, migliorando l’esperienza dell’utente finale.

#pb();

= H

- Hardware 
Insieme di componenti fisici di un sistema informatico, come il processore, la memoria, il disco rigido, e le periferiche (come tastiera, monitor, stampante). L'hardware è l'infrastruttura su cui viene eseguito il software e interagisce con gli utenti e altri dispositivi.

- Headless
Il termine "headless" si riferisce a un’applicazione o un sistema che funziona senza interfaccia grafica. È utilizzato spesso nei test automatici o su server per eseguire operazioni in background, come simulare l’uso di un browser o gestire processi. Questo approccio è ideale per migliorare le prestazioni e l’automazione.

- Hover
Interazione grafica che si verifica quando il puntatore si posiziona sopra un elemento visivo. Comunemente utilizzato per attivare la visualizzazione di informazioni aggiuntive o cambiare l’aspetto dell’elemento.

#pb();

= I

- ID 
Identificativo univoco assegnato a oggetti o entità in un sistema, agevola una distinzione precisa tra elementi.

- Infografica 
Rappresentazione visiva di informazioni o dati complessi, progettata per essere facilmente comprensibile e coinvolgente. Le infografiche combinano testo, immagini e grafici per comunicare concetti in modo chiaro e accattivante.

- Interni 
Entità o persone del team di sviluppo del progetto.

- Interno 
Se riferito alla documentazione, identifica che la visione del documento è finalizzata esclusivamente a membri interni.

- ISO 
L’Organizzazione Internazionale per la Standardizzazione (ISO) è un ente che sviluppa e pubblica norme tecniche internazionali. Queste norme coprono una vasta gamma di settori e servono a garantire qualità, sicurezza ed efficienza nei prodotti e nei processi. L’ISO promuove l’adozione di standard condivisi a livello globale.

- ISO 12207:1995 
Standard internazionale che definisce i processi necessari per la gestione del ciclo di vita del software. Pubblicato per la prima volta nel 1995 dall'ISO (International Organization for Standardization), fornisce un quadro strutturato per tutte le attività, dalla concezione alla manutenzione di un prodotto software, facilitando la comunicazione e l'integrazione tra le parti interessate.

- ISO/IEC 12207:1995 
Nome completo dello standard ISO 12207:1995.

- ISO/IEC 9126 
Questo standard internazionale fornisce un quadro per valutare la qualità del software. Definisce sei caratteristiche principali, tra cui funzionalità, affidabilità e usabilità,per guidare lo sviluppo e la valutazione del software. Lo standard è spesso utilizzato come riferimento per definire obiettivi di qualità in progetti complessi.

- Issue 
Elemento registrato in un sistema di tracciamento che rappresenta un problema, bug, richiesta di funzionalità o attività da completare all’interno di un progetto. Ogni issue è associata a un thread di commenti per facilitare la collaborazione tra membri del team o collaboratori esterni.

- Infografiche 
Rappresentazione visiva di informazioni complesse, progettata per facilitare la comprensione rapida e intuitiva. Combinano elementi grafici, testo e immagini per comunicare dati in modo efficace.

- ISO 9000:2000 
Standard internazionale che fornisce linee guida per garantire la qualità dei prodotti e dei servizi. Si concentra sulla gestione della qualità, sulla soddisfazione del cliente e sul miglioramento continuo, ed è spesso utilizzato come riferimento per la certificazione di qualità nelle organizzazioni.

- IDE (Integrated Development Environment) 
Ambiente di sviluppo integrato che fornisce agli sviluppatori gli strumenti necessari per scrivere, testare e debuggare il codice. Un IDE di solito include un editor di codice, un compilatore, un debugger e altre utilità per semplificare il processo di sviluppo software.

- Interfaccia Utente (UI) 
La parte di un'applicazione o di un sistema che permette l'interazione tra l'utente e il software. L'interfaccia utente include elementi grafici come pulsanti, menu, icone e altre componenti visive che rendono il sistema fruibile e comprensibile.

- Integrazione 
Processo di unificazione di diverse componenti software o sistemi per farli lavorare insieme in modo coerente e sinergico. L'integrazione assicura che le diverse parti del sistema si comunichino correttamente e che i dati fluiscano senza problemi tra le varie sezioni.

- Incapsulamento 
Principio della programmazione orientata agli oggetti che implica nascondere i dettagli interni di un oggetto e permettere l'accesso solo attraverso metodi pubblici definiti. L'incapsulamento aiuta a proteggere i dati e a ridurre la complessità, facilitando la manutenzione del codice.

#pb();

= J
- Java
Linguaggio di programmazione ad oggetti, orientato alla portabilità e alla piattaforma indipendente. Java è progettato per essere utilizzato su qualsiasi dispositivo che supporti la Java Virtual Machine (JVM), permettendo di scrivere applicazioni che possano essere eseguite su diverse piattaforme senza modifiche. È ampiamente utilizzato per applicazioni web, mobile (Android) e sistemi aziendali.

#pb();

= K

#pb();

= L
- Label
Etichetta descrittiva utilizzata per identificare o categorizzare elementi.

- LaTeX
Sistema di composizione tipografica utilizzato per la produzione di documenti di alta qualità, in particolare testi tecnici e scientifici. Basato sul linguaggio di markup TeX, LaTeX permette di gestire con precisione formule matematiche, bibliografie, indici e strutture complesse, mantenendo separati contenuto e stile. È ampiamente usato in ambito accademico e ingegneristico.

- Libreria
Una libreria è una raccolta di funzioni, classi o moduli predefiniti utilizzati per semplificare lo sviluppo software. Le librerie permettono ai programmatori di riutilizzare codice già scritto per attività comuni, come la gestione di file, connessioni di rete o operazioni matematiche. Questo approccio riduce i tempi di sviluppo e favorisce la standardizzazione.

#pb();

= M
- Manuale utente 
Documento che fornisce istruzioni dettagliate su come utilizzare e installare un'applicazione o un sistema. Il manuale utente descrive le funzionalità principali, le operazioni da eseguire, i requisiti di sistema, i passi per l'installazione, e le eventuali risoluzioni di problemi comuni, al fine di facilitare l'interazione dell'utente con il prodotto.

- Milestone
Termine che indica un evento significativo o un punto di riferimento importante nel ciclo di vita di un progetto. Le milestone rappresentano momenti chiave che segnano il completamento di una fase, un obiettivo intermedio o una decisione critica, sono utili per monitorare il progresso rispetto alla pianificazione del progetto.

- Minimum Viable Product 
L'MVP è una versione preliminare di un prodotto che include solo le caratteristiche essenziali per soddisfare i primi utenti. L'obiettivo di un MVP è testare il mercato e raccogliere feedback, riducendo al minimo il rischio e il tempo di sviluppo.

- MU
Acronimo di _Manuale Utente_

- MVP 
Acronimo di _Minimum Viable Product_

#pb();

= N
- NdP
Acronimo di Norme di Progetto.

- Node.js 
Ambiente di esecuzione JavaScript lato server basato sul motore V8 di Google Chrome. Node.js permette di eseguire JavaScript al di fuori di un browser, rendendolo ideale per sviluppare applicazioni web ad alte prestazioni e scalabili. Utilizza un modello di I/O non bloccante e orientato agli eventi, che lo rende particolarmente adatto per gestire applicazioni real-time e server di rete.

- Norme di Progetto
Documento che definisce le regole, procedure e linee guida che disciplinano le attività di un progetto, garantendone coerenza e qualità.

- Norme di qualità 
Insieme di criteri, linee guida e standard definiti per garantire che un prodotto, servizio o processo soddisfi determinati requisiti di qualità. Le norme di qualità sono utilizzate per misurare, monitorare e migliorare la qualità in ogni fase della produzione o dello sviluppo, assicurando che i risultati finali siano conformi alle aspettative degli utenti e agli standard internazionali, come le norme ISO.

#pb();

= O

- ODG  
Acronimo di _Ordine del Giorno_.

- Oggetti di prova 
Elementi o componenti software sottoposti a test per verificarne il corretto funzionamento rispetto ai requisiti specificati.

- Opacizzare 
Ridurre la trasparenza di un elemento grafico o visivo, spesso per metterlo in secondo piano o indicarne lo stato disabilitato.

- Oracolo 
Meccanismo o fonte di riferimento utilizzata nei test per determinare l’esito corretto di un’operazione o di un comportamento del software.

- Ordine del giorno 
Lista strutturata degli argomenti da discutere durante una riunione.

- Overflow 
Errore che si verifica quando il risultato di un'operazione supera la capacità massima rappresentabile da un tipo di dato.

#pb();

= P

- PB  
Acronimo di _Product Baseline_, documento o set di documenti che definiscono le specifiche e i parametri chiave di un prodotto, stabiliti e approvati in una fase iniziale del        progetto. La Product Baseline fornisce una base di riferimento per il monitoraggio del progresso del prodotto, il controllo delle modifiche e la gestione delle performance durante       tutto il ciclo di vita del progetto.

- PdP 
Acronimo di _Piano di Progetto_.

- PdQ 
Acronimo di _Piano di Qualifica_.

- Periodo 
Un periodo è un intervallo di tempo specifico all’interno di un progetto, utilizzato per pianificare, monitorare e valutare le attività. Ogni periodo può essere associato a        obiettivi specifici e viene utilizzato come riferimento per analizzare il progresso e il rispetto delle scadenze.

- Piano di Progetto 
Documento formale utilizzato nell'ambito della gestione dei progetti che descrive in dettaglio gli obiettivi, le attività, le tempistiche, i costi, le risorse, i rischi e le         modalità operative previste per la realizzazione di un progetto. Il PdP serve come guida per il team di sviluppo e come riferimento per monitorare l'andamento del lavoro.

- Piano di Qualifica 
Documento che stabilisce i criteri, le strategie e i metodi necessari per verificare e garantire la qualità di un prodotto software. Definisce come verranno condotti i test e le         revisioni per rispettare gli standard di qualità prefissati. Il PdQ è un elemento centrale per la gestione del rischio legato alla qualità.

- Piano parallelo alla base 
Piano che non interseca il piano di base di un solido e mantiene una distanza costante da esso lungo tutta la sua estensione.

- Piattaforma 
Ambiente o sistema che supporta lo sviluppo e l’esecuzione di applicazioni o processi.

- Playwright 
Strumento di testing end-to-end per applicazioni web, che consente l’automazione dei test su diversi browser e la simulazione delle interazioni utente in scenari realistici.

- PoC 
Acronimo di _Proof of Concept_.

- PR 
Acronimo di _Pull Request_.

- Processi di supporto 
Includono tutte le attività che non producono direttamente il prodotto finale ma sono essenziali per il suo sviluppo. Comprendono il controllo qualità, la documentazione, la         gestione delle risorse e il supporto tecnico.

- Processi organizzativi 
Includono tutte le attività che supportano il funzionamento di un’organizzazione o di un progetto, come la pianificazione delle risorse, la gestione della comunicazione e il         monitoraggio delle prestazioni.

- Processo 
Sequenza strutturata di attività progettate per raggiungere un obiettivo specifico. Ogni processo è definito da un insieme di input, azioni e output, e può essere migliorato         attraverso la revisione continua.

- Processo di sviluppo software 
Insieme di attività organizzate che guidano l'intero ciclo di vita di un software, dalla definizione dei requisiti alla progettazione, implementazione, testing, rilascio e         manutenzione.

- Processo di verifica e validazione 
Insieme strutturato di attività che mirano a garantire che il prodotto software sia costruito correttamente (verifica) e che soddisfi le esigenze e i requisiti dell’utente finale        (validazione).

- Prodotto software 
Risultato finale dello sviluppo, progettato per soddisfare specifiche esigenze o risolvere problemi di utenti o aziende. Comprende codice sorgente, documentazione e interfacce.

- Progettista 
Persona responsabile della pianificazione, progettazione e realizzazione di un sistema, prodotto o processo. Il progettista analizza le esigenze, definisce le specifiche tecniche e sviluppa soluzioni che soddisfano i requisiti del cliente o del progetto. In ambito software, il progettista è coinvolto nella definizione dell'architettura del sistema, nella scelta delle tecnologie e nella creazione di un piano di sviluppo.

- Programmatore  
Figura professionale responsabile dello sviluppo del software. Traduce i requisiti in codice funzionante utilizzando linguaggi di programmazione e strumenti specifici.

- Project Board 
Strumento visuale utilizzato per organizzare e monitorare le attività di un progetto. Strutturato in colonne (es. "To Do", "In Progress", "Done"), consente di tracciare lo stato         delle attività e assegnare responsabilità.

- Proof of Concept 
Dimostrazione pratica e limitata della fattibilità tecnica o funzionale di un’idea, tecnologia o approccio progettuale.

- Proponente 
Soggetto, organizzazione o gruppo che presenta un progetto.

- Progetto 
Insieme di attività coordinate e pianificate con l’obiettivo di raggiungere un risultato unico entro un tempo definito e con risorse limitate.

- Pull Request 
Richiesta di integrazione di modifiche apportate in un branch al codice principale di un repository Git. Include revisioni, commenti e approvazioni prima della fusione.

#pb();

= Q

- Query
Istruzione o richiesta formale utilizzata in sistemi di gestione dei database o in altri contesti informatici per recuperare, modificare o manipolare i dati.

#pb();

= R
- Redattore
Persona incaricata della stesura di un documento.
  
- Refactoring  
Processo di ristrutturazione del codice sorgente di un software, volto a migliorarne la leggibilità, la manutenibilità e la struttura interna, senza modificarne il comportamento esterno. È una pratica fondamentale per garantire la qualità e la sostenibilità del codice nel tempo.

- Registro delle modifiche 
Documento che tiene traccia delle variazioni apportate a file, codice o documenti del progetto, includendo data, autore e motivazione di ciascuna modifica.

- Regressione 
Malfunzionamento o bug che si manifesta in una funzionalità precedentemente funzionante, a seguito di modifiche al codice. I test di regressione sono utilizzati per rilevare questi problemi e garantire che aggiornamenti o correzioni non compromettano il comportamento già validato del sistema.

- Relatore 
Figura che presenta un argomento o una relazione durante un incontro o un evento.

- Renderizzato 
Esito di un processo di conversione di un modello digitale in un formato visivo o finale. Nello specifico, si tratta del modello pronto per la visualizzazione in un browser o un'interfaccia grafica.

- Repo 
Abbreviazione di repository.

- Repository 
Archivio centralizzato per memorizzare codice sorgente, documentazione o risorse di un progetto. Può supportare il versionamento, la collaborazione e la distribuzione di software.

- Requisito 
Necessità o condizione che un sistema deve soddisfare per rispondere a una aspettativa, ma anche la capacità necessaria a un utente per risolvere un problema o raggiungere un obiettivo.

- Requirements Coverage 
Misura del grado con cui i requisiti specificati sono stati soddisfatti attraverso test o implementazioni. Indica se ogni requisito ha almeno un caso di prova associato e serve come indicatore della completezza del processo di verifica.

- Responsabile 
Abbreviazione di responsabile di progetto.

- Responsabile di progetto 
Figura incaricata di supervisionare e garantire il completamento di un’attività.

- Retrospettiva 
La retrospettiva è un momento di analisi che avviene alla fine di un periodo di lavoro, come uno sprint. Durante questa fase, il team riflette su ciò che ha funzionato, identifica le aree di miglioramento e pianifica cambiamenti per ottimizzare i processi futuri. È uno strumento chiave per il miglioramento continuo nei progetti Agile.

- Revisione 
Processo di verifica e correzione di un documento o progetto.

- Revisore 
Persona che esamina e fornisce feedback su un documento o progetto.

- Rilascio 
Distribuzione ufficiale di un prodotto o aggiornamento.

- RTB 
Acronimo di _Requirements and Technology Baseline_. Documento o punto di riferimento che stabilisce in modo formale i requisiti funzionali, tecnici e di sistema, insieme alle tecnologie necessarie per il loro soddisfacimento, in una fase iniziale del ciclo di vita di un progetto. L'RTB rappresenta la base approvata e stabile per guidare le successive fasi di progettazione, sviluppo e implementazione.

#pb();


= S

  - SAL  
  Acronimo di _stato avanzamento lavori_.

  - Schema x.y.z  
  Convenzione di versionamento (es. major.minor.patch).

- Set di dati  
Collezione organizzata di informazioni strutturate, utilizzata per analisi o elaborazione.

- Sistema 
Insieme coerente di componenti interconnessi che collaborano per raggiungere un obiettivo comune.

- Sistema di ticketing 
Strumento per la gestione delle richieste e dei problemi, che assegna un identificativo unico (ticket) per ogni attività da tracciare e risolvere.

- Software 
Insieme di programmi, applicazioni e istruzioni che permettono a un computer o a un altro dispositivo elettronico di eseguire specifiche funzioni o operazioni. Il software può essere di vari tipi, tra cui sistemi operativi, applicazioni, giochi, utility e programmi di gestione. A differenza dell'hardware, il software è intangibile e viene eseguito dal dispositivo per farlo operare secondo le necessità dell'utente.

- Sorgente dati 
Origine da cui vengono estratti dati per analisi o applicazioni.

- Spring 
Framework Java per lo sviluppo di applicazioni enterprise, modulare e basato su inversione di controllo.

- Spring Boot 
Estensione di Spring che semplifica la configurazione e il deployment di applicazioni Spring stand-alone.

- SQL 
Acronimo di _Structured Query Language_, linguaggio standard per interagire con database relazionali.

- ST 
Sigla del documento Specifica Tecnica

- Standard 
Insieme di regole o specifiche condivise per garantire qualità, interoperabilità e coerenza nei processi o nei prodotti.

- Statement Coverage 
Metodologia di testing che verifica l'esecuzione di ogni singola istruzione nel codice almeno una volta.

- Strumenti 
Software o risorse utilizzati per supportare attività di sviluppo, test, analisi o gestione del progetto.

- Structural Coverage 
Tecnica di testing che misura la copertura del codice in base alla struttura interna del programma (es. rami, condizioni, istruzioni).

- Stub 
Componente software utilizzata nei test per simulare il comportamento di moduli esterni o non ancora sviluppati.

- Svelte 
Framework JavaScript per lo sviluppo di interfacce utente che compila i componenti in codice altamente ottimizzato senza utilizzare un Virtual DOM.

#pb();

= T

- Tabella delle revisioni 
Sinonimo di _Registro delle modifiche_.

- Task 
Unità operativa specifica all'interno di un progetto.

- Telegram 
Piattaforma di messaggistica istantanea che consente comunicazioni rapide e sicure, anche tramite bot e automazioni.

- Template 
Struttura predefinita per creare documenti coerenti e uniformi.

- Test di accettazione 
Verifica finale eseguita dal committente per valutare se il prodotto soddisfa i requisiti concordati e può essere rilasciato.

- Test di integrazione 
Verifica il corretto funzionamento dell’interazione tra più unità o componenti software integrate tra loro.

- Test di regressione 
Controllo volto a verificare che modifiche o correzioni del codice non abbiano introdotto nuovi errori in funzionalità precedentemente funzionanti.

- Test di sistema 
Valutazione del comportamento dell’intero sistema software in un ambiente il più possibile vicino a quello reale.

- Test di unità 
Verifica isolata di singole unità o funzioni del codice, con l’obiettivo di accertarne la correttezza in termini di input/output.

- Test funzionali 
Controllo del comportamento del software rispetto ai requisiti funzionali, senza tener conto della struttura interna del codice.

- Test strutturali 
Test basati sulla struttura interna del codice, come la copertura di istruzioni, rami e condizioni.

- Threlte 
Libreria basato su Svelte e Three.js per la creazione di interfacce 3D reattive con una sintassi dichiarativa.

- Three.js 
Libreria JavaScript per la realizzazione di grafica 3D all’interno del browser, basata su WebGL.

- Tipo di dato 
Categoria che definisce il tipo di valori che una variabile o un'espressione può contenere e le operazioni che possono essere eseguite su di essi. I tipi di dato possono essere primitivi (come interi, decimali, booleani) o complessi (come array, oggetti o strutture dati). Ogni linguaggio di programmazione ha un insieme di tipi di dato specifici, che determinano come i dati vengono memorizzati, manipolati e utilizzati.

- TODO  
Elenco di attività o compiti ancora da svolgere.

- Typst 
  Linguaggio di markup progettato per creare documenti complessi in modo efficiente. È simile a LaTeX, ma con una sintassi più moderna e intuitiva.

#pb();

= U
- UC
Acronimo di _Use Case_ (Caso d’uso): scenario che descrive le interazioni tra utenti (attori) e sistema per raggiungere un obiettivo specifico.

- UML
UML (acronimo di _Unified Modeling Language_) è un linguaggio standard per la modellazione e la progettazione di sistemi software. Attraverso diagrammi come casi d’uso, classi e sequenze, aiuta a rappresentare visivamente la struttura e il comportamento di un sistema, facilitando la comunicazione tra i membri del team.

- Underflow 
Si verifica quando un'operazione aritmetica produce un valore troppo piccolo per essere rappresentato dal tipo di dato utilizzato. In un sistema numerico, ad esempio, un underflow può accadere quando un numero scende sotto il valore minimo che può essere gestito, come nel caso dei numeri in virgola mobile.

- Unità
Minimo componente di un prodotto software dotato di funzionamento autonomo

#pb();


= V

- Validazione 
Processo per accertare che il prodotto sviluppato soddisfi le attese e i requisiti definiti.

- Variabili globali 
Variabili accessibili da qualsiasi parte del programma, che possono introdurre effetti collaterali e rendere più complesso il controllo del flusso e la manutenzione del codice.

- Verbale esterno 
Documento ufficiale che riporta un resoconto dettagliato di una riunione o incontro con stakeholder o attori esterni al team di sviluppo.

- Verbale interno 
Documento redatto durante una riunione interna, che riassume le decisioni prese, le attività discusse e i punti di azione.

- Verbali interni 
Plurale di _Verbale interno_.

- Verbalizzante 
Figura responsabile della stesura del verbale di una riunione.

- Verifica 
Processo per garantire la correttezza delle attività svolte, accertando che ogni fase del progetto sia conforme alle specifiche tecniche.

- Verifica del software 
Insieme di attività che hanno lo scopo di accertare che il software sia stato costruito correttamente, in linea con i requisiti e le specifiche definite.

- Verificatore 
Persona incaricata di accertare la correttezza e la qualità di un’attività o documento.

- Vitest 
Framework di testing veloce e moderno pensato per progetti basati su Vite. Utilizzato per scrivere test unitari e di integrazione in ambienti JavaScript e TypeScript.

#pb();

= W
- Web app
Applicazione software accessibile tramite un browser, basata su tecnologie web come HTML, CSS e JavaScript.

#pb();

= X

#pb();

= Y

#pb();

= Z

#pb();
