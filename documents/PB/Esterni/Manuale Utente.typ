#import "/templates/documento.typ": *
#import "/lib/plotst.typ": *

#show: conf.with(
  title: "Manuale Utente",
  subtitle: "",
  author: "Il team",
  show_outline: true,
  outline_depth: 3,
  changelog: (
    "0.2.0", "17-04-2025",  "Sistemazione e continuazione", (p.lucato,p.pesenato), (""),
    "0.1.0", "10-04-2025",  "Inizio stesura documento", p.salvo, (p.lucato, p.pesenato),
  ),
)

#set heading(numbering: "1.1)")

= Introduzione
== Scopo del documento
Il documento di #glossario("manuale utente") è un elemento fondamentale per spiegare ai committenti le modalità d'uso e di installazione del sistema informatico che il gruppo Archi7echs ha dovuto sviluppare per adempiere alle richieste effettuate dal committente.\
All'interno del documento verranno illustrate le istruzioni per avviare il back-end e il front-end e il funzionamento dell'applicativo per dimostrare le funzionalità sviluppate.

== Glossario
All'#glossario("interno") del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html", text(blue)[_glossario_]). Tutte le parole consultabili nel glossario saranno identificate da una "G", di colore blu, in pedice. Cliccando la parola, si aprirà il glossario nel sito web.

== Riferimenti
=== Riferimenti informativi
- Riferimento al #glossario("capitolato") 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf", text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]) - _Ultimo accesso al documento 22/11/2024_
- Riferimento alle slide IS: *_Regolamento del #glossario("progetto") didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf", text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]) -  _Ultimo accesso al documento 12/12/2024_
- Riferimento al glossario (v 2.0.0): #link("https://archi7echs-team.github.io/glossario.html", text(blue)[https://archi7echs-team.github.io/glossario.html])
- Norme di Progetto (v 2.0.0)

#pb()

= Download del repository relativo al codice sorgente <download_repo>
Per scaricare il codice sorgente relativo al progetto si puo scaricare la cartella zip presente nel seguente repository al link: //INSERIRE LINK RELEASE 
\
Alternativamente, se si ha installato il sistema di versionamento Git si puo effettuare la clonazione del repository digitando il comando: _git clone https://github.com/Archi7echs-Team/MVP.git _

= Spiegazione file codice sorgente
Se il repository non è stato clonato o scaricato si segua la sezione _Download del repository relativo al codice sorgente_ (@download_repo) per scaricare il codice sorgente.\
== Spiegazione dei principali file back-end presenti nei sorgenti
I sorgenti relativi alla parte del back-end si trovano dentro la cartella _backend_ della repository clonata o scaricata. 
=== docker-compose.yml
Il file _docker-compose.yml_ è il file utilizzato da Docker Compose, usato per definire e gestire i servizi di un'applicazione Docker. In esso sono specificati i servizi che compongono la parte back-end dell'applicazione:
- Servizio _db_: avvia il database postgres e lo inizializza
- Servizio _test_: verifica che l'applicazione back-end dia esito positivo su tutti i test
- Servizio _app_: effettua la build dell'applicazione back-end e configura il collegamento tra database e il back-end 
- Servizio _frontend_: effettua la build dell'applicazione front-end 
=== Dockerfile
Il file _Dockerfile_ è utilizzato dal servizio _app_ per effettuare la build dell'applicazione back-end
=== pom.xml
Il file _pom.xml_ è il file utilizzato durante la compilazione tramite Apache Maven per definire come costruire il progetto, quali dipendenze sono presenti e quali plugin usare.
== Spiegazione dei principali file front-end presenti nei sorgenti
I sorgenti relativi alla parte del front-end si trovano dentro la cartella _app_ della repository clonata o scaricata.
=== package.json
Il file _package.json_ è il file che definisce le dipendenze, i comandi e le informazioni del progetto JavaScript.
=== svelte.config.js
Il file _svelte.config.js_ è il file di configurazione di un progetto SvelteKit. Dice ad esso come compilare, pre-processare e distribuire il progetto.
=== vite.config.ts
Il file _vite.config.ts_ è il file di configurazione di Vite che specifica quali strumenti usare, come comportarsi durante la fase di build e che test eseguire.
=== playwright.config.ts
Il file _playwright.config.ts_ è il file di configurazione di playwright che specifica quali test effettuare e su quali browser.

