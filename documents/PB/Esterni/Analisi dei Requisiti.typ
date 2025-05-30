#import "/templates/documento.typ": *

#show: conf.with(
  title: "Analisi dei Requisiti",
  author: "Team",
  intern: false,
  show_outline: true,
  outline_depth: 3,
  heading_numbers: none,
  changelog: (
    "2.0.0", "16-04-2025", "Revisione per incontro PB", p.checchinato,(p.valdagno, p.lucato),
    "1.2.0", "15-04-2025", "Modifica UC funzionalità al click barra, sistemazione descrizioni e numerazione. Aggiornamento UML con nuova numerazione. Aggiornamento riferimento paragrafi e sistemazione numerazione e descrizione req. funzionali. Aggiornamento tabelle riepilogo requisiti", p.pozzobon,(p.lucato,p.checchinato),
    "1.1.1", "21-03-2025", "Correzione sezione tecnologie", p.checchinato,(p.salvo, p.valdagno),
    "1.1.0", "04-03-2025", "Sistemazione UC post RTB", (p.checchinato,p.pozzobon), (p.pesenato,p.salvo),
    "1.0.0", "09-02-2025", "Revisione per incontro RTB", p.valdagno, (p.pozzobon,p.lucato),
    "0.7.7", "06-02-2025", "Modifiche a UC e ingrandimento immagini", p.salvo, (p.pozzobon,p.lucato),
    "0.7.6", "31-01-2025", "Aggiunta termini glossario", p.scandaletti, (p.pozzobon,p.lucato),
    "0.7.5", "29-01-2025", "Modifiche a UC, diagrammi UML e aggiornamento tabelle requisiti", p.valdagno, (p.lucato, p.pesenato),
    "0.7.4", "19-01-2025", "Aggiunta immagini degli UC e modifica tabelle riferimenti", p.valdagno, (p.lucato, p.pesenato),
    "0.7.3", "13-01-2025", "Aggiunta UC da 19 a 26 e fix UC 2,10", p.salvo,p.pesenato,
    "0.7.2", "10-01-2025", "Modifica UC 1, UC 2, UC 2.1, UC 2.1.1, UC 2.1.2, UC 2.1.3, UC 14, UC 15  ", p.checchinato,(p.lucato, p.pozzobon),
    "0.7.1", "02-01-2025", "Sistemazione UC. Aggiunta tabelle requisiti qualitativi, requisiti di vincolo e il tracciamento dei requisiti", p.lucato, (p.pesenato, p.pozzobon),
    "0.7.0", "24-12-2024", "Ristrutturazione generale, continuazione con l'aggiunta degli UC", (p.lucato,p.pesenato), (p.salvo,p.valdagno),
    "0.6.0", "19-12-2024", "Aggiunta sezione tecnologie, fix versioni ", p.pesenato, (p.scandaletti,p.valdagno),
    "0.5.3","19-12-2024","Riscrittura UC5 in UC5.1 e UC5.2",p.lucato, (p.salvo,p.valdagno),
    "0.5.2","10-12-2024","Aggiunti UC gestione errori e aggiunta riferimenti glossario",p.pozzobon, (p.valdagno,p.checchinato),
    "0.5.1","08-12-2024","Fix UC - aggiunto reperimento dati da SQL",p.pozzobon, (p.valdagno,p.checchinato),
    "0.5.0","07-12-2024","Continuazione casi d'uso e aggiunta req. funzionali",p.pozzobon, (p.valdagno,p.checchinato),
    "0.4.0", "02-12-2024", "Stesura sottosezione caratteristiche utente", p.pozzobon, p.valdagno,
    "0.3.0", "29-11-2024",  "Stesura introduzione sezione Requisiti-Identificazione e Requisiti funzionali secondo UC", (p.pozzobon), p.valdagno,
    "0.2.0", "26-11-2024",  "Stesura sezione casi d'uso", (p.valdagno, p.scandaletti, p.pesenato), p.salvo,
    "0.1.0", "25-11-2024",  "Prima stesura introduzione e descrizione prodotto", p.valdagno, p.salvo,
  )
)

#set heading(numbering: "1.1)")

= Introduzione
== Scopo del documento
Il documento di #glossario("analisi dei requisiti") è un elemento fondamentale nel ciclo di sviluppo di un software.\
Lo scopo è definire e descrivere in maniera chiara, completa e strutturata le #glossario("funzionalità") che il #glossario("prodotto software") deve offrire, ovvero i requisiti che devono essere soddisfatti dal sistema sviluppato al fine di rispettare le richieste fatte dal #glossario("proponente").
L’analisi non deve fornire una visione di come i requisiti verranno svolti ma deve essere consapevole della fattibilità tecnologica. \
In particolare gli obiettivi del documento sono:
- *Esplicitare i bisogni del #glossario("proponente")*: un #glossario("requisito") esprime una descrizione dettagliata di un bisogno che il #glossario("proponente") si aspetta di ottenere dal #glossario("prodotto software"), questo comprende sia richieste esplicite del #glossario("capitolato") sia richieste implicite ricavabili dopo analisi.
- *Ridurre ambiguità*: serve come punto di riferimento condiviso tra membri del team di sviluppo e #glossario("proponente").
- *Garantire il tracciamento dei requisiti*: consente di mappare le esigenze del #glossario("proponente") attraverso l’identificazione, la classificazione e l’ordinamento di casi d’uso e corrispettivi requisiti.
- *Fornire una base per la progettazione*: il documento enuncia le richieste e fornisce una base alla progettazione che invece si occupa dell’individuazione di una soluzione adeguata.
- *#glossario("Verifica") dei requisiti*: il #glossario("processo") di #glossario("verifica") ha lo scopo di garantire che i requisiti siano corretti, completi e consistenti e quindi che il documento non abbia aspettative contraddittorie.
- *#glossario("Validazione") dei requisiti*: #glossario("attività") strettamente collegata all’#glossario("analisi dei requisiti") che consiste nell’accertare che il prodotto rispecchi le richieste del #glossario("proponente"). #glossario("Validazione") e #glossario("analisi dei requisiti") sono #glossario("attività") collegate in quanto affermare che un #glossario("requisito")  fa quello che deve fare significa che descrive lo stesso.

== Glossario
All'#glossario("interno") del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html", text(blue)[_glossario_]). Tutte le parole consultabili nel glossario saranno identificate da una "G", di colore blu, in pedice. Cliccando la parola, si aprirà il glossario nel sito web.

== Riferimenti
=== Riferimenti informativi
- Riferimento al #glossario("capitolato") 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf", text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]) - _Ultimo accesso al documento 22/11/2024_
- Riferimento alle slide IS: *_Regolamento del #glossario("progetto") didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf", text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]) -  _Ultimo accesso al documento 12/12/2024_
- Riferimento alle slide IS: *_Gestione di progetto_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf", text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf]) -  _Ultimo accesso al documento 01/02/2025_
- Riferimento alle slide IS: *#glossario("Analisi dei requisiti")*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf", text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf]) -  _Ultimo accesso al documento 28/01/2025_
- Riferimento alle slide IS: *Diagrammi Casi d'uso*: #link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf",
text(blue)[https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf]) -  _Ultimo accesso al documento 28/01/2025_
- Riferimento al glossario (v 1.0.0): #link("https://archi7echs-team.github.io/glossario.html", text(blue)[https://archi7echs-team.github.io/glossario.html])
- Norme di Progetto (v 1.0.0)

#pb()

= Descrizione del prodotto
== Obiettivo del prodotto
L’obiettivo è realizzare una #glossario("piattaforma") web di visualizzazione tridimensionale dei dati, che consenta all’utente che la utilizza di navigare e interagire con grafici a barre verticali #glossario("3D") rappresentanti dati complessi, utili per l'analisi e la presentazione di informazioni.

== Funzionalità del prodotto
Il prodotto deve essere progettato per poter rappresentare  dati, in un modello #glossario("3D"), navigabile e interattivo.\ Dunque le sue #glossario("funzionalità") principali includono:

- *#glossario("Funzionalità") di un ambiente #glossario("3D")*: 
  - *Rotazione*: permettere la rotazione del grafico per visualizzarlo da diverse angolazioni.
  - *Pan*: consentire lo spostamento del grafico sul piano orizzontale.
  - *Zoom*: abilitare l'avvicinamento e l'allontanamento dal grafico.
  - *Auto-positioning*: posizionare automaticamente il grafico in una vista ottimale.

- *Visualizzazione del valore medio globale*: il sistema deve consentire di visualizzare un #glossario("piano parallelo alla base"), che rappresenta il valore medio globale dei dati.

- *Opacizzazione o nascondimento delle barre*:  il sistema deve offrire la possibilità di #glossario("opacizzare") o nascondere le barre con valori superiori o inferiori rispetto a:
  - una barra selezionata;
  - il valore medio globale rappresentato dal piano visualizzato.
 Inoltre, deve permettere di lasciare visibili o non opacizzati solo i valori di minimo o di massimo delle y, ossia i punti estremi.

- *Visualizzazione dei valori corrispondenti a una barra*: il sistema deve consentire di visualizzare i valori corrispondenti a una barra quando questa è soggetta a un evento "#glossario("hover")" del mouse.

- *[Opzionale] Visualizzazione del valore medio del singolo elemento*: il sistema deve consentire di visualizzare un #glossario("piano parallelo alla base"), che rappresenta il valore medio di un singolo elemento di un asse (X o Z). 
== Caratteristiche utente
L'utilizzatore di #glossario("3Dataviz") appartiene a due distinte categorie di utenti:
- Esperto $arrow.r$ utente specializzato nell'analisi e interpretazione dei dati che, per una migliore visualizzazione e una migliore comprensione, sceglie l'applicativo per visualizzare grafici #glossario("3D") di un #glossario("set di dati"). Padroneggia buone o ottime conoscenze sull'uso del dispositivo con cui utilizza la #glossario("Web App"). La maggior parte degli utenti appartenenti a questa categoria conosce e ha già utilizzato altri applicativi per la visualizzazione grafica di dati.
-  Generico $arrow.r$ utente senza specifiche conoscenze nel campo dell'analisi dei dati che però vuole visualizzare un grafico #glossario("3D") di un #glossario("set di dati"). Possiede conoscenze di base sull'uso del dispositivo con cui utilizza la #glossario("Web App").

