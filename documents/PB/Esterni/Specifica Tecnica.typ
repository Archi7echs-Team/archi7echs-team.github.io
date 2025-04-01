#import "/templates/documento.typ": *
#import "/lib/plotst.typ": *

#show: conf.with(
  title: "Specifica Tecnica",
  subtitle: "",
  author: "Il team",
  show_outline: true,
  outline_depth: 3,
  changelog: (
    "0.3.0", "01-04-2025", "Stesura sezione back-end,tecnologie e architettura", (p.lucato,p.pesenato), "",
    "0.2.0", "31-03-2025", "Stesura sezione componenti front-end", (p.checchinato, p.valdagno), (p.pozzobon,p.salvo),
    "0.1.0", "21-03-2025",  "Inizio stesura documento", p.checchinato, (p.salvo, p.valdagno),
  ),
)

= Introduzione
== Finalità del documento
Questo documento ha l'obiettivo di fornire una descrizione dettagliata e strutturata degli aspetti tecnici fondamentali del progetto *3Dataviz*. In particolare, esso rappresenta una guida di riferimento per comprendere l'architettura del sistema, le scelte implementative adottate e le specifiche di deployment.
Attraverso un'analisi approfondita, il documento illustra i principali componenti software e le tecnologie utilizzate. Inoltre, vengono descritte le motivazioni alla base delle decisioni progettuali, con un focus su scalabilità, manutenibilità e sicurezza del sistema.
Gli obiettivi principali di questa specifica tecnica sono:
- Fornire una documentazione chiara e dettagliata a supporto dello sviluppo e della manutenzione del software.
- Garantire l'allineamento con i requisiti funzionali e non funzionali definiti nel documento _Analisi dei Requisiti v1.0.0_.\
- Definire una base comune di conoscenza per tutti i membri del team, facilitando l'integrazione e l'evoluzione del sistema.
== Scopo del progetto
L'obiettivo è realizzare una piattaforma web di visualizzazione tridimensionale dei dati, che consenta all'utente che la utilizza di navigare e interagire con grafici a barre verticali 3D rappresentanti dati complessi, utili per l'analisi e la presentazione di informazioni.
Il prodotto deve essere progettato per poter rappresentare  dati, in un modello 3D, navigabile e interattivo.\ Dunque le sue #glossario("funzionalità") principali includono:

- *Funzionalità di un ambiente 3D*: 
  - *Rotazione*: permettere la rotazione del grafico per osservarlo da diverse angolazioni.
  - *Pan*: consentire lo spostamento del grafico sul piano orizzontale.
  - *Zoom*: abilitare l'avvicinamento e l'allontanamento dal grafico.
  - *Auto-positioning*: posizionare automaticamente il grafico in una vista ottimale.

- *Visualizzazione del valore medio globale*: il sistema deve consentire di visualizzare un piano parallelo alla base, che rappresenta il valore medio globale dei dati.

- *Opacizzazione o nascondimento delle barre*:  il sistema deve offrire la possibilità di opacizzare o nascondere le barre con valori superiori o inferiori rispetto a:
  - una barra selezionata;
  - il valore medio globale rappresentato dal piano visualizzato.
 Inoltre, deve permettere di lasciare visibili o non opacizzati solo i valori di minimo o di massimo delle y, ossia i punti estremi.

- *Visualizzazione dei valori corrispondenti a una barra*: il sistema deve consentire di visualizzare i valori corrispondenti a una barra quando questa è soggetta a un evento "#glossario("hover")" del mouse.

- *[Opzionale] Visualizzazione del valore medio del singolo elemento*: il sistema deve consentire di visualizzare un piano parallelo alla base, che rappresenta il valore medio di un singolo elemento di un asse (X o Z). 
== Glossario
All'interno del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html")[_glossario_]. Tutte le parole consultabili nel glossario saranno identificate da una "#text(blue)[G]" in colore blu. Facendo click sul collegamento si aprirà una scheda del browser con il glossario 
== Riferimenti

=== Riferimenti normativi
- Norme di Progetto (v 1.0.0)
- Riferimento al #glossario("capitolato") 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]] - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: *_Regolamento del #glossario("progetto") didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]] - _Ultimo accesso 20/03/2025_

=== Riferimenti informativi
- Riferimento documentazione: *_Svelte_*: #link("https://svelte.dev/docs/svelte/overview")[#text(blue)[https://svelte.dev/docs/svelte/overview]]\ _Ultimo accesso 20/03/2025_
- Riferimento documentazione: *_Threlte_*: #link("https://threlte.xyz/")[#text(blue)[https://threlte.xyz/]]\ _Ultimo accesso 20/03/2025_
- Riferimento documentazione: *_Sping_Boot_* #link("https://spring.io/projects/spring-boot")[#text(blue)[https://spring.io/projects/spring-boot]]\ _Ultimo accesso 20/03/2025_
- Riferimento documentazione: *_Maven_*: #link("https://maven.apache.org/")[#text(blue)[https://maven.apache.org/]]\ _Ultimo accesso 20/03/2025_
- Riferimento documentazione: *_PostgreSQL_*: #link("https://www.postgresql.org/")[#text(blue)[https://www.postgresql.org/]]\ _Ultimo accesso 20/03/2025_
- Riferimento documentazione: *_Docker_*: #link("https://docs.docker.com/")[#text(blue)[https://docs.docker.com/]]\ _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Progettazione: le dipendenze tra componenti*_:\ #link("https://www.math.unipd.it/~rcardin/swea/2022/Dependency%20Management%20in%20Object-Oriented%20Programming.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2022/Dependency%20Management%20in%20Object-Oriented%20Programming.pdf]] - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Analisi e descrizione delle funzionalità: Use Case e relativi diagrammi UML*_: #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf]] - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Progettazione e programmazione: Diagrammi delle classi (UML)*_: #link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf]]\ - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Analisi e descrizione delle funzionalità: Diagrammi delle attività (UML)*_: #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf]]\ - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Progettazione: I pattern architetturali*_: #link("https://www.math.unipd.it/~rcardin/swea/2022/Software%20Architecture%20Patterns.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2022/Software%20Architecture%20Patterns.pdf]]\ - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Progettazione: Il pattern Dependency Injection*_: #link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Architetturali%20-%20Dependency%20Injection.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Architetturali%20-%20Dependency%20Injection.pdf]]\ - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Progettazione: il pattern Model-View-Controller e derivati*_: #link("https://www.math.unipd.it/~rcardin/sweb/2022/L02.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/sweb/2022/L02.pdf]]\ - _Ultimo accesso 20/03/2025_ 
- Riferimento alle slide IS: _*Progettazione: i pattern creazionali (GoF)*_: #link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Creazionali.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Creazionali.pdf]]\ - _Ultimo accesso 20/03/2025_ 
- Riferimento alle slide IS: _*Progettazione: I pattern strutturali (GoF)*_: #link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Strutturali.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Strutturali.pdf]]\ - _Ultimo accesso 20/03/2025_ 
- Riferimento alle slide IS: _*Progettazione: I pattern di comportamento (GoF)*_: #link("https://drive.google.com/file/d/1cpi6rORMxFtC91nI6_sPrG1Xn-28z8eI/view?usp=sharing")[#text(blue)[https://drive.google.com/file/d/1cpi6rORMxFtC91nI6_sPrG1Xn-28z8eI/view?usp=sharing]]\ - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Programmazione: SOLID programming*_: #link("https://drive.google.com/file/d/1o1Xun2dVVc3mDiaGyN0FrDJhhoO3lfLQ/view?usp=sharing")[#text(blue)[https://drive.google.com/file/d/1o1Xun2dVVc3mDiaGyN0FrDJhhoO3lfLQ/view?usp=sharing]]\ - _Ultimo accesso 20/03/2025_

= Tecnologie e librerie
In questa sezione vengono elencate le tecnologie (e librerie) utilizzate all'interno del progetto *3Dataviz*, dalla fase di progettazione alla sua implementazione. \
Ogni tecnologia o libreria utilizzata verrà descritta tramite:
+ Nome della tecnologia o libreria
+ Descrizione della tecnologia o libreria e del suo utilizzo
+ Versione della tecnologia o libreria utilizzata
+ Link di riferimento alla sua documentazione

