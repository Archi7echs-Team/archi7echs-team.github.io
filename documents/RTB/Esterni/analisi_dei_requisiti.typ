#import "//templates/documento.typ": *

#show: conf.with(
  title: "Analisi dei Requisiti",
  author: "Team",
  state: "Approvato",
  intern: false,
  show_outline: true,
  outline_depth: 3,
  heading_numbers: none,
  changelog: (
    "0.2.0", "22-11-2024",  "Stesura sezione casi d'uso", (p.valdagno, p.scandaletti, p.pesenato), (p.checchinato, p.salvo), "",
    "0.1.0", "21-11-2024",  "Prima stesura introduzione e descrizione prodotto", p.valdagno, (p.checchinato, p.salvo), "",
  )
)

#set heading(numbering: "1.1)")

= Introduzione
== Scopo del documento
Il documento di #glossario("analisi dei requisiti") è un elemento fondamentale nel ciclo di sviluppo di un software.\
Lo scopo è definire e descrivere in maniera chiara, completa e strutturata le #glossario("funzionalità") che il prodotto software deve offrire, ovvero i requisiti che devono essere soddisfatti dal sistema sviluppato al fine di rispettare le richieste fatte dal #glossario("proponente").
L’analisi non deve fornire una visione di come i requisiti verranno svolti ma deve essere consapevole della fattibilità tecnologica. \
In particolare gli obbiettivi del documento sono:
- *Esplicitare i bisogni del proponente*: un #glossario("requisito") esprime una descrizione dettagliata di un bisogno che il #glossario("proponente") si aspetta di ottenere dal prodotto software, questo comprende sia richieste esplicite del #glossario("capitolato") sia richieste implicite ricavabili dopo analisi.
- *Ridurre ambiguità*: serve come punto di riferimento condiviso tra membri del team di sviluppo e #glossario("proponente") dunque non deve contenere ambiguità.
- *Garantire il tracciamento dei requisiti*: consente di mappare le esigenze del #glossario("proponente") attraverso l’identificazione, la classificazione e l’ordinamento di casi d’uso e corrispettivi requisiti.
- *Fornire una base per la progettazione*: il documento enuncia le richieste dunque fornisce una base alla progettazione che invece si occupa dell’individuazione di una soluzione adeguata.
- *Verifica dei requisiti*: il processo di #glossario("verifica") ha lo scopo di garantire che i requisiti siano corretti, completi e consistenti e quindi che il documento non abbia aspettative contradditorie.
- *Validazione dei requisti*: attività strettamente collegata all’#glossario("analisi dei requisiti") che consiste nell’accertare che il prodotto rispecchi le richieste del #glossario("proponente"). #glossario("Validazione") e #glossario("analisi dei requisiti") sono attività collegate in quanto affermare che un #glossario("requisito")  fa quello che deve fare significa anche descrivere il #glossario("requisito") .

== Glossario
All'interno del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html", text(blue)[_glossario_]). Tutte le parole consultabili nel glossario saranno identificate da una "G", di colore blu, in pedice. Cliccando la parola, si aprirà il glossario nel sito web.

== Riferimenti
=== Link al capitolato C5 - 3Dataviz
- Riferimento al #glossario("capitolato") 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf", text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf])
=== Slide del corso IS
- Riferimento alle slide IS: *_Regolamento del progetto didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf", text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf])
- Riferimento alle slide IS: *_Gestione di progetto_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf", text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf])
- Riferimento alle slide IS: *Analisi dei requisiti*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf", text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf])
- Riferimento alle slide IS: *Diagrammi Casi d'uso*: #link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf",
text(blue)[https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf])

#pagebreak(weak: true)

= Descrizione del prodotto
== Obiettivo del prodotto
L’obiettivo è realizzare una piattaforma web di visualizzazione tridimensionale dei dati, che consenta all’utente che la utilizza di navigare e interagire con grafici a barre verticali 3D rappresentanti dati complessi, utili per l'analisi e la presentazione di informazioni.

== Funzionalità del prodotto
Il prodotto deve essere progettato per poter rappresentare  dati, in un modello 3D, navigabile e interattivo, dunque le sue #glossario("funzionalità") principali includono:

- *Funzionalità di un ambiente 3D*: 
  - *Rotazione*: permettere la rotazione del grafico per osservarlo da diverse angolazioni
  - *Pan*: consentire lo spostamento del grafico sul piano orizzontale
  - *Zoom*: abilitare l'avvicinamento e l'allontanamento dal grafico.
  - *Auto-positioning*: posizionare automaticamente il grafico in una vista ottimale.

- *Visualizzazione del valore medio globale*: il sistema deve consentire di visualizzare un piano parallelo alla base, che rappresenta il valore medio globale dei dati.

- *Opacizzazione o nascondimento delle barre*:  il sistema deve offrire la possibilità di opacizzare o nascondere le barre con valori superiori o inferiori rispetto a:
  - una barra selezionata;
  - una cella della griglia selezionata;
  - il valore medio globale rappresentato dal piano visualizzato.
 Inoltre, deve permettere di lasciare visibili o non opacizzati solo i valori top X o bottom Y, ossia i punti estremi.

- *Visualizzazione dei valori corrispondenti a una barra*: il sistema deve consentire di visualizzare i valori corrispondenti a una barra quando questa è soggetta a un evento "#glossario("hover")" del mouse.

