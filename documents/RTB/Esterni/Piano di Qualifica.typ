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
    "0.4.0","07-02-2025","Aggiunto riferimento a dash Grafana e inseriti grafici metriche",p.pozzobon,"",
    "0.3.2", "30-01-2025", "Aggiornamento tabelle test", p.valdagno, (p.checchinato, p.pesenato),
    "0.3.1", "18-01-2025", "Aggiunta metrica Cost Variance", p.valdagno, (p.lucato, p.pesenato),
    "0.3.0", "13-01-2025", "Stesura obiettivi metrici di qualità", p.valdagno, (p.pesenato, p.pozzobon),
    "0.2.0", "13-01-2025", "Stesura sez. Metodologie di testing, sottosez. identificazione dei test, test di sistema e test di accettazione", (p.pozzobon, p.lucato), (p.pesenato,p.valdagno),    
    "0.1.0", "19-12-2024", "Stesura introduzione", p.valdagno, (p.salvo, p.pozzobon),
  )
)

= Introduzione
== Finalità del documento
L'obiettivo del #glossario("PdQ") è descrivere l'insieme delle procedure di #glossario("verifica") e #glossario("validazione") adottate per garantire la qualità dei processi e del #glossario("prodotto software"). Il controllo di qualità serve per assicurare che vengano soddisfatti i requisiti tramite criteri oggettivi. \ 
Dato che il miglioramento continuo è uno degli elementi chiave dei sistemi di qualità i contenuti del documento saranno modificati e ampliati nel corso nel tempo.

== Glossario
All'#glossario("interno") del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html")[_glossario_]. Tutte le parole consultabili nel glossario saranno identificate da una "G" in colore blu. Premendoci sopra si aprirà il glossario.

== Riferimenti
=== Link al capitolato C5 - 3Dataviz
- Riferimento al #glossario("capitolato") 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]] - _Ultimo accesso al documento 22/11/2024_
=== Slide del corso IS
- Riferimento alle slide IS: *_Regolamento del #glossario("progetto") didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]] - _Ultimo accesso al documento 19/12/2024_

- Riferimento alle slide IS: *_Qualità del software_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf]] - _Ultimo accesso al documento 19/12/2024_
- Riferimento alle slide IS: *_Qualità di processo_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf]] - _Ultimo accesso al documento 19/12/2024_
- Riferimento alle slide IS: *_Verifica e #glossario("validazione"):_*
 - *_Introduzione_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T09.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T09.pdf]] \ - _Ultimo accesso al documento 09/01/2025_
 - *_Analisi statica_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T10.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T10.pdf]] \ - _Ultimo accesso al documento 08/01/2025_
 - *_Analisi dinamica_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T011.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T11.pdf]] \ - _Ultimo accesso al documento 19/12/2024_

=== Standard
- *_#glossario("ISO/IEC 12207:1995")_*: #link("https://en.wikipedia.org/wiki/ISO/IEC_12207")[#text(blue)[https://en.wikipedia.org/wiki/ISO/IEC_12207]] \ - _Ultimo accesso al documento 13/01/2025_
- *_#glossario("ISO/IEC 9126")_*:  - *_#glossario("ISO 12207:1995")_*: #link("https://en.wikipedia.org/wiki/ISO/IEC_9126")[#text(blue)[https://en.wikipedia.org/wiki/ISO/IEC_9126]] \ - _Ultimo accesso al documento 13/01/2025_

#pb()

== Dashboard
A disposizione del team, del committente e del proponente è la dashboard online realizzata su Grafana. Tale sistema permette di visualizzare in tempo reale #glossario("infografiche") renderizzate automaticamente con i dati reperiti da #glossario("GitHub") e dal foglio ore. Sono inoltre visibili e aggiornati per periodo i grafici relativi alle metriche. \ 
La dashboard è raggiungibile al seguente link: \
#align(center)[#link("https://archi7echs.grafana.net/public-dashboards/ec58c4df04ac4470ba7023a6f3fe808b")[#text(blue)[https://archi7echs.grafana.net/public-dashboards/ec58c4df04ac4470ba7023a6f3fe808b]]] \
_non è richiesta la registrazione o il login per la visualizzazione._
 