#pb()

= Eseguire l'applicazione
== Requisiti tecnici necessari per l'avvio dell'applicazione
Il dispositivo deve aver installato Docker e Docker Compose o Docker Desktop per la gestione di applicazioni Docker multi-container. Di seguito la guida ufficiale per l'installazione: #link("https://docs.docker.com/engine/install")[#text(blue)[https://docs.docker.com/engine/install]]
== Istruzioni per l'avvio dell'applicazione <istruzioni_avvio>
Se si è in possesso del codice sorgente dell'applicazione e i requisiti tecnici sono stati soddisfatti si può procedere all'avvio dell'applicazione tramite il comando: ```bash docker compose up --build ``` in un terminale localizzato nella root directory del codice sorgente.\
== Istruzioni per lo spegnimento dell'applicazione
Se si è avviata l'applicazione seguendo la sezione _Istruzioni per l'avvio dell'applicazione_  (@istruzioni_avvio), si potrà terminare l'applicazione usando il comando: ```bash docker compose down -v ```  in un terminale localizzato nella root directory del codice sorgente.\

#pb()
= Guida all'uso di 3Dataviz
Per accedere all'applicazione 3Dataviz bisogna recarsi al link _localhost:5173_ dopo aver svolto tutte le operazioni spiegate nella sezione _Avvio dell'applicazione_ (@istruzioni_avvio)
== Schermata principale
All'avvio del sito ci si troverà davanti un grafico di default utile per interagire direttamente con l'applicazione per usare le funzionalità senza dover effettivamente caricare dei dati. Inoltre si potranno notare il pannello delle impostazioni in alto a destra e la gizmo in basso a sinistra. In questa schermata si possono effettuare tutte le operazioni necessarie per la navigazione 3D usando i tasti del mouse, rotation con il tasto sinistro, pan con il tasto destro e zoom con la ruota.
#figure(
  image("/img/mu/avvio.jpg", width: 90%),
  caption: [Schermata principale],
) <imgAVVIO>
== Impostazioni
In alto a destra nella schermata principale si trova il pannello delle impostazioni contente vari sotto-pannelli. Tramite questo pannello si potranno effettuare la operazioni che coinvolgono tutto il grafico.
#figure(
  image("/img/mu/settings.jpg", width: 90%),
  caption: [Pannello delle impostazioni e sotto-pannelli],
) <imgSETTINGS>