L'applicativo dovrà quindi presentare un'interfaccia semplice ma completa, per permettere ad entrambe le tipologie di utenti di utilizzare la #glossario("Web App") secondo le esigenze descritte sopra.

L'accesso alla #glossario("Web App") avviene principalmente attraverso un computer, per garantire una migliore visualizzazione del grafico e sfruttare al massimo le #glossario("funzionalità"). Non si esclude però, che l'utente possa effettuare l'accesso anche da un dispositivo mobile (smartphone o tablet), soprattutto se il #glossario("set di dati") è limitato. \


== Tecnologie
- *Svelte*: #glossario("framework") JavaScript per la costruzione di interfacce utente reattive. Permette con facilità di creare componenti personalizzati ad ogni nostra esigenza.
- *Threlte*: #glossario("libreria") che combina Svelte con Three.js per facilitare la creazione di scene #glossario("3D") reattive e interattive.
- *Spring Boot*: #glossario("framework") Java per lo sviluppo di applicazioni web e microservizi. Fornisce un'architettura modulare e configurazione automatica per semplificare la gestione del #glossario("backend").
- *Docker*: #glossario("piattaforma") di containerizzazione utilizzata per creare ambienti di sviluppo e produzione isolati e portabili. Docker facilita la distribuzione del #glossario("progetto") garantendo che l'applicazione funzioni in modo coerente in diversi ambienti.
- *PostgreSQL*: #glossario("database") relazionale open-source avanzato. Offre elevata affidabilità, estensibilità e supporto per transazioni #glossario("ACID"), rendendolo adatto a sistemi complessi e ad alte prestazioni.
- *Vitest*: #glossario("framework") di testing per JavaScript progettato per essere veloce e semplice da configurare. Vitest è utilizzato per eseguire test di #glossario("unità").
- *Playwright*: uno strumento per il testing end-to-end (#glossario("e2e")) che consente di automatizzare le interazioni con le applicazioni web. Playwright supporta l'esecuzione #glossario("headless") del browser rendendo i test più veloci ed affidabili.
- *Testcontainers*: #glossario("libreria") Java per eseguire test automatizzati utilizzando container Docker. Permette di creare ambienti di test isolati e riproducibili per database, code di messaggi e altri servizi.
- *Mockito*: #glossario("framework") Java per il testing unitario, specializzato nella creazione di mock di oggetti. Permette di simulare il comportamento delle dipendenze per testare in isolamento le singole unità di codice.
- *JUnit*: #glossario("framework") Java per il testing unitario. Fornisce un'architettura strutturata per scrivere ed eseguire test automatici, garantendo il corretto funzionamento del codice.


#pb()

= Casi d'uso
== Obiettivi
Un caso d’uso rappresenta in modo formale le #glossario("funzionalità") di un sistema, illustrando le #glossario("attività") svolte durante un’interazione. \
Questa sezione mira a descrivere in dettaglio i casi d’uso individuati dopo l’analisi del #glossario("capitolato"), colloqui con il #glossario("proponente") e discussioni tra i membri del #glossario("progetto").

== Attori
La considerazione fondamentale, risultato di un colloquio con l'azienda #glossario("proponente"), è che l'attore del sistema che verrà realizzato è unico. Questo attore è la persona che interagisce direttamente con la #glossario("piattaforma"), visualizzando i dati e utilizzando le #glossario("funzionalità") di interazione con i grafici tridimensionali.

== Schema logico Casi d'Uso

//[Inserire Diagramma qua]

Ogni caso d'uso è presentato seguendo la seguente struttura logica:
- *Descrizione*: una breve descrizione del caso d'uso che identifica chiaramente la funzione che il sistema deve svolgere.
- *Attore*: l’entità che interagisce col sistema, è un’entità esterna su cui non si possono effettuare modifiche.
- *Precondizioni*: le condizioni che definiscono lo stato iniziale del sistema e degli attori prima che l'interazione inizi.
- *Postcondizioni*: le condizioni che descrivono lo stato finale del sistema.
- *Scenario principale*: la sequenza di passi standard che descrive l'interazione principale tra l'attore e il sistema per completare un caso d’uso.
- *Scenari alternativi*: rappresentano dei casi particolari, ovvero quando uno dei passi dello scenario principale non è andato a buon fine ed è dunque necessario specificare come comportarsi in queste circostanze.

//[Inserire Diagramma o qua]

== Elenco casi d'uso

=== UC 1 - Visualizzazione interattiva dei dati <uc1>
- *Descrizione: * L'utente può visualizzare i dati in un grafico #glossario("3D") interattivo con barre verticali, dove ogni barra rappresenta un valore aggregato relativo a una determinata categoria. Il grafico permette di analizzare e confrontare visivamente i dati.
- *Attore: * Utente finale
- *Precondizioni: * I dati devono essere già caricati nel sistema (tramite tabella, #glossario("database") #glossario("SQL") o #glossario("API REST")). L'interfaccia web deve essere #glossario("accessibile") e funzionante.
- *Postcondizioni: *I dati vengono rappresentati in forma di grafico interattivo.
- *Scenario Principale: *
    + L'utente accede all'applicazione web.
    + Il sistema mostra il grafico generato in base ai dati precedentemente caricati.
    + L'utente deve essere in grado di utilizzare liberamente gli strumenti messi a disposizione.

#figure(
  image("/img/adr/PB/1.png", width: 80%),
  caption: [Visualizzazione interattiva dei dati],
) <imgUC1>
\

=== UC 2 - Caricamento dati per la generazione del grafico <uc2>
- *Descrizione: * L'utente deve avere la possibilità di inserire dei dati da poter visualizzare nel grafico.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è caricata correttamente ed in attesa di un inserimento di dati da parte dell'utente o scelta della modalità di reperimento degli stessi.
- *Postcondizioni: * I dati vengono salvati temporaneamente e utilizzati per creare il grafico.
- *Scenario Principale: *
    + L'utente accede alla sezione di inserimento dei dati.
    + L'utente seleziona il metodo di caricamento dati:
      - Tramite interfaccia (@uc2.1);
      - Tramite chiamata all'#glossario("API") esterna Weather Forecast (@uc2.2);
      - Tramite connessione #glossario("database") #glossario("SQL") (@uc2.3);
      - Tramite file .csv (@uc2.4).
    + Il sistema salva i dati.
#figure(
  image("/img/adr/PB/2.png", width: 115%),
  caption: [Caricamento dati per la generazione del grafico],
) <imgUC2>
\

=== UC 2.1 - Caricamento manuale dei dati tramite interfaccia <uc2.1>
- *Descrizione: * L'utente inserisce manualmente i dati in una tabella tramite l'interfaccia web per generare il grafico.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è caricata correttamente ed in attesa di un inserimento di dati da parte dell'utente.
- *Postcondizioni: * I dati vengono salvati temporaneamente e utilizzati per creare il grafico.
- *Scenario Principale: *
    + L'utente entra nella sezione "Inserimento dati".
    + L'utente compila i campi della tabella con coordinate x, y, z.
      - @uc2.1.1
      - @uc2.1.2
      - @uc2.1.3
    + L'utente clicca su un bottone per caricare il nuovo dato.
    + L'applicazione salva il nuovo dato.
- *Scenari Alternativi:* 
 - L'utente potrebbe inserire un valore nullo o non conforme alle aspettative, oppure un numero di dati che supera il limite:
  + Visualizzazione dell'errore emptyField (@uc28)
  + Visualizzazione dell'errore invalidArguments (@uc24)
  + Visualizzazione dell'errore tooMuchData (@uc25)
#figure(
  image("/img/adr/PB/3.png", width: 115%),
  caption: [Caricamento manuale dei dati tramite interfaccia],
) <imgUC2.1>
\

==== UC 2.1.1 - L'utente inserisce il campo X <uc2.1.1>
- *Descrizione: * L'utente desidera caricare i dati manualmente e deve essere in grado di inserire il valore dell'asse x.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è caricata correttamente ed in attesa di un inserimento di dati da parte dell'utente.
- *Postcondizioni: * L'utente ha inserito il valore x di un nuovo dato.
- *Scenario Principale: *
    + L'utente entra nella sezione "Inserimento dati".
    + L'utente compila il campo x
- *Scenari Alternativi:* 
 - L'utente potrebbe inserire un valore nullo o non conforme alle aspettative:
  + Visualizzazione dell'errore emptyField (@uc28)
  + Visualizzazione dell'errore invalidArguments (@uc24)    
#figure(
  image("/img/adr/PB/4.png", width: 115%),
  caption: [L'utente inserisce il campo X],
) <imgUC2.1.1>
\

==== UC 2.1.2 - L'utente inserisce il campo Y <uc2.1.2>
- *Descrizione: * L'utente desidera caricare i dati manualmente e deve essere in grado di inserire il valore dell'asse y.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è caricata correttamente ed in attesa di un inserimento di dati da parte dell'utente.
- *Postcondizioni: * L'utente ha inserito il valore y di un nuovo dato.
- *Scenario Principale: *
    + L'utente entra nella sezione "Inserimento dati".
    + L'utente compila il campo y.
- *Scenari Alternativi:* 
 - L'utente potrebbe inserire un valore nullo o non conforme alle aspettative:
  + Visualizzazione dell'errore emptyField (@uc28)
  + Visualizzazione dell'errore invalidArguments (@uc24)      
#figure(
  image("/img/adr/PB/5.png", width: 115%),
  caption: [L'utente inserisce il campo Y],
) <imgUC2.1.2>
\

==== UC 2.1.3 - L'utente inserisce il campo Z <uc2.1.3>
- *Descrizione: * L'utente desidera caricare i dati manualmente e deve essere in grado di inserire il valore dell'asse z.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è caricata correttamente ed in attesa di un inserimento di dati da parte dell'utente.
- *Postcondizioni: * L'utente ha inserito il valore z di un nuovo dato.
- *Scenario Principale: *
    + L'utente entra nella sezione "Inserimento dati".
    + L'utente compila il campo z