== Docker
- *Descrizione della tecnologia e del suo utilizzo*: Docker è una piattaforma che consente di sviluppare, distribuire ed eseguire applicazioni in container. Un container è un'unità software che include tutto il necessario per eseguire un'applicazione, come codice, runtime, librerie e dipendenze, garantendo coerenza tra ambienti diversi. Nel nostro progetto, Docker viene utilizzato per:
  + Costruire e pacchettizzare l'applicazione Spring Boot in un'immagine Docker tramite un Dockerfile.
  + Gestire l'ambiente di sviluppo e test attraverso docker-compose, orchestrando i servizi necessari, tra cui:
    - Database PostgreSQL per la persistenza dei dati.
    - Ambiente di test per eseguire i test automatici prima della build finale.
    - Applicazione Spring Boot come servizio runtime.
  Il Dockerfile segue un processo in due fasi:
  + *Fase di compilazione*: utilizza un'immagine Maven per costruire il pacchetto JAR dell'applicazione.
  + *Fase di runtime*: utilizza un'immagine JDK leggera per eseguire il JAR costruito.
  
  Il file docker-compose.yml definisce tre servizi principali:
  + *db*: un'istanza PostgreSQL con un volume per la persistenza dei dati.
  + *test*: un container per eseguire i test, garantendo che l'applicazione funzioni correttamente prima della fase di build.
  + *app*: il container finale che esegue l'applicazione Spring Boot e dipende dagli altri servizi per funzionare correttamente.

- *Versione della tecnologia utilizzata*:
  - *Docker*: Ultima versione disponibile in ambiente di sviluppo
  - *Maven*: 3.9.9 con JDK Eclipse Temurin 23
  - *PostgreSQL*: 17

- *Link di riferimento alla documentazione*:
  - *Docker*: #link("https://docs.docker.com/")[#text(blue)[https://docs.docker.com/]]
  - *Docker Compose*: #link("https://docs.docker.com/compose/")[#text(blue)[https://docs.docker.com/compose/]]
  - *PostgreSQL*: #link("https://www.postgresql.org/docs//")[#text(blue)[https://www.postgresql.org/docs/]]

== Spring Boot
- *Descrizione della tecnologia e del suo utilizzo*: Spring Boot è un framework basato su Spring che semplifica lo sviluppo di applicazioni Java stand-alone e pronte per la produzione. Fornisce una configurazione automatica e un'architettura modulare per creare applicazioni enterprise in modo efficiente. Nel nostro progetto, Spring Boot viene utilizzato per:
  + Sviluppare il backend dell'applicazione, implementando la logica di business e l'interfacciamento con il database.
  + Gestire le connessioni al database PostgreSQL tramite il modulo Spring Data JPA.
  + Esporre API RESTful per l'interazione con il frontend e altri servizi.
  + Gestire la configurazione dell'applicazione tramite il file application.properties e le variabili d'ambiente definite in docker-compose.yml.
  + Facilitare i test automatizzati, sfruttando il supporto nativo per Testcontainers e altre librerie di testing.

L'integrazione con Docker consente di eseguire il backend in un container isolato, garantendo consistenza nell'ambiente di sviluppo e produzione.

- *Versione della tecnologia utilizzata*:
  - *Spring Boot*: 3.4.3
  - *Spring Data JPA*: 3.4.3
  

- *Link di riferimento alla documentazione*:

  - *Spring Boot*:#link("https://docs.spring.io/spring-boot/docs/current/reference/html/")[#text(blue)[https://docs.spring.io/spring-boot/docs/current/reference/html/]]
  - *Spring Data JPA*: #link("https://docs.spring.io/spring-data/jpa/docs/current/reference/html/")[#text(blue)[https://docs.spring.io/spring-data/jpa/docs/current/reference/html/]]
  
== PITest
- *Descrizione della tecnologia e del suo utilizzo*: PITest è un framework di test di mutazione per applicazioni Java. Il test di mutazione è una tecnica avanzata per valutare la qualità dei test unitari generando e iniettando mutazioni nel codice sorgente e verificando se i test sono in grado di rilevarle. Questo aiuta a identificare le debolezze nella suite di test e a migliorare la copertura e l'affidabilità del codice. Nel nostro progetto, PITest viene utilizzato per:
  + Analizzare l'efficacia dei test unitari, verificando se riescono a rilevare mutazioni introdotte nel codice.
  + Identificare punti deboli nella suite di test, segnalando eventuali scenari non coperti adeguatamente.
  + Migliorare la qualità del codice, incentivando la scrittura di test più robusti.
  + Integrare il testing nei processi CI/CD, garantendo un monitoraggio continuo della qualità del codice.
PITest viene configurato all'interno del progetto Maven ed eseguito automaticamente come parte del processo di testing, fornendo report dettagliati sui mutanti generati e uccisi.\

Per garantire la compatibilità con JUnit 5 e Spring, nel progetto sono utilizzati i seguenti plugin:
  + *pitest-junit5-plugin*: Permette l'integrazione di PITest con JUnit 5.
  + *arcmutate-spring*: Estensione per migliorare il supporto ai test su applicazioni Spring.
  
- *Versione della tecnologia utilizzata*:
  - *PITest*: 1.19.0
  - *pitest-junit5-plugin*: 1.1.0
  - *arcmutate-spring*: 1.0.0
  
- *Link di riferimento alla documentazione*:
  - *PITest*: #link("https://pitest.org/")[#text(blue)[https://pitest.org/]]
  - *Plugin Maven per PITest*: #link("https://plugins.pitest.org/maven/")[#text(blue)[https://plugins.pitest.org/maven/]]
  - *pitest-junit5-plugin*: #link("https://github.com/pitest/pitest-junit5-plugin")[#text(blue)[https://github.com/pitest/pitest-junit5-plugin]]

== Mockito
- *Descrizione della tecnologia e del suo utilizzo*: Mockito è un framework di mocking per Java utilizzato principalmente nei test unitari. Permette di simulare il comportamento di classi e dipendenze, consentendo di testare unità di codice in modo isolato senza dover dipendere da componenti reali come database o servizi esterni. Nel nostro progetto, Mockito viene utilizzato per:
  - Simulare dipendenze nelle classi testate, evitando la necessità di istanziare oggetti reali.
  - Verificare il comportamento del codice, assicurandosi che determinati metodi vengano chiamati con i parametri corretti.
  - Testare componenti Spring Boot, come service e repository, isolandoli dall'infrastruttura sottostante.
  - Migliorare la velocità dei test, riducendo il tempo di esecuzione rispetto a test che interagiscono con database o API reali.
L'integrazione con JUnit 5 e Spring Boot avviene tramite le annotazioni ```java @Mock```, ```java @InjectMocks``` e ```java @ExtendWith(MockitoExtension.class)```, garantendo una configurazione semplice ed efficace.

- *Versione della tecnologia utilizzata*:
  - *Mockito Core*: 5.14.2
  - *Mockito JUnit Jupiter*: 5.14.2

- *Link di riferimento alla documentazione*:
  - *Mockito*: #link("https://site.mockito.org/")[#text(blue)[https://site.mockito.org/]]
  - *Mockito per JUnit 5*: #link("https://javadoc.io/doc/org.mockito/mockito-junit-jupiter/latest/")[#text(blue)[https://javadoc.io/doc/org.mockito/mockito-junit-jupiter/latest/]]

== Svelte
- *Descrizione della tecnologia e del suo utilizzo*: Svelte è un framework di front-end moderno che consente di sviluppare interfacce utente reattive e performanti compilando il codice in JavaScript ottimizzato. A differenza di altri framework come React o Vue, Svelte non utilizza un Virtual DOM, ma compila i componenti in codice JavaScript efficiente che aggiorna direttamente il DOM in modo minimale. Nel nostro progetto, Svelte viene utilizzato per:
  + Sviluppare l'interfaccia utente in modo efficiente e performante.
  + Gestire lo stato dell'applicazione attraverso il sistema di store di Svelte.
  + Integrare API REST per recuperare e visualizzare i dati dinamicamente.
  + Ottimizzare le prestazioni grazie alla sua architettura basata sulla compilazione.
  Il progetto è strutturato con:
  - Componenti Svelte modulari per una gestione chiara dell'UI.
  - Store di Svelte per la gestione dello stato globale dell'applicazione.
  - Fetch API per comunicare con il backend in modo asincrono.
- *Versione della tecnologia utilizzata*:
  - *Svelte*: 5

- *Link di riferimento alla documentazione*:
  - Svelte: #link("https://svelte.dev/docs")[#text(blue)[https://svelte.dev/docs]]