=== Caricamento fonte dati
Nel sotto-pannello _Source_ è possibile scegliere la modalità con cui effettuare il caricamento dei dati:
- *External API*: questa modalità caricherà i dati dal API esterna Weather Forecast al click sul bottone _Select API_
- *DB1*: questa modalità caricherà i dati tramite chiamata al database al click sul bottone _Select DB_
- *CSV*: per usufruire di questa modalità bisognerà prima caricare un file tramite drag-and-drop o cliccando e poi confermare il file scelto tramite il bottone _Select CVS_ oppure rimuovere il file caricato tramite il bottone _Delete_ che apparirà solo una volta caricato un file.
#figure(
  image("/img/mu/source.jpg", width: 90%),
  caption: [Sotto-pannello Source],
) <imgSOURCE>
=== Impostazioni per la camera
Nel sotto-pannello _Camera_ è possibile:
- *Reset*: ritornare alla visualizzazione di default tramite il bottone _Reset position_ 
- *Zoom In*: aumentare il livello di zoom tramite il bottone _+_
- *Zoom Out*: ridurre il livello di zoom tramite il bottone _-_
#figure(
  image("/img/mu/camera.jpg", width: 90%),
  caption: [Sotto-pannello Camera],
) <imgCAMERA>
=== Impostazioni per il filtro
Nel sotto-pannello _Filter_ è possibile:
- *Visualization interval*: scegliere l'intervallo dei valori da visualizzare (i valori non compresi in questo intervallo produrranno delle colonne semi-trasparenti nella visualizzazione 3D)
- *Show average plane*: attivare questa checkbox produrrà un piano che indica il valore medio di tutti i valori del grafico, mentre disattivare questa checkbox rimuoverà il piano
- *Values lower than the global average*: tramite il bottone _Lower than average_ tutti i valori minori del valore medio produrranno colonne colorate mentre i valori maggiori verranno mostrati come colonne semi-trasparenti
- *Values higher than the global average*: tramite il bottone _Higher than average_ tutti i valori maggior del valore medio produrranno colonne colorate mentre i valori minori verranno mostrati come colonne semi-trasparenti
- *Hide the N highest values*: tramite questa selezione si decide quanti valori produrre come colonne semi-trasparenti partendo dal valore più alto
- *Hide the N lowest values*: tramite questa selezione si decide quanti valori produrre come colonne semi-trasparenti partendo dal valore più basso
- *Visualization reset*: tramite il bottone _Reset_ tutti i filtri applicati ai valori vengono reimpostati al loro valore di default
#figure(
  image("/img/mu/filter.jpg", width: 90%),
  caption: [Sotto-pannello Filter],
) <imgFILTER>
=== Impostazioni per i colori
Nel sotto-pannello _Color_ è possibile decidere in che modo le colonne verranno colorate tramite i campi del menu a tendina:
- *rows*: ogni riga nella matrice avrà un colore diverso
- *columns*: ogni colonna nella matrice avrà un colore diverso
- *values*: ogni valore avrà un colore diverso partendo dal blu per i valori più bassi arrivando al rosso per i valori più alti
#figure(
  image("/img/mu/color.jpg", width: 90%),
  caption: [Sotto-pannello Color],
) <imgCOLOR>
=== Esportazione
Nel sotto-pannello _Export_ è possibile esportare la vista corrente come immagine tramite il bottone _Screenshot_
#figure(
  image("/img/mu/export.jpg", width: 90%),
  caption: [Sotto-pannello Export],
) <imgEXPORT>
== Operazioni su selezione
A seguito di un click su una colonna nella schermata principale si trova il pannello della selezione contente vari sotto-pannelli. Tramite questo si potranno effettuare la operazioni che coinvolgono tutto il grafico basandosi sulle colonne selezionate o sull'ultima colonna selezionata. Per accedere ai sotto-panelli bisognerà cliccare sull'icona a destra del nome che permette di aprire e chiudere il menù a tendina. La chiusura di questo panello si può effettuare tramite il bottone _Close_ oppure cliccando ancora una volta su tutte le colonne selezionate.
#figure(
  image("/img/mu/selection.jpg", width: 90%),
  caption: [Pannello Selection info & filter],
) <imgSELECTION>
=== Informazioni sulla selezione
Nel sotto-pannello _Info_ è possibile visualizzare tutte le informazioni relative all'ultima colonna selezionata:
- *Row*: in che riga della matrice si trova 
- *Column*: in che colonna della matrice si trova
- *Height*: il suo valore
- *Avg X (Row)*: il valore medio dei valori nella riga della matrice
- *Avg Z (Coloum)*: il valore medio dei valori nella colonna della matrice
- *Avg Global*: il valore medio dei valori
#figure(
  image("/img/mu/info.jpg", width: 90%),
  caption: [Sotto-pannello Info],
) <imgINFO>
=== Filtri applicabili sulla selezione
Nel sotto-pannello _Filter_ è possibile effettuare operazioni sull'ultima colonna selezionata o su tutte quelle selezionate:
- *Only selected bars*: tramite il bottone _Display_ vengono rese semi-trasparenti tutte le colonne che non sono tra quelle selezionate
- *Values higher than the latest selected bar value*: tramite il bottone _Filter_ vengono rese semi-trasparenti tutte le colonne con un valore minore o uguale al valore dell'ultima colonna selezionata
- *Values lower than the latest selected bar value*: tramite il bottone _Filter_ vengono rese semi-trasparenti tutte le colonne con un valore maggiore o uguale al valore dell'ultima colonna selezionata
- *Filter reset*: tramite il bottone _Reset_ i filtri applicati e la selezione sono rimossi
- *Show average row plane*: attivare questa checkbox produrrà un piano che indica il valore medio di tutti i valori nella riga della matrice, mentre disattivare questa checkbox rimuoverà il piano
- *Show average column plane*: attivare questa checkbox produrrà un piano che indica il valore medio di tutti i valori nella colonna della matrice, mentre disattivare questa checkbox rimuoverà il piano
- *Selected bars opacity*: cambiando questo valore si andrà a modificare l'opacità delle barre selezionate fino al minimo di 10%
- *Reset selection*: tramite il bottone _Reset_ si rimuoverà la selezione sulle colonne selezionate rimuovendo quindi anche tutti i filtri applicati ad esse.
#figure(
  image("/img/mu/selectFilter.jpg", width: 90%),
  caption: [Sotto-pannello Filter],
) <imgSELECTIONFILTER>
== Gizmo
In basso a sinistra nella schermata principale troviamo il gizmo, spesso presente in ambienti 3D, utile per ruotare la camera in posizioni fisse.
#figure(
  image("/img/mu/gizmo.jpg", width: 30%),
  caption: [Gizmo],
) <imgGIZMO>