= Obiettivi metrici di qualità
Per valutare la qualità del software e l'efficacia dei processi vengono adottate delle metriche che sono elencate nella sezione _Metriche di qualità_ del documento _Norme di Progetto_. \ 
In questa sezione vengono elencati i valori che le metriche devono rispettare affinché siano considerate accettate o pienamente soddisfatte.

== Qualità di processo
La qualità di #glossario("processo") ha un ruolo fondamentale per assicurare che tutte le #glossario("attività") vengano svolte in modo controllato, efficiente e coerente con gli obiettivi prefissati.
Stabilire quali metriche di qualità del #glossario("processo") utilizzare consente di ottenere misurazioni oggettive e quantificabili per monitorare l'efficacia e l'efficienza dei processi. Inoltre, definire valori accettabili e preferibili fornisce un criterio chiaro per valutare se le prestazioni dei processi soddisfano le aspettative o richiedono interventi correttivi.

=== Processi primari
#align(center)[
  #table(
  columns: (auto, auto, auto, auto),
  align: (col, row) => (center, center, center, center).at(col),
  inset: 6pt,
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore preferibile*]),
    [*MPC1*],[Schedule Adherence (*SA*)],[$ >= 90% $],[100%],
    [*MPC2*],[Earned Value (*EV*)],[$ >= 0 $
],[$ <= "EAC" $],
    [*MPC3*],[Planned Value (*PV*)],[$ >= 0 $],[$ <= #glossario("BAC") $],
    [*MPC4*],[Schedule Variance (*SV*)],[$ >= -8% $
],[$ >= 0 $],
    [*MPC5*],[Actual Cost (*AC*)],[$ >= 0 $
],[$ <= "EAC" $],
    [*MPC6*],[Cost Performance Index (*CPI*)],[± 10% ],[0%],
    [*MPC7*],[Cost Variance (*CV*)],[$ >= -8% $
],[$ >= 0 $],
    [*MPC8*],[Estimated At Completion (*EAC*)],[±5% rispetto al #glossario("BAC")],[Pari al #glossario("BAC")],
    [*MPC9*],[Estimated To Complete (*ETC*)],[$ >= 0 $
],[$ <= "EAC" $],
  )
    <tab:metricheProcessiPrimari>
]
 #align(center)[Tabella 1: Valori accettabili e preferibili per le metriche dei processi primari.] 

 #figure(
  image("/img/pdq/MPC1.png", width: 80%),
  caption: [MPC1 - SA],
) <imgMPC1>

 #figure(
  image("/img/pdq/MPC2-3.png", width: 80%),
  caption: [MPC1-3 - rapporto EV e PV],
) <imgMPC2-3> 

 #figure(
  image("/img/pdq/MPC4.png", width: 80%),
  caption: [MPC4 - SV],
) <imgMPC4>

#figure(
  image("/img/pdq/MPC5.png", width: 80%),
  caption: [MPC5 - AC],
) <imgMPC5>

#figure(
  image("/img/pdq/MPC6.png", width: 80%),
  caption: [MPC6 - CPI],
) <imgMPC6>

#figure(
  image("/img/pdq/MPC7.png", width: 80%),
  caption: [MPC7 - CV],
) <imgMPC7>

#figure(
  image("/img/pdq/MPC8.png", width: 80%),
  caption: [MPC8 - EAC],
) <imgMPC8>

#figure(
  image("/img/pdq/MPC9.png", width: 80%),
  caption: [MPC9 - ETC],
) <imgMPC9>