#pb()
= Architettura
== Architettura logica <architettura_logica>
Nel nostro progetto abbiamo scelto di adottare un'architettura esagonale, che ci permette di organizzare il codice in maniera ordinata e con una chiara separazione dei compiti tra le varie componenti. Al centro dell'architettura si trova il core domain, dove risiede tutta la logica di business. Questo cuore del sistema è progettato per essere indipendente da elementi esterni come database, API o librerie specifiche, rendendo così l'applicazione più semplice da manutenere, testare e far evolvere nel tempo.

I controller, che si trovano nelle zone più esterne dell'architettura (package controller), rappresentano il punto di contatto tra il mondo esterno e il nostro sistema. Sono loro a gestire le richieste in arrivo dai client e ad inoltrarle verso i servizi interni. Qui avvengono operazioni come il caricamento di file o la richiesta di dati da fonti esterne, gestite da classi come UploadController e ExternalDataController.

Il livello di servizio (package service) si occupa di coordinare le varie operazioni tra il dominio applicativo e le componenti più tecniche. Qui troviamo, ad esempio, CoordinateService o ExternalDataService, che elaborano i dati e orchestrano le logiche applicative. Le entità del dominio (package model), come CoordinateEntity e MatrixData, definiscono le strutture dati principali su cui si basa il funzionamento del sistema.

La gestione della persistenza dei dati è affidata al package repository, che contiene le interfacce per accedere al database. In questo modo, tutta la logica legata al recupero dei dati è isolata dal resto dell'applicazione, rendendola più pulita e flessibile. La configurazione delle risorse esterne è centralizzata nel package config, dove definiamo, ad esempio, le impostazioni per accedere a sorgenti dati esterne (ExternalAPIConfig) o per gestire proprietà relative ai file (DataProperties).

Abbiamo inoltre un package exception, dedicato alla gestione degli errori: qui centralizziamo la gestione delle eccezioni, migliorando così l'affidabilità del sistema e offrendo un'esperienza più stabile a chi utilizza l'applicazione.

In generale, questa struttura ci permette di mantenere il progetto modulare e ben organizzato. Ogni parte ha un ruolo preciso, e questo ci aiuta sia nello sviluppo che nella manutenzione, oltre a facilitare eventuali estensioni future del sistema.


== Architettura di deployment
== Database
Nel nostro progetto utilizziamo PostgreSQL come database relazionale per gestire i dati, sfruttando la sua affidabilità, la possibilità di usare tipi personalizzati e il supporto avanzato per le query. Fin dall'avvio, il database è già popolato con un set di dati predefinito, organizzato nella tabella coordinates. Questa tabella raccoglie le label x, label z, i valori y dati dall'incrocio di x e z e le classificazioni, utilizzando un tipo ENUM personalizzato (dataset_level) per definire il livello del dataset (SMALL, MEDIUM, LARGE), garantendo così una struttura più tipizzata e robusta rispetto all'uso di semplici stringhe.

Dal punto di vista applicativo, l'accesso al database è limitato a operazioni di sola lettura ed è completamente incapsulato nel package repository, in linea con i principi dell'architettura esagonale. La classe CoordinateRepository, che estende JpaRepository, offre un metodo personalizzato per recuperare i dati in base al livello del dataset, permettendo così di filtrare le coordinate e restituire solo quelle che soddisfano un certo livello minimo di granularità.

Questo approccio assicura un'interazione controllata ed efficiente con il database, separando nettamente la logica di accesso ai dati da quella di business. Inoltre, avere già a disposizione i dati predefiniti all'avvio semplifica notevolmente il processo di inizializzazione, rendendo più rapido il testing, la validazione e la visualizzazione dei risultati.

#pb()

= Front-end
== Utilities
In questa sezione vengono documentate in dettaglio le utilities e i moduli di supporto utilizzati nell'applicazione. Questi file gestiscono la preparazione, il calcolo e la distribuzione dei dati e delle impostazioni globali, fornendo le basi per il funzionamento dell'interfaccia 3D e dei filtri.
Per ciascuna utility verranno illustrati i seguenti aspetti:

- *Descrizione*: una breve spiegazione del ruolo e dello scopo della utility all’interno dell’applicazione.
 
- *Struttura e Funzionalità*: la composizione del file, evidenziando le funzioni chiave e la logica implementata per elaborare i dati e gestire lo stato globale.

=== index.svelte.ts <index.svelte.ts>

==== *Descrizione*  
Questo file è un modulo per la gestione dello stato e la fornitura di dati computati per l'applicazione. Esso definisce i dati grezzi, ne calcola le proprietà (come la media, i valori minimi e massimi, e le dimensioni della matrice) e li espone tramite funzioni ed oggetti reattivi. Inoltre, il file gestisce la selezione degli elementi tramite la classe Selection e definisce un oggetto di filtro che raccoglie le impostazioni di visualizzazione e filtraggio.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  - Vengono importati moduli fondamentali da *three* e funzioni di stato reattivo da Svelte.  
  - Definisce una variabile `fetchedData` che contiene una matrice di dati grezzi.  
  - Utilizza una store derivata per creare l'oggetto `data`, che include sia i valori originali che le proprietà computate, come:
    - La media dei valori,  
    - I valori minimo e massimo,  
    - Il numero di righe e colonne,  
    - Il target predefinito per la visualizzazione e la posizione di default della camera.
  - Esporta la funzione `getData()`, che restituisce l'oggetto `data`, e la funzione `getValueFromId()`, utile per estrarre un valore dalla matrice in base a un identificatore.
  - Definisce la classe *Selection* che gestisce la selezione degli elementi con metodi per aggiungere, rimuovere, verificare e alternare gli elementi selezionati.
  - Crea un'istanza di *Selection* e definisce un oggetto di filtro che include impostazioni quali lo spacing, il range di valori, le opzioni di colorazione, i filtri per la media e le barre, e il flag per il display del filtro.

- *Funzionalità:*  
  - Calcola in modo reattivo proprietà importanti dai dati grezzi per normalizzare e posizionare gli elementi 3D.  
  - Fornisce un meccanismo per gestire la selezione degli elementi, utile per applicare filtri e evidenziare barre specifiche nel grafico.  
  - Esporta uno stato globale (filter) che raccoglie tutte le impostazioni di filtraggio e visualizzazione, da utilizzare nei componenti dell'applicazione.

==== *Props e Variabili Reattive*  
- *Variabili Reattive:*  
  - *fetchedData:* contiene i dati grezzi iniziali.  
  - *data:* store derivata che combina i dati grezzi con le proprietà computate (media, min, max, righe, colonne, defaultTarget e defaultPosition).  
  - *utils:* raccoglie le proprietà computate, utili per il posizionamento e il filtraggio.  
- *Oggetto di Filtro:*  
  - L'oggetto filter include impostazioni quali:
    - spacing,  
    - rangeValue (min e max),  
    - colorSelection,  
    - avgFilter e avgEnabled,  
    - barFilterSelection,  
    - displayBarFilter,  
    - selection (istanza della classe Selection).

==== *Eventi e Comunicazione*  
- Pur non gestendo direttamente eventi, questo modulo fornisce le funzioni e gli oggetti di stato che altri componenti importano per comunicare e sincronizzare i dati e le impostazioni a livello globale.

==== *Stili e Layout*  
- Non applica stili, in quanto funge esclusivamente da modulo di gestione dei dati e dello stato.

==== *Esempi di Utilizzo*  
- In altri componenti, come App.svelte o Bar.svelte, il modulo viene importato per accedere ai dati e alle impostazioni.  
  ```ts
  import { getData, filter, getValueFromId } from '$lib/index.svelte';
  let data = getData();


  ```
- Questo esempio evidenzia come il modulo fornisca le basi per il calcolo dei dati e la gestione dei filtri che vengono poi utilizzati per aggiornare dinamicamente la visualizzazione del grafico 3D.

==== *Dipendenze Esterne*  
- *three:* Utilizzato per operazioni matematiche e vettoriali (ad es. Vector3) necessarie per il calcolo delle proprietà della scena 3D.  
- *svelte (State Management):* Le funzioni state (state, derived, effect) sono impiegate per gestire la reattività e aggiornare automaticamente i dati e le proprietà computate.  
- *lib/index.svelte:* Il modulo stesso funge da fonte centrale per le funzioni getData, getValueFromId e per la gestione dei filtri tramite l'oggetto filter.

