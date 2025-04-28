#import "/templates/documento.typ": *
#import "/lib/plotst.typ": *

#show: conf.with(
  title: "Manuale Utente",
  subtitle: "",
  author: "Il team",
  show_outline: true,
  intern: false,
  outline_depth: 3,
  show_images_list: false,
  changelog: (
    "0.3.0", "28-04-2025",  "Sistemazione sezione \"Guida all'uso\"", (p.scandaletti), "",
    "0.2.0", "22-04-2025",  "Sistemazione e continuazione", (p.lucato,p.pesenato), (p.checchinato,p.pozzobon),
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
- Riferimento al #glossario("capitolato") 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf", text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]) - _Ultimo accesso al documento 22/04/2025_
- Riferimento alle slide IS: *_Regolamento del #glossario("progetto") didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf", text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]) -  _Ultimo accesso al documento 10/03/2025_
- Riferimento al glossario (v 2.0.0): #link("https://archi7echs-team.github.io/glossario.html", text(blue)[https://archi7echs-team.github.io/glossario.html])
- Riferimento alle Norme di Progetto (v 2.0.0): #link("https://archi7echs-team.github.io/documents/PB/Esterni/Analisi%20dei%20Requisiti_v2.0.0.pdf", text(blue)[https://archi7echs-team.github.io/documents/PB/Esterni/Analisi%20dei%20Requisiti_v2.0.0.pdf])

#pb()

= Requisiti

Per garantire il corretto funzionamento dell'applicativo sviluppato, è necessario che l'ambiente in cui viene eseguito soddisfi determinati requisiti tecnici, sia dal punto di vista hardware che software.

== Requisiti hardware

Nonostante l'applicazione sia eseguita tramite container Docker, e quindi indipendente dal sistema operativo ospitante, si raccomanda l’utilizzo di un sistema con le seguenti caratteristiche minime:

- *CPU*: Dual-core con frequenza ≥ 1.5 GHz
- *RAM*: Almeno 4 GB
- *Spazio su disco*: Minimo 10 GB di spazio libero

== Requisiti software

È necessario che il sistema sia dotato dei seguenti strumenti:

- *Docker Engine*: versione ≥ 20.10
- *Docker Compose*: versione ≥ 1.29 oppure 
- *Docker Desktop* in alternativa
- *Browser compatibili* (per l’interfaccia utente):
  - Google Chrome (v.89 o superiore)
  - Mozilla Firefox (v.86 o superiore)
  - Safari (v.14 o superiore)
  - Microsoft Edge (v.89 o superiore)
#pb()
= Ottenere il codice sorgente <download_repo>

Il codice sorgente dell’applicativo può essere ottenuto in due modi:

- Scaricando direttamente il file `.zip` dalla sezione *Release* del repository GitHub
- Clonando il repository tramite Git, se installato nel sistema: ```bash git clone https://github.com/Archi7echs-Team/MVP.git```


== Installazione tramite Release
Per installare l’applicativo tramite il file `.zip`, è necessario:
1. Recarsi al link della repo: #link("https://github.com/Archi7echs-Team/MVP", text(blue)[https://github.com/Archi7echs-Team/MVP])
2. Cliccare sulla sezione *Release* e scaricare l’ultima versione disponibile
#figure(
  image("/img/mu/repoPage.png", width: 110%),
  caption: [Pagina della repository in GitHub],
) <imgREPOPAGE>
#figure(
  image("/img/mu/downloadRelease.png", width: 110%),
  caption: [Pagina di GitHub per scaricare la release],
) <imgREPOPAGE>
3. Scaricare il file `.zip` e salvarlo in una cartella a scelta
4. Estrarre il file `.zip` in una cartella a scelta


= Configurazione e personalizzazione del sistema

Questa sezione è dedicata alla spiegazione delle operazioni necessarie per configurare il sistema in modo flessibile, definendo parametri personalizzati tramite il file `.env` e modificando eventuali impostazioni nel `docker-compose.yml`. Inoltre, si forniscono le istruzioni per la build manuale dei servizi e la gestione dell’avvio o arresto dell’applicativo.