=== Processi di supporto
#align(center)[
  #table(
  columns: (auto, auto, auto, auto),
  align: (col, row) => (center, center, center, center).at(col),
  inset: 6pt,
  table.header([*Metrica*], [*Nome*],[*Valore accettabile*], [*Valore preferibile*]),
    [*MPC10*],[Percentuale di Casi di Test Superati (*PCTS*)],[80%],[100%],
    [*MPC11*],[Percentuale di Metriche Soddisfatte (*PMS*)],[85%],[100%],
  )
    <tab:metricheProcessiSupporto>
]
 #align(center)[Tabella 2: Valori accettabili e preferibili per le metriche dei #glossario("processi di supporto").] 

=== Processi organizzativi
#align(center)[
  #table(
  columns: (auto, auto, auto, auto),
  align: (col, row) => (center, center, center, center).at(col),
  inset: 6pt,
  table.header([*Metrica*], [*Nome*], [*Valore  accettabile*], [*Valore preferibile*]),
    [*MPC12*],[Rischi Non Previsti (*RNP*)],[$ <=3 $],[0],
  )
    <tab:metricheProcessiOrganizzativi>
]
 #align(center)[Tabella 3: Valori accettabili e preferibili per le metriche dei #glossario("processi organizzativi").] 

  #figure(
  image("/img/pdq/MPC12.png", width: 80%),
  caption: [MPC12 - Rischi non previsti],
) <imgMPC12>

== Qualità di prodotto
La qualità di prodotto  garantisce che il software sviluppato soddisfi i requisiti funzionali e non funzionali definiti, offrendo quindi un prodotto finale stabile, efficiente e utilizzabile. La qualità del prodotto infatti incide direttamente sulla soddisfazione dell'utente finale.
Stabilire quali metriche di qualità del prodotto utilizzare e relativi valori consente di misurare in modo oggettivo caratteristiche fondamentali come #glossario("funzionalità"), affidabilità, usabilità, efficienza e manutenibilità. Tali metriche permettono di monitorare se il prodotto soddisfa gli standard richiesti e di intervenire tempestivamente nel caso in cui alcuni parametri risultino al di sotto dei livelli accettabili.


=== Funzionalità
#align(center)[
  #table(
  columns: (auto, auto, auto, auto),
  align: (col, row) => (center, center, center, center).at(col),
  inset: 6pt,
  table.header([*Metrica*], [*Nome*], [*Valore  accettabile*], [*Valore preferibile*]),
    [*MPD1*],[Requisiti Obbligatori Soddisfatti (*ROBS*)],[100%],[100%],
    [*MPD2*],[Requisiti Desiderabili Soddisfatti (*RDS*)],[$ >= 50%$],[100%],
    [*MPD3*],[Requisiti Opzionali Soddisfatti (*ROPS*)],[$ >= 0% $],[100%],
  )
    <tab:metricheFunzionalità>
]
 #align(center)[Tabella 4: Valori accettabili e preferibili per le metriche di #glossario("funzionalità").] 

=== Affidabilità
#align(center)[
  #table(
  columns: (auto, auto, auto, auto),
  align: (col, row) => (center, center, center, center).at(col),
  inset: 6pt,
  table.header([*Metrica*], [*Nome*],[*Valore accettabile*], [*Valore preferibile*]),
    [*MPD4*],[Code Coverage (*CC*)],[$ >=80% $],[100%],
    [*MPD5*],[Indice Gulpease (*MIG*)],[$ >= 50 $],[$ >= 80 $],
    [*MPD6*],[Failure Density (*FD*)],[$ <=10% $],[0%],
    [*MPD7*],[Statement Coverage (*SC*)],[$ >= 80% $],[$ >= 90% $],
    [*MPD8*],[#glossario("Branch") Coverage (*BC*)],[$ >= 70% $],[$ >= 80% $],
    [*MPD9*],[Correttezza Ortografica (*CO*)],[0 errori],[0 errori],
  )
    <tab:metricheAffidabilità>
]
 #align(center)[Tabella 5: Valori accettabili e preferibili per le metriche di affidabilità.] 