Questa descrizione strutturata fornisce una panoramica completa del file index.svelte.ts, evidenziando come esso gestisca la preparazione e la distribuzione dei dati e delle impostazioni globali, e fungendo da riferimento essenziale per gli sviluppatori e i manutentori dell'applicazione.

== Componenti
In questa sezione vengono documentati in dettaglio i componenti #glossario("front-end") sviluppati in Svelte per il prodotto. Ogni file .svelte rappresenta un componente autonomo che implementa una specifica funzionalità dell'#glossario("interfaccia utente").
Per ciascun componente verranno illustrati i seguenti aspetti:

- *Descrizione*: una breve spiegazione del ruolo e dello scopo del componente all'interno dell'applicazione.

- *Struttura e Funzionalità*: la composizione del componente, evidenziando gli elementi chiave e la logica implementata.

- *Props e Variabili Reattive*: i dati in ingresso (props) e le variabili reattive che gestiscono lo stato interno.

- *Eventi e Comunicazione*: come il componente comunica con altri elementi, tramite eventi custom o binding.

- *Stili e Layout*: le regole CSS o l'utilizzo di framework di styling adottati per garantire un'interfaccia coerente.

- *Esempi di Utilizzo*: un esempio pratico su come il componente viene importato e integrato nell'applicazione.

- *Dipendenze Esterne*: eventuali librerie aggiuntive utilizzate e spunti per ottimizzazioni future.

Questa sezione permette di comprendere il funzionamento e l'interazione dei vari componenti, fornendo un riferimento utile per sviluppatori e manutentori.

=== App.svelte <app.svelte>

==== *Descrizione*  
Il componente App.svelte è il punto di ingresso dell’applicazione e coordina il rendering della scena 3D e dei pannelli di controllo. Gestisce il canvas principale, carica i dati tramite la funzione getData() e imposta il target della visualizzazione, offrendo inoltre la possibilità di resettare il target alla configurazione di default.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  - Il componente è contenuto in un `<div>` che occupa l’intera finestra, con un background scuro per evidenziare la scena 3D.  
  - All’interno del `<Canvas>` (fornito da threlte/core) vengono integrati tre componenti principali:  
    - SettingsPane.svelte: pannello per il controllo delle impostazioni e per il reset del target.  
    - BarPane.svelte: componente che gestisce i filtri e la selezione delle barre.  
    - Scene.svelte: responsabile del rendering della scena 3D in base al target impostato.
- *Funzionalità:*  
  - Recupera i dati e le configurazioni computate tramite getData() e li memorizza in una variabile derivata, utils.  
  - Imposta il target della visualizzazione con il valore default ottenuto da getData().computed.defaultTarget e lo aggiorna in modo reattivo.  
  - Fornisce la funzione resetTarget() che ripristina il target al valore predefinito in utils.

==== *Props e Variabili Reattive*  
- *Props:*  
  - I componenti SettingsPane.svelte, BarPane.svelte e Scene.svelte ricevono tramite props i dati e le funzioni necessari per il loro corretto funzionamento.  
  - In particolare, Scene.svelte riceve il prop target, fondamentale per centrare la visualizzazione 3D.
- *Variabili reattive:*  
  - *utils*: variabile derivata (derived) che contiene i valori computati ottenuti da getData().computed.  
  - *target*: stato reattivo (state) inizializzato al valore predefinito e aggiornato dalla funzione resetTarget().

==== *Eventi e Comunicazione*  
- Il componente comunica con i suoi figli tramite binding delle props:  
  - SettingsPane.svelte utilizza resetTarget() per permettere agli utenti di ripristinare il target della camera.  
  - BarPane.svelte e Scene.svelte ricevono i dati e le impostazioni necessari per sincronizzare il rendering della scena 3D e la gestione dei filtri.

==== *Stili e Layout*  
- Il componente è avvolto in un `<div>` che imposta:  
  - Posizione: relative  
  - Dimensioni: height: 100vh e width: 100vw  
  - Background: rgb(14, 22, 37) per creare un ambiente visivo immersivo che esalta gli elementi 3D.

==== *Esempi di Utilizzo*  
- Integrazione nell’applicazione:  
  Il componente App.svelte viene utilizzato come punto di ingresso principale.  
  ```svelte
  <script>
    import App from './App.svelte';
  </script>
  
  <App />
  ```

==== *Dipendenze Esterne*  
- *threlte/core*: fornisce il componente Canvas e le funzionalità per il rendering 3D integrando Three.js in Svelte.  
- *lib/index.svelte*: contiene la funzione getData(), che restituisce i dati e le configurazioni computate necessarie per inizializzare lo stato del componente.  
- Svelte State Management: utilizza state e derived per gestire lo stato reattivo e derivare i valori computati nel componente.

=== Bar.svelte <bar.svelte>

==== *Descrizione*  
Il componente Bar.svelte rappresenta una singola barra del grafico 3D. Esso visualizza un dato specifico mediante la sua altezza e il colore dinamico, rispondendo alle interazioni dell'utente (hover e click) per applicare filtri e gestire la selezione.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  - Il componente utilizza un elemento T.Mesh per creare il mesh della barra, basato su una BoxGeometry e un MeshStandardMaterial, che gestisce trasparenza e colorazione dinamica.  
  - Un elemento Text, posizionato sopra la barra, mostra il valore numerico della barra.  
- *Funzionalità:*  
  - Calcola l'opacità della barra in base a condizioni di filtraggio: se l'altezza rientra nell'intervallo definito e rispetta i filtri (basati sulla media e sui filtri specifici per le barre), l'opacità è impostata a 1, altrimenti a 0.2.  
  - Utilizza un raycaster per rilevare le interazioni del mouse e applica un effetto hover mediante un tween definito con durata ed easing personalizzati.  
  - La funzione getBarColor determina il colore della barra in base alla selezione del criterio di colorazione (per righe, per colonne o in base al valore normalizzato).

==== *Props e Variabili Reattive*  
- *Props:*  
  - *id*: identificatore univoco della barra, utilizzato per la gestione delle selezioni.  
  - *coordinates*: posizione 3D della barra.  
  - *height*: valore che determina l'altezza della barra.  
  - *currentCameraQuaternionArray*: array che rappresenta l'orientamento corrente della camera, usato per orientare il testo.  
- *Variabili reattive:*  
  - *utils*: derivata contenente dati calcolati tramite `getData().computed`.
  - *inRange*: derivata che verifica se l'altezza rientra nei limiti definiti da `filter.rangeValue`.  
  - *passesFilter*: calcola, in modo derivato, se la barra soddisfa ulteriori condizioni di filtro (in base a media e selezione).  
  - *opacity*: impostata in modo derivato in base alla combinazione dei filtri `inRange` e `passesFilter`.  
  - *mesh e text*: riferimenti allo stato dei componenti `T.Mesh` e `Text` per applicare gli effetti di interazione.

==== *Eventi e Comunicazione*  
- Il componente gestisce eventi di pointer (movimento e uscita) per attivare o disattivare l'effetto hover, modificando il valore del tween hover.  
- Gli eventi click, applicati sia al mesh della barra che al testo, invocano metodi di toggle o set sulla proprietà `filter.selection`, aggiornando lo stato di selezione.  
- La comunicazione con il componente genitore avviene tramite il binding delle props essenziali (id, coordinates, height), mentre i filtri sono ora gestiti centralmente dal modulo `filter`.

==== *Stili e Layout*  
- La posizione della barra è determinata dalle props coordinates e height, che definiscono il posizionamento 3D e la scala del mesh.  
- Il componente Text è posizionato sopra la barra (offset in altezza) e ruotato in modo da garantire la leggibilità, in funzione dell'orientamento della camera.

==== *Esempi di Utilizzo*  
- Il componente Bar.svelte viene utilizzato all'interno di un ciclo, dove per ogni elemento della matrice di dati viene creato un componente Bar.  
  ```svelte
	{#each data as row, rowIndex}
		{#each row as height, colIndex}
			<Bar
				id={`${rowIndex}-${colIndex}`}
				coordinates={[
					rowIndex * spacing,
					height / 2,
					colIndex * spacing
				]}
				{height}
				{currentCameraQuaternionArray}
			/>
		{/each}
	{/each}
  ```