#pb();

= Riferimento uso API

== GET `/api/coordinates`

=== Descrizione

Questo endpoint permette di ottenere un set di dati di coordinate (x, y, z) salvati all'interno del database. Restituisce le etichette univoche per gli assi X e Z e una matrice bidimensionale contenente i valori Y corrispondenti a ciascuna combinazione di etichette X e Z, pronta per essere utilizzata in visualizzazioni come mappe di calore.

=== Parametri

- *`datasetType`* (_Stringa, Opzionale_):
  - *Scopo:* Permette di filtrare i dati e selezionare un specifico sottoinsieme di coordinate dal database.
  - *Valori Accettati:* `SMALL`, `MEDIUM`, `LARGE`.
  - *Default:* Se questo parametro viene omesso nella richiesta, il sistema utilizzerà automaticamente il valore `"LARGE"` per recuperare il set di dati predefinito.

=== Esempi di utilizzo

- *Richiesta per il dataset di default (LARGE)*
  ```http
  GET /api/coordinates
  ```

- *Richiesta per un dataset specifico (es. SMALL)*
  ```http
  GET /api/coordinates?datasetType=SMALL
  ```

== POST `/api/uploadCsv`

=== Descrizione

Questo endpoint permette di caricare un file CSV contenente dati di coordinate (x, y, z). Il file viene analizzato (parsato) dal server e, se valido, i dati vengono restituiti nel formato `MatrixData`, pronti per essere visualizzati come una matrice o una mappa di calore.

=== Formato richiesta
- *Metodo:* `POST`
- *Content-Type:* `multipart/form-data`
- *Corpo richiesta:* Deve includere una form-data chiamata `file` contenente il file CSV.

=== Formato del file CSV richiesto

Il file CSV deve seguire una struttura specifica per essere interpretato correttamente:

1.  *Cella A1 (Riga 1, Colonna 1):* Viene ignorata. Può essere vuota o contenere qualsiasi testo.
2.  *Prima Riga (da B1 in poi):* Contiene le etichette per l'asse X (es. `X Label 1`, `X Label 2`, ...).
3.  *Prima Colonna (da A2 in poi):* Contiene le etichette per l'asse Z (es. `Z Label 1`, `Z Label 2`, ...).
4.  *Celle Interne (da B2 in poi):* Contengono i valori numerici (Y) corrispondenti all'incrocio tra l'etichetta Z della riga e l'etichetta X della colonna.