=== Usabilità
#align(center)[
  #table(
  columns: (auto, auto, auto, auto),
  align: (col, row) => (center, center, center, center).at(col),
  inset: 6pt,
  table.header([*Metrica*], [*Nome*],[*Valore accettabile*], [*Valore preferibile*]),
    [*MPD10*],[Facilità di Utilizzo (*FU*)],[$ <= 10 "click" $],[$ <= 5 "click" $],
    [*MPD11*],[Tempo di Apprendimento (*TA*)],[$ <= 15 "minuti" $],[$ <= 5 "minuti" $],
  )
    <tab:metricheUsabilità>
]
 #align(center)[Tabella 6: Valori accettabili e preferibili per le metriche di usabilità.] 
 
=== Efficienza
#align(center)[
  #table(
  columns: (auto, auto, auto, auto),
  align: (col, row) => (center, center, center, center).at(col),
  inset: 6pt,
  table.header([*Metrica*], [*Nome*], [*Valore  accettabile*], [*Valore preferibile*]),
    [*MPD12*],[Tempo Medio di Risposta (*TMR*)],[$ <= 10 "secondi" $],[$ <= 4 "secondi" $],
    [*MPD13*],[Utilizzo delle Risorse (*UR*)],[$ >= 75% $],[100%],
  )
    <tab:metricheEfficienza>
]
 #align(center)[Tabella 7: Valori accettabili e preferibili per le metriche di efficienza.] 

=== Manutenibilità
#align(center)[
  #table(
  columns: (auto, auto, auto, auto),
  align: (col, row) => (center, center, center, center).at(col),
  inset: 6pt,
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore preferibile*]),
    [*MPD14*],[Complessità Ciclomatica (*V(G)*)],[$ <=8 $],[$ <= 4$],
  )
    <tab:metricheManutenibilità>
]
 #align(center)[Tabella 6: Valori accettabili e preferibili per le metriche di manutenibilità.] 

#pb()

= Metodologie di testing
In questa sezione vengono descritte le modalità di identificazione dei test che verranno applicati al #glossario("progetto") per controllare il rispetto delle metriche e l'implementazione degli #glossario("UC") individuati nell' #glossario("AdR"). \
I test si suddividono in:
- *Test di #glossario("Unità")*: i test effettuati su singole #glossario("unità") software del #glossario("progetto"). Questi test vengono implementati direttamente dai membri del team con il ruolo di #glossario("programmatore") e, successivamente, eseguiti automaticamente.
- *Test di Integrazione*: i test applicati alle componenti individuate nel design , indispensabile per rilevare difetti di progettazione architetturale, assicurano infatti la corretta integrazione tra le molteplici parti che compongono il #glossario("prodotto software").
- *Test di Sistema*: assicurano il corretto funzionamento del sistema durante l'esecuzione del #glossario("prodotto software"). Nello specifico lo scopo di questi test è quello di verificare che il sistema soddisfi i requisiti specificati nel documento dell'_Analisi dei Requisiti_.
- *Test di Accettazione*: servono per verificare che il prodotto finale soddisfi tutti i requisiti indicati nel #glossario("capitolato"). 

== Identificazione dei test
Ogni test viene identificato da un #glossario("codice univoco") composto come di seguito:
#align(center)[T.Tipologia.IdentificativoUnivoco]

Dove: \
*Tipologia* indica il tipo di test, secondo quanto sopra, ovvero:
- *U*, per indicare i test di #glossario("Unità")
- *I*, per indicare i test di Integrazione
- *S*, per indicare i test di Sistema
- *A*, per indicare i test di Accettazione

Ogni test è associato ad uno *stato* che può essere:
- *V*, il test è stato verificato
- *NE*, il test non è stato eseguito
- *NI*, il test non è ancora stato implementato

//Test di #glossario("Unità") e Test di Integrazione devono essere fatti dopo, in quanto si possono fare solo dopo aver scritto il codice e averlo integrato con il resto del #glossario("progetto").