==== *Dipendenze Esterne*  
- *threlte/core*: Fornisce il framework per la creazione degli elementi 3D, come T.Mesh, BoxGeometry e MeshStandardMaterial.  
- *threlte/extras*: Offre il componente Text e le funzioni per abilitare l'interattività nella scena.  
- *three*: Libreria base per la manipolazione degli oggetti 3D, utilizzata per Raycaster, Vector2 e per operazioni vettoriali.  
- *svelte/motion* e *svelte/easing*: Utilizzate per creare animazioni fluide (tweening) per l'effetto hover.  
- *three/tsl*: Fornisce, se necessario, funzioni aggiuntive per la gestione delle selezioni.
- *lib/index.svelte*: modulo contenente `getData` e `filter`, che centralizza la gestione dei filtri applicati al grafico

=== BarPane.svelte <barPane.svelte>

==== *Descrizione*  
Il componente BarPane.svelte gestisce il filtro di selezione per le barre del grafico 3D. Se l'opzione di visualizzazione del filtro è attiva, viene mostrato un pannello fisso che contiene quattro pulsanti, ciascuno dei quali imposta un criterio di filtro diverso per le barre (solo la barra selezionata, barre con valori maggiori, barre con valori minori, o reset del filtro).

==== *Struttura e Funzionalità*  
- *Struttura:*  
  - Il componente importa i componenti Pane e Button dalla libreria *svelte-tweakpane-ui*.  
  - Utilizza un controllo condizionale per rendere il pannello solo se la proprietà filter.displayBarFilter è attiva.  
  - All'interno del pannello vengono resi quattro pulsanti, ognuno con una specifica etichetta e azione associata.  
- *Funzionalità:*  
  - Ogni pulsante, tramite l'evento on:click, modifica direttamente il valore di filter.barFilterSelection, impostando il criterio di filtraggio per le barre del grafico.  
  - Il pulsante "Filter reset" ripristina il filtro annullando ogni criterio precedentemente applicato.

==== *Props e Variabili Reattive*  
- *Props:*  
  - Il componente utilizza l'oggetto filter importato da lib/index.svelte, che contiene le impostazioni per il filtraggio delle barre.  
- *Variabili reattive:*  
  - *filter.displayBarFilter*: determina se il pannello di filtro deve essere visualizzato.  
  - *filter.barFilterSelection*: viene aggiornato in base al pulsante cliccato e controlla il criterio di filtro applicato al grafico.

==== *Eventi e Comunicazione*  
- Il componente gestisce gli eventi on:click per ciascun pulsante, aggiornando il valore di filter.barFilterSelection.  
- Queste modifiche vengono propagate al sistema, in modo che il grafico 3D si aggiorni dinamicamente in base al filtro selezionato.

==== *Stili e Layout*  
- Il pannello è posizionato in maniera fissa (position fixed) con coordinate specifiche (y = 210, x = 120), garantendo che rimanga visibile nell'interfaccia utente.  
- I pulsanti ereditano gli stili predefiniti della libreria *svelte-tweakpane-ui*, assicurando un aspetto coerente con il resto dell'interfaccia.

==== *Esempi di Utilizzo*  
- Il componente BarPane.svelte viene renderizzato condizionatamente nel layout principale dell'applicazione quando il filtro delle barre è attivo.  
  ```svelte
<div>
	<Canvas>
		<BarPane />
	</Canvas>
</div>
  ```

==== *Dipendenze Esterne*  
- *svelte-tweakpane-ui*: Fornisce i componenti Pane e Button, essenziali per la creazione dell'interfaccia di filtro.  
- *lib/index.svelte*: Fornisce l'oggetto filter, che contiene le impostazioni e i metodi per la gestione dei filtri e delle selezioni.

=== CameraSettings.svelte <cameraSettings.svelte>

==== *Descrizione*  
Il componente CameraSettings.svelte fornisce i controlli per regolare la posizione della camera nella scena 3D. Permette all'utente di effettuare lo zoom in, lo zoom out e di resettare la posizione della camera alla configurazione predefinita, influenzando direttamente la visualizzazione dell'ambiente 3D.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  - Il componente importa il Button dalla libreria *svelte-tweakpane-ui* e utilizza il hook useThrelte per accedere al riferimento della camera.  
  - Utilizza una variabile zoomValue e una costante zoomStep per controllare l'incremento o il decremento dello zoom.  
  - Le funzioni zoomIn() e zoomOut() aggiornano zoomValue e richiamano updateCamera() per modificare la posizione della camera lungo la sua direzione attuale.  
  - La funzione resetPosition() ripristina la posizione della camera al valore default ottenuto da utils.defaultPosition e invoca la funzione resetTarget() passata tramite props.
- *Funzionalità:*  
  - *Zoom In*: diminuisce zoomValue e sposta la camera in avanti lungo la sua direzione corrente.  
  - *Zoom Out*: aumenta zoomValue e sposta la camera indietro lungo la stessa direzione.  
  - *Reset*: ripristina la posizione della camera e aggiorna il target della visualizzazione.

==== *Props e Variabili Reattive*  
- *Props:*  
  - *resetTarget*: funzione passata tramite props per ripristinare il target della camera.  
- *Variabili reattive:*  
  - *utils*: variabile derivata che contiene i valori computati ottenuti da getData().computed, inclusa la posizione default della camera.  
  - *zoomValue*: stato numerico che controlla il livello di zoom corrente.  
  - *zoomStep*: costante che definisce l'incremento/decremento per ogni operazione di zoom.

==== *Eventi e Comunicazione*  
- Il componente gestisce gli eventi on:click sui pulsanti:  
  - Il pulsante "Zoom In" invoca la funzione zoomIn(), spostando la camera in avanti.  
  - Il pulsante "Zoom Out" invoca la funzione zoomOut(), spostando la camera indietro.  
  - Il pulsante "Resetta" invoca resetPosition(), ripristinando la posizione della camera al valore di default e aggiornando il target.
- La comunicazione con il componente genitore avviene tramite la funzione resetTarget() e il binding dello stato della camera, garantendo un aggiornamento dinamico della visualizzazione.

==== *Stili e Layout*  
- Il componente utilizza i pulsanti forniti da *svelte-tweakpane-ui*, che mantengono uno stile coerente con il resto dell'interfaccia.  
- Non sono specificati ulteriori stili custom; lo styling è gestito dalla libreria e dal tema globale dell'applicazione.

==== *Esempi di Utilizzo*  
- Integrazione in un pannello di controllo:  
  Il componente viene inserito all'interno di un pannello di impostazioni (ad es. in SettingsPane.svelte) per consentire agli utenti di regolare la posizione della camera.  
  ```svelte
<TabPage title="Camera options">
			<CameraSettings {resetTarget} />
</TabPage>
  ```
- Questo esempio mostra come il componente permetta di controllare lo zoom e di ripristinare la vista della scena 3D.

==== *Dipendenze Estere*  
- *threlte/core:* Fornisce il hook useThrelte e il contesto necessario per accedere alla camera e agli altri elementi della scena 3D.  
- *svelte-tweakpane-ui:* Fornisce i componenti Button per la creazione dei controlli dell'interfaccia.  
- *three:* Utilizzato per la gestione di vettori nello spazio 3D (Vector3) e per operazioni geometriche sulla posizione della camera.  
- *lib/index.svelte:* (indiretto) Fornisce la funzione getData() per ottenere le configurazioni computate necessarie per inizializzare il valore default della camera.

=== Chart.svelte <chart.svelte>

==== *Descrizione*  
Il componente Chart.svelte è responsabile del rendering della visualizzazione 3D del grafico. Esso gestisce la costruzione della scena, inclusa la griglia di fondo, il piano medio (quando abilitato), le etichette per righe e colonne e la generazione dinamica delle barre 3D tramite il componente Bar.svelte. Il componente aggiorna inoltre in tempo reale l'orientamento della camera per garantire che le etichette siano sempre leggibili.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  - Il componente si struttura all'interno di un elemento T.Group, che raggruppa tutti gli elementi 3D della scena.  
  - Viene renderizzata una Mesh che funge da griglia di fondo, creata con PlaneGeometry e MeshStandardMaterial, posizionata centralmente in base al numero di righe, colonne e allo spacing.  
  - Se il flag `filter.avgEnabled` è attivo, viene renderizzato un piano medio (Mesh) posizionato a livello della media dei dati, con un materiale semitrasparente.  
  - Le etichette delle righe e delle colonne vengono generate utilizzando il componente Text, posizionato e ruotato per garantire la leggibilità nell'ambiente 3D.  
  - Infine, il componente itera sui dati per creare, per ogni elemento della matrice, un componente Bar.svelte che visualizza la barra corrispondente.
