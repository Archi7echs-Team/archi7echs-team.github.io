        #import "/templates/documento.typ": *

        
        #show: conf.with(
          title: "Glossario",
          author: "Team",
          state: "Approvato",
          show_outline: true,
          outline_depth: 1,
          heading_numbers: none,
          changelog: (
            "0.1.4","31-01-2025","Aggiunti termini e definizioni", p.scandaletti, (p.pozzobon,p.lucato),
            "0.1.3","07-01-2025","Aggiunta definizione di unità", p.pozzobon, (p.pesenato, p.scandaletti),
            "0.1.2", "03-01-2025",  "Correzione termini e definizioni", p.scandaletti, (p.valdagno, p.pozzobon),
            "0.1.1", "10-12-2024",  "Aggiunti termini e definizioni", p.salvo, p.scandaletti,
            "0.1.0", "19-11-2024",  "Prima stesura documento", p.pesenato, p.pozzobon,
          )
        )
        
        = Introduzione
        Il presente Glossario nasce con l'obiettivo di fornire una raccolta strutturata e chiara dei termini e delle definizioni relative al progetto. Si propone come uno strumento di riferimento rapido e pratico, utile per facilitare la comprensione di alcuni termini specifici e talvolta sconosciuti. Questo Glossario avrà una struttura alfabetica e se un termine sarà presente in questo documento sarà riconoscibile in questo modo: Parola#sub(text(blue)[G]).
        
        = .
        - .csv
        Formato di file (Comma-Separated Values) utilizzato per rappresentare dati tabulari, in cui i valori sono separati da virgole.

        - 3d
        Rappresentazione tridimensionale di oggetti o dati, utilizzata per creare visualizzazioni più realistiche e interattive.
        
        - 3dataviz
        3Dataviz è il capitolato scelto dal team, proposto dall’azienda Sanmarco Informatica, che si concentra sulla creazione di visualizzazioni interattive di dati tridimensionali. L’obiettivo del progetto è sviluppare uno strumento innovativo che unisca usabilità, interattività e capacità analitiche, offrendo agli utenti un’esperienza immersiva e intuitiva nell’esplorazione dei dati.

        = A
        - Accessibile
        Caratteristica di un sistema o applicazione progettato per essere utilizzabile da persone con diverse capacità, incluse quelle con disabilità motorie, sensoriali o cognitive. Rende i contenuti e le funzionalità fruibili senza barriere.
        
        - AdR
        Acronimo di Analisi dei requisiti.
        
        - Agile scrum
        Metodo di gestione dei progetti che utilizza iterazioni brevi chiamate sprint. Si basa su collaborazione, adattabilità ai cambiamenti e consegne incrementali per massimizzare il valore generato.
        
        - Amministratore
        Figura che si occupa della gestione amministrativa di un progetto. 
        Figura responsabile della configurazione del progetto, garantisce che il progetto sia gestito in modo efficiente e conforme ai requisiti definiti.
        
        - Analisi dei requisiti
        Processo fondamentale nello sviluppo di un software. Prevede la raccolta, l'analisi e la definizione delle esigenze di un sistema o software, espresse o implicite degli stakeholder o degli utenti, e mira identificare e documentare ciò che un sistema (o software) deve fare per soddisfare gli obiettivi di progetto.
               
        - API
        Acronimo di Application Programming Interface, un insieme di regole e protocolli che consentono a diverse applicazioni software di comunicare tra loro, semplificando l'integrazione.
        
        - API REST
        Tipo di API che segue i principi del paradigma REST (Representational State Transfer). Permette di gestire risorse web tramite operazioni HTTP standard come GET, POST, PUT e DELETE.

        - Approvazione
        Conferma formale della validità e correttezza di un documento, piano o risultato.

        - Attività
        Unità di lavoro specifica e misurabile che deve essere svolta per raggiungere un obiettivo o completare una fase di un progetto. Ogni attività è caratterizzata da un insieme di risorse, una durata stimata, un responsabile e una sequenza logica rispetto ad altre attività.

        
        = B
        - BAC
        Il BAC  (acronimo di _Budget At Completion_) rappresenta il costo totale stimato per completare un progetto. Viene calcolato all’inizio del progetto e utilizzato come riferimento per monitorare l’andamento dei costi e identificare eventuali scostamenti rispetto al budget previsto.

        - Backlog
        Elenco ordinato e continuamente aggiornato di attività, requisiti, funzionalità o lavori da completare in un progetto, tipicamente utilizzato nei metodi di gestione Agile e con un ruolo fondamentale per la pianificazione. Il backlog rappresenta una lista di attività da completare che evolve in base alle priorità e alle necessità del progetto o del prodotto.
        
        - Branch
        Copia separata del codice sorgente che consente sviluppo parallelo senza interferire con il ramo principale. Viene creata per sperimentazioni, sviluppo di nuove funzionalità o correzioni di bug, e successivamente fusa nel codice principale.

        = C
        - Capitolato
        Documento che definisce specifiche, requisiti e condizioni di un progetto o appalto. Serve come riferimento contrattuale tra cliente e team di sviluppo.
        
        - Ciclo di vita
        Sequenza di fasi o step che un prodotto, progetto o sistema attraversa dalla sua concezione iniziale fino alla sua conclusione o dismissione. Include pianificazione, sviluppo, testing, rilascio, manutenzione e fine vita. Il ciclo di vita fornisce una struttura che guida la gestione e lo sviluppo, permettendo di pianificare, monitorare e controllare ogni fase.
        
        - Codice univoco
        Identificatore unico e non ripetibile assegnato a elementi come utenti, oggetti o record in un sistema informatico. Garantisce l’assenza di ambiguità nei riferimenti.

        = D

        - Database
        Un database è un sistema organizzato per archiviare, gestire e recuperare dati strutturati. Può essere interrogato tramite linguaggi come SQL e rappresenta la base per molte applicazioni software che richiedono la gestione di grandi quantità di informazioni.
        
        - Db
        Abbreviazione di database.

        - Diario di Bordo
        Nel contesto del nostro progetto, il diario di bordo è un’attività ricorrente in cui vengono illustrate le attività completate dal team nel periodo precedente, quelle pianificate per il periodo successivo e i dubbi o le perplessità emerse. Questo strumento consente di monitorare lo stato di avanzamento del progetto, evidenziare eventuali problematiche e pianificare le azioni future in modo strutturato e condiviso.

        - Discord
        Piattaforma di comunicazione e collaborazione utilizzata per chat, chiamate vocali, e condivisione di risorse, particolarmente utile nei contesti di lavoro di gruppo.

        = E
        - Esterni
        Entità o persone non interne al team di sviluppo del progetto.
        
        - Esterno
        Se riferito alla documentazione, identifica che la visione del documento è finalizzata anche a membri esterni.

        - E2E
        I test E2E  (acronimo di _End-to-End_) simulano il comportamento dell’utente verificando il funzionamento di un’intera applicazione, dall’inizio alla fine. Questi test assicurano che tutti i componenti del sistema lavorino insieme come previsto, garantendo un’esperienza utente fluida e priva di errori.

        = F
        - Framework
        Un framework è una struttura predefinita che fornisce strumenti, librerie e modelli per facilitare lo sviluppo di applicazioni software. Permette di risparmiare tempo e risorse, fornendo una base solida e standardizzata su cui costruire il progetto.

        - Funzionalità
        Caratteristica o capacità di un sistema progettata per soddisfare specifici requisiti. Rappresenta ciò che il software è in grado di fare per l’utente finale.
        
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
        
        = H
        - Headless
        Il termine "headless" si riferisce a un’applicazione o un sistema che funziona senza interfaccia grafica. È utilizzato spesso nei test automatici o su server per eseguire operazioni in background, come simulare l’uso di un browser o gestire processi. Questo approccio è ideale per migliorare le prestazioni e l’automazione.

        - Hover
        Interazione grafica che si verifica quando il puntatore si posiziona sopra un elemento visivo. Comunemente utilizzato per attivare la visualizzazione di informazioni aggiuntive o cambiare l’aspetto dell’elemento.

        = I
        - ID
        Identificativo univoco assegnato a oggetti o entità in un sistema, agevola una distinzione precisa tra elementi.
        
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
        Questo standard internazionale fornisce un quadro per valutare la qualità del software. Definisce sei caratteristiche principali, tra cui funzionalità, affidabilità e usabilità, per guidare lo sviluppo e la valutazione del software. Lo standard è spesso utilizzato come riferimento per definire obiettivi di qualità in progetti complessi.

        - Issue
        Elemento registrato in un sistema di tracciamento che rappresenta un problema, bug, richiesta di funzionalità o attività da completare all’interno di un progetto. Ogni issue è associata a un thread di commenti per facilitare la collaborazione tra membri del team o collaboratori esterni.
        
        = J
        
        = K
        
        = L
        - Label
        Etichetta descrittiva utilizzata per identificare o categorizzare elementi.

        - Libreria
        Una libreria è una raccolta di funzioni, classi o moduli predefiniti utilizzati per semplificare lo sviluppo software. Le librerie permettono ai programmatori di riutilizzare codice già scritto per attività comuni, come la gestione di file, connessioni di rete o operazioni matematiche. Questo approccio riduce i tempi di sviluppo e favorisce la standardizzazione

        = M
        - Milestone
        Termine che indica un evento significativo o un punto di riferimento importante nel ciclo di vita di un progetto. Le milestone rappresentano momenti chiave che segnano il completamento di una fase, un obiettivo intermedio o una decisione critica, sono utili per monitorare il progresso rispetto alla pianificazione del progetto.
        
        = N
        - Norme di Progetto
        Documento che definisce le regole, procedure e linee guida che disciplinano le attività di un progetto, garantendone coerenza e qualità.
        
        - NdP
        Acronimo di Norme di Progetto.
        
        = O
        - ODG
        Acronimo di ordine del giorno
        
        - Opacizzare
        Ridurre la trasparenza di un elemento grafico o visivo, spesso per metterlo in secondo piano o indicarne lo stato disabilitato.

        - Ordine del giorno
        Lista strutturata degli argomenti da discutere durante una riunione.

        = P
        - PB
        Acronimo di _Product Baseline_, documento o set di documenti che definiscono le specifiche e i parametri chiave di un prodotto, stabiliti e approvati in una fase iniziale del progetto. La Product Baseline fornisce una base di riferimento per il monitoraggio del progresso del prodotto, il controllo delle modifiche e la gestione delle performance durante tutto il ciclo di vita del progetto.
        
        - PdP
        Acronimo di Piano di Progetto.
        
        - PdQ
        Acronimo di _Piano di Qualifica_

        - Periodo
        Un periodo è un intervallo di tempo specifico all’interno di un progetto, utilizzato per pianificare, monitorare e valutare le attività. Ogni periodo può essere associato a obiettivi specifici e viene utilizzato come riferimento per analizzare il progresso e il rispetto delle scadenze

        - Piano di Progetto
        Documento formale utilizzato nell'ambito della gestione dei progetti che descrive in dettaglio gli obiettivi, le attività, le tempistiche, i costi, le risorse, i rischi e le modalità operative previste per la realizzazione di un progetto. Il PdP serve come guida per il team di sviluppo e come riferimento per monitorare l'andamento del lavoro.
        
        - Piano di Qualifica
        Il Piano di Qualifica è un documento che stabilisce i criteri, le strategie e i metodi necessari per verificare e garantire la qualità di un prodotto software. Esso definisce come verranno condotti i test e le revisioni per rispettare gli standard di qualità prefissati. Il PDQ è un elemento centrale per la gestione del rischio legato alla qualità.

        - Piano parallelo alla base
        Piano che non interseca il piano di base di un solido e mantiene una distanza costante da esso lungo tutta la sua estensione.
        
        - Piattaforma
        Ambiente o sistema che supporta lo sviluppo e l’esecuzione di applicazioni o processi.
        
        - PoC
        Acronimo di Proof of Concept.
        
        - PR
        Acronimo di pull request.

        - Processi di supporto
        I processi di supporto includono tutte le attività che non producono direttamente il prodotto finale ma sono essenziali per il suo sviluppo. Questi processi comprendono il controllo qualità, la documentazione, la gestione delle risorse e il supporto tecnico. La loro funzione è garantire che i processi principali possano operare in modo fluido.
        
        - Processi organizzativi
        I processi organizzativi includono tutte le attività che supportano il funzionamento di un’organizzazione o di un progetto. Questi processi comprendono la pianificazione delle risorse, la gestione della comunicazione e il monitoraggio delle prestazioni. Sono essenziali per mantenere la coerenza e l’efficienza nell’esecuzione delle attività.
        - Processo
        Un processo è una sequenza strutturata di attività progettate per raggiungere un obiettivo specifico. Ogni processo è definito da un insieme di input, azioni e output, e può essere migliorato attraverso la revisione continua. Nei progetti, i processi sono fondamentali per garantire coerenza e ripetibilità nelle operazioni.
        
        - Prodotto software
        Un prodotto software è il risultato finale dello sviluppo, progettato per soddisfare specifiche esigenze o risolvere problemi di utenti o aziende. Comprende codice sorgente, documentazione e interfacce, ed è sviluppato secondo standard di qualità e funzionalità definiti.

        - Progetto
        Insieme di attività coordinate e pianificate con l’obiettivo di raggiungere un risultato unico entro un tempo definito e con l’utilizzo di risorse limitate. Un progetto si distingue per avere un inizio e una fine ben definiti, un obiettivo specifico e criteri di successo misurabili.

        - Programmatore
        Il programmatore è la figura professionale responsabile dello sviluppo del software. Si occupa di tradurre i requisiti in codice funzionante utilizzando linguaggi di programmazione e strumenti specifici. Lavora a stretto contatto con progettisti e analisti per garantire che il software soddisfi le esigenze richieste.
        
        - Project Board
        Un project board è uno strumento visuale utilizzato per organizzare e monitorare le attività di un progetto. Strutturato in colonne (es. "To Do", "In Progress", "Done"), permette di tracciare lo stato delle attività, assegnare responsabilità e visualizzare il progresso del lavoro in modo chiaro.
        
        - Proof of Concept
        Dimostrazione pratica e limitata della fattibilità tecnica o funzionale di un’idea, tecnologia o approccio progettuale. È utilizzata per validare ipotesi prima dello sviluppo completo.

        - Proponente
        Soggetto, organizzazione o gruppo che presenta un progetto.
        
        - Pull request
        Richiesta di integrazione di modifiche apportate in un branch al codice principale di un repository Git, gestita da Github. Include revisioni, commenti e approvazioni prima della fusione ed è fondamentale per l'integrazione collaborativa nello sviluppo del software.

        = Q
        - Query
        Istruzione o richiesta formale utilizzata in sistemi di gestione dei database o in altri contesti informatici per recuperare, modificare o manipolare i dati.

        = R
        - Redattore
        Persona incaricata della stesura di un documento.
        
        - Registro delle modifiche
        Documento che tiene traccia delle variazioni apportate a file, codice o documenti del progetto, includendo data, autore e motivazione di ciascuna modifica.

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

        = S
        - SAL
        Acronimo di _stato avanzamento lavori_.
        
        - Schema x.y.z
        Convenzione di versionamento (es. major.minor.patch).
        
        - Set di dati
        Collezione organizzata di informazioni strutturate, utilizzata per analisi o elaborazione.
        
        - Sistema di ticketing
        Strumento per la gestione delle richieste e dei problemi, che assegna un identificativo unico (ticket) per ogni attività da tracciare e risolvere.

        - Sorgente dati
        Origine da cui vengono estratti dati per analisi o applicazioni.
        
        - SQL
        Acronimo di _Structured Query Language_, linguaggio standard per interagire con database relazionali.

        = T
        - Tabella delle revisioni
        Sinonimo di _Registro delle modifiche_.

        - Task
        Unità operativa specifica all'interno di un progetto.

        - Telegram
        Piattaforma di messaggistica istantanea che consente comunicazioni rapide e sicure, anche tramite bot e automazioni.
        
        - Template
        Struttura predefinita per creare documenti coerenti e uniformi.
        
        - TODO
        Elenco di attività o compiti ancora da svolgere.
        
        - Typst
        Linguaggio di markup progettato per creare documenti complessi in modo efficiente. È simile a LaTeX, ma con una sintassi più moderna e intuitiva.

        = U
        - UC
        Acronimo di _Use Case_ (Caso d’uso): scenario che descrive le interazioni tra utenti (attori) e sistema per raggiungere un obiettivo specifico.

        - UML
        UML (acronimo di _Unified Modeling Language_) è un linguaggio standard per la modellazione e la progettazione di sistemi software. Attraverso diagrammi come casi d’uso, classi e sequenze, aiuta a rappresentare visivamente la struttura e il comportamento di un sistema, facilitando la comunicazione tra i membri del team.

        - Unità
        Minimo componente di un prodotto software dotato di funzionamento autonomo

        = V
        - Validazione
        Processo per accertare che il prodotto sviluppato soddisfi le attese e i requisiti definiti.
        
        - Verbale esterno
        Documento ufficiale che riporta un resoconto dettagliato di una riunione o incontro con stakeholder o attori esterni al team di sviluppo.

        - Verbale interno
        Documento redatto durante una riunione interna, che riassume le decisioni prese, le attività discusse e i punti di azione.
        
        - Verbali interni
        Plurale di _Verbale interno_.

        - Verbalizzante
        Figura responsabile della stesura del verbale di una riunione.
        
        - Verifica
        Processo per garantire la correttezza delle attività svolte.
        
        - Verificatore
        Persona incaricata di accertare la correttezza e la qualità di un’attività o documento.
        
        = W
        - Web app
        Applicazione software accessibile tramite un browser, basata su tecnologie web come HTML, CSS e JavaScript.

        = X
        
        = Y
        
        = Z
