#import "/templates/documento.typ": *
#import "@preview/plotst:0.2.0": *

#show: conf.with(
  title: "Piano di Qualifica",
  subtitle: "",
  author: "Il team",
  state: "Approvato",
  intern: false,
  show_outline: true,
  outline_depth: 2,
  changelog: (
    "0.1.0", "19-12-2024", "Stesura introduzione", p.valdagno, (p.salvo, p.pozzobon),
  )
)

= Introduzione
== Finalità del documento
L'obiettivo del #glossario("PdQ") è descrivere l'insieme delle procedure di #glossario("verifica") e #glossario("validazione") adottate per garantire la qualità dei processi e del prodotto software. Il controllo di qualità serve per assicurare che vengano soddisfatti i requisiti tramite criteri oggettivi. \ 
Dato che il miglioramento continuo è uno degli elementi chiave dei sistemi di qualità i contenuti del documento saranno modificati e ampliati nel corso nel tempo.

== Glossario
All'interno del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html")[_glossario_]. Tutte le parole consultabili nel glossario saranno identificate da una "G" in colore blu. Premendoci sopra si aprirà il glossario.

== Riferimenti
=== Link al capitolato C5 - 3Dataviz
- Riferimento al capitolato 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]] - _Ultimo accesso al documento 22/11/2024_
=== Slide del corso IS
- Riferimento alle slide IS: *_Regolamento del progetto didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]] - _Ultimo accesso al documento 19/12/2024_

- Riferimento alle slide IS: *_Qualità del software_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf]] - _Ultimo accesso al documento 19/12/2024_
- Riferimento alle slide IS: *_Qualità di processo_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf]] - _Ultimo accesso al documento 19/12/2024_
- Riferimento alle slide IS: *_Verifica e validazione:_*
 - *_Introduzione_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T09.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T09.pdf]] \ - _Ultimo accesso al documento 19/12/2024_
 - *_Analisi statica_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T10.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T10.pdf]] \ - _Ultimo accesso al documento 19/12/2024_
 - *_Analisi dinamica_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T011.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T11.pdf]] \ - _Ultimo accesso al documento 19/12/2024_

= Metodologie di testing
In questa sezione vengono descritte le modalità di identificazione dei test che verranno applicati al progetto per controllare il rispetto delle metriche e l'implementazione degli #glossario("UC") individuati nell' #glossario("AdR"). \
I test si suddividono in:
- *Test di Unità*: i test effettuati su singole #glossario("unità") software del progetto. Questi test vengono implementati direttamente dai membri del team con il ruolo di #glossario("programmatore") e, successivamente, eseguiti automaticamente.
- *Test di Integrazione*: i test applicati alle componenti individuate nel design , indispensabile per rilevare difetti di progettazione architetturale, assicurano infatti la corretta integrazione tra le molteplici parte che compongono il #glossario("prodotto software").
- *Test di Sistema*: assicura il corretto funzionamento del sistema durante l'esecuzione del #glossario("prodotto software").
- *Test di Accettazione*: servono per verificare che il prodotto finale soddisfi tutti i requisiti indicati nel #glossario("capitolato"). 

== Identificazione dei test
Ogni test viene identificato da un codice univoco composto come di seguito:
#align(center)[T.Tipologia.IdentificativoUnivoco]

Dove: \
*Tipologia* indica il tipo di test, secondo quanto sopra, ovvero:
- *U*, per indicare i test di Unità
- *I*, per indicare i test di Integrazione
- *S*, per indicare i test di Sistema
- *A*, per indicare i test di Accettazione

Ogni test è associato ad uno *stato* che può essere:
- *V*, il test è stato verificato
- *NE*, il test non è stato eseguito
- *NI*, il test non è ancora stato implementato

== Test di Unità

== Test di Integrazione

== Test di Sistema

== Test di Accettazione
#align(center)[
  #table(
  columns: (auto, auto, auto),
  align: (col, row) => (center, center, center,).at(col),
  inset: 6pt,
  table.header([*Codice identificativo*], [*Descrizione*], [*Stato*]),
  [T.A.1], [Verificare che l'utente, dopo il caricamento della webapp, visualizzi il menu dedicato alle sezioni per il caricamento dati, per la visualizzazione dei dati e per il salvataggio], [NI],
  [T.A.2], [Verificare che l'utente, dopo il caricamento della webapp, visualizzi il menu dedicato a tutti i possibili strumenti per lo spostamento della telecamera], [NI],
  [T.A.3], [Verificare che l'utente possa caricare i dati manualmente tramite interfaccia grafica], [NI],
  [T.A.4], [Verificare che l'utente possa caricare i dati tramite un file .csv], [NI],
  [T.A.5], [Verificare che l'utente possa caricare i dati tramite una connessione ad un database SQL], [NI],
  [T.A.6], [Verificare che l'utente possa caricare i dati tramite una connessione ad un API esterno], [NI],
  [T.A.7], [Verificare che l'utente, una volta inseriti i dati, visualizzi le barre relative ai dati nelle posizioni corrette], [NI],
  [T.A.8], [Verificare che l'utente, una volta premuta una barra, si apra il relativo menu per la modifica una barra specifica], [NI],
  [T.A.9], [Verificare che l'utente, una volta premuta una barra, visualizzi le informazioni corrette relative alla barra premuta], [NI],
  [T.A.10], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di modificare la sua opacizzazione], [NI],
  [T.A.11], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di opacizzare tutte le barre che hanno un valore minore di quello della barra premuta], [NI],
  [T.A.12], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di opacizzare tutte le barre che hanno un valore maggiore di quello della barra premuta], [NI],
  [T.A.13], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di resettare i filtri applicati per la sola barra premuta], [NI],
  [T.A.14], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di visualizzare un piano che identifica la media globale], [NI],
  [T.A.15], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di opacizzare tutte le barre che hanno valore maggiore della media globale], [NI],
  [T.A.16], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di opacizzare tutte le barre che hanno valore minore della media globale], [NI],
  [T.A.17], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di opacizzare tutte le barre che hanno valore compreso tra un intervallo scelto dall'utente], [NI],
  [T.A.18], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di visualizzare un piano che identifica la media relativa ad un asse X selezionato], [NI],
  [T.A.7], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di visualizzare un piano che identifica la media relativa ad un asse Z selezionato], [NI],
  [T.A.19], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di visualizzare le N barre con il valore maggiore, con N selezionato dall'utente], [NI],
  [T.A.20], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di visualizzare le N barre con il valore minore, con N selezionato dall'utente], [NI],
  [T.A.21], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di eliminare tutti i filtri applicati al grafico], [NI],
  [T.A.22], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di esportare il grafico], [NI],
  [T.A.23], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di effettuare e salvare un'istantanea del grafico], [NI],
  [T.A.24], [Verificare che l'utente, durante l'interazione la webapp ed il grafico, venga avvisato degli errori nel caso di un uso improprio o di un'anomalia], [NI],
  )
    <tab:testdiaccettazione>
]

