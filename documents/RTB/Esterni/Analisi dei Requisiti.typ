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
    "0.1.5","08-12-2024","Fix UC - aggiunto reperimento dati da SQL",p.pozzobon, p.valdagno,
    "0.1.4","07-12-2024","Continuazione casi d'uso e aggiunta req. funzionali",p.pozzobon, (p.valdagno,p.checchinato),
    "0.1.3", "02-12-2024", "Stesura sottosezione caratteristiche utente", p.pozzobon, p.valdagno,
    "0.1.2", "29-11-2024",  "Stesura introduzione sezione Requisiti-Identificazione e Requisiti funzionali secondo UC", (p.pozzobon), p.valdagno,
    "0.1.1", "26-11-2024",  "Stesura sezione casi d'uso", (p.valdagno, p.scandaletti, p.pesenato), p.salvo,
    "0.1.0", "25-11-2024",  "Prima stesura introduzione e descrizione prodotto", p.valdagno, p.salvo,
  )
)

#set heading(numbering: "1.1)")

= Introduzione
== Scopo del documento
Il documento di #glossario("analisi dei requisiti") è un elemento fondamentale nel ciclo di sviluppo di un software.\
Lo scopo è definire e descrivere in maniera chiara, completa e strutturata le #glossario("funzionalità") che il prodotto software deve offrire, ovvero i requisiti che devono essere soddisfatti dal sistema sviluppato al fine di rispettare le richieste fatte dal #glossario("proponente").
L’analisi non deve fornire una visione di come i requisiti verranno svolti ma deve essere consapevole della fattibilità tecnologica. \
In particolare gli obiettivi del documento sono:
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
  - *Rotazione*: permettere la rotazione del grafico per osservarlo da diverse angolazioni.
  - *Pan*: consentire lo spostamento del grafico sul piano orizzontale.
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

== Caratteristiche utente
L'utilizzatore di #glossario("3Dataviz") appartiene a due distinte categorie di utenti:
- Esperto $arrow.r$ utente specializzato nell'analisi e interpretazione dei dati che, per una migliore visualizzazione e una migliore comprensione, sceglie l'applicativo per visualizzare grafici 3D di un #glossario("set di dati"). Padroneggia buone o ottime conoscenze sull'uso del dispositivo con cui utilizza la #glossario("Web App"). La maggior parte degli utenti appartenenti a questa categoria conosce e ha già utilizzato altri applicativi per la visualizzazione grafica di dati.
-  Generico $arrow.r$ utente senza specifiche conoscenze nel campo dell'analisi dei dati che però vuole visualizzare un grafico 3D di un #glossario("set di dati"). Possiede conoscenze di base sull'uso del dispositivo con cui utilizza la #glossario("Web App").

L'applicativo dovrà quindi presentare un'interfaccia semplice ma completa, per permettere ad entrambe le tipologie di utenti di utilizzare la #glossario("Web App") secondo le esigenze descritte sopra.

L'accesso alla #glossario("Web App") avviene principalmente attraverso un computer, per garantire una migliore visualizzazione del grafico e sfruttare al massimo le funzionalità, non si esclude, però, che l'utente possa effettuare l'accesso anche da un dispositivo mobile (smartphone o tablet), soprattutto se il set di dati è limitato. \


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
=== UC 1 - Visualizzazione interattiva dei dati <uc1>
- *Descrizione: * L'utente può visualizzare i dati in un grafico 3D interattivo con barre verticali. 
- *Attore: * Utente finale
- *Precondizioni: * I dati devono essere già caricati nel sistema (tramite tabella, database SQL o API REST). L'interfaccia web deve essere accessibile e funzionante.
- *Postcondizioni: *I dati vengono rappresentati in forma di grafico interattivo.
- *Scenario Principale: *
    + L'utente accede all'applicazione web.
    + L'utente seleziona la modalità di visualizzazione dei dati (caricamento manuale, SQL, API).
    + I dati vengono trasformati in coordinate (x, y, z) e rappresentati come barre 3D.
    + L'utente deve essere in grado di utilizzare liberamente gli strumenti messi a disposizione