== Creazione del file .env

Il file `.env` contiene le variabili d’ambiente utilizzate dai container per configurare in modo dinamico alcuni parametri. Alla prima esecuzione, è necessario creare questo file nella directory principale del progetto, accanto al file `docker-compose.yml`.

Un esempio base di contenuto potrebbe essere:

```env 
POSTGRES_USER=youruser
POSTGRES_PASSWORD=yourpassword
POSTGRES_DB=yourdb
SPRING_DATASOURCE_URL=jdbc:postgresql://db:5432/yourdb
SPRING_DATASOURCE_USERNAME=youruser
SPRING_DATASOURCE_PASSWORD=yourpassword
TESTCONTAINERS_HOST_OVERRIDE=host.docker.internal```
Tutte le variabili definite in questo file verranno automaticamente caricate e rese disponibili all’interno dei container definiti nel docker-compose.yml.

== Personalizzazione dei servizi

Il sistema è stato progettato per supportare una configurazione modulare. I servizi dichiarati nel file docker-compose.yml possono essere attivati o disattivati in base alle esigenze locali, tenendo conto delle dipendenze tra componenti.

=== Servizi principali

I seguenti servizi sono fondamentali per l'avvio del sistema completo:
- *db*: istanza PostgreSQL per la persistenza dei dati;
- *app*: backend sviluppato in Java con Spring Boot;
- *frontend*: interfaccia utente Svelte.

Questi tre servizi devono essere sempre inclusi, salvo configurazioni particolari.

=== Servizi opzionali

Altri servizi definiti nel docker-compose.yml (es. test) possono essere commentati o modificati. Si *raccomanda* però di controllare che non siano elencati come dipendenze (depends_on) in altri container attivi, per evitare errori di avvio.

== Build del sistema <build_sistema>

Durante lo sviluppo o dopo modifiche locali al codice, è possibile (e consigliabile) rigenerare le immagini Docker per assicurarsi che siano aggiornate.

Per forzare una ricostruzione completa dei servizi: ```bash docker compose build --no-cache```

In alternativa, la build può essere eseguita contestualmente all’avvio: ```bash docker compose up --build```

== Avvio del sistema

Con il file .env correttamente configurato e i file di composizione Docker pronti, è possibile avviare il sistema con: ```bash docker compose up -d --build```

_L'opzione -d avvia i container in background. In caso si desideri mantenere visibili i log, omettere -d._

== Spegnimento del sistema

Per arrestare l’intera infrastruttura, mantenendo però i volumi dati si deve eseguire il seguente comando: ```bash docker compose down```

Se si desidera rimuovere anche i volumi associati (ad esempio per un reset completo del database): ```bash docker compose down -v```. 
In questo caso, il database verrà ricreato alla successiva esecuzione del sistema, ma tutti i dati precedentemente memorizzati andranno persi.

== Ripristino completo del sistema

In caso si voglia effettuare un ripristino completo (ad esempio dopo modifiche di configurazione o problemi persistenti), eseguire:
```bash docker compose down -v --remove-orphans && docker compose up -d --build``` 

Questa sequenza rimuove container, volumi e container orfani, per poi rigenerare tutto da zero.

== Note sulla gestione delle variabili
Durante l’uso del file .env, è importante ricordare:
- Evitare duplicazioni di variabili tra .env e il docker-compose.yml: prevale quella definita nel file di composizione.
- I cambiamenti nel .env richiedono il riavvio dei container per essere effettivi
*IMPORTANTE*: la variabile _TESTCONTAINERS_HOST_OVERRIDE_ deve essere impostata a _host.docker.internal_ per garantire la corretta comunicazione tra i container e il sistema host *_SOLO PER WINDOWS E MACOS_*. In Linux, questa variabile non è necessaria e può essere omessa. 

#pb()

= Guida all'uso di 3Dataviz
Per accedere all'applicazione 3Dataviz bisogna recarsi al link _localhost:5173_ dopo aver svolto tutte le operazioni spiegate nella sezione di build e di avvio del sistema. (@build_sistema)

