#import "/templates/documento.typ": *

#show: conf.with(
  title: "Analisi dei Requisiti",
  author: "Team",
  state: "Approvato",
  intern: false,
  show_outline: true,
  outline_depth: 3,
  heading_numbers: none,
  changelog: (
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
Lo scopo è definire e descrivere in maniera chiara, completa e strutturata le #glossario("funzionalità") che il prodotto software deve offrire, ovvero i requisiti che devono essere soddisfatti dal sistema sviluppato al fine di rispettare le richieste fatte dal #glossario("proponente").
L’analisi non deve fornire una visione di come i requisiti verranno svolti ma deve essere consapevole della fattibilità tecnologica. \
In particolare gli obiettivi del documento sono:
- *Esplicitare i bisogni del proponente*: un #glossario("requisito") esprime una descrizione dettagliata di un bisogno che il #glossario("proponente") si aspetta di ottenere dal prodotto software, questo comprende sia richieste esplicite del #glossario("capitolato") sia richieste implicite ricavabili dopo analisi.
- *Ridurre ambiguità*: serve come punto di riferimento condiviso tra membri del team di sviluppo e #glossario("proponente").
- *Garantire il tracciamento dei requisiti*: consente di mappare le esigenze del #glossario("proponente") attraverso l’identificazione, la classificazione e l’ordinamento di casi d’uso e corrispettivi requisiti.
- *Fornire una base per la progettazione*: il documento enuncia le richieste e fornisce una base alla progettazione che invece si occupa dell’individuazione di una soluzione adeguata.
- *Verifica dei requisiti*: il processo di #glossario("verifica") ha lo scopo di garantire che i requisiti siano corretti, completi e consistenti e quindi che il documento non abbia aspettative contraddittorie.
- *Validazione dei requisti*: attività strettamente collegata all’#glossario("analisi dei requisiti") che consiste nell’accertare che il prodotto rispecchi le richieste del #glossario("proponente"). #glossario("Validazione") e #glossario("analisi dei requisiti") sono attività collegate in quanto affermare che un #glossario("requisito")  fa quello che deve fare significa che descrive lo stesso.

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

=== Riferimenti informativi
- Riferimento al glossario: #link("https://archi7echs-team.github.io/glossario.html", text(blue)[https://archi7echs-team.github.io/glossario.html])
- Norme di Progetto [in scrittura]


#pb()

= Descrizione del prodotto
== Obiettivo del prodotto
L’obiettivo è realizzare una piattaforma web di visualizzazione tridimensionale dei dati, che consenta all’utente che la utilizza di navigare e interagire con grafici a barre verticali 3D rappresentanti dati complessi, utili per l'analisi e la presentazione di informazioni.

== Funzionalità del prodotto
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
== Caratteristiche utente
L'utilizzatore di #glossario("3Dataviz") appartiene a due distinte categorie di utenti:
- Esperto $arrow.r$ utente specializzato nell'analisi e interpretazione dei dati che, per una migliore visualizzazione e una migliore comprensione, sceglie l'applicativo per visualizzare grafici 3D di un #glossario("set di dati"). Padroneggia buone o ottime conoscenze sull'uso del dispositivo con cui utilizza la #glossario("Web App"). La maggior parte degli utenti appartenenti a questa categoria conosce e ha già utilizzato altri applicativi per la visualizzazione grafica di dati.
-  Generico $arrow.r$ utente senza specifiche conoscenze nel campo dell'analisi dei dati che però vuole visualizzare un grafico 3D di un #glossario("set di dati"). Possiede conoscenze di base sull'uso del dispositivo con cui utilizza la #glossario("Web App").

L'applicativo dovrà quindi presentare un'interfaccia semplice ma completa, per permettere ad entrambe le tipologie di utenti di utilizzare la #glossario("Web App") secondo le esigenze descritte sopra.

L'accesso alla #glossario("Web App") avviene principalmente attraverso un computer, per garantire una migliore visualizzazione del grafico e sfruttare al massimo le funzionalità. Non si esclude però, che l'utente possa effettuare l'accesso anche da un dispositivo mobile (smartphone o tablet), soprattutto se il set di dati è limitato. \


== Tecnologie
- *Svelte*: un #glossario("framework") JavaScript per la costruzione di interfacce utente reattive. Permette con facilità di creare componenti personalizzati ad ogni nostra esigenza.
- *Threlte*: una #glossario("libreria") che combina Svelte con Three.js per facilitare la creazione di scene 3D reattive e interattive.
- *D3.js*: una #glossario("libreria") JavaScript per la creazione di grafica 3D nel browser. D3.js fornisce un'#glossario("API") semplice per costruire e animare scene 3D. Tuttavia nel progetto verrà utilizzato maggiormente per la normalizzazione dei dati all'interno del grafico.
- *Vitest*: un #glossario("framework") di testing per JavaScript progettato per essere veloce e semplice da configurare. Vitest è utilizzato per eseguire test di unità.
- *Playwright*: uno strumento per il testing end-to-end (#glossario("e2e")) che consente di automatizzare le interazioni con le applicazioni web. Playwright supporta l'esecuzione #glossario("headless") del browser rendendo i test più veloci ed affidabili.


#pb()

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
- *Scenari alternativi*: rappresentano dei casi particolari, ovvero quando uno dei passi dello scenario principale non è andato a buon fine ed è dunque necessario specificare come comportarsi in queste circostanze.

//[Inserire Diagramma o qua]

== Elenco casi d'uso

=== UC 1 - Visualizzazione interattiva dei dati <uc1>
- *Descrizione: * L'utente può visualizzare i dati in un grafico #glossario("3D") interattivo con barre verticali. 
- *Attore: * Utente finale
- *Precondizioni: * I dati devono essere già caricati nel sistema (tramite tabella, database #glossario("SQL") o #glossario("API REST")). L'interfaccia web deve essere #glossario("accessibile") e funzionante.
- *Postcondizioni: *I dati vengono rappresentati in forma di grafico interattivo.
- *Scenario Principale: *
    + L'utente accede all'applicazione web.
    + L'utente seleziona la modalità di inserimento dei dati (caricamento manuale, #glossario("SQL"), #glossario("API")). (@uc2)
    + Il grafico viene generato in base ai dati precedentemente caricati.
    + L'utente deve essere in grado di utilizzare liberamente gli strumenti messi a disposizione.

=== UC 2 - Caricamento dati per la generazione del grafico <uc2>
- *Descrizione: * L'utente deve avere la possibilità di inserire dei dati da poter visualizzare nel grafico.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è caricata correttamente ed in attesa di un inserimento di dati da parte dell'utente.
- *Postcondizioni: * I dati vengono salvati temporaneamente e utilizzati per creare il grafico.
- *Scenario Principale: *
    + L'utente accede alla sezione di inserimento dei dati.
    + L'utente seleziona il metodo di caricamento dati:
      - Tramite interfaccia (@uc2.1);
      - Tramite API (@uc2.2);
      - Tramite connessione database SQL (@uc2.3);
      - Tramite file .csv (@uc2.4).
    + Il sistema salva i dati.


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
  - Visualizzazione dell'errore tooMuchData (@uc22)
  - Visualizzazione dell'errore emptyField (@uc25)

==== UC 2.1.1 - L'utente inserisce il campo X <uc2.1.1>
- *Descrizione: * L'utente desidera caricare i dati manualmente e deve essere in grado di inserire il valore dell'asse x.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è caricata correttamente ed in attesa di un inserimento di dati da parte dell'utente.
- *Postcondizioni: * L'utente ha inserito il valore x di un nuovo dato.
- *Scenario Principale: *
    + L'utente entra nella sezione "Inserimento dati".
    + L'utente compila il campo x

==== UC 2.1.2 - L'utente inserisce il campo Y <uc2.1.2>
- *Descrizione: * L'utente desidera caricare i dati manualmente e deve essere in grado di inserire il valore dell'asse y.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è caricata correttamente ed in attesa di un inserimento di dati da parte dell'utente.
- *Postcondizioni: * L'utente ha inserito il valore y di un nuovo dato.
- *Scenario Principale: *
    + L'utente entra nella sezione "Inserimento dati".
    + L'utente compila il campo y.

==== UC 2.1.3 - L'utente inserisce il campo Z <uc2.1.3>
- *Descrizione: * L'utente desidera caricare i dati manualmente e deve essere in grado di inserire il valore dell'asse z.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è caricata correttamente ed in attesa di un inserimento di dati da parte dell'utente.
- *Postcondizioni: * L'utente ha inserito il valore z di un nuovo dato.
- *Scenario Principale: *
    + L'utente entra nella sezione "Inserimento dati".
    + L'utente compila il campo z

=== UC 2.2 - Caricamento automatico dati tramite #glossario("API") <uc2.2>
- *Descrizione: * L'utente inserisce automaticamente i dati tramite l'interfaccia web per generare il grafico e seleziona una #glossario("API") (da quelle proposte in una lista) come metodo di caricamento .
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è in modalità di inserimento dati tramite #glossario("API").
- *Postcondizioni: * I dati vengono salvati temporaneamente e utilizzati per creare il grafico.
- *Scenario Principale: *
    + L'utente accede alla modalità "Inserimento dati".
    + L'utente seleziona un'#glossario("API") (da quelle proposte in una lista) da cui prendere i dati.
    + L'utente clicca su un bottone per caricare i nuovi dati.
    + L'applicazione salva i nuovi dati.
- *Scenari alternativi:* 
  - L'#glossario("API") è un servizio esterno e in quanto tale potrebbe non rispondere in un tempo limite oppure potrebbe cambiare inaspettatamente la risposta
    + Visualizzazione errore tooMuchData (@uc22);  
    + Visualizzazione errore apiTimeOut (@uc24);

=== UC 2.3 - Caricamento automatico dati tramite connessione a database SQL <uc2.3>
- *Descrizione: * L'utente decide di inserire automaticamente i dati tramite database come metodo di caricamento.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è in modalità di inserimento dati tramite connessione a database #glossario("SQL").
- *Postcondizioni: * I dati, una volta recuperati dalla sorgente, vengono salvati temporaneamente e utilizzati per creare il grafico.
- *Scenario Principale: *
    + L'utente decide di inserire i dati tramite database.
    + L'utente preme sul bottone dedicato al caricamento.
    + L'applicazione elabora i dati nel grafico #glossario("3D").
- *Scenari Alternativi:* 
  - Il #glossario("DB") non risponde per motivi di rete
    + Errore networkError (@uc26).

=== UC 2.4 - Caricamento automatico dati tramite file .csv <uc2.4>
- *Descrizione: * L'utente inserisce automaticamente i dati tramite l'interfaccia web per generare il grafico e seleziona un file .csv come metodo di caricamento.
- *Attore: * Utente finale
- *Precondizioni: * L'applicazione è in modalità di inserimento da file #glossario(".csv").
- *Postcondizioni: * I dati, una volta recuperati dalla sorgente, vengono salvati temporaneamente e utilizzati per creare il grafico.
- *Scenario Principale: *
    + L'utente decide di inserire i dati tramite file .csv.
    + L'utente seleziona il file #glossario(".csv") da cui prendere i dati.
    + L'utente clicca su un bottone per caricare i nuovi dati.
    + L'applicazione salva i nuovi dati.
- *Scenari Alternativi:* 
  - L'utente potrebbe inserire un file .csv in cui la formattazione interna è errata, oppure contiene troppi dati, superando la soglia massima consentita
    + Errore tooMuchData (@uc22);  
    + Errore invalidCsv (@uc23).

=== UC 3 Strumenti visualizzazione dati - Rotazione <uc3>
- *Descrizione: * L'utente, mediante spostamento del mouse all'interno del grafico, può ruotare la visualizzazione
- *Attore: * Utente finale.
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Rotazione del grafico per consentire una migliore visualizzazione dei dati di interesse dell'utente.
- *Scenario Principale: *
  + L'utente seleziona la modalità "Rotazione" dal menù apposito.
  + L'utente attraverso le gesture del mouse si sposta nel grafico.

=== UC 4 - Strumenti visualizzazione dati - PAN orizzontale <uc4>
- *Descrizione: * L'utente può muoversi nel grafico come se fosse in un ambiente 2d, spostandosi solo orizzontalmente.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Spostamento in orizzontale del grafico avvenuto con successo.
- *Scenario Principale: *
  + L'utente clicca sul pulsante per attivare la modalità PAN orizzontale.
  + L'applicazione abilita la modalità PAN, consentendo lo spostamento del grafico.
  + L'utente attraverso le gesture del mouse si sposta nel grafico orizzontalmente.

=== UC 5 - Strumenti visualizzazione dati - PAN verticale <uc5>
- *Descrizione: * L'utente può muoversi nel grafico come se fosse in un ambiente 2d, spostandosi solo verticalmente.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Spostamento in verticale del grafico avvenuto con successo.
- *Scenario Principale: *
  + L'utente clicca sul pulsante per attivare la modalità PAN.
  + L'applicazione abilita la modalità PAN, consentendo lo spostamento del grafico.
  + L'utente attraverso le gesture del mouse si sposta nel grafico verticalmente.

  
=== UC 6 - Strumenti visualizzazione dati - Zoom <uc6>
- *Descrizione: * L'utente, attraverso le gesture del mouse (touchpad/trackpad o rotella) deve essere in grado di ingrandire o ridurre liberamente la visualizzazione.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Visualizzazione ingrandita o ridotta di una sezione del grafico.
- *Scenario Principale: *
  + L'utente clicca sul pulsante per attivare la modalità Zoom.
  + L'applicazione abilita la modalità Zoom.
  + L'utente utilizza le gesture del mouse o del trackpad/touchpad per ingrandire o ridurre la visualizzazione del grafico.

=== UC 7 - Strumenti visualizzazione dati - Auto posizionamento <uc7>
- *Descrizione: * L'utente, attraverso l'apposito bottone, deve essere in grado di resettare la visualizzazione del grafico a quella di default renderizzata dall'applicativo.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato, #glossario("accessibile") e l'utente ha personalizzato, mediante strumenti, la visualizzazione.
- *Postcondizioni: * Reset della visualizzazione del grafico a quella di default.
- *Scenario Principale: *
  + L'utente, attraverso l'apposito bottone, resetta la visualizzazione, annullando quindi tutte le modifiche alla vista effettuate con gli strumenti messi a disposizione.

=== UC 8 - Visualizzazione informazioni durante hover di una barra <uc8>
- *Descrizione: * L'utente posiziona il cursore sopra una barra del grafico e visualizza le informazioni di quella barra.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Visualizzazione delle informazioni: coordinate x e y, l'altezza della barra, media relativa ai valori della stessa x, media relativa ai valori della stessa z, media relativa ai valori globali.
- *Scenario Principale: *
    + L'utente passa il cursore del mouse sopra una barra.
    + L'applicazione aggiorna la visualizzazione fornendo le informazioni relative a quella barra: coordinate x e y, l'altezza della barra, media relativa ai valori della stessa x, media relativa ai valori della stessa z, media relativa ai valori globali.

=== UC 9 - Click su una barra del grafico<uc9>
- *Descrizione: * L'utente preme sopra ad una barra, accede ad ulteriori funzionalità scegliendo tra quelle proposte.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico #glossario("3D") è generato ed #glossario("accessibile").
- *Postcondizioni: * Visualizzazione delle informazioni della barra e possibilità di filtraggio ulteriore in base alla barra selezionata.
- *Scenario Principale: *
    + L'utente preme sopra ad una barra del grafico.
    + L'applicazione fornisce le seguenti possibilità:
      - Visualizzazione delle informazioni relative alla barra premuta;
      - Possibilità di applicare filtri al grafico in base alla barra premuta.
    
==== UC 9.1 - Visualizzazione informazioni dopo click di una barra <uc9.1>
- *Descrizione: * L'utente preme sopra ad una barra e vengono visualizzate le informazioni della barra.
- *Attore: * Utente finale
- *Precondizioni: * L'utente ha premuto su una barra del grafico.
- *Postcondizioni: * Visualizzazione delle informazioni: coordinate x e y, l'altezza della barra, media relativa ai valori della stessa x, media relativa ai valori della stessa z, media relativa ai valori globali.
- *Scenario Principale: *
    + L'applicazione aggiorna la visualizzazione fornendo le informazioni relative a quella barra: coordinate x e y, l'altezza della barra, media relativa ai valori della stessa x, media relativa ai valori della stessa z, media relativa ai valori globali.

==== UC 9.2 - Scelta dell'opacizzazione di una barra selezionata<uc9.2>
- *Descrizione: * L'utente preme sopra ad una barra e deve avere la possibilità di modificarne l'opacizzazione.
- *Attore: * Utente finale
- *Precondizioni: * L'utente ha premuto su una barra del grafico.
- *Postcondizioni: * L'utente seleziona l'opacizzazione della barra selezionata.
- *Scenario Principale: *
    + L'applicazione aggiorna la visualizzazione fornendo la possibilità di modificare l'opacizzazione.
    + L'utente modifica l'opacizzazione a piacere.

==== UC 9.3 - Opacizzazione dei dati con valore minore di una barra selezionata<uc9.3>
- *Descrizione: * L'utente preme sopra ad una barra e deve avere la possibilità di opacizzare tutti i dati che hanno valore minore del valore della barra selezionata.
- *Attore: * Utente finale
- *Precondizioni: * L'utente ha premuto su una barra del grafico.
- *Postcondizioni: * Il grafico ha i dati con valore minore del valore della barra selezionata opacizzati.
- *Scenario Principale: *
    + L'utente preme sul bottone dedicato all'applicazione del filtro.
    + L'applicazione aggiorna il grafico, opacizzando tutti i dati con valore minore del valore della barra selezionata.

==== UC 9.4 Opacizzazione dei dati con valore maggiore di una barra selezionata<uc9.4>
- *Descrizione: * L'utente preme sopra ad una barra e deve avere la possibilità di opacizzare tutti gli altri dati che hanno valore maggiore del valore della barra selezionata.
- *Attore: * Utente finale
- *Precondizioni: * L'utente ha premuto su una barra del grafico.
- *Postcondizioni: * Il grafico ha i dati con valore maggiore del valore della barra selezionata opacizzati.
- *Scenario Principale: *
    + L'utente preme sul bottone dedicato all'applicazione del filtro.
    + L'applicazione aggiorna il grafico, opacizzando tutti i dati con valore maggiore del valore della barra selezionata.

==== UC 9.5 Reimpostare la visualizzazione della barra selezionata<uc9.5>
- *Descrizione: * L'utente preme sopra ad una barra e deve avere la possibilità reimpostare i filtri di default.
- *Attore: * Utente finale
- *Precondizioni: * L'utente ha premuto su una barra del grafico e può aver applicato dei filtri alla barra.
- *Postcondizioni: * Il grafico reimposta la visualizzazione standard della barra (e delle barre affette dai cambiamenti applicati attraverso la barra specifica) , togliendo tutti i filtri precedentemente applicati.
- *Scenario Principale: *
    + L'utente preme sul bottone dedicato per reimpostare i filtri precedentemente applicati.
    + L'applicazione aggiorna il grafico, visualizzando la barra con le impostazioni di default (e delle barre affette dai cambiamenti applicati attraverso la barra specifica).
      
=== UC 10 - Visualizzazione del valore medio globale <uc10>

- *Descrizione: * L'utente attiva la visualizzazione di un piano parallelo alla base del grafico, rappresentante il valore medio globale. L'utente può con lo stesso metodo disattivare la visualizzazione del piano.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico è generato e contiene un set completo di dati.
- *Postcondizioni: * Viene mostrato il piano medio globale.
- *Scenario Principale: *
    + L'utente preme un bottone nel menù dedicato per visualizzare un piano che rappresenta il valore medio globale.
    + L'applicazione calcola il valore medio globale e lo rappresenta come piano nel grafico.

=== UC 11 - Visualizzazione dati maggiori della media globale <uc11>

- *Descrizione: * L'utente può visualizzare i soli dati che sono maggiori della media globale.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico è generato e contiene un set completo di dati.
- *Postcondizioni: * Vengono visualizzati solo i dati maggiori della media globale, opacizzando di conseguenza i valori minori della media globale.
- *Scenario Principale: *
    + L'utente preme un bottone nel menù dedicato e opacizza i dati minori della media globale.
    + L'applicazione opacizza tutti i dati minori della media globale.
    
=== UC 12 - Visualizzazione dati minori della media globale <uc12>

- *Descrizione: * L'utente può visualizzare i soli dati che sono minori della media globale.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico è generato e contiene un set completo di dati.
- *Postcondizioni: * Vengono visualizzati solo i dati minori della media globale, opacizzando di conseguenza i valori maggiori della media globale.
- *Scenario Principale: *
    + L'utente preme un bottone nel menù dedicato e opacizza i dati maggiori della media globale.
    + L'applicazione opacizza tutti i dati maggiori della media globale.

=== UC 13 - Visualizzazione dati con altezza compresa tra un intervallo <uc13>

- *Descrizione: * L'utente può visualizzare i soli dati che sono contenuti all'interno di un intervallo di valori (che può essere aperto o chiuso).
- *Attore: * Utente finale
- *Precondizioni: * Il grafico è generato e contiene un set completo di dati.
- *Postcondizioni: * Vengono visualizzati solo i dati con altezza compresa nell'intervallo specificato.
- *Scenario Principale: *
    + L'utente inserisce il minimo (se necessario) dell'intervallo.
    + L'utente inserisce il massimo (se necessario) dell'intervallo.
    + L'utente applica il filtro.
    + Vengono visualizzati solo i dati con altezza compresa nell'intervallo specificato.
- *Scenari Alternativi: *
    - Visualizzazione dell'errore invalidArguments (@uc21).

=== UC 14 - Visualizzazione della media in base al valore di X<uc14>

- *Descrizione: * L'utente può visualizzare il piano che identifica la media dei valori appartenenti all'asse X selezionato.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico è generato e contiene un set completo di dati.
- *Postcondizioni: * Viene visualizzato il piano che identifica la media dei valori appartenenti all'asse X selezionato.
- *Scenario Principale: *
    + L'utente seleziona un valore dell'asse X.
    + L'utente applica il filtro.
    + L'applicazione genera un piano che identifica la media dei valori appartenenti al valore dell'asse X selezionato.

=== UC 15 - Visualizzazione della media in base al valore di Z<uc15>

- *Descrizione: * L'utente può visualizzare il piano che identifica la media dei valori appartenenti all'asse Z selezionato.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico è generato e contiene un set completo di dati.
- *Postcondizioni: * Viene visualizzato il piano che identifica la media dei valori appartenenti all'asse Z selezionato.
- *Scenario Principale: *
    + L'utente seleziona un valore dell'asse Z.
    + L'utente applica il filtro.
    + L'applicazione genera un piano che identifica la media dei valori appartenenti al valore dell'asse Z selezionato.

=== UC 16 - Visualizzazione degli N valori maggiori<uc16>

- *Descrizione: * L'utente può visualizzare all'interno del grafico gli N dati con valore più alto.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico è generato e contiene un set completo di dati.
- *Postcondizioni: * Vengono visualizzati i soli N dati con valore più alto.
- *Scenario Principale: *
    + L'utente, tramite un bottone specifico, applica il filtro.
    + L'applicazione opacizza tutti i valori che non fanno parte degli N elementi con valore più alto.

=== UC 17 - Visualizzazione degli N valori minori<uc17>

- *Descrizione: * L'utente può visualizzare all'interno del grafico gli N dati con valore più basso.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico è generato e contiene un set completo di dati.
- *Postcondizioni: * Vengono visualizzati i soli N dati con valore più basso.
- *Scenario Principale: *
    + L'utente, tramite un bottone specifico, applica il filtro.
    +  L'applicazione opacizza tutti i valori che non fanno parte degli N elementi con valore più basso.

=== UC 18 - Reset dei filtri applicati alla visualizzazione dei dati<uc18>

- *Descrizione: * L'utente deve essere in grado di eliminare tutti i filtri applicati al grafico, riportandolo allo stato di default.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico è generato, contiene un set completo di dati a cui sono stati applicati dei filtri.
- *Postcondizioni: * La visualizzazione del grafico ritorna ad essere quella di default, senza alcun filtro applicato.
- *Scenario Principale: *
    + L'utente, tramite un bottone specifico, reimposta le impostazioni di default.
    + L'applicazione visualizza il grafico di partenza, senza alcun filtro applicato.   

=== UC 19 - Esportazione di un grafico<uc19>

- *Descrizione: * L'utente deve essere in grado di esportare tutte le informazioni relative ad un grafico a cui si sta lavorando, ovvero l'insieme di dati e i filtri relativi. 
- *Attore: * Utente finale
- *Precondizioni: * Il grafico è generato, contiene un set completo di dati a cui possono essere stati applicati dei filtri.
- *Postcondizioni: * Tutte le informazioni del grafico vengono salvate in un file .csv.
- *Scenario Principale: *
    + L'utente, tramite un bottone specifico, decide di esportare il grafico.
    + L'applicazione salva tutte le informazioni necessarie in un file .csv dedicato.

=== UC 20 - Creazione di un'istantanea del grafico<uc20>

- *Descrizione: * L'utente deve essere in grado di effettuare uno "screenshot" del grafico.
- *Attore: * Utente finale
- *Precondizioni: * Il grafico è generato e contiene un set completo di dati.
- *Postcondizioni: * Viene salvata un'immagine istantanea del grafico.
- *Scenario Principale: *
    + L'utente, tramite un bottone specifico, decide di effettuare un'istantanea del grafico.
    + L'applicazione crea un'immagine con l'istantanea nel grafico e la salva.
    
=== UC 21 - Visualizzazione errore invalidArguments <uc21>

- *Descrizione: * L'utente ha inserito dei dati all'interno di un input che non sono conformi alle aspettative e viene avvertito graficamente dell'errore.
- *Attore: * Utente finale
- *Precondizioni: * L'utente ha inserito dei dati in un input che non sono conformi alle aspettative.
- *Postcondizioni: * 
  - L'utente viene avvisato graficamente dell'errore nella compilazione dell'input.
- *Scenario Principale: *
    + L'utente inserisce dei dati all'interno del campo d'inserimento.
    + L'utente viene avvisato graficamente dell'errore nella compilazione dell'input.

=== UC 22 - Visualizzazione errore tooMuchData <uc22>

- *Descrizione: * L'utente viene avvisato graficamente che ha provato a caricare dei dati da una fonte esterna (es. file .csv) e il numero di dati è maggiore della soglia massima supportata.
- *Attore: * Utente finale
- *Precondizioni: * La pagina è stata caricata completamente ed è pronta all'uso.
- *Postcondizioni: * 
  - L'utente viene avvisato del fatto che la quantità di dati ricevuti è maggiore della soglia massima supportata.
- *Scenario Principale: *
    + L'utente decide l'input dei dati (file, database, api, ecc...).
    + L'utente cerca di caricare i dati.
    + L'utente viene avvisato che il numero di dati ricevuti supera la soglia massima supportata e che quindi i dati non sono stati caricati.

=== UC 23 - Visualizzazione errore invalidCsv <uc23>

- *Descrizione: * L'utente viene avvisato graficamente che ha provato a caricare dei dati da un file .csv ma la formattazione interna al file non è corretta.
- *Attore: * Utente finale
- *Precondizioni: * La pagina è stata caricata completamente ed è pronta all'uso.
- *Postcondizioni: * 
  - L'utente viene avvisato dell'errore di caricamento dei dati, in quanto il file non è formattato correttamente.
- *Scenario Principale: *
    + L'utente decide l'input dei dati (file csv).
    + L'utente cerca di caricare i dati.
    + L'utente viene avvisato che il file ha una formattazione non corretta e che i dati non sono stati caricati.

=== UC 24 - Visualizzazione errore apiTimeout <uc24>

- *Descrizione: * L'utente viene avvisato graficamente che ha provato a caricare dei dati da una #glossario("API") che però non ha risposto alla richiesta entro un tempo limite.
- *Precondizioni: * L'utente ha inserito l'#glossario("API") da cui recuperare i dati e ne ha richiesto l'invio.
- *Postcondizioni: * 
  - L'utente viene avvisato del fatto che l'endpoint fornito non ha risposto entro un tempo limite di timeout.
- *Scenario Principale: *
    + L'utente decide l'input dei dati (#glossario("API")).
    + L'utente preme il bottone per caricare i dati.
    + L'utente viene avvisato graficamente che non è stata fornita alcuna riposta entro un tempo limite di timeout.

=== UC 25 - Visualizzazione errore emptyField <uc25>

- *Descrizione: * L'utente viene avvisato graficamente che non ha inserito dei dati all'interno di un input che non può essere vuoto.
- *Attore: * Utente finale
- *Precondizioni: * L'utente ha cercato di lasciare un input vuoto.
- *Postcondizioni: * 
  - L'utente viene avvisato graficamente dell'errore nella compilazione dell'input.
- *Scenario Principale: *
    + L'utente lascia un input vuoto.
    + L'utente viene avvisato graficamente dell'errore nella compilazione dell'input.

=== UC 26 - Visualizzazione errore networkError <uc26>

- *Descrizione: * L'utente viene avvisato graficamente che ha provato a caricare dei dati da un #glossario("DB") che però non ha risposto per motivi di rete.
- *Precondizioni: * L'utente ha inserito il #glossario("DB") da cui recuperare i dati e ne ha richiesto l'invio.
- *Postcondizioni: * 
  - L'utente viene avvisato del fatto che il #glossario("DB") fornito non ha risposto entro un tempo limite di timeout.
- *Scenario Principale: *
    + L'utente decide l'input dei dati (#glossario("DB")).
    + L'utente preme il bottone per caricare i dati.
    + L'utente viene avvisato graficamente che non è stata fornita alcuna riposta entro un tempo limite di timeout.

    
= Requisiti
== Identificazione 
Un #glossario("requisito") possiede 2 distinte caratteristiche:
- *Tipologia* $arrow.r$ indica il tipo di requisito, ovvero:
  + Funzionale
  + Qualità
  + Vincolo
- *Classificazione* $arrow.r$ indica, secondo tre livelli, la categoria del requisito in base all'importanza.  \ L'ordine è decrescente in base all'importanza del requisito:
  + Obbligatorio
  + Desiderabile
  + Opzionale   

Ogni #glossario("requisito") viene quindi identificato da un #glossario("codice univoco") strutturato come segue:
#align(center)[*Tipologia.Classificazione.NumProgressivo*] \
Dove _Tipologia_ e _Classificazione_ fanno riferimento a quanto descritto sopra. _NumProgressivo_ è un intero che aumenta con ogni requisito della medesima classe.

== Requisiti funzionali
#align(center)[
  #table(
  columns: (auto, auto, auto, auto),
  align: (col, row) => (center, center, center, center,).at(col),
  inset: 6pt,
  table.header([*Codice*], [*Riferimento*], [*Descrizione*], [*Classificazione*]),
  [F.1.1], [@uc1 \ #glossario("UC")1], [L'utente può visualizzare i dati in un grafico #glossario("3D") interattivo con barre verticali. ], [1 - Obbligatorio],
  [F.1.2], [@uc2 \ #glossario("UC")2], [L'utente deve avere la possibilità di inserire dei dati da poter visualizzare nel grafico ], [1 - Obbligatorio],
  [F.3.1], [@uc2.1 \ #glossario("UC")2.1], [L'utente inserisce manualmente i dati in una tabella tramite l'interfaccia web per generare il grafico], [3 - Opzionale],
  [F.3.2], [@uc2.1.1 \ #glossario("UC")2.1.1], [L'utente desidera caricare i dati manualmente e deve essere in grado di inserire il valore dell'asse x], [3 - Opzionale],
  [F.3.3], [@uc2.1.2 \ #glossario("UC")2.1.2], [L'utente desidera caricare i dati manualmente e deve essere in grado di inserire il valore dell'asse y], [3 - Opzionale],
  [F.3.4], [@uc2.1.3 \ #glossario("UC")2.1.3], [L'utente desidera caricare i dati manualmente e deve essere in grado di inserire il valore dell'asse z], [3 - Opzionale],
  [F.1.3], [@uc2.2 \ #glossario("UC")2.2], [L'utente inserisce automaticamente i dati tramite l'interfaccia web per generare il grafico e seleziona una #glossario("API") come metodo di caricamento], [1 - Obbligatorio],
  [F.1.4], [@uc2.3 \ #glossario("UC")2.3], [L'utente inserisce automaticamente i dati tramite l'interfaccia web per generare il grafico e seleziona un file #glossario("SQL") come metodo di caricamento], [1 - Obbligatorio],
  [F.1.5], [@uc2.4 \ #glossario("UC")2.4], [L'utente inserisce automaticamente i dati tramite l'interfaccia web per generare il grafico e seleziona un file .csv come metodo di caricamento], [1 - Obbligatorio],
  [F.1.6], [@uc3 \ #glossario("UC")3], [L'utente, mediante spostamento del mouse all'interno del grafico, può ruotare la visualizzazione], [1 - Obbligatorio],
  [F.1.7], [@uc4 \ #glossario("UC")4], [L'utente può muoversi nel grafico come se fosse in un ambiente 2d, spostandosi solo orizzontalmente], [1 - Obbligatorio],
  [F.1.8], [@uc5 \ #glossario("UC")5], [L'utente può muoversi nel grafico come se fosse in un ambiente 2d, spostandosi solo verticalmente], [1 - Obbligatorio],
  [F.1.9], [@uc6 \ #glossario("UC")6], [L'utente, attraverso le gesture del mouse (touchpad/trackpad o rotella) deve essere in grado di ingrandire o ridurre liberamente la visualizzazione], [1 - Obbligatorio],
  [F.1.10], [@uc7 \ #glossario("UC")7], [L'utente, attraverso l'apposito bottone, deve essere in grado di resettare la visualizzazione del grafico a quella di default renderizzata dall'applicativo], [1 - Obbligatorio],
  [F.1.11], [@uc8 \ #glossario("UC")8], [L'utente posiziona il cursore sopra una barra del grafico e visualizza le informazioni di quella barra], [1 - Obbligatorio],
  [F.1.12], [@uc9 \ #glossario("UC")9], [L'utente preme sopra ad una barra, accede ad ulteriori funzionalità scegliendo tra quelle proposte.], [1 - Obbligatorio],
  [F.1.13], [@uc9.1 \ #glossario("UC")9.1], [L'utente preme sopra ad una barra e vengono visualizzate le informazioni della barra], [1 - Obbligatorio],
  [F.1.14], [@uc9.2 \ #glossario("UC")9.2], [L'utente preme sopra ad una barra e deve avere la possibilità di modificarne l'opacizzazione], [1 - Obbligatorio],
  [F.1.15], [@uc9.3 \ #glossario("UC")9.3], [L'utente preme sopra ad una barra e deve avere la possibilità di opacizzare tutti i dati che hanno valore minore del valore della barra selezionata], [1 - Obbligatorio],
  [F.1.16], [@uc9.4 \ #glossario("UC")9.4], [L'utente preme sopra ad una barra e deve avere la possibilità di opacizzare tutti gli altri dati che hanno valore maggiore del valore della barra selezionata], [1 - Obbligatorio],
  [F.1.17], [@uc9.5 \ #glossario("UC")9.5], [L'utente preme sopra ad una barra e deve avere la possibilità reimpostare i filtri di default (sia della barra selezionata che delle barre affette dai cambiamenti applicati attraverso la barra specifica)], [1 - Obbligatorio],
  [F.1.18], [@uc10 \ #glossario("UC")10], [L'utente attiva o disattiva la visualizzazione di un piano parallelo alla base del grafico, rappresentante il valore medio globale], [1 - Obbligatorio],
  [F.1.19], [@uc11 \ #glossario("UC")11], [L'utente può visualizzare i soli dati che sono maggiori della media globale], [1 - Obbligatorio],
  [F.1.20], [@uc12 \ #glossario("UC")12], [L'utente può visualizzare i soli dati che sono minori della media globale], [1 - Obbligatorio],
  [F.1.21], [@uc13 \ #glossario("UC")13], [L'utente può visualizzare i soli dati che sono contenuti all'interno di un intervallo di valori(che può essere aperto o chiuso)], [1 - Obbligatorio],
  [F.1.22], [@uc14 \ #glossario("UC")14], [L'utente può visualizzare il piano che identifica la media dei valori appartenenti all'asse X selezionato], [1 - Obbligatorio],
  [F.1.23], [@uc15 \ #glossario("UC")15], [L'utente può visualizzare il piano che identifica la media dei valori appartenenti all'asse Z selezionato], [1 - Obbligatorio],
  [F.1.24], [@uc16 \ #glossario("UC")16], [L'utente può visualizzare all'interno del grafico gli N dati con valore più alto], [1 - Obbligatorio],
  [F.1.25], [@uc17 \ #glossario("UC")17], [L'utente può visualizzare all'interno del grafico gli N dati con valore più basso], [1 - Obbligatorio],
  [F.1.26], [@uc18 \ #glossario("UC")18], [L'utente deve essere in grado di eliminare tutti i filtri applicati al grafico, riportandolo allo stato di default], [1 - Obbligatorio],
  [F.2.1], [@uc19 \ #glossario("UC")19], [L'utente deve essere in grado di esportare tutte le informazioni relative ad un grafico a cui si sta lavorando, ovvero l'insieme di dati e i filtri relativi ], [2 - Desiderabile],
  [F.2.2], [@uc20 \ #glossario("UC")20], [L'utente deve essere in grado di effettuare uno "screenshot" del grafico], [2 - Desiderabile],
  [F.1.27], [@uc21 \ #glossario("UC")21], [L'utente ha inserito dei dati all'interno di un input che non sono conformi alle aspettative e viene avvertito graficamente dell'errore], [1 - Obbligatorio],
  [F.1.28], [@uc22 \ #glossario("UC")22], [L'utente viene avvisato graficamente che ha provato a caricare dei dati da una fonte esterna (es. file .csv) e il numero di dati è maggiore della soglia massima supportata], [1 - Obbligatorio],
  [F.1.29], [@uc23 \ #glossario("UC")23], [L'utente viene avvisato graficamente che ha provato a caricare dei dati da un file .csv ma la formattazione interna al file non è corretta], [1 - Obbligatorio],
  [F.1.30], [@uc24 \ #glossario("UC")24], [L'utente viene avvisato graficamente che ha provato a caricare dei dati da una #glossario("API") che però non ha risposto alla richiesta entro un tempo limite], [1 - Obbligatorio],
  [F.1.31], [@uc25 \ #glossario("UC")25], [L'utente viene avvisato graficamente che non ha inserito dei dati all'interno di un input che non può essere vuoto], [1 - Obbligatorio],
  [F.1.32], [@uc26 \ #glossario("UC")26], [L'utente viene avvisato graficamente che non è stato possibile connettersi al database], [1 - Obbligatorio],
  )
    <tab:reqFunzionali>
]

#pb()

=== Requisiti qualitativi
#align(center)[
  #table(
  columns: (auto, auto, auto),
  align: (col, row) => (center, center, center,).at(col),
  inset: 6pt,
  table.header([*Codice*], [*Descrizione*], [*Classificazione*]),
    [Q.1.1],[Devono essere consegnati i diagrammi UML relativi agli use cases del progetto],[1 - Obbligatorio],
    [Q.1.2],[Deve essere consegnata la lista dei bug che sono stati risolti durante le fasi di sviluppo],[1 - Obbligatorio],
    [Q.1.3],[Deve essere consegnato lo schema del design relativo alla base di dati (se utilizzata) o alle API richiamate (se utilizzate) ],[1 - Obbligatorio],
    [Q.1.4],[Deve essere consegnato tutto il codice prodotto in formato sorgente utilizzando sistemi di versionamento del codice (Github) ],[1 - Obbligatorio],
    [Q.1.5],[Deve essere consegnata la documentazione relativa ai casi di test gestiti e le relative reportistiche ],[1 - Obbligatorio],
    [Q.1.6],[Per l'intero periodo necessario per portare a termine il progetto è doveroso seguire le regole imposte nel documento _Norme di Progetto_],[1 - Obbligatorio],
  )
    <tab:reqQualitativi>
]

=== Requisiti di vincolo
#align(center)[
  #table(
  columns: (auto, auto, auto),
  align: (col, row) => (center, center, center,).at(col),
  inset: 6pt,
  table.header([*Codice*], [*Descrizione*], [*Classificazione*]),
  [V.1.1], [L'applicazione deve essere in grado di supportare una quantità massima di dati pari a 1000 dati ], [1 - Obbligatorio],
  )
    <tab:reqVincolo>
]
#pb()


== Tracciamento dei requisiti
=== Codice - Fonte
Questa tabella mette in relazione il codice di un caso d'uso alla sua fonte, ovvero descrive la "provenienza" di un caso d'uso che può essere dalla descrizione del capitolato, da una decisione interna al gruppo, da una decisione approvata dall'azienda.
#align(center)[
  #table(
  columns: (auto, auto),
  align: (col, row) => (center, center,).at(col),
  inset: 6pt,
  table.header([*Codice*], [*Fonte*],),
  [F.1.1], [Capitolato, UC1],
  [F.1.2], [Capitolato, UC2],
  [F.3.1], [Capitolato, UC2.1 ],
  [F.3.2], [Decisione interna, UC2.1.1],
  [F.3.3], [Decisione interna, UC2.1.2],
  [F.3.4], [Decisione interna, UC2.1.3],
  [F.1.3], [Capitolato, UC2.2],
  [F.1.4], [Capitolato, UC2.3],
  [F.1.5], [Decisione interna, UC2.4],
  [F.1.6], [Capitolato, UC3],
  [F.1.7], [Capitolato, UC4],
  [F.1.8], [Capitolato, UC5],
  [F.1.9], [Capitolato, UC6],
  [F.1.10], [Capitolato, UC7],
  [F.1.11], [Capitolato, UC8],
  [F.1.12], [Decisione interna, UC9],
  [F.1.13], [Decisione interna, UC9.1],
  [F.1.14], [Capitolato, UC9.2],
  [F.1.15], [Capitolato, UC9.3],
  [F.1.16], [Capitolato, UC9.4],
  [F.1.17], [Decisione interna, UC9.5],
  [F.1.18], [Capitolato, UC10],
  [F.1.19], [Capitolato, UC11],
  [F.1.20], [Capitolato, UC12],
  [F.1.21], [Decisione interna, UC13],
  [F.1.22], [Capitolato, UC14],
  [F.1.23], [Capitolato, UC15],
  [F.1.24], [Capitolato, UC16],
  [F.1.25], [Capitolato, UC17],
  [F.1.26], [Decisione interna, UC18],
  [F.1.27], [Decisione interna, UC19, UC2.1],
  [F.2.1], [Decisione interna, UC20, UC2.1],
  [F.2.2], [Decisione interna, UC21],
  [F.1.28], [Decisione interna, UC22, UC2.2, UC2.4],
  [F.1.29], [Decisione interna, UC23, UC2.4],
  [F.1.30], [Decisione interna, UC24, UC2.2],
  [F.1.31], [Decisione interna, UC25, UC2.1],
  [Q.1.1], [Capitolato],
  [Q.1.2], [Capitolato],
  [Q.1.3], [Capitolato],
  [Q.1.4], [Capitolato],
  [Q.1.5], [Capitolato],
  [Q.1.6], [Capitolato],
  [V.1.1], [Decisione interna/esterna],
  )
    <tab:codicefonte>
]


=== Fonte - Codice
Questa tabella mette in relazione la fonte con tutti i casi d'uso derivanti da quella fonte. La tabella "Codice - Fonte" insieme a questa tabella "Fonte - Codice" permette di ricercare i casi d'uso in maniera più precisa e veloce, mantenendo un ordine che garantisce una lettura del documento ottimale
#align(center)[
  #table(
  columns: (auto, auto),
  align: (col, row) => (center, center,).at(col),
  inset: 6pt,
  table.header([*Fonte*], [*Codice*],),
  [Capitolato], [F.1.1,\ F.1.2,\ F.3.1,\ F.1.3,\ F.1.4,\ F.1.6,\ F.1.7,\ F.1.8,\ F.1.9,\ F.1.10,\ F.1.11,\ F.1.14,\ F.1.15,\ F.1.16,\ F.1.18,\ F.1.19,\ F.1.20,\ F.1.22,\ F.1.23,\ F.1.24,\ F.1.25,\ Q.1.1,\ Q.1.2,\ Q.1.3,\ Q.1.4,\ Q.1.5,\ Q.1.6 ],
  [Decisione interna], [F.3.2,\ F.3.3,\ F.3.4,\ F.1.5,\ F.1.12,\ F.1.13,\ F.1.17,\ F.1.21,\ F.1.26,\ F.2.1,\ F.2.2,\ F.1.27,\ F.1.28,\ F.1.29,\ F.1.30,\ F.1.31,\ V.1.1],
  [UC1],[F.1.1],
  [UC2\ e sotto requisiti],[F.1.2, F.3.1, F.3.2, F.3.3, F.3.4, F.1.3, F.1.4, F.1.5 \ F.1.27, F.1.31, F.1.28, F.1.30, F.1.29 ],
  [UC3],[F.1.6],
  [UC4],[F.1.7],
  [UC5],[F.1.8],
  [UC6],[F.1.9],
  [UC7],[F.1.10],
  [UC8],[F.1.11],
  [UC9\ e sotto requisiti],[F.1.12, F.1.13, F.1.14, F.1.15, F.1.16, F.1.17],
  [UC10],[F.1.18],
  [UC11],[F.1.19],
  [UC12],[F.1.20],
  [UC13],[F.1.21],
  [UC14],[F.1.22],
  [UC15],[F.1.23],
  [UC16],[F.1.24],
  [UC17],[F.1.25],
  [UC18],[F.1.26],
  [UC19],[F.2.1],
  [UC20],[F.2.2],
  [UC21],[F.1.27],
  [UC22],[F.1.28],
  [UC23],[F.1.29],
  [UC24],[F.1.30],
  [UC25],[F.1.31],
  )
    <tab:fontecodice>
]

=== Riepilogo tabelle
#align(center)[
  #table(
  columns: (auto, auto, auto, auto),
  align: (col, row) => (center, center, center, center).at(col),
  inset: 6pt,
  table.header([*Tipologia*], [*Obbligatori*], [*Desiderabili*], [*Opzionali*]),
  [Funzionale],[31],[2],[3],
  [Qualità],[6],[0],[0],
  [Vincolo],[1],[0],[0],
  )
    <tab:riepilogo>
]