- *Scenari Alternativi:* 
 - L'utente potrebbe inserire un valore nullo o non conforme alle aspettative:
  + Visualizzazione dell'errore emptyField (@uc28)
  + Visualizzazione dell'errore invalidArguments (@uc24)        
#figure(
  image("/img/adr/PB/6.png", width: 115%),
  caption: [L'utente inserisce il campo Z],
) <imgUC2.1.3>
\

=== UC 2.2 - Caricamento automatico dati tramite chiamata all'API esterna Weather Forecast <uc2.2>
- *Descrizione: * L'utente inserisce automaticamente i dati tramite l'interfaccia web per generare il grafico selezionando la chiamata all'#glossario("API") esterna Weather Forecast di Open-Meteo come metodo di caricamento.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è in modalità di inserimento dati tramite chiamata ad #glossario("API") esterna.
- *Postcondizioni: * I dati vengono salvati temporaneamente e utilizzati per creare il grafico.
- *Scenario Principale: *
    + L'utente accede alla modalità "Inserimento dati".
    + L'utente seleziona la chiamata all'#glossario("API") Weather Forecast come modalità di reperimento dati.
    + L'utente clicca su un bottone per caricare i nuovi dati.
    + L'applicazione salva i nuovi dati.
- *Scenari alternativi:* 
  - L'#glossario("API") è un servizio #glossario("esterno") e in quanto tale potrebbe non rispondere in un tempo limite oppure potrebbe cambiare inaspettatamente la risposta
    + Visualizzazione errore tooMuchData (@uc25);  
    + Visualizzazione errore apiTimeOut (@uc27);
#figure(
  image("/img/adr/PB/7.png", width: 115%),
  caption: [Caricamento automatico dati tramite chiamata all'#glossario("API") esterna Weather Forecast],
) <imgUC2.2>
\

=== UC 2.3 - Caricamento automatico dati tramite connessione a database SQL <uc2.3>
- *Descrizione: * L'utente decide di reperire automaticamente i dati selezionando la connessione ad un #glossario("database") #glossario("SQL") locale come metodo di caricamento. Il #glossario("database") agisce esclusivamente come fonte dati: non è consentita la modifica dei dati presenti in esso.
- *Precondizioni: * 
 - L'applicazione è in modalità di inserimento dati tramite connessione a #glossario("database") #glossario("SQL") locale.
 - I dati presenti nel #glossario("database") sono già stati caricati e organizzati in modo corretto.
- *Postcondizioni: * I dati, una volta recuperati dalla sorgente, vengono salvati temporaneamente e utilizzati per creare il grafico.
- *Scenario Principale: *
    + L'utente accede alla modalità "Inserimento dati".
    + L'utente seleziona la connessione al #glossario("database") locale come modalità di reperimento dati.
    + L'applicazione elabora i dati nel grafico #glossario("3D").
- *Scenari Alternativi:*
  - Il #glossario("DB") non risponde per motivi di rete
    + Errore networkError (@uc29).
#figure(
  image("/img/adr/PB/8.png", width: 115%),
  caption: [Caricamento automatico dati tramite connessione a #glossario("database") #glossario("SQL")],
) <imgUC2.3>
\

=== UC 2.4 - Caricamento automatico dati tramite file .csv <uc2.4>
- *Descrizione: * L'utente inserisce automaticamente i dati tramite l'interfaccia web per generare il grafico selezionando la modalità di caricamento dati tramite file .csv.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è in modalità di inserimento da file #glossario(".csv").
- *Postcondizioni: * I dati, vengono salvati temporaneamente e utilizzati per creare il grafico.
- *Scenario Principale: *
    + L'utente accede alla modalità "Inserimento dati".
    + L'utente seleziona la modalità di caricamento dati tramite file .csv.
    + L'utente seleziona il file #glossario(".csv") da cui prendere i dati.
    + L'applicazione salva i dati ottenuti.
- *Scenari Alternativi:* 
  - L'utente potrebbe inserire un file .csv troppo pesante, con un formattazione errata oppure che contiene troppi dati, superando la soglia massima consentita
    + Errore tooMuchData (@uc25);
    + Errore invalidCsv (@uc26);
    + Errore fileTooBig (@uc30);
#figure(
  image("/img/adr/PB/9.png", width: 115%),
  caption: [Caricamento automatico dati tramite file .csv],
) <imgUC2.4>
\

=== UC 3 Strumenti visualizzazione dati - Rotazione <uc3>
- *Descrizione: * L'utente, mediante spostamento del mouse all'#glossario("interno") del grafico, può ruotare la visualizzazione
- *Attore: * Utente finale.
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Rotazione del grafico per consentire una migliore visualizzazione dei dati di interesse dell'utente.
- *Scenario Principale: *
  + L'utente attraverso le gesture del mouse si sposta nel grafico, andandolo a ruotare.
#figure(
  image("/img/adr/PB/11.png", width: 80%),
  caption: [Strumenti visualizzazione dati - Rotazione],
) <imgUC3>
\

=== UC 4 - Strumenti visualizzazione dati - PAN orizzontale <uc4>
- *Descrizione: * L'utente può muoversi nel grafico come se fosse in un ambiente 2d, spostandosi solo orizzontalmente.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Spostamento in orizzontale del grafico avvenuto con successo.
- *Scenario Principale: *
  + L'utente attraverso le gesture del mouse si sposta nel grafico orizzontalmente.
#figure(
  image("/img/adr/PB/12.png", width: 80%),
  caption: [Strumenti visualizzazione dati - PAN orizzontale],
) <imgUC4>
\
=== UC 5 - Strumenti visualizzazione dati - PAN verticale <uc5>
- *Descrizione: * L'utente può muoversi nel grafico come se fosse in un ambiente 2d, spostandosi solo verticalmente.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Spostamento in verticale del grafico avvenuto con successo.
- *Scenario Principale: *
  + L'utente attraverso le gesture del mouse si sposta nel grafico verticalmente.
#figure(
  image("/img/adr/PB/13.png", width: 80%),
  caption: [Strumenti visualizzazione dati - PAN verticale],
) <imgUC5>
\
  
=== UC 6 - Strumenti visualizzazione dati - Zoom In <uc6>
- *Descrizione:* L'utente deve essere in grado di ingrandire una specifica area del grafico #glossario("3D") per visualizzare più dettagli.
- *Attore:* Utente finale
- *Precondizioni:* Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni:* La porzione ingrandita del grafico viene visualizzata con maggiore dettaglio.
- *Scenario Principale:*
  + L'utente clicca sul pulsante dedicato nel menù del programma per effettuare lo Zoom In nel grafico
  + In alternativa l'utente utilizza le gesture del mouse o del trackpad/touchpad (pinch-out, doppio click o rotella del mouse) per ingrandire una sezione del grafico.
  + Il sistema aggiorna la visualizzazione mostrando l'area ingrandita con maggiore dettaglio.

#figure(
  image("/img/adr/PB/14.png", width: 80%),
  caption: [Strumenti visualizzazione dati - Zoom In],
) <imgUC6>
\

=== UC 7 - Strumenti visualizzazione dati - Zoom Out <uc7>
- *Descrizione:* L'utente deve essere in grado di ridurre la visualizzazione del grafico #glossario("3D") per avere una visione d'insieme.
- *Attore:* Utente finale
- *Precondizioni:* Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni:* La porzione del grafico viene rimpicciolita, permettendo una visione più ampia del contenuto.
- *Scenario Principale:*
  + L'utente clicca sul pulsante dedicato nel menù del programma per effettuare lo Zoom Out nel grafico
  + In alternativa l'utente utilizza le gesture del mouse o del trackpad/touchpad (pinch-out, doppio click o rotella del mouse) per ingrandire una sezione del grafico.
  + Il sistema aggiorna la visualizzazione di conseguenza.

#figure(
  image("/img/adr/PB/15.png", width: 80%),
  caption: [Strumenti visualizzazione dati - Zoom Out],
) <imgUC7>
\

=== UC 8 - Strumenti visualizzazione dati - Auto posizionamento <uc8>
- *Descrizione: * L'utente, attraverso l'apposito bottone, deve essere in grado di resettare la visualizzazione del grafico a quella di default renderizzata dall'applicativo.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato, #glossario("accessibile") e l'utente ha personalizzato, mediante strumenti, la visualizzazione.
- *Postcondizioni: * Reset della visualizzazione del grafico a quella di default.
- *Scenario Principale: *
  + L'utente, attraverso l'apposito bottone, resetta la visualizzazione, annullando quindi tutte le modifiche alla vista effettuate con gli strumenti messi a disposizione.
#figure(
  image("/img/adr/PB/16.png", width: 80%),
  caption: [Strumenti visualizzazione dati - Auto posizionamento],
) <imgUC8>
\

=== UC 9 - Visualizzazione altezza durante hover di una barra <uc9>
- *Descrizione: * L'utente posiziona il cursore sopra una barra del grafico e visualizza il valore dell'altezza della barra.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Visualizza il valore dell'altezza della barra.
- *Scenario Principale: *
    + L'utente passa il cursore del mouse sopra una barra.
    + L'applicazione aggiorna la visualizzazione fornendo l'altezza relativa alla barra.
#figure(
  image("/img/adr/PB/17.png", width: 80%),
  caption: [Visualizzazione informazioni durante #glossario("hover") di una barra],
) <imgUC9>
\

=== UC 10 - Click su una barra del grafico<uc10>
- *Descrizione: * L'utente preme sopra ad una barra ed accede al pannello relativo alla barra selezionata.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Visualizzazione delle informazioni della barra e possibilità di applicare filtri ulteriori in base alla barra selezionata.
- *Scenario Principale: *
    + L'utente preme sopra ad una barra del grafico.
    + L'applicazione aggiorna la visualizzazione mostrando un pannello relativo alla barra selezionata. Attraverso questo l'utente sarà in grado di visualizzazione informazioni specifiche relative alla selezione e applicare filtri ulteriori.