== Schermata principale
All'avvio del sito verrà caricato un grafico di default, utile per poter prendere confidenza con l'interfaccia utente dell'applicazione, senza dover effettuare un caricamento di dati. \ Si può osservare il pannello per le impostazioni e i filtri di visualizzazione nell'angolo in alto a destra, mentre, nell'angolo in basso a sinistra, si posiziona il gizmo (@gizmo). \ 
Per muoversi all'interno del grafico è possibile utilizzare i tasti del mouse, in particolare le seguenti operazioni verrano eseguite rispettivamente con: tenendo premuto il tasto sinistro e scorrendo per la _rotation_, tenendo premuto il tasto destro e scorrendo (o premendo _shift_ e contemporaneamente il tasto sinistro) per il _pan_ e la rotellina centrale (abitualmente dedicata alla funzione di scorrimento) per lo _zoom_.

#figure(
  image("/img/mu/avvio.jpg", width: 90%),
  caption: [Schermata principale],
) <imgAVVIO>

== Impostazioni
In alto a destra nella schermata principale si trova il pannello delle impostazioni (denominato "Settings") contente vari sotto-pannelli. Tramite questo pannello si potranno effettuare la operazioni che coinvolgono tutto il grafico.

#figure(
  image("/img/mu/settings.jpg", width: 90%),
  caption: [Pannello delle impostazioni e sotto-pannelli],
) <imgSETTINGS>

=== Impostazioni per la camera
Nel sotto-pannello _Camera_ sono presenti tre pulsanti con le seguenti funzionalità:
- *Reset*: ritornare alla visualizzazione di default tramite il pulsante _Reset position_ 
- *Zoom In*: aumentare il livello di zoom tramite il pulsante _+_
- *Zoom Out*: ridurre il livello di zoom tramite il pulsante _-_

#figure(
  image("/img/mu/camera.jpg", width: 90%),
  caption: [Sotto-pannello Camera],
) <imgCAMERA>

=== Caricamento fonte dati
Nel sotto-pannello _Source_ è possibile caricare i dati da visualizzare. Per farlo bisogna selezionare una delle tre modalità di caricamento dati tramite il corrispettivo pulsante _Select_. Le tre modalità sono:
- *External API*: questa modalità caricherà i dati dall'API esterna "Weather Forecast" dopo aver cliccato il pulsante _Select API_
- *DB1*: questa modalità caricherà i dati reperiti tramite una chiamata al database, dopo aver cliccato sul pulsante _Select DB_
- *CSV*: questa modalità caricherà i dati a partire da un file CSV caricato dall'utente. Per usufruire di questa modalità bisognerà prima caricare il suddetto file trascinandolo all'interno dell'area dedicata, individuabile dall'icona di _upload_, (viene detto: _drag-and-drop_) o utilizzando l'interfaccia grafica dedicata, attivabile cliccando sulla stessa area; a questo punto sarà possibile confermare il file scelto con il pulsante _Select CVS_, oppure rimuovere il file caricato tramite il pulsante _Delete_, che apparirà solo una volta caricato un file.

#figure(
  image("/img/mu/source.jpg", width: 85%),
  caption: [Sotto-pannello Source],
) <imgSOURCE>

=== Impostazioni per il filtro
Nel sotto-pannello _Filter_ è possibile regolare i filtri generali per la visualizzazione di particolari valori. Quando un valore verrà escluso o "nascosto", la barra verticale che lo rappresenta nel grafica diventerà semi-trasparente, a differenza dei valori inclusi che verranno rappresentati da una barra completamente opaca. \ I filtri sono:
- *Visualization interval*: scegliere l'intervallo numerico per i valori da visualizzare.
- *Show average plane*: l'attivazione o meno di questa checkbox causerà la presenza o meno di un piano posto a un'altezza corrispondente al valore medio di tutti i valori dei dati caricati
- *Values lower than the global average*: tramite il pulsante _Lower than average_ tutti i valori minori del valore medio verranno inclusi
- *Values higher than the global average*: tramite il pulsante _Higher than average_ tutti i valori maggior del valore medio verranno inclusi
- *Hide the N highest values*: tramite questo slider è possibile decidere di nascondere le barre che rappresentano gli N valori più alti, dove N è il valore associato allo slider
- *Hide the N lowest values*: tramite questo slider è possibile decidere di nascondere le barre che rappresentano gli N valori più bassi, dove N è il valore associato allo slider
- *Visualization reset*: tramite il pulsante _Reset_ tutti i filtri applicati ai valori vengono reimpostati alle loro impostazioni di default