- *Funzionalità:*  
  - Calcola dinamicamente le dimensioni della griglia (rows, cols) e normalizza i valori dei dati per definire l'altezza delle barre.  
  - Utilizza la funzione `truncateText` per abbreviare le etichette se troppo lunghe.  
  - Aggiorna in modo reattivo i dati, i valori computati (`utils`), lo spacing e il target della scena, basandosi sui dati ottenuti tramite `getData()`.  
  - Monitora lo stato di `filter.displayBarFilter` aggiornando in base allo stato della selezione.

==== *Props e Variabili Reattive*  
- *Props:*  
  - Nessuna props per i filtri, in quanto ora vengono gestiti direttamente tramite `filter`.  
- *Variabili reattive:*  
  - *dt* derivato da `getData()`, contiene i dati grezzi e i valori computati.
  - *data*: matrice dei dati numerici, usata per definire le altezze e il posizionamento delle barre.
  - *utils*: derivata dai dati computati tramite `getData()`, contiene informazioni come la media e le dimensioni della griglia. 
  - *spacing*: valore derivato da `filter.spacing` che determina la distanza tra le barre.
  - *rows e cols*: ottenuti da utils e rappresentano il numero di righe e colonne della matrice data.  
  - *currentCameraQuaternionArray*: array che conserva l'orientamento corrente della camera, aggiornato continuamente per sincronizzare le etichette.

==== *Eventi e Comunicazione*  
- Il componente utilizza `onMount` per avviare un ciclo di aggiornamento che cattura l'orientamento della camera (quaternion) in tempo reale, utilizzando `requestAnimationFrame`.  
- Su `onDestroy`, l'animazione viene interrotta per liberare le risorse.  
- Le variabili reattive vengono propagate ai componenti figli, in particolare a Bar.svelte, per sincronizzare la visualizzazione delle barre.

==== *Stili e Layout*  
- Gli elementi 3D sono organizzati all'interno di T.Group per mantenere una struttura gerarchica chiara della scena.  
- La griglia (Mesh con PlaneGeometry) e il piano medio sono centrati in base a rows, cols e spacing, garantendo un layout bilanciato.  
- Le etichette (Text) sono posizionate e ruotate in modo da essere sempre leggibili, indipendentemente dall'orientamento della camera.

==== *Esempi di Utilizzo*  
- Il componente Chart.svelte viene solitamente integrato all'interno della scena principale dell'applicazione per visualizzare il grafico 3D.  
  ```svelte
<Chart />
  ```  
  
==== *Dipendenze Esterne*  
- *threlte/core:*  
  - Fornisce il framework per il rendering 3D, compreso il componente T.Group e altri elementi base come Mesh e PlaneGeometry.
- *threlte/extras:*  
  - Offre il componente Text per la creazione di etichette 3D e funzioni per l'interattività.  
- *three:*  
  - Libreria fondamentale per la manipolazione degli oggetti 3D, utilizzata per operazioni come il calcolo delle dimensioni della griglia e per il raycasting.  
- *svelte:*  
  - Gestisce il ciclo di vita del componente tramite `onMount` e `onDestroy`, e supporta la reattività attraverso state, derived ed effect.  
- *lib/index.svelte:*  
  - Fornisce la funzione `getData()` e l'oggetto `filter`, che contengono i dati, le configurazioni computate e le impostazioni di filtraggio per la scena.

=== Color.svelte <color.svelte>
==== *Descrizione*  
Il componente *Color.svelte* fornisce un'interfaccia per la selezione del criterio di colorazione utilizzato nella visualizzazione 3D. Utilizza un controllo List della libreria *svelte-tweakpane-ui* per offrire opzioni predefinite come colorazione per righe, colonne o valori. Il valore selezionato è ora gestito tramite l'oggetto filter importato da `$lib/index.svelte`.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  -  Il componente importa e utilizza il componente `List` da *svelte-tweakpane-ui*, che fornisce un'interfaccia utente sotto forma di un menu a tendina per la selezione di un'opzione.
  - L'opzione selezionata è collegata a `filter.colorSelection`, che gestisce lo stato centralizzato del filtro.
  - L'oggetto `options` definisce le modalità di selezione disponibili per la colorazione.

- *Funzionalità:*  
  - Ogni volta che l'utente cambia la selezione nel menu, il valore di `colorSelection` si aggiorna automaticamente grazie al binding bidirezionale, riflettendo la scelta dell'utente.
  - Il valore selezionato viene visualizzato in tempo reale all'interno di un elemento `<pre>`, che permette di visualizzare il numero corrispondente all'opzione scelta, fornendo un feedback immediato all'utente.

==== *Props e Variabili Reattive*  
- *Props:*  
  - *filter.colorSelection:* ora il valore selezionato è gestito attraverso l'oggetto filter importato, invece che come prop indipendente..
  
- *Variabili reattive:*  
  - *options:* oggetto che contiene le possibili scelte per la modalità di colorazione.

==== *Eventi e Comunicazione*  
- L'uso di bind:value={filter.colorSelection} permette al componente di aggiornare direttamente lo stato del filtro colore all'interno di `$lib/index.svelte`.
- Il valore selezionato viene immediatamente riflesso nella UI e nello stato centralizzato.

==== *Stili e Layout*  
- Il componente non definisce stili personalizzati, poiché si affida alla libreria *svelte-tweakpane-ui* per la gestione dell'interfaccia utente.


==== *Esempi di Utilizzo*  

*Esempio di integrazione:*  
```svelte
<TabPage title="Color filter">
			<Color />
</TabPage>
```  
Nell'esempio il componente è incluso come una delle schede (TabPage) all'interno del pannello delle impostazioni, e permette di modificare il tipo di colore utilizzato nell'applicazione.

==== *Dipendenze Esterne*  
- *svelte-tweakpane-ui:* fornisce il componente List per la selezione delle opzioni in modo strutturato e interattivo.
- *lib/index.svelte*: fornisce la gestione centralizzata dello stato del filtro colore.

=== DataFilter.svelte <datafilter.svelte>
==== Descrizione 
Il componente *DataFilter.svelte* permette di filtrare i dati in base a intervalli specifici e valori relativi alla media. Gestisce un intervallo visibile di dati e consente all'utente di filtrare i valori inferiori o superiori alla media globale e include un'opzione per visualizzare il piano della media.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  - Utilizza un `IntervalSlider` per consentire la selezione di un intervallo di valori da visualizzare. 
  - Fornisce un `Checkbox` per attivare o disattivare la visualizzazione del piano della media.
  - Fornisce tre `Button`:
   - Uno per filtrare i *valori inferiori alla media*.
   - Uno per filtrare i *valori superiori alla media*.
   - Uno per *resettare* il filtro e riportare i valori all'intervallo completo.

- *Funzionalità:*  
  - I valori minimi e massimi dell'intervallo vengono ottenuti dinamicamente tramite la funzione `getData().computed` e assegnati a `filter.rangeValue`.
  - Il `Checkbox` consente di attivare o disattivare la visualizzazione del piano della media attraverso la variabile `filter.avgEnabled`.
  -  La variabile `value` controlla l'intervallo visualizzato.
  - I pulsanti modificano il valore di `filter.avgFilter`, che definisce i valori da visualizzare in base alla media globale. 
  - Il reset del filtro riporta i valori di `filter.rangeValue` ai limiti minimi e massimi calcolati dinamicamente.

==== *Props e Variabili Reattive*  
- *Props:*  
  - *filter.rangeValue*: oggetto che contiene i valori minimo e massimo per l'intervallo di visualizzazione, aggiornato dinamicamente in base ai dati.
  - *filter.avgFilter*: variabile che memorizza il tipo di filtro applicato (0 = nessun filtro, 1 = sotto media, 2 = sopra media).
  - *filter.avgEnabled*: booleano che abilita/disabilita la visualizzazione del piano della media.
  
- *Variabili reattive:*  
  - *utils:* contiene i dati calcolati dinamicamente tramite `getData().computed`.

==== *Eventi e Comunicazione*  
- Il `Checkbox` modifica il valore di `filter.avgEnabled`, permettendo di attivare/disattivare la visualizzazione del piano della media.
- I Button aggiornano `filter.avgFilter` per applicare i filtri o resettare l'intervallo.
- L'intervallo di valori può essere modificato tramite il `IntervalSlider`, con il valore legato reattivamente a `filter.rangeValue`.

==== *Stili e Layout*  
- Non sono specificati stili personalizzati. Viene utilizzato *svelte-tweakpane-ui* per il layout e l'interfaccia utente del filtro e dei pulsanti.