=== UC 2.1 - Caricamento manuale dati tramite interfaccia <uc2.1>
- *Descrizione: * L'utente inserisce manualmente i dati in una tabella tramite l'interfaccia web per generare il grafico.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è in modalità di inserimento dati.
- *Postcondizioni: * I dati vengono salvati temporaneamente e utilizzati per creare il grafico.
- *Scenario Principale: *
    + L'utente accede alla modalità "Inserimento dati".
    + L'utente compila i campi della tabella con coordinate x, y e valori z.
    + L'utente clicca su "Genera grafico".
    + L'applicazione traduce i dati nel grafico 3D.

=== UC 2.2 - Caricamento automatico dati tramite API <uc2.2>
- *Descrizione: * L'utente inserisce automaticamente i dati tramite l'interfaccia web per generare il grafico.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è in modalità di inserimento dati tramite API
- *Postcondizioni: * I dati vengono salvati temporaneamente e utilizzati per creare il grafico.
- *Scenario Principale: *
    + L'utente accede alla modalità "Inserimento dati".
    + L'utente inserisce le API da cui prendere i dati.
    + L'utente clicca su "Genera grafico".
    + L'applicazione traduce i dati nel grafico 3D.

=== UC 2.3 - Caricamento automatico dati tramite connessione a database SQL <uc2.3>
- *Descrizione: * L'utente inserisce automaticamente i dati tramite l'interfaccia web per generare il grafico.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è in modalità di inserimento dati tramite connessione a database SQL
- *Postcondizioni: * I dati, una volta recuperati dalla sorgente, vengono salvati temporaneamente e utilizzati per creare il grafico.
- *Scenario Principale: *
    + L'utente accede alla modalità "Inserimento dati".
    + L'utente si collega al database SQL e, mediante query, estrae i dati di proprio interesse.
    + L'utente clicca su "Genera grafico".
    + L'applicazione traduce i dati nel grafico 3D.

=== UC 3 - Visualizzazione Dati <uc3>
- *Descrizione: * L'utente seleziona un elemento del grafico per nascondere o opacizzare barre con valori superiori o inferiori.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico 3D è generato ed accessibile.
- *Postcondizioni: * Opacizzazione di alcune barre a discapito di altre per certi valori
- *Scenario Principale: *
    + L'utente passa il cursore del mouse sopra una barra per vedere il valore.
    + L'utente clicca su una barra per selezionarla.
    + L'applicazione aggiorna la visualizzazione opacizzando o nascondendo barre con valori superiori/inferiori a quella selezionata


=== UC 4 Strumenti visualizzazione dati - ROTAZIONE <uc4>
- *Descrizione: * L'utente, mediante spostamento del mouse all'interno del grafico, può ruotare la visualizzazione
- *Attore: * Utente finale
- *Precondizioni: * Il grafico 3D è generato ed accessibile.
- *Postcondizioni: * Rotazione del grafico per consentire una migliore visualizzazione dei dati di interesse dell'utente
- *Scenario Principale: *
  + L'utente attraverso le gesture del mouse si sposta nel grafico
  + L'utente, volendo, può resettare la visualizzazione a quella di partenza

=== UC 5 - Strumenti visualizzazione dati - PAN <uc5>
- *Descrizione: * L'utente, attraverso la selezione con il mouse, può focalizzare la visualizzazione su un'apposita area del grafico
- *Attore: * Utente finale
- *Precondizioni: * Il grafico 3D è generato ed accessibile.
- *Postcondizioni: * Visualizzazione di una determinata area del grafico, senza modificarne il contenuto
- *Scenario Principale: *
  + L'utente seleziona una determinata area del grafico
  + L'applicazione consente la visualizzazione della determinata area del grafico selezionata
  + L'utente, volendo, può resettare la visualizzazione a quella di partenza

=== UC 6 - Strumenti visualizzazione dati - Zoom <uc6>
- *Descrizione: * L'utente, attraverso le gesture del mouse (touchpad/trackpad o rotella) deve essere in grado di ingrandire o ridurre liberamente la visualizzazione e navigare nella relativa sezione visualizzata
- *Attore: * Utente finale
- *Precondizioni: * Il grafico 3D è generato ed accessibile.
- *Postcondizioni: * Visualizzazione ingrandita o ridotta di una sezione del grafico 
- *Scenario Principale: *
  + L'utente utilizza le gesture del mouse o del trackpad/touchpad per ingrandire o ridurre la visualizzazione del grafico
  + L'utente, volendo, può resettare la visualizzazione a quella di partenza