#figure(
  image("/img/mu/filter.jpg", width: 90%),
  caption: [Sotto-pannello Filter],
) <imgFILTER>

=== Impostazioni per i colori
Nel sotto-pannello _Color_ è possibile decidere in che modo le barre verranno colorate tramite i campi del menu a tendina:
- *rows*: ogni barra in una stessa riga avrà lo stesso colore
- *columns*: ogni barra in una stessa colonna avrà lo stesso colore
- *values*: ogni barra con un valore uguale avrà lo stesso colore

#figure(
  image("/img/mu/color.jpg", width: 90%),
  caption: [Sotto-pannello Color],
) <imgCOLOR>

=== Esportazione
Nel sotto-pannello _Export_ è possibile esportare la vista corrente come immagine tramite il pulsante _Screenshot_

#figure(
  image("/img/mu/export.jpg", width: 90%),
  caption: [Sotto-pannello Export],
) <imgEXPORT>

== Operazioni su selezione
È possibile selezionare una o più barre del grafico cliccando su di esse. Per annullare la selezione, è sufficiente cliccare nuovamente sulla barra selezionata. È possibile selezionare più di una barra in contemporanea.  Inoltre, un doppio clic su una singola barra permette di deselezionare automaticamente le altre barre eventualmente selezionate. \
La selezione di almeno una barra comporta l'attivazione del pannello _Selection info & filter_ che permette di visualizzare informazioni e filtri aggiuntivi applicabili alle barre selezionate. \
Per espandere i sotto-panelli bisognerà cliccare sull'icona del menù a tendina a destra del corrispettivo nome. \
La chiusura di questo panello si può effettuare tramite il pulsante _Close_ oppure deselezionando tutte le barre.

#figure(
  image("/img/mu/selection.jpg", width: 90%),
  caption: [Pannello Selection info & filter],
) <imgSELECTION>

=== Informazioni sulla selezione
Nel sotto-pannello _Info_ è possibile visualizzare tutte le informazioni relative all'*ultima* barra selezionata:
- *Row*: in che riga della matrice dei dati si trova
- *Column*: in che colonna della matrice dei dati si trova
- *Height*: il suo valore
- *Avg X (Row)*: il valore medio dei valori nella stessa riga della matrice
- *Avg Z (Coloum)*: il valore medio dei valori nella stessa colonna della matrice
- *Avg Global*: il valore medio dei valori

#figure(
  image("/img/mu/info.jpg", width: 90%),
  caption: [Sotto-pannello Info],
) <imgINFO>

=== Filtri applicabili sulla selezione
Nel sotto-pannello _Filter_ è possibile effettuare operazioni sulle barre selezionate:
- *Only selected bars*: tramite il pulsante _Display_ vengono "nascoste" tutte le barre non selezionate, rendendole quindi semi-trasparenti
- *Values higher than the latest selected bar value*: tramite il pulsante _Filter_ vengono nascoste tutte le colonne con un valore minore o uguale al valore dell'ultima barra selezionata
- *Values lower than the latest selected bar value*: tramite il pulsante _Filter_ vengono nascoste tutte le colonne con un valore maggiore o uguale al valore dell'ultima barra selezionata
- *Filter reset*: tramite il pulsante _Reset_ la selezione viene rimossa e il pannello _Selection info & filter_ viene chiuso, inoltre vengono ripristinati i filtri applicati
- *Show average row plane*: l'attivazione o meno di questa checkbox causerà la presenza o meno di un piano che indica il valore medio di quelli presenti nella stessa riga dell'ultima barra selezionata
- *Show average column plane*: l'attivazione o meno di questa checkbox causerà la presenza o meno di un piano che indica il valore medio di quelli presenti nella stessa colonna dell'ultima barra selezionata
- *Selected bars opacity*: cambiando questo valore si andrà a modificare l'opacità delle barre selezionate, da un minimo del 10% (quasi trasparenti) a un massimo del 100% (completamente opache)
- *Reset selection*: tramite il pulsante _Reset_ la selezione viene rimossa e il pannello _Selection info & filter_ viene chiuso, ma senza ripristinare i filtri applicati

