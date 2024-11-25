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
    "0.1.0", "25-11-2024",  "Prima stesura introduzione e descrizione prodotto", p.valdagno, (p.salvo), p.salvo,
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