==== *Esempi di Utilizzo*  
*Esempio di integrazione:*  
```svelte
<TabPage title="Data filter">
			<DataFilter />
</TabPage>
```  
Nell'esempio il componente *DataFilter* viene utilizzato in una TabPage all'interno di un'interfaccia a schede (Tab Group), permettendo la gestione dei filtri dei dati nell'applicazione.

==== *Dipendenze Esterne*  
- *svelte-tweakpane-ui:* non sono specificati stili personalizzati. Viene utilizzato *svelte-tweakpane-ui* che fornisce i componenti `IntervalSlider`, `Checkbox` e `Button` per la selezione e gestione dei filtri.
- *lib/index.svelte*: fornisce la gestione dei dati e delle variabili di filtro tramite `filter` e `getData().computed`.

=== Scene.svelte <scene.svelte>
==== *Descrizione*  
Il componente *Scene.svelte* è responsabile per la visualizzazione della scena 3D, includendo la gestione della fotocamera, delle luci, e della rappresentazione grafica dei dati attraverso il componente *Chart*. Permette l'interazione tramite controlli di orbita e visualizza i dati in un contesto 3D dinamico.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  -  *Camera e controlli:* 
   - Utilizzo di una `PerspectiveCamera` per visualizzare la scena 3D da una posizione predefinita.
   - `OrbitControls` per abilitare l'interazione dell'utente con la scena, includendo il damping e la rotazione automatica.
   - `Gizmo` per visualizzare gli assi e migliorare la comprensione spaziale della scena.
  - *Luci:* due luci direzionali e una luce ambientale, per creare un'illuminazione dinamica e realistica nella scena.
  - *Componente grafico:* `Chart` è il componente visualizza i dati in un grafico 3D, permettendo l'interazione.

- *Funzionalità:*  
  - La fotocamera `PerspectiveCamera` viene utilizzata per configurare la visualizzazione della scena da un'angolazione iniziale predefinita, con la possibilità di manipolare la scena grazie agli `OrbitControls`.
  - `OrbitControls` permette di interagire con la scena tramite il mouse, consentendo operazioni come zoom, panoramica e rotazione.
  - Il `Gizmo` fornisce una rappresentazione visiva degli assi XYZ, migliorando l'interazione e la comprensione della scena da parte dell'utente.

==== *Props e Variabili Reattive*  
- *Props:*  
  - *target*: posizione della fotocamera, passata dinamicamente per centrare la scena 3D.
  
- *Variabili reattive:*  
  - *autoRotate:* flag (settato su `false`) che abilita o disabilita la rotazione automatica della scena.

==== *Eventi e Comunicazione*  
- Il componente *Scene.svelte* riceve il parametro `target` tramite props e lo passa al componente `OrbitControls ` per manipolare la posizione della fotocamera..
- `OrbitControls` consente di interagire con la scena tramite il mouse per zoom, rotazione e panoramica.

==== *Stili e Layout*  
- Il layout della scena è gestito tramite il sistema di *Threlte* e *Three.js*, con una configurazione di luci e camera integrata. Non sono presenti stili CSS personalizzati nel componente.

==== *Esempi di Utilizzo*  
*Esempio di integrazione:*  
```svelte
<div>
	<Canvas>
		<Scene {target} />
	</Canvas>
</div>
```  
L'esempio utilizzato in App.svelte mostra  l'integrazione del componente *Scene* tramite il tag `<Scene>` all'interno del `<Canvas>` per rendere la scena 3D interattiva e visibile nell'applicazione.

==== *Dipendenze Esterne*  
- *threlte/core:* gestisce la scena 3D, la fotocamera e il rendering.
- *threlte/extras:* fornisce i controlli `OrbitControls` e il `Gizmo` per la manipolazione della scena.
- *Three.js:* usato per la gestione di oggetti 3D come la fotocamera e le luci.

=== SettingsPane.svelte <settingspane.svelte>
==== *Descrizione*  
Il componente *SettingsPane.svelte* gestisce la sezione di impostazioni dell'applicazione, organizzando diverse opzioni tramite una serie di schede. Fornisce agli utenti il controllo su vari parametri come le impostazioni della fotocamera, la fonte dei dati, i filtri, e la selezione del colore.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  -  Utilizza il componente `Pane` di *svelte-tweakpane-ui* per creare un pannello fisso con un gruppo di schede (TabGroup).
  - Ogni *scheda* (TabPage) contiene un componente separato per gestire un gruppo di impostazioni, tra cui:
   - `CameraSettings` per il controllo della posizione della fotocamera
   - `DataSource` per la gestione della fonte dei dati
   - `DataFilter` per il controllo dei filtri sui dati
   - `Color` per selezionare il tipo di colorazione

- *Funzionalità:*  
  - Le schede offrono un'interfaccia interattiva per modificare e configurare parametri come la posizione della fotocamera, i filtri sui dati e la colorazione.
  - Sincronizzazione dei dati tra il componente e il resto dell'app tramite binding bidirezionale, permettendo che le modifiche alle impostazioni influenzino la visualizzazione dei dati in tempo reale.

==== *Props e Variabili Reattive*  
- *Props:*  
  - *resetTarget:* variabile passata da componenti esterni, utilizzata per ripristinare la posizione della fotocamera.
  
- *Variabili reattive:*  
  - *bindable:* per legare variabili reattive come `mediaFilter`, `colorSelection`, `rangeValue`, `avgEnabled` a proprietà e parametri specifici, aggiornando automaticamente la visualizzazione quando cambiano.

==== *Eventi e Comunicazione*  
- Il componente comunica con gli altri tramite le props, passando la variabile `resetTarget` al componente `CameraSettings`.

==== *Stili e Layout*  
- Il pannello delle impostazioni ha una posizione fissa, impostato tramite la proprietà `position="fixed"`.
- Le schede sono organizzate in un layout tabellare tramite `TabGroup`, con ciascuna scheda (`TabPage`) che consente l'accesso a diverse configurazioni.

==== *Esempi di Utilizzo*  
*Esempio di integrazione:*  
```svelte
<div>
	<Canvas>
		<SettingsPane {resetTarget} />
	</Canvas>
</div>
```  
Nel''esempio, il componente *SettingsPane* viene usato all'interno di un <Canvas>, con il parametro ` resetTarget`  passato tramite props.

==== *Dipendenze Esterne*  
- *svelte-tweakpane-ui:* libreria per creare interfacce utente con pannelli di configurazione avanzati.
- *ThemeUtils:* usato per applicare temi globali e predefiniti.

#pb()

= Back-end
Come indicato nella sezione @architettura_logica, il pattern architetturale utilizzato è quello _esagonale_, viste le funzionalità, la robustezza e la manutenibilità che il prodotto software necessita. In questa parte della _Specifica tecnica_ si motivano le scelte implementative effettuate nel lato back-end, riportando esempi di codice dove vengono applicate le _best practice_.
== Configurazione
Per cercare di mantenere i parametri di configurazione in un luogo centralizzato, così da non aver problemi in un futuro ad integrare dell'altro codice, si è deciso di utilizzare l'annotazione ```java @Configuration```. Una classe con questa annotazione viene trattata come una classe di configurazione dove al suo interno si possono dichiarare metodi annotati con  ```java @Bean```, che creano e configurano i bean da registrare nel _ApplicationContext_ di Spring. Nel nostro caso specifico è stato fondamentale nel contesto della richiesta all'API esterno Weather Forecast, in quanto è necessaria la costruzione di un ```java RestTemplate``` con le proprietà necessarie. Nello specifico:
```java @Configuration
@EnableConfigurationProperties(ExternalAPIProperties.class)
public class ExternalAPIConfig {

    ExternalAPIProperties properties;

    public ExternalAPIConfig(ExternalAPIProperties properties) {
        this.properties = properties;
    }

    @Bean
    public RestTemplate restTemplate() {
        SimpleClientHttpRequestFactory factory = new SimpleClientHttpRequestFactory();
        factory.setConnectTimeout(properties.getTimeout());
        factory.setReadTimeout(properties.getTimeout());
        return new RestTemplate(factory);
    }
}```
Come indicato da questo esempio, abbiamo combinato le funzionalità di ```java @Configuration``` con ```java @EnableConfigurationProperties(ExternalAPIProperties.class)``` che permette di abilitare e caricare una classe di configurazione basata su properties all'interno del contesto di Spring. La motivazione di questa scelta è sempre quella di cercare di mantenere le configurazioni il più centralizzate possibili, all'interno di un file chiamato _application.properties_ dove è possibile aggiungere un _prefisso_ che identifica un parametro di configurazione. ```java @ConfigurationProperties(prefix = "external.api")
public class ExternalAPIProperties {
    private String url;
    private int timeout;
    private int maxNumData;

    public int getTimeout() { return timeout; }
    public void setTimeout(int timeout) { this.timeout = timeout; }
    public String getUrl() { return url; }
    public void setUrl(String url) { this.url = url; }
    public int getMaxNumData() { return maxNumData; }
    public void setMaxNumData(int maxNumData) { this.maxNumData = maxNumData; }
}```
Con l'aggiunta di queste annotazioni, si è in grado di indicare nuovi parametri di configurazione andandole ad aggiungere in maniera incrementale in questo modo:
```java external.api.nuovo_parametro=valore```, implementando di conseguenza i nuovi metodi _getter_ e _setter_.