=== UC 7 - Strumenti visualizzazione dati - Auto posizionamento <uc7>
- *Descrizione: * L'utente, attraverso l'apposito bottone, deve essere in grado di resettare la visualizzazione del grafico a quella di default renderizzata dall'applicativo
- *Attore: * Utente finale
- *Precondizioni: * Il grafico 3D è generato, accessibile e l'utente ha personalizzato, mediante strumenti, la visualizzazione
- *Postcondizioni: * Reset della visualizzazione del grafico a quella di default
- *Scenario Principale: *
  + L'utente, attraverso l'apposito bottone, resetta la visualizzazione, annullando quindi tutte le modifiche alla vista effettuate con gli strumenti messi a disposizione
  + L'utente, volendo, può nuovamente personalizzare la visualizzazione attraverso gli strumenti senza dover ricaricare il grafico

=== UC 8 - Visualizzazione del valore medio globale <uc8>

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

    = Requisiti
    == Identificazione 
    Un #glossario("requisito") possiede 2 distinte caratteristiche:
    - *Tipologia* $arrow.r$ indica il tipo di requisito, ovvero:
      - *F* Funzionale
      - *Q* Qualità
      - *V* Vincolo
    - *Classificazione* $arrow.r$ indica, secondo tre livelli, la categoria del requisito in base all'importanza.  \ L'ordine è decrescente in base all'importanza del requisito:
      - *1* Obbligatorio
      - *2* Desiderabile
      - *3* Opzionale   

    Ogni #glossario("requisito") viene quindi identificato da un #glossario("codice univoco") strutturato come segue:
    #align(center)[*Tipologia.Classificazione.NumProgressivo*] \
    Dove _Tipologia_ e _Classificazione_ fanno riferimento a quanto descritto sopra. _NumProgressivo_ è un intero che aumenta con ogni requisito della medesima classe.

    == Requisiti funzionali

    #align(center)[
  #figure[
    #table(
        columns: (auto, auto, auto, auto),
        align: (col, row) => (center, center, center, center,).at(col),
        inset: 6pt,
        table.header([*Codice*], [*Riferimento*], [*Descrizione*], [*Classificazione*]),
        [F.1.1], [@uc1 \ #glossario("UC")1], [L'utente deve poter visualizzare i dati in un grafico 3D interattivo con barre verticali], [1 - Obbligatorio],
        [F.1.2], [@uc2.1 \ #glossario("UC")2.1], [L'utente, per generare il grafico, deve poter inserire i dati manualmente tramite un'apposita sezione tabellare nell'interfaccia web], [1 - Obbligatorio],
        [F.1.3], [@uc2.2 \ #glossario("UC")2.2], [L'utente deve essere in grado di selezionare una sorgente API esterna per il reperimento automatico dei dati volto alla generazione e visualizzazione del grafico], [1 - Obbligatorio],
        [F.1.4], [@uc2.3 \ #glossario("UC")2.3], [L'utente deve essere in grado di selezionare una sorgente SQL esterna per il reperimento automatico dei dati volto alla generazione e visualizzazione del grafico], [1 - Obbligatorio],
        [F.1.5], [@uc3 \ #glossario("UC")3], [L'utente deve essere in grado di selezionare un elemento del grafico per nascondere o opacizzare barre verticali con valori superiori o inferiori ], [1 - Obbligatorio],
        [F.1.6], [@uc4 \ #glossario("UC")4], [L'utente deve essere in grado di ruotare liberamente la visualizzazione del grafico ], [1 - Obbligatorio],
        [F.1.7], [@uc5 \ #glossario("UC")5], [L'utente deve essere in grado di visualizzare solamente una determinata area del grafico per una maggiore comprensione dei dati], [1 - Obbligatorio],
        [F.1.8], [@uc6 \ #glossario("UC")6], [L'utente deve essere in grado di ingrandire o ridurre la visualizzazione del grafico per una maggiore comprensione dei dati], [1 - Obbligatorio],
        [F.1.9], [@uc7 \ #glossario("UC")7], [L'utente deve essere in grado, a seguito di personalizzazione della visualizzazione, di ripristinare la visualizzazione di default del grafico], [1 - Obbligatorio],
        [F.1.10], [@uc8 \ #glossario("UC")8], [L’utente deve poter attivare la visualizzazione di un piano parallelo alla base del grafico per mostrare il valore medio globale], [1 - Obbligatorio]
    )
    <tab:reqFunzionali>
  ]
]