*Esempio di struttura CSV:*
```csv
,X Label 1,X Label 2,X Label 3
Z Label 1,10.5,12.1,15.3
Z Label 2,9.8,11.5,14.2
Z Label 3,10.1,11.9,15.0```

=== Vincoli e validazioni

Il file CSV caricato deve rispettare i seguenti vincoli, altrimenti verrà restituito un errore:

- *Tipo di File*: Deve essere un file CSV valido (text/csv).
- *Dimensione Massima*: La dimensione del file non deve superare il limite di 10MB
- *Contenuto*:
  - Nessuna cella (tranne A1) può essere vuota.
  - I valori Y (nelle celle interne) devono essere numeri validi (interi o decimali).
  - Per ogni etichetta degli assi X e Z deve esserci un valore Y corrispondente.
  - Il numero di righe e colonne è limitato a 300.
  - Il numero totale di punti dati (Y values) è limitato a 1000.
- *Struttura*: Deve contenere almeno una riga di header X e una riga di dati Z/Y.
=== Risposta successo (HTTP 200 OK)

Se il file CSV è valido e rispetta tutti i vincoli, l'API risponde con uno stato HTTP 200 OK e un corpo JSON contenente l'oggetto MatrixData.
=== Risposta errore

In caso di problemi con il file caricato, l'API risponderà con uno stato HTTP di errore, tipicamente:

  - *HTTP 400 Bad Request*: Se il file non è un CSV valido, ha un formato errato, contiene celle vuote non permesse, valori non numerici, struttura inconsistente, o supera i limiti dimensionali (righe/colonne/punti dati). Il corpo della risposta contiene un messaggio di errore dettagliato.
  - *HTTP 413 Payload Too Large*: Se il file supera il limite massimo di dimensione (es. 10 MB).

=== Esempio di utilizzo
```bash
curl -X POST -F "file=@/percorso/del/file.csv" http://localhost:8080/api/uploadCsv
```
== GET /api/external/data
=== Descrizione

Questo endpoint recupera dati da una sorgente esterna preconfigurata in questo caso un servizio di previsioni meteo come Open-Meteo. Non richiede alcun parametro dall'utente. Il servizio backend contatta l'API esterna, ne interpreta la risposta (che si aspetta sia in formato JSON e segua una certa struttura, come quella di Open-Meteo con dati orari) e la trasforma nel formato standard `MatrixData` per la visualizzazione.

=== Parametri

Nessun parametro richiesto per questo endpoint. La sorgente dati e gli eventuali parametri per l'API esterna sono configurati nel backend.

=== Risposta successo (HTTP 200 OK)

Se la comunicazione con l'API esterna ha successo e la risposta viene interpretata correttamente, l'API risponde con uno stato `HTTP 200 OK` e un corpo JSON contenente l'oggetto `MatrixData`.

=== Risposta errore

Possono verificarsi diversi errori durante il tentativo di recuperare o processare i dati esterni. L'API risponderà tipicamente con uno stato HTTP di errore della serie 5xx, indicando un problema nel backend o nella comunicazione con il servizio esterno:

- HTTP 5xx (es. 500 Internal Server Error, 502 Bad Gateway, 504 Gateway Timeout):
  - Problemi di rete o impossibilità di raggiungere il servizio esterno configurato.
  - Timeout scaduto durante l'attesa della risposta dal servizio esterno (basato sulla configurazione external.api.timeout).
  - Il servizio esterno ha restituito un errore.
  - La risposta ricevuta dal servizio esterno non è nel formato atteso (es. non è JSON valido o manca la struttura dati richiesta come hourly).
  - La risposta ricevuta, seppur valida, contiene un numero di punti dati superiore al limite massimo configurato nel backend (nel nostro caso 1000).

=== Esempio di utilizzo
```bash
curl -X GET http://localhost:8080/api/external/data
```