== Test di Sistema
#align(center)[
  #table(
  columns: (auto, auto, auto, auto),
  align: (col, row) => (center, center, center, center).at(col),
  inset: 6pt,
  table.header([*Codice identificativo*], [*Descrizione*], [*#glossario("Requisito")*], [*Stato*]),
  [T.S.1], [Verificare che l'utente abbia la possibilità di visualizzare i dati un grafico #glossario("3D") interattivo con barre verticali],[F.1.1] ,[NI],
  [T.S.2], [Verificare che l'utente abbia la possibilità di inserire dei dati da poter visualizzare nel grafico],[F.1.2] ,[NI],
  [T.S.3], [Verificare che l'utente possa inserire manualmente i dati in una tabella tramite l'interfaccia],[F.3.1 - Opzionale] ,[NI],
  [T.S.4], [Verificare che l'utente possa inserire manualmente il valore dell'asse x per caricare un dato],[F.3.2 - Opzionale] ,[NI],
  [T.S.5], [Verificare che l'utente possa inserire manualmente il valore dell'asse y per caricare un dato],[F.3.3 - Opzionale] ,[NI],
  [T.S.6], [Verificare che l'utente possa inserire manualmente il valore dell'asse z per caricare un dato],[F.3.4 - Opzionale] ,[NI],
  [T.S.7], [Verificare che l'utente possa inserire automaticamente i dati tramite chiamata all'#glossario("API") esterna Weather Forecast come metodo di caricamento],[F.1.3] ,[NI],
  [T.S.8], [Verificare che l'utente possa inserire automaticamente i dati tramite una connessione a database #glossario("SQL") locale come metodo di caricamento],[F.1.4] ,[NI],
  [T.S.9], [Verificare che l'utente possa inserire automaticamente i dati tramite un file .csv come metodo di caricamento],[F.1.5] ,[NI],
  [T.S.10], [Verificare che l'utente possa selezionare un file .csv per caricare i dati presenti al suo interno],[F.1.6] ,[NI],
  [T.S.11], [Verificare che l'utente può, mediante spostamento del mouse sopra il grafico, ruotare la visualizzazione],[F.1.7] ,[NI],
  [T.S.12], [Verificare che l'utente può, mediante spostamento del mouse sopra il grafico, muoversi solo orizzontalmente come se fosse in un ambiente 2D],[F.1.8] ,[NI],
  [T.S.13], [Verificare che l'utente può, mediante spostamento del mouse sopra il grafico, muoversi solo verticalmente come se fosse in un ambiente 2D],[F.1.9] ,[NI],
  [T.S.14], [Verificare che l'utente può, attraverso le gesture del mouse, ingrandire o ridurre liberamente la visualizzazione],[F.1.10] ,[NI],
  [T.S.15], [Verificare che l'utente può resettare la visualizzazione del grafico a quella di default renderizzata dall'applicativo tramite un apposito bottone],[F.1.11] ,[NI],
  [T.S.16], [Verificare che l'utente, posizionando il cursore sopra una barra del grafico riesca a visualizzare le informazioni di quella barra],[F.1.12] ,[NI],
  [T.S.17], [Verificare che l'utente, premendo sopra ad una barra, visualizzi una sezione apposita per scegliere tra alcune delle ulteriori funzionalità ],[F.1.13] ,[NI],
  [T.S.18], [Verificare che l'utente, una volta premuta una barra, riesca a visualizzare le informazioni di quella barra],[F.1.14] ,[NI],
  [T.S.19], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di modificarne l'opacizzazione],[F.1.15] ,[NI],
  [T.S.20], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di opacizzare tutti i dati che hanno valore minore del valore della barra selezionata],[F.1.16] ,[NI],
  [T.S.21], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di opacizzare tutti i dati che hanno valore maggiore del valore della barra selezionata],[F.1.17] ,[NI],
  [T.S.22], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di reimpostare i filtri di default (sia della barra selezionata che delle barre affette dai cambiamenti applicati attraverso la barra specifica)],[F.1.18] ,[NI],
  [T.S.23], [Verificare che l'utente possa attivare/disattivare la visualizzazione di un piano parallelo alla base del grafico, rappresentante il valore medio globale],[F.1.19] ,[NI],
  [T.S.24], [Verificare che l'utente possa opacizzare i soli dati che sono maggiori della media globale, tramite un apposito bottone],[F.1.20] ,[NI],
  [T.S.25], [Verificare che l'utente possa opacizzare i soli dati che sono minori della media globale, tramite un apposito bottone],[F.1.21] ,[NI],
  [T.S.26], [Verificare che l'utente possa visualizzare i soli dati che sono contenuti all'interno di un intervallo di valori (che può essere chiuso o aperto), opacizzando quindi gli altri],[F.1.22] ,[NI],
  [T.S.27], [Verificare che l'utente possa visualizzare il piano parallelo alla base che identifica la media dei valori appartenenti all'asse X selezionato],[F.1.23] ,[NI],
  [T.S.28], [Verificare che l'utente possa visualizzare il piano parallelo alla base che identifica la media dei valori appartenenti all'asse Z selezionato],[F.1.24] ,[NI],
  [T.S.29], [Verificare che l'utente può visualizzare all'interno del grafico gli N dati (barre) con valore più alto, opacizzando gli altri],[F.1.25] ,[NI],
  [T.S.30], [Verificare che l'utente può visualizzare all'interno del grafico gli N dati (barre) con valore più basso, opacizzando gli altri],[F.1.26] ,[NI],
  [T.S.31], [Verificare che l'utente possa eliminare tutti i filtri applicati al grafico, riportandolo allo stato di default, tramite un apposito bottone],[F.1.27] ,[NI],
  [T.S.32], [Verificare che l'utente possa esportare tutte le informazioni relative ad un grafico a cui si sta lavorando, ovvero l'insieme di dati ed i filtri relativi],[F.2.1 - Desiderabile] ,[NI],
  [T.S.33], [Verificare che l'utente possa effettuare uno "screenshot" del grafico],[F.2.2 - Desiderabile] ,[NI],
  [T.S.34], [Verificare che l'utente venga avvertito graficamente nel caso abbia inserito un input non conforme alle aspettative],[F.1.28] ,[NI],
  [T.S.35], [Verificare che l'utente venga avvertito graficamente nel caso abbia provato a caricare un quantitativo di dati (manualmente o automaticamente) che superano il numero massimo supportato],[F.1.29] ,[NI],
  [T.S.36], [Verificare che l'utente venga avvertito graficamente nel caso abbia provato a selezionare un file .csv con la formattazione interna non corretta],[F.1.30] ,[NI],
  [T.S.37], [Verificare che l'utente venga avvertito graficamente nel caso abbia provato a caricare dei dati tramite chiamata ad un #glossario("API") esterna che però non ha risposto alla richiesta entro un tempo limite],[F.1.31] ,[NI],
  [T.S.38], [Verificare che l'utente venga avvertito graficamente nel caso abbia provato a lasciare un input vuoto, quando invece è richiesto obbligatoriamente un valore],[F.1.32] ,[NI],
  [T.S.39], [Verificare che l'utente venga avvertito graficamente nel caso in cui la connessione al database locale sia fallita],[F.1.33] ,[NI],
  [T.S.40], [Verificare che l'utente venga avvertito graficamente nel caso abbia provato a selezionare un file .csv con un peso che supera il limite consentito],[F.1.34] ,[NI],
  [T.S.41], [Verificare che l'utente possa accedere direttamente alla pagina dell'applicazione senza sistema di login],[F.1.35] ,[NI],
  [T.S.42], [Verificare che l'applicazione possa elaborare dati con coordinate X, Y e Z, dove X e Z definiscono il posizionamento della base della barra nel piano mentre Y definisce l’altezza della barra],[F.1.36] ,[NI],
  [T.S.43], [Verificare che l'applicazione deve essere in grado di supportare una quantità massima di dati pari a 1000],[V.1.1] ,[NI],
  [T.S.44], [Verificare che l'applicazione possa supportare  un massimo di 300 elementi per le coordinate X e Z mantenendo il limite di 1000 dati],[V.1.2] ,[NI],
  [T.S.45], [Verificare che l'applicazione possa supportare il caricamento dati da un file .csv che pesa al massimo 10 MB],[V.1.3] ,[NI],
  )
    <tab:testdisistema>
]

== Test di Accettazione
#align(center)[
  #table(
  columns: (auto, auto, auto),
  align: (col, row) => (center, center, center,).at(col),
  inset: 6pt,
  table.header([*Codice identificativo*], [*Descrizione*], [*Stato*]),
  [T.A.1], [Verificare che l'utente, dopo il caricamento della webapp, riesca a visualizzare il grafico generato], [NI],
  [T.A.2], [Verificare che l'utente, dopo il caricamento della webapp, visualizzi il menu dedicato alle sezioni per il caricamento dati, per la visualizzazione dei dati e per il salvataggio], [NI],
  [T.A.3], [Verificare che l'utente, dopo il caricamento della webapp, visualizzi il menu dedicato a tutti i possibili strumenti per lo spostamento della telecamera], [NI],
  [T.A.4], [Verificare che l'utente, dopo il caricamento della webapp e la generazione del grafico, abbia la possibilità di interagire con il grafico stesso], [NI],
  [T.A.5], [Verificare che l'utente possa caricare i dati manualmente tramite interfaccia grafica], [NI],
  [T.A.6], [Verificare che l'utente possa caricare i dati tramite un file .csv], [NI],
  [T.A.7], [Verificare che l'utente possa caricare i dati tramite una connessione ad un database SQL locale], [NI],
  [T.A.8], [Verificare che l'utente possa caricare i dati tramite chiamata all'API esterna Weather Forecast], [NI],
  [T.A.9], [Verificare che l'utente, una volta inseriti i dati, visualizzi le barre relative ai dati nelle posizioni corrette], [NI],
  [T.A.10], [Verificare che, una volta che l'utente ha premuto una barra, si apra il relativo menu per la modifica della barra specifica], [NI],
  [T.A.11], [Verificare che l'utente, una volta premuta una barra, visualizzi le informazioni corrette relative alla barra premuta], [NI],
  [T.A.12], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di modificare la sua opacizzazione], [NI],
  [T.A.13], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di #glossario("opacizzare") tutte le barre che hanno un valore minore di quello della barra premuta], [NI],
  [T.A.14], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di #glossario("opacizzare") tutte le barre che hanno un valore maggiore di quello della barra premuta], [NI],
  [T.A.15], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di resettare i filtri applicati per la sola barra premuta], [NI],
  [T.A.16], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di visualizzare un piano che identifica la media globale], [NI],
  [T.A.17], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di #glossario("opacizzare") tutte le barre che hanno valore maggiore della media globale], [NI],
  [T.A.18], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di #glossario("opacizzare") tutte le barre che hanno valore minore della media globale], [NI],
  [T.A.19], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di #glossario("opacizzare") tutte le barre che hanno valore compreso tra un intervallo scelto dall'utente], [NI],
  [T.A.20], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di visualizzare un piano che identifica la media relativa ad un asse X selezionato], [NI],
  [T.A.21], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di visualizzare un piano che identifica la media relativa ad un asse Z selezionato], [NI],
  [T.A.22], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di visualizzare le N barre con il valore maggiore, con N selezionato dall'utente], [NI],
  [T.A.23], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di visualizzare le N barre con il valore minore, con N selezionato dall'utente], [NI],
  [T.A.24], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di eliminare tutti i filtri applicati al grafico], [NI],
  [T.A.25], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di esportare il grafico], [NI],
  [T.A.26], [Verificare che l'utente, una volta caricata la webapp, abbia la possibilità di effettuare e salvare un'istantanea del grafico], [NI],
  [T.A.27], [Verificare che l'utente, durante l'interazione la webapp ed il grafico, venga avvisato degli errori nel caso di un uso improprio o di un'anomalia], [NI],
  )
    <tab:testdiaccettazione>
]