#figure(
  image("/img/adr/PB/18.png", width: 80%),
  caption: [Click su una barra del grafico],
) <imgUC10>
\
    
=== UC 10.1 - Visualizzazione informazioni relative alla barra selezionata <uc10.1>
- *Descrizione: * L'utente preme sopra ad una barra e vengono visualizzate le informazioni della barra ovvero, coordinate, altezza, media relativa ai valori della stessa x, media relativa ai valori della stessa z e media relativa ai valori globali.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile") e l'utente ha premuto su una barra del grafico.
- *Postcondizioni: * Apertura pannello informazioni e filtri, relativo alla barra selezionata, con visualizzazione delle informazioni: coordinate x e y, l'altezza della barra, media relativa ai valori della stessa x, media relativa ai valori della stessa z, media relativa ai valori globali.
- *Scenario Principale: *
    + L'utente clicca con il tasto sinistro del mouse la barra di interesse
    + L'applicazione aggiorna la visualizzazione mostrando un pannello dedicato alla barra selezionata, fornendo, in esso, le informazioni relative a quella barra: coordinate x e y, l'altezza della barra, media relativa ai valori della stessa x, media relativa ai valori della stessa z, media relativa ai valori globali.
#figure(
  image("/img/adr/PB/19.png", width: 80%),
  caption: [Visualizzazione informazioni relative alla barra selezionata],
) <imgUC10.1>
\

=== UC 10.2 - Scelta della percentuale di opacizzazione della barra selezionata<uc10.2>
- *Descrizione: * L'utente deve avere la possibilità di modificare l'opacizzazione di una barra selezionata.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile")ed il pannello filtri, relativo alla barra selezionata, è stato caricato correttamente.
- *Postcondizioni: * L'utente seleziona l'opacizzazione della barra selezionata.
- *Scenario Principale: *
    + L'utente clicca con il tasto sinistro del mouse la barra di interesse
    + L'applicazione aggiorna la visualizzazione mostrando un pannello dedicato alla barra selezionata.
    + L'utente, mediante apposito l'apposito componente slider, situato nel pannello filtri relativo alla barra, imposta l'opacizzazione della barra selezionata.
    + L'applicazione aggiorna la visualizzazione.
#figure(
  image("/img/adr/PB/20.png", width: 80%),
  caption: [Scelta dell'opacizzazione della barra selezionata],
) <imgUC10.2>
\

=== UC 10.3 - Opacizzazione delle barre con altezza minore rispetto alla barra selezionata<uc10.3>
- *Descrizione: * L'utente deve avere la possibilità di #glossario("opacizzare") le barre con altezza minore rispetto alla barra selezionata.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile")ed il pannello filtri, relativo alla barra selezionata, è stato caricato correttamente.
- *Postcondizioni: * Le barre del grafico, con altezza minore del valore della barra selezionata, sono opacizzate.
- *Scenario Principale: *
    + L'utente clicca con il tasto sinistro del mouse la barra di interesse.
    + L'applicazione aggiorna la visualizzazione mostrando un pannello dedicato alla barra selezionata.
    + L'utente preme il bottone dedicato, situato nel pannello filtri relativo alla barra selezionata.
    + L'applicazione aggiorna il grafico, opacizzando tutti i dati con valore minore del valore della barra selezionata.
#figure(
  image("/img/adr/PB/21.png", width: 80%),
  caption: [Opacizzazione delle barre con altezza minore rispetto alla barra selezionata],
) <imgUC10.3>
\

=== UC 10.4 - Opacizzazione delle barre con altezza maggiore rispetto alla barra selezionata<uc10.4>
- *Descrizione: * L'utente deve avere la possibilità di #glossario("opacizzare") le barre con altezza maggiore rispetto alla barra selezionata.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile")ed il pannello filtri, relativo alla barra selezionata, è stato caricato correttamente.
- *Postcondizioni: * Le barre del grafico, con altezza maggiore del valore della barra selezionata, sono opacizzate.
- *Scenario Principale: *
    + L'utente clicca con il tasto sinistro del mouse la barra di interesse.
    + L'applicazione aggiorna la visualizzazione mostrando un pannello dedicato alla barra selezionata.    
    + L'utente preme sul bottone dedicato all'applicazione del filtro.
    + L'applicazione aggiorna il grafico, opacizzando tutti i dati con valore maggiore del valore della barra selezionata.
#figure(
  image("/img/adr/PB/22.png", width: 80%),
  caption: [Opacizzazione delle barre con altezza maggiore rispetto alla barra selezionata],
) <imgUC10.4>
\


=== UC 10.5 - Visualizzazione della media in base al valore di X, rispetto alla selezione <uc10.5>
- *Descrizione: * L'utente può visualizzare il piano che identifica la media dei valori appartenenti all'asse X selezionato.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile")ed il pannello filtri, relativo alla barra selezionata, è stato caricato correttamente.
- *Postcondizioni: * Viene visualizzato il piano che identifica la media dei valori appartenenti all'asse X selezionato.
- *Scenario Principale: *
    + L'utente clicca con il tasto sinistro del mouse la barra di interesse.
    + L'applicazione aggiorna la visualizzazione mostrando un pannello dedicato alla barra selezionata.
    + L'utente applica il filtro mediante selezione dell'apposita checkbox del menù Filtri, caricato al click della barra.
    + L'applicazione genera un piano che identifica la media dei valori appartenenti al valore dell'asse X selezionato.
       
#figure(
  image("/img/adr/PB/28.png", width: 80%),
  caption: [Visualizzazione della media in base al valore di X, rispetto alla selezione],
) <imgUC10.5>
\

=== UC 10.6 - Visualizzazione della media in base al valore di Z, rispetto alla selezione<uc10.6>
- *Descrizione: * L'utente può visualizzare il piano che identifica la media dei valori appartenenti all'asse Z selezionato.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile")ed il pannello filtri, relativo alla barra selezionata, è stato caricato correttamente.
- *Postcondizioni: * Viene visualizzato il piano che identifica la media dei valori appartenenti all'asse Z selezionato.
- *Scenario Principale: *
    + L'utente clicca con il tasto sinistro del mouse la barra di interesse.
    + L'applicazione aggiorna la visualizzazione mostrando un pannello dedicato alla barra selezionata.
    + L'utente applica il filtro mediante selezione dell'apposita checkbox del menù Filtri, caricato al click della barra.
    + L'applicazione genera un piano che identifica la media dei valori appartenenti al valore dell'asse X selezionato.
#figure(
  image("/img/adr/PB/29.png", width: 80%),
  caption: [Visualizzazione della media in base al valore di Z, rispetto alla selezione],
) <imgUC10.6>
\

=== UC 10.7 - Visualizzazione delle sole barre selezionate<uc10.7>
- *Descrizione: * L'utente può visualizzare le sole barre selezionate, opacizzando di conseguenza le barre non selezionate.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile")ed il pannello filtri, relativo alla barra selezionata, è stato caricato correttamente.
- *Postcondizioni: * Vengono opacizzate le barre non selezionate.
- *Scenario Principale: *
    + L'utente clicca con il tasto sinistro del mouse la barra di interesse.
    + L'applicazione aggiorna la visualizzazione mostrando un pannello dedicato alla barra selezionata.
    + L'utente attiva il filtro mediante l'apposito bottone situato nel pannello filtri relativo alla barra selezionata.
    + Tutte le barre, ad eccezione di quelle selezionate, vengono opacizzate.
    + Ogni barra selezionata verrà colorata.
#figure(
  image("/img/adr/PB/45.png", width: 80%),
  caption: [Visualizzazione delle sole barre selezionate],
) <imgUC10.7>
\

=== UC 10.8 - Reset visualizzazione delle sole barre selezionate mediante doppio click del mouse<uc10.8>
- *Descrizione: * L'utente può resettare la visualizzazione delle sole barre selezionate opacizzando tutte le barre, ad esclusione di quella selezionata mediante doppio click del mouse.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile"),il pannello filtri, relativo alla barra selezionata, è stato caricato correttamente e sono visibili le sole barre selezionate.
- *Postcondizioni: * Vengono opacizzate tutte le barre, ad esclusione di quella selezionata mediante doppio click del mouse.
- *Scenario Principale: *
    + L'utente clicca due volte con il tasto sinistro del mouse su una barra.
    + Tutte le barre, ad eccezione di quella selezionata, vengono opacizzate.
    + La barra selezionata viene colorata.
#figure(
  image("/img/adr/PB/46.png", width: 80%),
  caption: [Reset visualizzazione delle sole barre selezionate mediante doppio click del mouse],
) <imgUC10.8>
\

=== UC 10.9 Reimpostare la visualizzazione della barra selezionata<uc10.9>
- *Descrizione: * L'utente preme sopra ad una barra e deve avere la possibilità di reimpostare ila visualizzazione di default.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile"),il pannello filtri, relativo alla barra selezionata, è stato caricato correttamente e sono stati applicati filtri di visualizzazione, relativi alla barra selezionata.
- *Postcondizioni: * Il grafico reimposta la visualizzazione standard della barra (e delle barre affette dai cambiamenti applicati attraverso la barra specifica) , togliendo tutti i filtri precedentemente applicati.
- *Scenario Principale: *
    + L'utente clicca con il tasto sinistro del mouse la barra di interesse.
    + L'applicazione aggiorna la visualizzazione mostrando un pannello dedicato alla barra selezionata.
    + L'utente preme sul bottone dedicato per reimpostare i filtri precedentemente applicati.
    + L'applicazione aggiorna il grafico, visualizzando la barra con le impostazioni di default (e delle barre affette dai cambiamenti applicati attraverso la barra specifica).
#figure(
  image("/img/adr/PB/23.png", width: 80%),
  caption: [Reimpostare la visualizzazione della barra selezionata],
) <imgUC10.9>
\