== Eccezioni
Come indicato nel documento _Analisi dei Requsiti v2.0.0_, ci sono diversi errori da gestire come un ```java NetworkError``` o ```java FileTooBig```. Viste queste necessità, si è deciso di implementare una best practice di _Spring Boot_ tramite l'aggiunta dell'annotazione ```java @ControllerAdvice``` che è utilizzata per gestire centralmente le eccezioni e la logica di preprocessing per tutti i controller. Nel nostro caso specifico è stata aggiunta in combinazione l'annotazione ```java @ExceptionHandler()``` per poter gestire le eccezioni globalmente. 
```java @ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(InvalidCsvException.class)
    public ResponseEntity<String> handleInvalidCsvException(InvalidCsvException ex) {
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(ex.getMessage());
    }

    @ExceptionHandler(FileTooBigException.class)
    public ResponseEntity<String> handleFileTooBigException(FileTooBigException ex) {
        return ResponseEntity.status(HttpStatus.PAYLOAD_TOO_LARGE).body(ex.getMessage());
    }

    @ExceptionHandler(APITimeoutException.class)
    public ResponseEntity<String> handleAPITimeoutException(APITimeoutException ex) {
        return ResponseEntity.status(HttpStatus.REQUEST_TIMEOUT).body(ex.getMessage());
    }

    @ExceptionHandler(NetworkErrorException.class)
    public ResponseEntity<String> handleNetworkErrorException(NetworkErrorException ex) {
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(ex.getMessage());
    }
}```
Con questa implementazione è possibile andare ad indicare un modo di fare l'handling dell'eccezioni in maniera differente in base alle varie casistiche. Permette inoltre di centralizzare la gestione delle eccezioni e di aggiungerne delle ulteriori in maniera incrementale (e molto facilmente).

== Repository <backend-repository>
Da capitolato, come indicato nell'UC2.3, l'utente deve essere in grado di caricare i dati tramite una connessione ad un database SQL. Per poter implementare questo requisito seguendo tutte le best practice (e il modo di seguire il modello _esagonale_) è stato necessario creare delle classi con le annotazioni ```java @Repository```, ```java @Entity``` e ```java @Table```. Andando per ordine, ```java @Repository``` permette di indicare che una classe è un repository, ovvero un componente responsabile dell'interazione con il database (fa parte dello Spring Data JPA e fornisce un livello di astrazione per operazioni CRUD senza dover scrivere query SQL manualmente), ```java @Entity``` che rappresenta una tabella del database con cui Spring Boot riesce a collegare automaticamente il repository e l'entità usando Spring Data JPA. Utilizzando quest'ultima, Spring Boot riesce a semplificare la gestione dei database e collegare automaticamente i componenti attraverso una serie di step:
+ Scansiona le annotazioni (```java @Repository```, ```java @Entity```, ecc..)
+ Crea il repository (infatti grazie a Spring Data JPA non serve implementare manualmente la classe in questione)
+ Crea automaticamente il database utilizzando JPA e Hibernate (che può essere configurato con il modo indicato in precedenza, andando a definire nel file _application.properties_ le configurazioni necessarie)
Nel nostro caso specifico:

```java @Repository
public interface CoordinateRepository extends JpaRepository<CoordinateEntity, Long> {

    @Query("SELECT c FROM CoordinateEntity c WHERE c.datasetType >= :type")
    List<CoordinateEntity> findAllByDatasetType(@Param("type") String type);
}```

Dove si può notare come, integrando l'annotazione ```java @Query``` è possibile generare un database con una funzione che richiama una query. Come oggetto di ritorno viene generata un'entità personalizzata, chiamata ```java CoordinateEntity``` definita come:
```java @Entity
@Table(name = "coordinates")
public class CoordinateEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "x_label")
    private String xLabel;

    @Column(name = "z_label")
    private String zLabel;

    @Column(name = "y_value")
    private Double yValue;

    @Column(name = "dataset_type")
    private String datasetType;

    public CoordinateEntity() { }

    public CoordinateEntity(String xLabel, String zLabel, Double yValue, String datasetType) {
        this.xLabel = xLabel;
        this.zLabel = zLabel;
        this.yValue = yValue;
        this.datasetType = datasetType;
    }

    ---- altri metodi setter e getter
}```


== Model
All'interno di model ci sono tutte quelle classi definite come oggetti di business. Troviamo infatti ```java CoordinateEntity.java``` e ```java MatrixData.java```. Come indicato in precendenza, nella @backend-repository, utilizzando Spring Boot è possibile definire un'entità tramite l'annotazione ```java @Entity```. Per vederne l'implementazione si riporta alla @backend-repository. ```java MatrixData.java``` è l'interfaccia di ritorno dei metodi per il reperimento dei dati:\ 
```java DefaultExternalDataService.java```
```java @Override
    public MatrixData fetchData() { ... }```
#line(start: (0%, 0%), end: (100%, 0%)) 
```java DefaultCsvFileReader.java```
```java @Override
    public MatrixData parseCsv(MultipartFile file) throws InvalidCsvException { ... }```
#line(start: (0%, 0%), end: (100%, 0%)) 
```java DefaultCoordinateService.java```
```java @Transactional(readOnly = true)
    @Override
    public MatrixData getCoordinates(String datasetType) { ... }```
#line(start: (0%, 0%), end: (100%, 0%)) 
Le motivazioni di un tipo di implementazione come questa sono molteplici tra cui:
+ *Astrazione e Flessibilità*: Se una funzione ritorna un'interfaccia invece di una classe specifica, si può cambiare l'implementazione senza modificare il codice che utilizza il risultato della funzione. Il chiamante non ha bisogno di conoscere i dettagli dell'implementazione, ma solo i metodi e le proprietà definiti dall'interfaccia.
+ *Inversione di Dipendenza (Principio DIP - SOLID)*: La funzione che restituisce l'interfaccia segue il principio dell'inversione di dipendenza: il codice dipende da un'astrazione (interfaccia) e non da una concreta implementazione e questo riduce l'accoppiamento tra i componenti, rendendo il sistema più manutenibile e scalabile.
+ *Facilitare il Polimorfismo*: Se diverse classi implementano la stessa interfaccia, possono essere trattate in modo uniforme senza dover conoscere quale specifica classe sta usando. Si può scrivere del codice generico che lavora con l'interfaccia, indipendentemente dall'implementazione concreta.
+ *Mocking e Testing*: Se il codice dipende da un'interfaccia piuttosto che da una classe concreta, si può facilmente sostituire l'implementazione reale con un mock o un fake per i test. Questo migliora l'isolamento dei test e riduce la necessità di dipendenze complesse nei test unitari.
+ *Estendibilità*: Se in futuro si devono aggiungere nuove implementazioni, si può farlo senza modificare il codice esistente che utilizza l'interfaccia e di conseguenza permette di implementare nuovi comportamenti senza rompere il codice già scritto.
Nel nostro caso specifico:
```java public interface MatrixData {
    List<String> xLabels();
    List<String> zLabels();
    double[][] yValues();
}```

ed implementata come:
```java 
public record MatrixDataImpl(List<String> xLabels, List<String> zLabels, double[][] yValues) implements MatrixData { }```

Questo ci permetterà in un futuro di poter aggiungere in maniera incrementale delle ulteriori implementazioni, senza dover andare a riscrivere il vecchio codice. Questo è un'importante aspetto che abbiamo tenuto in grande considerazione durante tutta la parte di #glossario("MVP"), dalla progettazione all'implementazione. 

#pb()