- *[Opzionale] Visualizzazione del valore medio del singolo elemento*: il sistema deve consentire di visualizzare un piano parallelo alla base, che rappresenta il valore medio di un singolo elemento di un asse (X o Y).

== Caratteristiche Utente
//Da aggiungere in seguito quando sarà più chiaro

== Tecnologie
//concordare durante una riunione 
//Capitolato Threejs d3js per dati
//            react  angular frontend

#pagebreak(weak: true)

= Casi d'uso
== Obiettivi
Un caso d’uso rappresenta in modo formale le funzionalità di un sistema, illustrando le attività svolte durante un’interazione. \
Questa sezione mira a descrivere in dettaglio i casi d’uso individuati dopo l’analisi del capitolato, colloqui con il proponente e discussioni tra i membri del progetto.

== Attori
La considerazione fondamentale, risultato di un colloquio con l'azienda proponente, è che l'attore del sistema che verrà realizzato è unico. Questo attore è la persona che interagisce direttamente con la piattaforma, visualizzando i dati e utilizzando le funzionalità di interazione con i grafici tridimensionali.

== Schema logico Casi d'Uso

//[Inserire Diagramma qua]

Ogni caso d'uso è presentato seguendo la seguente struttura logica:
- *Descrizione*: una breve descrizione del caso d'uso che identifica chiaramente la funzione che il sistema deve svolgere.
- *Attore*: l’entità che interagisce col sistema, è un’entità esterna su cui non si possono effettuare modifiche.
- *Precondizioni*: le condizioni che definiscono lo stato iniziale del sistema e degli attori prima che l'interazione inizi.
- *Postcondizioni*: le condizioni che descrivono lo stato finale del sistema.
- *Scenario principale*: la sequenza di passi standard che descrive l'interazione principale tra l'attore e il sistema per completare un caso d’uso.

//[Inserire Diagramma o qua]

== Gestione degli errori(?)
//eventuale, tenere si no?

== Elenco casi d'uso
//Può andar bene una cosa del genere?
=== UC 1 - Visualizzazione interattiva dei dati
- *Descrizione: * L'utente può visualizzare i dati in un grafico 3D interattivo con barre verticali. 
- *Attore: * Utente finale
- *Precondizioni: * I dati devono essere già caricati nel sistema (tramite tabella, database SQL o API REST). L'interfaccia web deve essere accessibile e funzionante.
- *Postcondizioni: *I dati vengono rappresentati in forma di grafico interattivo.
- *Scenario Principale: *
    + L'utente accede all'applicazione web.
    + L'utente seleziona la modalità di visualizzazione dei dati (caricamento manuale, SQL, API).
    + I dati vengono trasformati in coordinate (x, y, z) e rappresentati come barre 3D.
    + L'utente utilizza comandi per ruotare, zoomare o spostare la vista sul grafico
\
=== UC 2 - Visualizzazione Dati
- *Descrizione: * L'utente seleziona un elemento del grafico per nascondere o opacizzare barre con valori superiori o inferiori.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico 3D è generato ed accessibile.
- *Postcondizioni: * Opacizzazione di alcune barre a discapito di altre per certi valori
- *Scenario Principale: *
    + L'utente passa il cursore del mouse sopra una barra per vedere il valore.
    + L'utente clicca su una barra per selezionarla.
    + L'applicazione aggiorna la visualizzazione opacizzando o nascondendo barre con valori superiori/inferiori a quella selezionata
\
=== UC 3 - Visualizzazione del valore medio globale

- *Descrizione: * L'utente attiva la visualizzazione di un piano parallelo alla base del grafico, rappresentante il valore medio globale.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico è generato e contiene un set completo di dati.
- *Postcondizioni: * 
  - Viene mostrato il piano medio globale.
  - L'utente può interagire con le barre rispetto al piano.
- *Scenario Principale: *
    + L'utente clicca sull'opzione "Mostra piano medio" nel menu dell'interfaccia.
    + L'applicazione calcola il valore medio globale e lo rappresenta come piano nel grafico.
    + L'utente seleziona barre sopra o sotto il piano per nasconderle o opacizzarle.
\
=== UC 4 - Caricamento manuale dati tramite interfaccia
- *Descrizione: * L'utente inserisce manualmente i dati in una tabella tramite l'interfaccia web per generare il grafico.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è in modalità di inserimento dati.
- *Postcondizioni: * I dati vengono salvati temporaneamente e utilizzati per creare il grafico.
- *Scenario Principale: *
    + L'utente accede alla modalità "Inserimento dati".
    + L'utente compila i campi della tabella con coordinate x, y e valori z.
    + L'utente clicca su "Genera grafico".
    + L'applicazione traduce i dati nel grafico 3D.
\
=== UC 4.1 - Caricamento automatico dati tramite API
- *Descrizione: * L'utente inserisce automaticamente i dati tramite l'interfaccia web per generare il grafico.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è in modalità di inserimento dati tramite API
- *Postcondizioni: * I dati vengono salvati temporaneamente e utilizzati per creare il grafico.
- *Scenario Principale: *
    + L'utente accede alla modalità "Inserimento dati".
    + L'utente incolla le API da cui prendere i dati.
    + L'utente clicca su "Genera grafico".
    + L'applicazione traduce i dati nel grafico 3D.