=== UC 10.10 - Chiusura pannello informazioni e filtri relativi ad una barra<uc10.10>
- *Descrizione: * L'utente può chiudere il pannello informazioni e filtri relativi ad una barra selezionata.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile"),il pannello filtri, relativo alla barra selezionata, è stato caricato correttamente ed è visibile.
- *Postcondizioni: * Il pannello informazioni e filtri relativi ad una barra selezionata è chiuso.
- *Scenario Principale: *
    + L'utente clicca con il tasto sinistro del mouse la barra di interesse.
    + L'applicazione aggiorna la visualizzazione mostrando un pannello dedicato alla barra selezionata.
    + L'utente seleziona, mediante click con tasto sinistro del mouse, il relativo bottone di chiusura del pannello informazioni e filtri 
    + L'applicazione aggiorna la visualizzazione chiudendo il pannello informazioni e filtri relativi alla barra selezionata.
#figure(
  image("/img/adr/PB/44.png", width: 80%),
  caption: [Chiusura pannello informazioni e filtri relativi ad una barra],
) <imgUC10.10>
\
      
=== UC 11 - Visualizzazione del valore medio globale <uc11>
- *Descrizione: * L'utente attiva la visualizzazione di un #glossario("piano parallelo alla base") del grafico, rappresentante il valore medio globale. L'utente può con lo stesso metodo disattivare la visualizzazione del piano.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Viene mostrato il piano medio globale.
- *Scenario Principale: *
    + L'utente preme un bottone nel menù dedicato per visualizzare un piano che rappresenta il valore medio globale.
    + L'applicazione calcola il valore medio globale e lo rappresenta come piano nel grafico.
#figure(
  image("/img/adr/PB/24.png", width: 80%),
  caption: [Visualizzazione del valore medio globale],
) <imgUC11>
\

=== UC 12 - Visualizzazione dati maggiori della media globale <uc12>
- *Descrizione: * L'utente può visualizzare i soli dati che sono maggiori della media globale.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Vengono visualizzati solo i dati maggiori della media globale, opacizzando di conseguenza i valori minori della media globale.
- *Scenario Principale: *
    + L'utente preme un bottone nel menù dedicato e opacizza i dati minori della media globale.
    + L'applicazione opacizza tutti i dati minori della media globale.
#figure(
  image("/img/adr/PB/25.png", width: 80%),
  caption: [Visualizzazione dati maggiori della media globale],
) <imgUC12>
\
    
=== UC 13 - Visualizzazione dati minori della media globale <uc13>
- *Descrizione: * L'utente può visualizzare i soli dati che sono minori della media globale.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Vengono visualizzati solo i dati minori della media globale, opacizzando di conseguenza i valori maggiori della media globale.
- *Scenario Principale: *
    + L'utente preme un bottone nel menù dedicato e opacizza i dati maggiori della media globale.
    + L'applicazione opacizza tutti i dati maggiori della media globale.
#figure(
  image("/img/adr/PB/26.png", width: 80%),
  caption: [Visualizzazione dati minori della media globale],
) <imgUC13>
\

=== UC 14 - Selezione, o inserimento, di _n1_ e _n2_ per il calcolo del range di visualizzazione <uc14>
- *Descrizione: * L'utente deve essere in grado di filtrare la visualizzazione dei dati in base ad un range di valori, definito da due estremi, _n1_ e _n2_, che deve quindi essere in grado di selezionare o inserire manualmente.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile"). Lo slider è visibile e l'utente ha la possibilità di selezionare i valori _n1_ e _n2_. 
- *Postcondizioni: * L'utente ha definito i valori _n1_ e _n2_ per il calcolo del range di visualizzazione
- *Scenario Principale: *
    + L’utente, tramite un’area specifica tra i filtri, seleziona mediante slider, o inserisce manualmente, i valori di _n1_ e _n2_.
#figure(
  image("/img/adr/PB/47.png", width: 80%),
  caption: [Selezione, o inserimento, di _n1_ e _n2_ per il calcolo del range di visualizzazione],
) <imgUC14>
\

=== UC 15 - Visualizzazione dati con altezza compresa tra un intervallo <uc15>
- *Descrizione: * L'utente può filtrare i soli dati che sono contenuti all'#glossario("interno") di un intervallo di valori.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Vengono visualizzati, a seguito di filtro, solo i dati con altezza compresa nell'intervallo specificato.
- *Scenario Principale: *
    + L'utente seleziona mediante slider, o inserisce manualmente, i valori _n1_ e _n2_, limite inferiore e superiore dell'intervallo:
      - @uc14
    + Vengono visualizzati solo i dati con altezza compresa nell'intervallo specificato.
#figure(
  image("/img/adr/PB/27.png", width: 80%),
  caption: [Visualizzazione dati con altezza compresa tra un intervallo],
) <imgUC15>
\

=== UC 16 - Selezione o inserimento _n3_ per il calcolo delle _n3_ altezze con valore maggiore <uc16>
- *Descrizione: * L'utente desidera visualizzare le sole barre con altezza compresa tra le _n3_ altezze con valore maggiore.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile"). Lo slider è visibile e l'utente ha la possibilità di selezionare il valore di _n3_
- *Postcondizioni: * L'utente ha inserito il valore _n3_ che può essere utilizzato per visualizzare le barre con altezza compresa tra le _n3_ altezze con valore maggiore.
- *Scenario Principale: *
    + L'utente, tramite un'area specifica tra i filtri, inserisce il valore _n3_.
#figure(
  image("/img/adr/PB/48.png", width: 100%),
  caption: [Selezione o inserimento _n3_ per il calcolo delle _n3_ altezze con valore maggiore],
) <imgUC16>
\

  
=== UC 17 - Filtro per la visualizzazione delle barre con altezza compresa le tra le  _n3_ altezze maggiori <uc17>
- *Descrizione: * L'utente può filtrare e visualizzare solo le barre con altezza compresa le tra le _n3_ altezze maggiori, dove _n3_ è da lui definito.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Vengono opacizzate la barre con altezza esclusa dall'intervallo delle _n3_ altezze maggiori.
- *Scenario Principale: *
    + L'utente inserisce, o seleziona, il valore di _n3_:
      - @uc16
    + L'applicazione opacizza tutti i valori che non sono nell'insieme delle _n3_ altezze maggiori.
#figure(
  image("/img/adr/PB/31.png", width: 80%),
  caption: [Visualizzazione delle barre con altezza compresa le tra le  _n3_ altezze maggiori maggiori],
) <imgUC17>
\

=== UC 18 - Selezione o inserimento _n4_ per il calcolo delle _n4_ altezze con valore minore <uc18>
- *Descrizione: * L'utente desidera visualizzare le sole barre con altezza compresa tra le _n4_ altezze con valore minore.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile"). Lo slider è visibile e l'utente ha la possibilità di selezionare il valore di _n4_
- *Postcondizioni: * L'utente ha inserito il valore _n4_ che può essere utilizzato per visualizzare le barre con altezza compresa tra le _n4_ altezze con valore minore.
- *Scenario Principale: *
    + L'utente, tramite un'area specifica tra i filtri, inserisce il valore _n4_.
#figure(
  image("/img/adr/PB/49.png", width: 100%),
  caption: [Selezione o inserimento _n3_ per il calcolo delle _n3_ altezze con valore minore],
) <imgUC18>
\

=== UC 19 - Filtro per la visualizzazione delle barre con altezza compresa le tra le  _n4_ altezze minori <uc19>
- *Descrizione: * L'utente può filtrare e visualizzare solo le barre con altezza compresa le tra le _n4_ altezze maggiori, dove _n4_ è da lui definito.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Vengono opacizzate la barre con altezza esclusa dall'intervallo delle _n4_ altezze minori.
- *Scenario Principale: *
    + L'utente inserisce, o seleziona, il valore di _n4_:
      - @uc18
    + L'applicazione opacizza tutti i valori che non sono nell'insieme delle _n4_ altezze maggiori.
#figure(
  image("/img/adr/PB/32.png", width: 80%),
  caption: [Visualizzazione delle barre con altezza compresa le tra le  _n4_ altezze maggiori maggiori],
) <imgUC19>
\

=== UC 20 - Personalizzazione della modalità di colorazione delle barre del grafico <uc20>
- *Descrizione: * L'utente deve essere in grado di scegliere la modalità di colorazione delle barre del grafico.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * La visualizzazione del grafico viene aggiornata colorando le barre nella modalità scelta dall'utente.
- *Scenario Principale: *
    + L'utente, tramite il click dello specifico bottone nel pannello filtri - sezione Colori, è in grado di scegliere la modalità di colorazione delle barre del grafico, tra le seguenti:
      - Per righe _(default)_
      - Per colonne
      - Per valori
    + L'applicazione aggiorna la visualizzazione colorando le barre del grafico in base alla modalità scelta dall'utente.   
#figure(
  image("/img/adr/PB/43.png", width: 80%),
  caption: [Personalizzazione della modalità di colorazione delle barre del grafico],
) <imgUC20>
\

=== UC 21 - Reset dei filtri applicati alla visualizzazione dei dati <uc21>
- *Descrizione: * L'utente deve essere in grado di eliminare tutti i filtri applicati al grafico, riportandolo allo stato di default.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile") e sono stati applicati dei filtri di visualizzazione.
- *Postcondizioni: * La visualizzazione del grafico ritorna ad essere quella di default, senza alcun filtro applicato.
- *Scenario Principale: *
    + L'utente, tramite il click dello specifico bottone, reimposta le impostazioni di default.
    + L'applicazione visualizza il grafico di partenza, senza alcun filtro applicato.   
#figure(
  image("/img/adr/PB/33.png", width: 80%),
  caption: [Reset dei filtri applicati alla visualizzazione dei dati],
) <imgUC21>
\

=== UC 22 - Esportazione di un grafico <uc22>
- *Descrizione: * L'utente deve essere in grado di esportare tutte le informazioni relative ad un grafico a cui si sta lavorando, ovvero l'insieme di dati e i filtri relativi. 
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile"), con eventuali filtri di visualizzazione applicati.
- *Postcondizioni: * Tutte le informazioni del grafico vengono salvate in un file .csv.
- *Scenario Principale: *
    + L'utente, tramite un bottone specifico, decide di esportare il grafico.
    + L'applicazione salva tutte le informazioni necessarie in un file .csv dedicato con la formattazione corretta.