#figure(
  image("/img/mu/selectFilter.jpg", width: 90%),
  caption: [Sotto-pannello Filter],
) <imgSELECTIONFILTER>

== Gizmo <gizmo>
Nell'angolo in basso a sinistra della schermata principale si trova il gizmo, uno strumento dell'ambiente tridimensionale che permette di tenere traccia dell'orientamento corrente. \

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

=== Risposta successo (HTTP 200 OK)
Se la richiesta ha successo, l'API risponde con uno stato HTTP 200 OK e un corpo JSON contenente l'oggetto `MatrixData`.

=== Corpo della risposta
```json
{
  "xLabels": ["X Label 1", "X Label 2", "X Label 3"],
  "zLabels": ["Z Label 1", "Z Label 2", "Z Label 3"],
  "yValues": [
    [10.5, 12.1, 15.3],
    [9.8, 11.5, 14.2],
    [10.1, 11.9, 15.0]
  ]
}
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

=== Esempio di utilizzo
```bash
curl -X POST -F "file=@/percorso/del/file.csv" http://localhost:8080/api/uploadCsv
```

=== Risposta successo (HTTP 200 OK)
Se il file CSV è valido e rispetta tutti i vincoli, l'API risponde con uno stato HTTP 200 OK e un corpo JSON contenente l'oggetto MatrixData.

=== Risposta errore
In caso di problemi con il file caricato, l'API risponderà con uno stato HTTP di errore, tipicamente:

  - *HTTP 400 Bad Request*: Se il file non è un CSV valido, ha un formato errato, contiene celle vuote non permesse, valori non numerici, struttura inconsistente, o supera i limiti dimensionali (righe/colonne/punti dati). Il corpo della risposta contiene un messaggio di errore dettagliato.
  - *HTTP 413 Payload Too Large*: Se il file supera il limite massimo di dimensione (es. 10 MB).

=== Corpo della risposta
```json
{
  "xLabels": ["X Label 1", "X Label 2", "X Label 3"],
  "zLabels": ["Z Label 1", "Z Label 2", "Z Label 3"],
  "yValues": [
    [10.5, 12.1, 15.3],
    [9.8, 11.5, 14.2],
    [10.1, 11.9, 15.0]
  ]
}
```

== GET /api/external/data
=== Descrizione

Questo endpoint recupera dati da una sorgente esterna preconfigurata in questo caso un servizio di previsioni meteo come Open-Meteo. Non richiede alcun parametro dall'utente. Il servizio backend contatta l'API esterna, ne interpreta la risposta (che si aspetta sia in formato JSON e segua una certa struttura, come quella di Open-Meteo con dati orari) e la trasforma nel formato standard `MatrixData` per la visualizzazione.

=== Parametri

Nessun parametro richiesto per questo endpoint. La sorgente dati e gli eventuali parametri per l'API esterna sono configurati nel backend.

=== Esempio di utilizzo
```bash
curl -X GET http://localhost:8080/api/external/data
```

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

=== Corpo della risposta
```json
{
  "xLabels": ["X Label 1", "X Label 2", "X Label 3"],
  "zLabels": ["Z Label 1", "Z Label 2", "Z Label 3"],
  "yValues": [
    [10.5, 12.1, 15.3],
    [9.8, 11.5, 14.2],
    [10.1, 11.9, 15.0]
  ]
}
```