#figure(
  image("/img/adr/PB/34.png", width: 80%),
  caption: [Esportazione di un grafico],
) <imgUC22>
\

=== UC 23 - Creazione di un'istantanea del grafico <uc23>
- *Descrizione: * L'utente deve essere in grado di effettuare uno "screenshot" del grafico.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Viene salvata un'immagine istantanea del grafico.
- *Scenario Principale: *
    + L'utente, tramite un bottone specifico, decide di effettuare un'istantanea del grafico.
    + L'applicazione crea un'immagine con l'istantanea nel grafico e la salva.
#figure(
  image("/img/adr/PB/35.png", width: 80%),
  caption: [Creazione di un'istantanea del grafico],
) <imgUC23>
\
    
=== UC 24 - Visualizzazione errore invalidArguments <uc24>
- *Descrizione: * L'utente ha inserito dei dati all'#glossario("interno") di un input che non sono conformi alle aspettative e viene avvertito graficamente dell'errore.
- *Attore: * Utente finale
- *Precondizioni: * L'utente ha inserito dei dati in un input che non sono conformi alle aspettative.
- *Postcondizioni: * 
  - L'utente viene avvisato graficamente dell'errore nella compilazione dell'input.
- *Scenario Principale: *
    + L'utente inserisce dei dati all'#glossario("interno") del campo d'inserimento.
    + L'utente viene avvisato graficamente dell'errore nella compilazione dell'input.
#figure(
  image("/img/adr/PB/36.png", width: 80%),
  caption: [Visualizzazione errore invalidArguments],
) <imgUC24>
\

=== UC 25 - Visualizzazione errore tooMuchData <uc25>
- *Descrizione: * L'utente viene avvisato graficamente che ha provato a caricare dei dati da una fonte esterna (es. file .csv) e il numero di dati è maggiore della soglia massima supportata.
- *Attore: * Utente finale
- *Precondizioni: * La pagina è stata caricata completamente ed è pronta all'uso.
- *Postcondizioni: * 
  - L'utente viene avvisato del fatto che la quantità di dati ricevuti è maggiore della soglia massima supportata.
- *Scenario Principale: *
    + L'utente decide l'input dei dati (file, #glossario("database"), #glossario("api"), ecc...).
    + L'utente cerca di caricare i dati.
    + L'utente viene avvisato che il numero di dati ricevuti supera la soglia massima supportata e che quindi i dati non sono stati caricati.
#figure(
  image("/img/adr/PB/37.png", width: 80%),
  caption: [Visualizzazione errore tooMuchData],
) <imgUC25>
\

=== UC 26 - Visualizzazione errore invalidCsv <uc26>
- *Descrizione: * L'utente viene avvisato graficamente che ha provato a caricare dei dati da un file .csv ma la formattazione interna al file non è corretta.
- *Attore: * Utente finale
- *Precondizioni: * La pagina è stata caricata completamente ed è pronta all'uso.
- *Postcondizioni: * 
  - L'utente viene avvisato dell'errore di caricamento dei dati, in quanto il file non è formattato correttamente.
- *Scenario Principale: *
    + L'utente decide l'input dei dati (file csv).
    + L'utente cerca di caricare i dati.
    + L'utente viene avvisato che il file ha una formattazione non corretta e che i dati non sono stati caricati.
#figure(
  image("/img/adr/PB/38.png", width: 80%),
  caption: [Visualizzazione errore invalidCsv],
) <imgUC26>
\

=== UC 27 - Visualizzazione errore apiTimeout <uc27>
- *Descrizione: * L'utente viene avvisato graficamente che ha provato a caricare dei dati tramite chiamata ad un #glossario("API") esterna che però non ha risposto alla richiesta entro un tempo limite.
- *Precondizioni: * L'utente ha selezionato l'#glossario("API") esterna da cui recuperare i dati e ne ha richiesto l'invio.
- *Postcondizioni: * 
  - L'utente viene avvisato del fatto che l'endpoint fornito non ha risposto entro un tempo limite di timeout.
- *Scenario Principale: *
    + L'utente decide l'input dei dati (#glossario("API")).
    + L'utente preme il bottone per caricare i dati.
    + L'utente viene avvisato graficamente che non è stata fornita alcuna riposta entro un tempo limite di timeout.
#figure(
  image("/img/adr/PB/39.png", width: 80%),
  caption: [Visualizzazione errore apiTimeout],
) <imgUC27>
\

=== UC 28 - Visualizzazione errore emptyField <uc28>
- *Descrizione: * L'utente viene avvisato graficamente che non ha inserito dei dati all'#glossario("interno") di un input che non può essere vuoto.
- *Attore: * Utente finale
- *Precondizioni: * L'utente ha cercato di lasciare un input vuoto.
- *Postcondizioni: * 
  - L'utente viene avvisato graficamente dell'errore nella compilazione dell'input.
- *Scenario Principale: *
    + L'utente lascia un input vuoto.
    + L'utente viene avvisato graficamente dell'errore nella compilazione dell'input.
#figure(
  image("/img/adr/PB/40.png", width: 80%),
  caption: [Visualizzazione errore emptyField],
) <imgUC28>
\

=== UC 29 - Visualizzazione errore networkError <uc29>
- *Descrizione: * L'utente viene avvisato graficamente che ha provato a caricare dei dati da un #glossario("DB") che però non ha risposto per motivi di rete.
- *Precondizioni: * L'utente ha inserito il #glossario("DB") da cui recuperare i dati e ne ha richiesto l'invio.
- *Postcondizioni: * 
  - L'utente viene avvisato del fatto che il #glossario("DB") fornito non ha risposto entro un tempo limite di timeout.
- *Scenario Principale: *
    + L'utente decide l'input dei dati (ad esempio #glossario("DB")).
    + L'utente preme il bottone per caricare i dati.
    + L'utente viene avvisato graficamente che non è stata fornita alcuna riposta entro un tempo limite di timeout.

#figure(
  image("/img/adr/PB/41.png", width: 80%),
  caption: [Visualizzazione errore networkError],
) <imgUC29>
\

=== UC 30 - Visualizzazione errore fileTooBig <uc30>
- *Descrizione: * L'utente viene avvisato graficamente che ha provato a caricare dei dati da un file .csv che ha un peso superiore al limite consentito.
- *Attore: * Utente finale
- *Precondizioni: * La pagina è stata caricata completamente ed è pronta all'uso.
- *Postcondizioni: * 
  - L'utente viene avvisato dell'errore di caricamento dei dati, in quanto il file è troppo pesante.
- *Scenario Principale: *
    + L'utente decide l'input dei dati (file csv).
    + L'utente cerca di caricare i dati.
    + L'utente viene avvisato che il file selezionato è troppo pesante e non sono stati caricati.
#figure(
  image("/img/adr/PB/42.png", width: 80%),
  caption: [Visualizzazione errore fileTooBig],
) <imgUC30>
\


= Requisiti
== Identificazione 
Un #glossario("requisito") possiede 2 distinte caratteristiche:
- *Tipologia* $arrow.r$ indica il tipo di #glossario("requisito"), ovvero:
  + Funzionale
  + Qualità
  + Vincolo
- *Classificazione* $arrow.r$ indica, secondo tre livelli, la categoria del #glossario("requisito") in base all'importanza.  \ L'ordine è decrescente in base all'importanza del #glossario("requisito"):
  + Obbligatorio
  + Desiderabile
  + Opzionale   

Ogni #glossario("requisito") viene quindi identificato da un #glossario("codice univoco") strutturato come segue:
#align(center)[*Tipologia.Classificazione.NumProgressivo*] \
Dove _Tipologia_ e _Classificazione_ fanno riferimento a quanto descritto sopra. _NumProgressivo_ è un intero che aumenta con ogni #glossario("requisito") della medesima classe.

== Requisiti funzionali
#align(center)[
  #table(
  columns: (auto, auto, auto, auto),
  align: (col, row) => (center, center, center, center,).at(col),
  inset: 6pt,
  table.header([*Codice*], [*Riferimento*], [*Descrizione*], [*Classificazione*]),
  [F.1.1], [@uc1 \ #glossario("UC")1], [L'utente può visualizzare i dati in un grafico #glossario("3D") interattivo con barre verticali. ], [1 - Obbligatorio],
  [F.1.2], [@uc2 \ #glossario("UC")2], [L'utente deve avere la possibilità di inserire, o reperire dei dati da poter visualizzare nel grafico ], [1 - Obbligatorio],
  [F.3.1], [@uc2.1 \ #glossario("UC")2.1], [L'utente inserisce manualmente i dati in una tabella tramite l'interfaccia web per generare il grafico], [3 - Opzionale],
  [F.3.2], [@uc2.1.1 \ #glossario("UC")2.1.1], [L'utente desidera caricare i dati manualmente e deve essere in grado di inserire il valore dell'asse x], [3 - Opzionale],
  [F.3.3], [@uc2.1.2 \ #glossario("UC")2.1.2], [L'utente desidera caricare i dati manualmente e deve essere in grado di inserire il valore dell'asse y], [3 - Opzionale],
  [F.3.4], [@uc2.1.3 \ #glossario("UC")2.1.3], [L'utente desidera caricare i dati manualmente e deve essere in grado di inserire il valore dell'asse z], [3 - Opzionale],
  [F.1.3], [@uc2.2 \ #glossario("UC")2.2], [L'utente seleziona come fonte di reperimento dati la chiamata all'#glossario("API") esterna Weather Forecast ], [1 - Obbligatorio],
  [F.1.4], [@uc2.3 \ #glossario("UC")2.3], [L'utente seleziona come fonte di reperimento dati la connessione ad un #glossario("database") #glossario("SQL") locale ], [1 - Obbligatorio],
  [F.1.5], [@uc2.4 \ #glossario("UC")2.4], [L'utente seleziona come fonte di reperimento dati un file .csv mediante il caricamento dello stesso attraverso l'interfaccia grafica], [1 - Obbligatorio],
  [F.1.6], [@uc3 \ #glossario("UC")3], [L'utente, mediante spostamento del mouse all'#glossario("interno") del grafico, può ruotare la visualizzazione], [1 - Obbligatorio],
  [F.1.7], [@uc4 \ #glossario("UC")4], [L'utente può muoversi nel grafico come se fosse in un ambiente 2d, spostandosi solo orizzontalmente], [1 - Obbligatorio],
  [F.1.8], [@uc5 \ #glossario("UC")5], [L'utente può muoversi nel grafico come se fosse in un ambiente 2d, spostandosi solo verticalmente], [1 - Obbligatorio],
  [F.1.9], [@uc6 \ #glossario("UC")6], [L'utente deve essere in grado di ingrandire, mediante gesture del mouse/trackpad, una specifica area del grafico #glossario("3D") per visualizzare più dettagli], [1 - Obbligatorio],
  [F.1.10], [@uc7 \ #glossario("UC")7], [L'utente deve essere in grado di ridurre, mediante gesture del mouse/trackpad, la visualizzazione del grafico #glossario("3D") per avere una visione d'insieme.], [1 - Obbligatorio],
  [F.1.11], [@uc8 \ #glossario("UC")8], [L'utente, attraverso l'apposito bottone, deve essere in grado di resettare la visualizzazione del grafico a quella di default renderizzata dall'applicativo], [1 - Obbligatorio],
  [F.1.12], [@uc9 \ #glossario("UC")9], [L'utente posiziona il cursore sopra una barra del grafico e visualizza l'altezza della barra selezionata], [1 - Obbligatorio],
  [F.1.13], [@uc10 \ #glossario("UC")10], [L’utente deve essere in grado, al click di una barra, di visualizzare il pannello relativo alla selezione], [1 - Obbligatorio],
  [F.1.14], [@uc10.1 \ #glossario("UC")10.1], [L'utente deve essere in grado, al click di una barra, di visualizzare nel pannello relativo alla barra stessa, le informazioni dettagliate della selezione], [1 - Obbligatorio],
  [F.1.15], [@uc10.2 \ #glossario("UC")10.2], [L'utente deve essere in grado di personalizzare la percentuale di opacizzazione di una barra selezionata], [1 - Obbligatorio],
  [F.1.16], [@uc10.3 \ #glossario("UC")10.3], [L'utente preme sopra ad una barra e deve avere la possibilità di #glossario("opacizzare") tutti i dati che hanno valore minore del valore della barra selezionata], [1 - Obbligatorio],
  [F.1.17], [@uc10.4 \ #glossario("UC")10.4], [L'utente preme sopra ad una barra e deve avere la possibilità di #glossario("opacizzare") tutti gli altri dati che hanno valore maggiore del valore della barra selezionata], [1 - Obbligatorio],
  [F.1.18], [@uc10.5 \ #glossario("UC")10.5], [L'utente deve essere in grado di visualizzare il piano che identifica la media dei valori appartenenti all'asse X selezionato], [1 - Obbligatorio],
  [F.1.19], [@uc10.6 \ #glossario("UC")10.6], [L'utente deve essere in grado di visualizzare il piano che identifica la media dei valori appartenenti all'asse Z selezionato], [1 - Obbligatorio],
  [F.1.20], [@uc10.7 \ #glossario("UC")10.7], [L'utente deve essere in grado di visualizzare, mediante modifica delle percentuali di opacizzazione, le sole barre selezionate], [1 - Obbligatorio],
  [F.1.21], [@uc10.8 \ #glossario("UC")10.8], [L'utente deve essere in grado di reimpostare la visualizzazione delle barre selezionate mediante doppio click su una qualsiasi barra], [1 - Obbligatorio],
  [F.1.22], [@uc10.9 \ #glossario("UC")10.9], [L'utente deve essere in grado di reimpostare alla visualizzazione di default i filtri di visualizzazione applicati sulla base della barra selezionata], [1 - Obbligatorio],
  [F.1.23], [@uc10.10 \ #glossario("UC")10.10], [L'utente deve essere in grado di chiudere il pannello relativo alla barra selezionata], [1 - Obbligatorio],
  [F.1.24], [@uc11 \ #glossario("UC")11], [L'utente attiva o disattiva la visualizzazione di un #glossario("piano parallelo alla base") del grafico, rappresentante il valore medio globale], [1 - Obbligatorio],
  [F.1.25], [@uc12 \ #glossario("UC")12], [L'utente può visualizzare i soli dati che sono maggiori della media globale], [1 - Obbligatorio],
  [F.1.26], [@uc13 \ #glossario("UC")13], [L'utente può visualizzare i soli dati che sono minori della media globale], [1 - Obbligatorio],
  [F.1.27], [@uc14 \ #glossario("UC")14], [L'utente può selezionare mediante slider, o inserire manualmente, i valori _n1_ e _n2_ utili al fine del calcolo del range di visualizzazione], [1 - Obbligatorio],
  [F.1.28], [@uc15 \ #glossario("UC")15], [L'utente può filtrare i dati per visualizzare solo quelli che sono contenuti all'#glossario("interno") di un intervallo di valori (che può essere aperto o chiuso)], [1 - Obbligatorio],
  [F.1.29], [@uc16 \ #glossario("UC")16], [L'utente può selezionare mediante slider, o inserire manualmente, il valore di _n3_ utile al fine del calcolo delle _n3_ altezze maggiori], [1 - Obbligatorio],
  [F.1.30], [@uc17 \ #glossario("UC")17], [L'utente può filtrare i dati per visualizzare solo le barre con altezza compresa tra le _n3_ altezze maggiori, con _n3_ valore da lui definito], [1 - Obbligatorio],
  [F.1.31], [@uc18 \ #glossario("UC")18], [L'utente può selezionare mediante slider, o inserire manualmente, il valore di _n4_ utile al fine del calcolo delle _n4_ altezze minori], [1 - Obbligatorio],
  [F.1.32], [@uc19 \ #glossario("UC")19], [L'utente può filtrare i dati per visualizzare solo le barre con altezza compresa tra le _n4_ altezze minori, con _n4_ valore da lui definito], [1 - Obbligatorio],
  [F.1.33], [@uc20 \ #glossario("UC")20], [L'utente deve essere in grado di personalizzare il modo in cui il grafico viene colorato, scegliendo tra colorazione per righe, colonne o valori], [1 - Obbligatorio],
  [F.1.34], [@uc21 \ #glossario("UC")21], [L'utente deve essere in grado di eliminare tutti i filtri applicati al grafico, riportandolo la visualizzazione allo stato di default], [1 - Obbligatorio],
  [F.2.1], [@uc22 \ #glossario("UC")22], [L'utente deve essere in grado di esportare tutte le informazioni relative ad un grafico a cui si sta lavorando, ovvero l'insieme di dati e i filtri relativi ], [2 - Desiderabile],
  [F.2.2], [@uc23 \ #glossario("UC")23], [L'utente deve essere in grado di esportare un'istantanea del grafico], [2 - Desiderabile],
  [F.1.35], [@uc24 \ #glossario("UC")24], [L'utente ha inserito dei dati all'#glossario("interno") di un input che non sono conformi alle aspettative e viene avvertito graficamente dell'errore], [1 - Obbligatorio],
  [F.1.36], [@uc25 \ #glossario("UC")25], [L'utente viene avvisato graficamente che ha provato a caricare dei dati da una fonte esterna (es. file .csv) e il numero di dati è maggiore della soglia massima supportata], [1 - Obbligatorio],
  [F.1.37], [@uc26 \ #glossario("UC")26], [L'utente viene avvisato graficamente che ha provato a caricare dei dati da un file .csv con una formattazione interna non corretta], [1 - Obbligatorio],
  [F.1.38], [@uc27 \ #glossario("UC")27], [L'utente viene avvisato graficamente che ha provato a caricare dei dati tramite una chiamata ad un #glossario("API") esterna che però non ha risposto alla richiesta entro un tempo limite], [1 - Obbligatorio],
  [F.3.5], [@uc28 \ #glossario("UC")28], [L'utente viene avvisato graficamente che non ha inserito dei dati all'#glossario("interno") di un input che non può essere vuoto], [3 - Opzionale],
  [F.1.39], [@uc29 \ #glossario("UC")29], [L'utente viene avvisato graficamente che non è stato possibile connettersi al #glossario("database")], [1 - Obbligatorio],
  [F.1.40], [@uc30 \ #glossario("UC")30], [L'utente viene avvisato graficamente che ha provato a caricare dei dati da un file .csv che ha un peso che supera il limite consentito], [1 - Obbligatorio],
  [F.1.41], [ ], [L'utente può accedere direttamente alla pagina dell'applicazione senza sistema di login], [1 - Obbligatorio],
  [F.1.42], [ ], [L'applicazione deve poter elaborare dati con coordinate X, Y e Z, dove X e Z definiscono il posizionamento della base della barra nel piano mentre Y definisce l'altezza della barra ], [1 - Obbligatorio],
  )
    <tab:reqFunzionali>
]

#pb()

== Requisiti qualitativi
#align(center)[
  #table(
  columns: (auto, auto, auto),
  align: (col, row) => (center, center, center,).at(col),
  inset: 6pt,
  table.header([*Codice*], [*Descrizione*], [*Classificazione*]),
    [Q.1.1],[Devono essere consegnati i diagrammi #glossario("UML") relativi agli use cases del #glossario("progetto"), consultabili all'interno del documento #glossario("Analisi dei Requisiti")],[1 - Obbligatorio],
    [Q.1.2],[Deve essere consegnata al #glossario("proponente") la lista dei bug che sono stati risolti durante le fasi di sviluppo in un documento apposito],[1 - Obbligatorio],
    [Q.1.3],[Deve essere consegnato lo schema del design relativo alla base di dati (se utilizzata) o alle #glossario("API") richiamate (se utilizzate), consultabile all'interno del documento #glossario("Specifica Tecnica") ],[1 - Obbligatorio],
    [Q.1.4],[Deve essere consegnato tutto il codice prodotto in formato sorgente utilizzando sistemi di versionamento del codice (#glossario("Github")) ],[1 - Obbligatorio],
    [Q.1.5],[Deve essere consegnata la documentazione relativa ai casi di test gestiti e le relative reportistiche, consultabile all'interno del documento #glossario("Piano di Qualifica") ],[1 - Obbligatorio],
    [Q.1.6],[Per l'intero #glossario("periodo") necessario per portare a termine il #glossario("progetto") è doveroso seguire le regole imposte nel documento _Norme di Progetto_],[1 - Obbligatorio],
  )
    <tab:reqQualitativi>
]

== Requisiti di vincolo
#align(center)[
  #table(
  columns: (auto, auto, auto),
  align: (col, row) => (center, center, center,).at(col),
  inset: 6pt,
  table.header([*Codice*], [*Descrizione*], [*Classificazione*]),
  [V.1.1], [L'applicazione deve essere in grado di supportare una quantità massima di dati pari a 1000 dati ], [1 - Obbligatorio],
  [V.1.2], [L'applicazione deve supportare un massimo di 300 elementi per le coordinate X e Z mantenendo il limite di 1000 dati (es. con 300 righe, il massimo numero di colonne sarà pari a 3)], [1 - Obbligatorio],
  [V.1.3], [L'applicazione deve supportare il caricamento dati da un file #glossario(".csv") che pesa al massimo 10 MB ], [1 - Obbligatorio],
  [V.1.4], [L'applicazione deve supportare l'esecuzione su browser moderni che garantiscano il supporto a WebGL 2.0 e JavaScript ES6], [1 - Obbligatorio],
  [V.1.5], [L'applicazione deve supportare i seguenti browser (o versioni superiori): Google Chrome 89, Firefox 86, Microsoft Edge 89, Safari 14], [1 - Obbligatorio],
  [V.1.6], [L'applicazione deve supportare l'esecuzione su dispositivi dotati di almeno una CPU a 64 bit, 4 GB di RAM e una GPU compatibile con WebGL 2.0], [1 - Obbligatorio],
  [V.1.7], [L'applicazione deve supportare sistemi operativi desktop quali Windows 10 o successivi, macOS 11 o successivi, e distribuzioni Linux moderne come Ubuntu 20.04 o superiori], [1 - Obbligatorio]
  )
    <tab:reqVincolo>
]
#pb()


== Tracciamento dei requisiti
=== Codice - Fonte
Questa tabella mette in relazione il codice di un caso d'uso alla sua fonte, ovvero descrive la "provenienza" di un caso d'uso che può essere dalla descrizione del #glossario("capitolato"), da una decisione interna al gruppo, da una decisione approvata dall'azienda.
#align(center)[
  #table(
  columns: (auto, auto),
  align: (col, row) => (center, center,).at(col),
  inset: 6pt,
  table.header([*Codice*], [*Fonte*],),
  [F.1.1], [#glossario("Capitolato"), UC1],
  [F.1.2], [#glossario("Capitolato"), UC2],
  [F.3.1], [#glossario("Capitolato"), UC2.1],
  [F.3.2], [Decisione interna, UC2.1.1],
  [F.3.3], [Decisione interna, UC2.1.2],
  [F.3.4], [Decisione interna, UC2.1.3],
  [F.1.3], [#glossario("Capitolato"), UC2.2],
  [F.1.4], [#glossario("Capitolato"), UC2.3],
  [F.1.5], [Decisione interna, UC2.4],
  [F.1.6], [#glossario("Capitolato"), UC3],
  [F.1.7], [#glossario("Capitolato"), UC4],
  [F.1.8], [#glossario("Capitolato"), UC5],
  [F.1.9], [#glossario("Capitolato"), UC6],
  [F.1.10], [#glossario("Capitolato"), UC7],
  [F.1.11], [#glossario("Capitolato"), UC8],
  [F.1.12], [#glossario("Capitolato"), UC9],
  [F.1.13], [Decisione interna, UC10],
  [F.1.14], [Decisione interna, UC10.1],
  [F.1.15], [#glossario("Capitolato"), UC10.2],
  [F.1.16], [#glossario("Capitolato"), UC10.3],
  [F.1.17], [#glossario("Capitolato"), UC10.4],
  [F.1.18], [Decisione interna, UC10.5],
  [F.1.19], [Decisione interna, UC10.6],
  [F.1.20], [Decisione interna, UC10.7],
  [F.1.21], [Decisione interna, UC10.8],
  [F.1.22], [Decisione interna, UC10.9],
  [F.1.23], [Decisione interna, UC10.10],
  [F.1.24], [#glossario("Capitolato"), UC11],
  [F.1.25], [#glossario("Capitolato"), UC12],
  [F.1.26], [#glossario("Capitolato"), UC13],
  [F.1.27], [Decisione interna, UC14],
  [F.1.28], [Decisione interna, UC15],
  [F.1.29], [#glossario("Capitolato"), UC16],
  [F.1.30], [#glossario("Capitolato"), UC17],
  [F.1.31], [#glossario("Capitolato"), UC18],
  [F.1.32], [#glossario("Capitolato"), UC19],
  [F.1.33], [Decisione interna, UC20],
  [F.1.34], [#glossario("Capitolato"), UC21],
  [F.2.1], [Decisione interna, UC22],
  [F.2.2], [Decisione interna, UC23],
  [F.1.35], [Decisione interna, UC24],
  [F.1.36], [Decisione interna, UC25],
  [F.1.37], [Decisione interna, UC26],
  [F.1.38], [Decisione interna, UC27],
  [F.3.5], [Decisione interna, UC28],
  [F.1.39], [Decisione interna, UC29],
  [F.1.40], [Decisione interna, UC30],
  [F.1.41], [#glossario("Capitolato")],
  [F.1.42], [#glossario("Capitolato")],
  [Q.1.1], [#glossario("Capitolato")],
  [Q.1.2], [#glossario("Capitolato")],
  [Q.1.3], [#glossario("Capitolato")],
  [Q.1.4], [#glossario("Capitolato")],
  [Q.1.5], [#glossario("Capitolato")],
  [Q.1.6], [#glossario("Capitolato")],
  [V.1.1], [Decisione interna/esterna],
  [V.1.2], [Decisione interna/esterna],
  [V.1.3], [Decisione interna],
  [V.1.4], [Decisione interna],
  [V.1.5], [Decisione interna],
  [V.1.6], [Decisione interna],
  [V.1.7], [Decisione interna],
  )
]
  <tab:codicefonte>

#pb()

=== Fonte - Codice
Questa tabella mette in relazione la fonte con tutti i casi d'uso derivanti da quella fonte. La tabella "Codice - Fonte" insieme a questa tabella "Fonte - Codice" permette di ricercare i casi d'uso in maniera più precisa e veloce, mantenendo un ordine che garantisce una lettura del documento ottimale
#align(center)[
  #table(
  columns: (auto, auto),
  align: (col, row) => (center, center,).at(col),
  inset: 6pt,
  table.header([*Fonte*], [*Codice*],),
  [#glossario("Capitolato")], [
    F.1.1., \ F.1.2, \ F.3.1, \ F.1.3, \ F.1.4, \ F.1.6, \ F.1.7, \ F.1.8, \ F.1.9, \ F.1.10, \ F.1.11, \ F.1.12, \ F.1.15, \ F.1.16, \ F.1.17, \ F.1.24, \ F.1.25, \ F.1.26, \ F.1.29, \ F.1.30, \ F.1.31, \ F.1.32, \ F.1.34, \ F.1.41, \ F.1.42, \ Q.1.1, \ Q.1.2, \ Q.1.3, \ Q.1.4, \ Q.1.5, \ Q.1.6
  ],
  [Decisione interna], [
    F.3.2, \ F.3.3, \ F.3.4, \ F.1.5, \ F.1.13, \ F.1.14, \ F.1.18, \ F.1.19, \ F.1.20, \ F.1.21, \ F.1.22, \ F.1.23, \ F.1.27, \ F.1.28, \ F.1.33, \ F.2.1, \ F.2.2, \ F.1.35, \ F.1.36, \ F.1.37, \ F.1.38, \ F.3.5, \ F.1.39, \ F.1.40, \ V.1.3 , \ V.1.4, \ V.1.5, \ V.1.6, \ V.1.7
  ],
  [Decisione esterna], [V.1.1, \ V.1.2],
  [UC1],[F.1.1],
  [UC2\ e sotto requisiti],[F.1.2, \ F.3.1, \ F.3.2, \ F.3.3, \ F.3.4, \ F.1.3, \ F.1.4, \ F.1.5],
  [UC3],[F.1.6],
  [UC4],[F.1.7],
  [UC5],[F.1.8],
  [UC6],[F.1.9],
  [UC7],[F.1.10],
  [UC8],[F.1.11],
  [UC9],[F.1.12],
  [UC10\ e sotto requisiti],[F.1.13, \ F.1.14, \ F.1.15, \ F.1.16, \ F.1.17, \ F.1.18, \ F.1.19, \ F.1.20, \ F.1.21, \ F.1.22, \ F.1.23],
  [UC11],[F.1.24],
  [UC12],[F.1.25],
  [UC13],[F.1.26],
  [UC14],[F.1.27],
  [UC15],[F.1.28],
  [UC16],[F.1.29],
  [UC17],[F.1.30],
  [UC18],[F.1.31],
  [UC19],[F.1.32],
  [UC20],[F.1.33],
  [UC21],[F.1.34],
  [UC22],[F.2.1],
  [UC23],[F.2.2],
  [UC24],[F.1.35],
  [UC25],[F.1.36],
  [UC26],[F.1.37],
  [UC27],[F.1.38],
  [UC28],[F.3.5],
  [UC29],[F.1.39],
  [UC30],[F.1.40],
  )
    <tab:fontecodice>
]

#pb()

=== Riepilogo tabelle
#align(center)[
  #table(
  columns: (auto, auto, auto, auto),
  align: (col, row) => (center, center, center, center).at(col),
  inset: 6pt,
  table.header([*Tipologia*], [*Obbligatori*], [*Desiderabili*], [*Opzionali*]),
  [Funzionale], [42], [2], [5],
  [Qualità], [6], [0], [0],
  [Vincolo], [7], [0], [0],
  )
    <tab:riepilogo>
]