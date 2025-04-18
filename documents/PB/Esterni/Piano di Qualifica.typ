#import "/templates/documento.typ": *
#import "/lib/plotst.typ": *

#show: conf.with(
  title: "Piano di Qualifica",
  subtitle: "",
  author: "Il team",
  intern: false,
  show_outline: true,
  outline_depth: 2,
  changelog: (
    "1.5.0","16-04-2025","Aggiornamento tabella test di sistema",p.checchinato,(p.valdagno,p.lucato),
    "1.4.0","15-04-2025","Modifica numerazione e dettaglio req. funzionali. Aggiornamento test di unità. Aggiunta descrizione alle tabelle dei test",p.pozzobon,(p.lucato,p.checchinato),
    "1.3.0","30-03-2025","Aggiunta test di unità e test di integrazione",p.lucato,(p.checchinato,p.salvo),
    "1.2.0","17-03-2025","Aggiunta analisi grafici cruscotto",p.salvo, (p.pesenato, p.scandaletti),
    "1.1.0","06-03-2025","Sistemazione documento post RTB",p.checchinato,(p.scandaletti,p.salvo),
    "1.0.0","09-02-2025","Revisione per incontro RTB",p.pesenato,(p.pozzobon,p.lucato),
    "0.4.0","09-02-2025","Aggiunto riferimento a dash Grafana e inseriti grafici metriche",p.pozzobon, (p.valdagno,p.lucato),
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
Dato che il miglioramento continuo è uno degli elementi chiave dei sistemi di qualità i contenuti del documento saranno modificati e ampliati nel corso del tempo.

== Glossario
All'#glossario("interno") del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html")[_glossario_]. Tutte le parole consultabili nel glossario saranno identificate da una "G" in colore blu. Facendo click su di essi si aprirà il glossario.

== Riferimenti
=== Link al capitolato C5 - 3Dataviz
- Riferimento al #glossario("capitolato") 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]] - _Ultimo accesso al documento 22/11/2024_
=== Slide del corso IS
- Riferimento alle slide IS: *_Regolamento del #glossario("progetto") didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]] - _Ultimo accesso al documento 19/12/2024_

- Riferimento alle slide IS: *_Qualità del software_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf]] - _Ultimo accesso al documento 19/12/2024_
- Riferimento alle slide IS: *_Qualità di processo_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf]] - _Ultimo accesso al documento 19/01/2025_
- Riferimento alle slide IS: *_Verifica e #glossario("validazione"):_*
 - *_Introduzione_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T09.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T09.pdf]] \ - _Ultimo accesso al documento 09/01/2025_
 - *_Analisi statica_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T10.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T10.pdf]] \ - _Ultimo accesso al documento 30/01/2025_
 - *_Analisi dinamica_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T011.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T11.pdf]] \ - _Ultimo accesso al documento 30/12/2024_

=== Standard
- *_#glossario("ISO/IEC 12207:1995")_*: #link("https://en.wikipedia.org/wiki/ISO/IEC_12207")[#text(blue)[https://en.wikipedia.org/wiki/ISO/IEC_12207]] \ - _Ultimo accesso al documento 13/01/2025_
- *_#glossario("ISO/IEC 9126")_*:  - *_#glossario("ISO 12207:1995")_*: #link("https://en.wikipedia.org/wiki/ISO/IEC_9126")[#text(blue)[https://en.wikipedia.org/wiki/ISO/IEC_9126]] \ - _Ultimo accesso al documento 13/01/2025_

=== Riferimenti informativi
- *Norme di Progetto* (v1.0.0): #link("https://archi7echs-team.github.io/documents/RTB/Interni/Norme%20di%20Progetto_v1.0.0.pdf")[#text(blue)[https://archi7echs-team.github.io/documents/RTB/Interni/Norme%20di%20Progetto_v1.0.0.pdf]] \ - _Ultimo accesso al documento 06/03/2025_

#pb()

== Dashboard
A disposizione del team, del committente e del #glossario("proponente") è la dashboard online realizzata su Grafana. Tale sistema permette di visualizzare in tempo reale #glossario("infografiche") renderizzate automaticamente con i dati reperiti da #glossario("GitHub") e dal foglio ore. Sono inoltre visibili e aggiornati per #glossario("periodo") i grafici relativi alle metriche. \ 
La dashboard è raggiungibile al seguente link: \
#align(center)[#link("https://archi7echs.grafana.net/public-dashboards/ec58c4df04ac4470ba7023a6f3fe808b")[#text(blue)[https://archi7echs.grafana.net/public-dashboards/ec58c4df04ac4470ba7023a6f3fe808b]]] 
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

 ==== MPC1 - Schedule Adherence

 #figure(
  image("/img/pdq/MPC1.png", width: 80%),
  caption: [MPC1 - SA],
) <imgMPC1_faseRTB>
*#glossario("RTB")*: Si nota come nei primi periodi il valore della Schedule Adherence (attività completate entro le scadenze prestabilite) era inferiore al valore accettabile ma il valore è rientrato nei limiti e ha raggiunto il valore preferibile una volta che il gruppo ha preso confidenza con il lavoro da effettuare e grazie ai miglioramenti al way of working.

#figure(
  image("/img/pdq/PB/MPC1.png", width: 80%),
  caption: [MPC1 - SA],
) <imgMPC1_fasePB>

 ==== MPC2 - Earned Value e Planned Value

 #figure(
  image("/img/pdq/MPC2-3.png", width: 80%),
  caption: [MPC2-3 - rapporto EV e PV],
) <imgMPC2-3faseRTB> 
*#glossario("RTB")*: Si nota come nei primi periodi il valore guadagnato (Earned Value) era inferiore al valore pianificato (Planned Value) ma la curva del valore guadagnato è andato a sovrapporsi con la curva del valore pianificato negli ultimi periodi comunicando un allineamento agli obiettivi preposti.

#figure(
  image("/img/pdq/PB/MPC2-3.png", width: 80%),
  caption: [MPC1 - SA],
) <imgMPC2-3_fasePB>


==== MPC4 - Schedule Variance

 #figure(
  image("/img/pdq/MPC4.png", width: 80%),
  caption: [MPC4 - SV],
) <imgMPC4_faseRTB>
*#glossario("RTB")*: Si nota come nei primi periodi, specialmente nel #glossario("periodo") 2, la differenza tra il valore guadagnato e quello pianificato aveva raggiunto un valore negativo a causa del ritardo di completamento delle attività che hanno portato a un disallineamento tra attività pianificate e attività svolte. 

 #figure(
  image("/img/pdq/PB/MPC4.png", width: 80%),
  caption: [MPC4 - SV],
) <imgMPC4_fasePB>


==== MPC5 - Actual Cost


#figure(
  image("/img/pdq/MPC5.png", width: 80%),
  caption: [MPC5 - AC],
) <imgMPC5_faseRTB>
*#glossario("RTB")*: Il grafico mostra il costo totale sostenuto (Actual Cost). Possiamo osservare come nel #glossario("periodo") 4 il costo sia aumentato più rapidamente, assecondando la necessità di recuperare la SA ideale.

#figure(
  image("/img/pdq/PB/MPC5.png", width: 80%),
  caption: [MPC5 - AC],
) <imgMPC5_fasePB>


==== MPC6 - Cost Performance Index

#figure(
  image("/img/pdq/MPC6.png", width: 80%),
  caption: [MPC6 - CPI],
) <imgMPC6_faseRTB>
*#glossario("RTB")*: Il grafico mostra l'efficienza dei costi di progetto, non essendoci distaccati da 1, il valore ottimale, possiamo dire di non aver avuto un costo effettivo maggiore del valore guadagnato.

#figure(
  image("/img/pdq/PB/MPC6.png", width: 80%),
  caption: [MPC6 - CPI],
) <imgMPC6_fasePB>


==== MPC7 - Cost Variance

#figure(
  image("/img/pdq/MPC7.png", width: 80%),
  caption: [MPC7 - CV],
) <imgMPC7_faseRTB>
*#glossario("RTB")*: Il grafico mostra un distacco nel primo #glossario("periodo"), dove si stava ancora migliorando il way of working, generando minor valore rispetto al costo totale (Earned Value minore di Actual Cost).

#figure(
  image("/img/pdq/PB/MPC7.png", width: 80%),
  caption: [MPC7 - CV],
) <imgMPC7_fasePB>


==== MPC8 - Estimated At Completion

#figure(
  image("/img/pdq/MPC8.png", width: 80%),
  caption: [MPC8 - EAC],
) <imgMPC8_faseRTB>
*#glossario("RTB")*: Il grafico mostra come il costo totale al completamento sia rimasto fisso in ogni #glossario("periodo") essendo esso un limite invalicabile.

#figure(
  image("/img/pdq/PB/MPC8.png", width: 80%),
  caption: [MPC8 - EAC],
) <imgMPC8_fasePB>


=== MPC9 - Estimated To Complete

#figure(
  image("/img/pdq/MPC9.png", width: 80%),
  caption: [MPC9 - ETC],
) <imgMPC9_faseRTB>
*#glossario("RTB")*: Il grafico mostra come la risorsa a nostra disposizione diminuisca #glossario("periodo") dopo #glossario("periodo"), inversamente al grafico dell'AC.

#figure(
  image("/img/pdq/PB/MPC9.png", width: 80%),
  caption: [MPC9 - ETC],
) <imgMPC9_fasePB>

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
) <imgMPC12_faseRTB>
*#glossario("RTB")*: Il grafico mostra la presenza di un rischio non previsto per molti periodi ma anche come esso sia poi stato gestito nei periodi 4,5 e 6 portando a 0 il numero di rischi non previsti dimostrando un adattamento ai rischi previsti.

  #figure(
  image("/img/pdq/PB/MPC12.png", width: 80%),
  caption: [MPC12 - Rischi non previsti],
) <imgMPC12_fasePB>

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
- *S*, il test è stato superato
- *NE*, il test non è stato eseguito
- *NI*, il test non è ancora stato implementato


== Test di Sistema

I test di sistema sono finalizzati a verificare il corretto funzionamento dell’intero applicativo, inteso come sistema completo. Questi validano il comportamento del software rispetto ai requisiti funzionali definiti nell’Analisi dei Requisiti e simulano situazioni realistiche d’uso da parte dell’utente finale. Servono a garantire che tutte le componenti, già integrate tra loro, collaborino correttamente per raggiungere gli obiettivi del sistema.

_Nella seguente tabella vengono indicati i test di sistema previsti, con relativo stato._


#align(center)[
  #table(
  columns: (auto, auto, auto, auto),
  align: (col, row) => (center, center, center, center).at(col),
  inset: 6pt,
  table.header([*Codice identificativo*], [*Descrizione*], [*#glossario("Requisito")*], [*Stato*]),
  [T.S.1], [Verificare che l'utente abbia la possibilità di visualizzare i dati un grafico #glossario("3D") interattivo con barre verticali],[F.1.1] ,[S],
  [T.S.2], [Verificare che l'utente abbia la possibilità di reperire dei dati da poter visualizzare nel grafico],[F.1.2] ,[S],
  [T.S.3], [Verificare che l'utente possa inserire manualmente i dati in una tabella tramite l'interfaccia],[F.3.1 - Opzionale] ,[NI],
  [T.S.4], [Verificare che l'utente possa inserire manualmente il valore dell'asse x per caricare un dato],[F.3.2 - Opzionale] ,[NI],
  [T.S.5], [Verificare che l'utente possa inserire manualmente il valore dell'asse y per caricare un dato],[F.3.3 - Opzionale] ,[NI],
  [T.S.6], [Verificare che l'utente possa inserire manualmente il valore dell'asse z per caricare un dato],[F.3.4 - Opzionale] ,[NI],
  [T.S.7], [Verificare che l'utente possa scegliere, come fonte di reperimento dati,  la chiamata all'#glossario("API") esterna Weather Forecast],[F.1.3] ,[S],
  [T.S.8], [Verificare che l'utente possa scegliere, come fonte di reperimento dati,la connessione a #glossario("database") #glossario("SQL") locale],[F.1.4] ,[S],
  [T.S.9], [Verificare che l'utente possa importare i dati tramite il caricamento file .csv],[F.1.5] ,[S],
  [T.S.10], [Verificare che l'utente possa, mediante spostamento del mouse sopra il grafico, ruotare la visualizzazione],[F.1.6] ,[S],
  [T.S.11], [Verificare che l'utente possa, mediante spostamento del mouse sopra il grafico, muoversi solo orizzontalmente come se fosse in un ambiente 2D],[F.1.7] ,[S],
  [T.S.12], [Verificare che l'utente possa, mediante spostamento del mouse sopra il grafico, muoversi solo verticalmente come se fosse in un ambiente 2D],[F.1.8] ,[S],
  [T.S.13], [Verificare che l'utente possa, attraverso le gesture del mouse, ingrandire liberamente l'area di visualizzazione],[F.1.9] ,[S],
  [T.S.14], [Verificare che l'utente possa, attraverso le gesture del mouse, ridurre liberamente l'area di visualizzazione],[F.1.10] ,[S],
  [T.S.15], [Verificare che l'utente possa resettare la visualizzazione del grafico a quella di default renderizzata dall'applicativo tramite un apposito bottone],[F.1.11] ,[S],
  [T.S.16], [Verificare che l'utente, posizionando il cursore sopra una barra del grafico riesca a visualizzarne l'altezza ],[F.1.12] ,[S],
  [T.S.17], [Verificare che l'utente, premendo sopra ad una barra, visualizzi un pannello relativo alla selezione ],[F.1.13] ,[S],
  [T.S.18], [Verificare che l'utente, una volta premuta una barra, riesca a visualizzare le informazioni di quella barra],[F.1.14] ,[S],
  [T.S.19], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di modificare la percentuale di opacizzazione],[F.1.15] ,[S],
  [T.S.20], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di opacizzare tutti i dati che hanno valore minore del valore della barra selezionata],[F.1.16] ,[S],
  [T.S.21], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di opacizzare tutti i dati che hanno valore maggiore del valore della barra selezionata],[F.1.17] ,[S],
  [T.S.22], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di visualizzare il piano che identifica la media dei valori appartenenti all'asse X selezionato],[F.1.18] ,[S],
  [T.S.23], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di visualizzare il piano che identifica la media dei valori appartenenti all'asse Z selezionato],[F.1.19] ,[S],
  [T.S.24], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di attivare l'opzione per visualizzare le sole barre selezionate, opacizzando tutte le altre],[F.1.20] ,[S],
  [T.S.25], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di reimpostare la visualizzazione delle barre selezionate mediante doppio click su una qualsiasi barra],[F.1.21] ,[S],
  [T.S.26], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di reimpostare i filtri di default (sia della barra selezionata che delle barre affette dai cambiamenti applicati attraverso la barra specifica)],[F.1.22] ,[S],
  [T.S.27], [Verificare che l'utente possa chiudere il pannello filtri/informazioni relativo alla barra selezionata],[F.1.23] ,[S],
  [T.S.28], [Verificare che l'utente possa attivare/disattivare la visualizzazione di un #glossario("piano parallelo alla base") del grafico, rappresentante il valore medio globale],[F.1.24] ,[S],
  [T.S.29], [Verificare che l'utente possa visualizzare solo i dati maggiori della media globale, opacizzando le barre con altezza minore],[F.1.25] ,[S],
  [T.S.30], [Verificare che l'utente possa visualizzare solo i dati minori della media globale, opacizzando le barre con altezza maggiore],[F.1.26] ,[S],
  [T.S.31], [Verificare che l'utente possa selezionare o inserire due valori, _n1_ e _n2_, utili al fine del calcolo del range di visualizzazione],[F.1.27] ,[S],
  [T.S.32], [Verificare che l'utente possa visualizzare i soli dati che sono contenuti all'interno di un intervallo di valori, _n1_ e _n2_, (che può essere chiuso o aperto), opacizzando quindi gli altri],[F.1.28] ,[S],
  [T.S.33], [Verificare che l'utente possa selezionare o inserire _n3_ , utile al fine del calcolo delle _n3_ altezze con valore maggiore],[F.1.29] ,[S],
  [T.S.34], [Verificare che l'utente possa visualizzare le sole barre con altezza compresa tra le _n3_ altezze maggiori, con _n3_ definito dall'utente, opacizzando, di conseguenza, le barre con altezza esclusa da questo intervallo],[F.1.30] ,[S],
  [T.S.35], [Verificare che l'utente possa selezionare o inserire _n4_ , utile al fine del calcolo delle _n4_ altezze con valore minori],[F.1.31] ,[S],
  [T.S.36], [Verificare che l'utente possa visualizzare le sole barre con altezza compresa tra le _n4_ altezze minore, con _n4_ definito dall'utente, opacizzando, di conseguenza, le barre con altezza esclusa da questo intervallo],[F.1.32] ,[S],
  [T.S.37], [Verificare che l'utente possa scegliere il metodo di colorazione del grafico],[F.1.33] ,[S],
  [T.S.38], [Verificare che l'utente possa eliminare tutti i filtri applicati al grafico, riportandolo allo stato di default, tramite un apposito bottone],[F.1.34] ,[S],
  [T.S.39], [Verificare che l'utente possa esportare tutte le informazioni relative ad un grafico a cui si sta lavorando, ovvero l'insieme di dati ed i filtri relativi],[F.2.1 - Desiderabile] ,[NI],
  [T.S.40], [Verificare che l'utente possa esportare un'istantanea del grafico],[F.2.2 - Desiderabile] ,[S],
  [T.S.41], [Verificare che l'utente venga avvertito graficamente nel caso abbia inserito un input non conforme alle aspettative],[F.1.35] ,[S],
  [T.S.42], [Verificare che l'utente venga avvertito graficamente nel caso abbia provato a caricare un quantitativo di dati (manualmente o automaticamente) che superano il numero massimo supportato],[F.1.36] ,[S],
  [T.S.43], [Verificare che l'utente venga avvertito graficamente nel caso abbia provato a selezionare un file .csv con la formattazione interna non corretta],[F.1.37] ,[S],
  [T.S.44], [Verificare che l'utente venga avvertito graficamente nel caso abbia provato a caricare dei dati tramite chiamata ad un #glossario("API") esterna che però non ha risposto alla richiesta entro un tempo limite],[F.1.38] ,[S],
  [T.S.45], [Verificare che l'utente venga avvertito graficamente nel caso abbia provato a lasciare un input vuoto, quando invece è richiesto obbligatoriamente un valore],[F.3.5 - Opzionale] ,[S],
  [T.S.46], [Verificare che l'utente venga avvertito graficamente nel caso in cui la connessione al #glossario("database") locale sia fallita],[F.1.39] ,[S],
  [T.S.47], [Verificare che l'utente venga avvertito graficamente nel caso abbia provato a selezionare un file .csv con un peso che supera il limite consentito],[F.1.40] ,[S],
  [T.S.48], [Verificare che l'utente possa accedere direttamente alla pagina dell'applicazione senza sistema di login],[F.1.41] ,[S],
  [T.S.49], [Verificare che l'applicazione possa elaborare dati con coordinate X, Y e Z, dove X e Z definiscono il posizionamento della base della barra nel piano mentre Y definisce l’altezza della barra],[F.1.42] ,[S],
  [T.S.50], [Verificare che l'applicazione deve essere in grado di supportare una quantità massima di dati pari a 1000],[V.1.1] ,[S],
  [T.S.51], [Verificare che l'applicazione possa supportare  un massimo di 300 elementi per le coordinate X e Z mantenendo il limite di 1000 dati],[V.1.2] ,[S],
  [T.S.52], [Verificare che l'applicazione possa supportare il caricamento dati da un file .csv che pesa al massimo 10 MB],[V.1.3] ,[S],
  [T.S.53], [Verificare che l'applicazione venga eseguita correttamente su browser moderni con supporto a WebGL 2.0 e JavaScript ES6], [V.1.4], [S],
  [T.S.54], [Verificare che l'applicazione venga eseguita correttamente su browser con versione almeno pari a: Chrome 89, Firefox 86, Edge 89, Safari 14], [V.1.5], [S],
  [T.S.55], [Verificare che l'applicazione venga eseguita correttamente su dispositivi con CPU a 64 bit, almeno 4 GB di RAM e GPU compatibile con WebGL 2.0], [V.1.6], [S],
  [T.S.56], [Verificare che l'applicazione venga eseguita correttamente su sistemi operativi Windows 10+, macOS 11+ o distribuzioni Linux moderne (es. Ubuntu 20.04+)], [V.1.7], [S],
  )
    <tab:testdisistema>
]


== Test di Accettazione

I test di accettazione hanno lo scopo di verificare che il prodotto sviluppato soddisfi tutte le esigenze e i requisiti concordati con il #glossario("proponente"). Tali test sono stati eseguiti anche in presenza del rappresentate dell'azienda #glossario("proponente"), il quale ha potuto verificare che il prodotto finale fosse conforme a quanto richiesto. \

_Nella seguente tabella vengono indicati i test di accettazione previsti, con relativo stato._


#align(center)[
  #table(
  columns: (auto, auto, auto),
  align: (col, row) => (center, center, center,).at(col),
  inset: 6pt,
  table.header([*Codice identificativo*], [*Descrizione*], [*Stato*]),
  [T.A.1], [Verificare che l’utente, dopo il caricamento della webapp, riesca
a visualizzare il grafico generato] ,[S],
  [T.A.2], [Verificare che l’utente, dopo il caricamento della webapp, visualizzi il menu dedicato alle sezioni per il reperimento dati, per i filtri di visualizzazione e per l'esportazione/salvataggio del grafico],[S],
  [T.A.3], [Verificare che l’utente possa caricare i dati tramite un file .csv],[S],
  [T.A.4], [Verificare che l’utente possa caricare i dati tramite una connessione ad un #glossario("database") SQL locale],[S],
  [T.A.5], [Verificare che l’utente possa caricare i dati tramite chiamata
all’API esterna Weather Forecast],[S],
  [T.A.6], [Verificare che l’utente, una volta inseriti i dati, visualizzi le barre
relative ai dati nelle posizioni corrette],[S],
  [T.A.7], [Verificare che l'utente, posizionandosi con il cursore sopra ad una barra a scelta, visualizzi l'altezza della barra stessa],[S],
  [T.A.8], [Verificare che, una volta che l’utente ha premuto una barra, si
apra il relativo menu per la modifica della barra specifica],[S],
  [T.A.9], [Verificare che l'utente possa, attraverso le gesture del mouse, ingrandire liberamente l'area di visualizzazione],[S],
  [T.A.10], [Verificare che l’utente, una volta premuta una barra, visualizzi le
informazioni corrette relative alla barra premuta],[S],
  [T.A.11], [Verificare che l’utente, una volta premuta una barra, abbia la possibilità di #glossario("opacizzare") tutte le barre che hanno un valore minore
di quello della barra premuta],[S],
  [T.A.12], [Verificare che l’utente, una volta premuta una barra, abbia la possibilità di #glossario("opacizzare") tutte le barre che hanno un valore maggiore
di quello della barra premuta],[S],
  [T.A.13], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di visualizzare il piano che identifica la media dei valori appartenenti all'asse X selezionato],[S],
  [T.A.14], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di visualizzare il piano che identifica la media dei valori appartenenti all'asse Z selezionato],[S],
  [T.A.15], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di attivare l'opzione per visualizzare le sole barre selezionate, opacizzando tutte le altre],[S],
  [T.A.16], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di reimpostare la visualizzazione delle barre selezionate mediante doppio click su una qualsiasi barra],[S],
  [T.A.17], [Verificare che l'utente, una volta premuta una barra, abbia la possibilità di reimpostare i filtri di default (sia della barra selezionata che delle barre affette dai cambiamenti applicati attraverso la barra specifica)],[S],
  [T.A.18], [Verificare che l'utente possa chiudere il pannello filtri/informazioni relativo alla barra selezionata],[S],
  [T.A.19], [Verificare che l’utente, una volta caricata la webapp, abbia la
possibilità di visualizzare un piano che identifica la media globale],[S],
  [T.S.20], [Verificare che l’utente, una volta caricata la webapp, abbia la
possibilità di #glossario("opacizzare") tutte le barre che hanno valore maggiore
della media globale],[S],
  [T.A.21], [Verificare che l’utente, una volta caricata la webapp, abbia la
possibilità di #glossario("opacizzare") tutte le barre che hanno valore maggiore
della media globale],[S],
  [T.A.22], [Verificare che l’utente, una volta caricata la webapp, abbia la possibilità di #glossario("opacizzare") tutte le barre che hanno valore escluso dall'intervallo da lui scelto, in modo da visualizzare solo le barre con altezza compresa tra l'intervallo],[S],
  [T.A.23], [Verificare che l'utente possa visualizzare le sole barre con altezza compresa tra le _n_ altezze maggiori, con _n_ definito dall'utente, opacizzando, di conseguenza, le barre con altezza esclusa da questo intervallo],[S],
  [T.A.24], [Verificare che l’utente, una volta caricata la webapp, abbia la
possibilità di visualizzare un piano che identifica la media relativa
ad un asse X selezionato],[S],
  [T.A.25], [Verificare che l’utente, una volta caricata la webapp, abbia la
possibilità di visualizzare un piano che identifica la media relativa
ad un asse Z selezionato],[S],
  [T.A.26], [Verificare che l'utente possa modificare a sua scelta la modalità di colorazione del grafico: per righe, colonne o valori],[S],
  [T.A.27], [Verificare che l'utente possa visualizzare le sole barre con altezza compresa tra le _n_ maggiori, con _n_ da lui definito. La webapp deve opacizzare le barre con altezza esclusa dall'intervallo],[S],
  [T.A.28], [Verificare che l'utente possa visualizzare le sole barre con altezza compresa tra le _n_ maggiori, con _n_ da lui definito. La webapp deve opacizzare le barre con altezza esclusa dall'intervallo],[S],
  [T.A.29], [Verificare che l'utente possa salvare un'istantanea del grafico],[S],
  [T.S.30], [Verificare che l’utente, una volta caricata la webapp, abbia la
possibilità di eliminare tutti i filtri applicati al grafico],[S],
  [T.A.31], [Verificare che l’utente, durante l’interazione la webapp ed il
grafico, venga avvisato degli errori nel caso di un uso improprio
o di un’anomalia],[S]
  )
    <tab:testdiaccettazione>
]

== Test di Unità

I test di unità sono test a basso livello che si concentrano su singole porzioni di codice, come funzioni o componenti. Il loro scopo è assicurarsi che ogni unità del software si comporti come previsto isolatamente, indipendentemente dalle altre parti del sistema. Questi sono stati individuati ed implementati dai programmatori, durante la fase di codifica, e sono fondamentali per individuare rapidamente errori localizzati e favorire uno sviluppo incrementale e affidabile.

_Nella seguente tabella vengono indicati i test di unità previsti, con relativo stato._

#align(center)[
  #table(
  columns: (auto, auto, auto),
  align: (col, row) => (center, center, center,).at(col),
  inset: 6pt,
  table.header([*Codice identificativo*], [*Descrizione*], [*Stato*]),
  [T.U.1],[Verifica che fetchData() restituisca dati corretti da un'API esterna], [S],
  [T.U.2] ,[Verifica che fetchData() gestisca correttamente un errore client (HTTP 400)], [S],
  [T.U.3] ,[Verifica che fetchData() gestisca correttamente un errore server (HTTP 500)], [S],
  [T.U.4] ,[Verifica che fetchData() gestisca correttamente errori di connessione non dovuti a timeout], [S],
  [T.U.5] ,[Verifica che fetchData() gestisca correttamente errori di timeout], [S],
  [T.U.6] ,[Verifica che fetchData() gestisca correttamente errori inaspettati], [S],
  [T.U.7] ,[Verifica che fetchData() rifiuti contenuti con un tipo MIME non supportato], [S],
  [T.U.8] ,[Verifica che fetchData() gestisca correttamente risposte non di successo (non HTTP 200)], [S],
  [T.U.9] ,[Verifica che il parsing di un CSV valido con più righe e colonne estragga correttamente X, Z e Y.],[S],
  [T.U.10],[Verifica che il parsing di un file CSV vuoto generi un'eccezione InvalidCsvException.],[S],
  [T.U.11] ,[Verifica che il parsing di un file non CSV generi un'eccezione InvalidCsvException.],[S],
  [T.U.12] ,[Verifica che il parsing di un file CSV troppo grande generi un'eccezione FileTooBigException.],[S],
  [T.U.13] ,[Verifica che il parsing di un CSV valido con una sola riga di dati (header + 1 data row) avvenga correttamente.],[S],
  [T.U.14] ,[Verifica che il parsing di un CSV con valori numerici estremi sia corretto.],[S],
  [T.U.15] ,[Verifica che il parsing di un CSV con spazi bianchi intorno ai valori li gestisca correttamente (trim).],[S],
  [T.U.16] ,[Verifica che il parsing di un CSV con meno di 2 righe totali generi un'eccezione InvalidCsvException.],[S],
  [T.U.17] ,[Verifica che il parsing di un CSV con header con meno di 2 colonne generi un'eccezione InvalidCsvException.],[S],
  [T.U.18] ,[Verifica che il parsing di un CSV con un numero di colonne non coerente generi un'eccezione InvalidCsvException.],[S],
  [T.U.19] ,[Verifica che il parsing di un CSV con un campo vuoto generi un'eccezione InvalidCsvException.],[S],
  [T.U.20] ,[Verifica che il parsing di un CSV con valori non numerici dove attesi double generi un'eccezione InvalidCsvException.],[S],
  [T.U.21] ,[Verifica che il parsing di un CSV con più di 300 colonne generi un'eccezione InvalidCsvException.],[S],
  [T.U.22] ,[Verifica che il parsing di un CSV con più di 300 righe generi un'eccezione InvalidCsvException.],[S],
  [T.U.23] ,[Verifica che il parsing di un CSV con più di 1000 dati totali generi un'eccezione TooMuchDataException.],[S],
  [T.U.24], [Verifica che il parsing di un CSV con un numero di colonne non coerente generi un'eccezione InvalidCsvException], [S],
  [T.U.25], [Verifica che il parsing di un CSV con un campo vuoto generi un'eccezione InvalidCsvException], [S],
  [T.U.26], [Verifica che il parsing di un CSV con valori non numerici dove attesi double generi un'eccezione InvalidCsvException], [S],
  [T.U.27], [Verifica che il parsing di un CSV con più di 300 colonne generi un'eccezione InvalidCsvException], [S],
  [T.U.28] ,[Verifica che il parsing di un CSV con più di 300 righe generi un'eccezione InvalidCsvException], [S],
  [T.U.29], [Verifica che il parsing di un CSV con più di 1000 dati totali generi un'eccezione TooMuchDataException], [S],
  [T.U.30], [Verifica che la funzione resetTarget() imposti il target alla posizione predefinita calcolata da utils.defaultTarget], [S],
  [T.U.31], [Verifica che il componente Bar.svelte venga #glossario("renderizzato") correttamente senza errori], [S],
  [T.U.32], [Verifica che il componente BarPane.svelte venga #glossario("renderizzato") correttamente senza errori], [S],
  [T.U.33], [Verifica che BarPane.svelte venga #glossario("renderizzato") quando displayBarFilter è impostato su true], [S],
  [T.U.34], [Verifica che BarPane.svelte non venga #glossario("renderizzato") quando displayBarFilter è impostato su false], [S],
  [T.U.35], [Verifica che le etichette delle informazioni di selezione siano correttamente renderizzate in BarPane.svelte], [S],
  [T.U.36], [Verifica che la funzione resetBarSelection venga chiamata quando viene cliccato il pulsante "Reset selection" in BarPane.svelte], [S],
  [T.U.37], [Verifica che la funzione hideBarFilterPane venga chiamata quando viene cliccato il pulsante "Close" in BarPane.svelte], [S],
  [T.U.38], [Verifica che la funzione setBarFilterSelection venga chiamata quando viene cliccato il pulsante "Display" in BarPane.svelte], [S],
  [T.U.39], [Verifica che la funzione setBarFilterSelection venga chiamata quando viene cliccato il pulsante "Filter higher" in BarPane.svelte], [S],
  [T.U.40], [Verifica che la funzione setBarFilterSelection venga chiamata quando viene cliccato il pulsante "Filter lower" in BarPane.svelte], [S],
  [T.U.41], [Verifica che la funzione setBarFilterSelection venga chiamata quando viene cliccato il pulsante "Reset filter" in BarPane.svelte], [S],
  [T.U.42], [Verifica che tutti i componenti di CameraSettings.svelte vengano caricati correttamente], [S],
  [T.U.43], [Verifica che la funzione resetCamera venga chiamata quando viene cliccato il pulsante "Reset position" in CameraSettings.svelte], [S],
  [T.U.44], [Verifica che la funzione zoomIn venga chiamata quando viene cliccato il pulsante "Zoom In" in CameraSettings.svelte], [S],
  [T.U.45], [Verifica che la funzione zoomOut venga chiamata quando viene cliccato il pulsante "Zoom Out" in CameraSettings.svelte], [S],
  [T.U.46], [Verifica che il componente Chart.svelte venga #glossario("renderizzato") correttamente senza errori], [S],
  [T.U.47], [Verifica che il componente Color.svelte carichi correttamente tutti gli elementi, inclusi "Color type", "columns", "rows" e "values"], [S],
  [T.U.48], [Verifica che la funzione fetchDbData restituisca i dati corretti se la risposta del fetch è positiva], [S],
  [T.U.49], [Verifica che la funzione fetchDbData lanci un errore se la risposta del fetch non è ok], [S],
  [T.U.50], [Verifica che la funzione fetchExternalData restituisca i dati corretti se la risposta del fetch è positiva], [S],
  [T.U.51], [Verifica che la funzione fetchExternalData lanci un errore se la risposta del fetch non è ok], [S],
  [T.U.52], [Verifica che la funzione uploadCsvFile mostri un alert se non viene forSto un file], [S],
  [T.U.53], [Verifica che la funzione uploadCsvFile lanci un errore se il file non è un CSV], [S],
  [T.U.54], [Verifica che la funzione uploadCsvFile lanci un errore se il file è troppo grande], [S],
  [T.U.55], [Verifica che la funzione uploadCsvFile lanci un errore se la richiesta fetch fallisce], [S],
  [T.U.56], [Verifica che la funzione uploadCsvFile restituisca i dati corretti se il file viene caricato correttamente], [S],
  [T.U.57], [Verifica che la funzione uploadCsvFile lanci un errore se la richiesta fetch fallisce con net::ERR_CONNECTION_REFUSED], [S],
  [T.U.58], [Verifica che tutti i componenti di DataFilter.svelte vengano caricati correttamente, inclusi i testi di "Visualization interval", "Show average plane", "Values lower than the global average", "Values higher than the global average", e "Visualization reset"], [S],
  [T.U.59], [Verifica che avgFilter venga impostato su 1 quando viene cliccato il pulsante "Lower than average" in DataFilter.svelte], [S],
  [T.U.60], [Verifica che avgFilter e avgEnabled vengano impostati su 0 quando viene cliccato il pulsante "Reset" in DataFilter.svelte], [S],
  [T.U.61], [Verifica che avgFilter venga impostato su 2 quando viene cliccato il pulsante "Greater than average" in DataFilter.svelte], [S],
  [T.U.62], [Verifica che la checkbox "Show average plane" sia selezionabile e che avgEnabled venga impostato correttamente in DataFilter.svelte], [S],
  [T.U.63], [Verifica che tutti i componenti di DataSource.svelte vengano caricati correttamente, inclusi i testi di "External API", "DB1", "File" e "Send file CSV"], [S],
  [T.U.64], [Verifica che le funzioni fetchExternal e resetCamera vengano chiamate quando viene cliccato il pulsante "Select API" in DataSource.svelte], [S],
  [T.U.65], [Verifica che le funzioni fetchDb e resetCamera vengano chiamate quando viene cliccato il pulsante "Select DB1" in DataSource.svelte], [S],
  [T.U.66], [Verifica che la funzione uploadFile venga chiamata quando viene cliccato il pulsante "Select CSV" in DataSource.svelte], [S],
  [T.U.67], [Verifica che il componente Export.svelte venga #glossario("renderizzato") correttamente senza errori], [S],
  [T.U.68], [Verifica che tutti i componenti di Export.svelte vengano caricati correttamente, inclusi i testi di "Export as image" e "Screenshot"], [S],
  [T.U.69], [Verifica che la funzione takeScreenshot venga chiamata quando viene cliccato il pulsante "Screenshot" in Export.svelte], [S],
  [T.U.70], [Verifica che la funzione getValueFromId restituisca il valore corretto per un dato #glossario("id")], [S],
  [T.U.71], [Verifica che la funzione selectionToggle aggiunga e rimuova correttamente l'#glossario("id") dall'array di selezione], [S],
  [T.U.72], [Verifica che il valore predefinito venga caricato correttamente nelle impostazioni di filtro], [S],
  [T.U.73], [Verifica che la funzione lastValue restituisca 0 se non ci sono barre selezionate], [S],
  [T.U.74], [Verifica che la funzione lastValue restituisca il valore dell'ultima barra selezionata], [S],
  [T.U.75], [Verifica che la funzione set sostituisca correttamente la selezione esistente], [S],
  [T.U.76], [Verifica che la funzione set svuoti la selezione quando viene passata un array vuoto], [S],
  [T.U.77], [Verifica che il filtro venga inizializzato con i valori predefiniti corretti], [S],
  [T.U.78], [Verifica che la funzione resetFilter ripristini i valori del filtro ai valori predefiniti corretti], [S],
  [T.U.79], [Verifica che la variabile rangeValue venga aggiornata correttamente], [S],
  [T.U.80], [Verifica che la variabile avgEnabled venga modificata correttamente], [S],
  [T.U.81], [Verifica che la variabile colorSelection venga aggiornata correttamente], [S],
  [T.U.82], [Verifica che la funzione getSelectedBarInfo restituisca null quando nessuna barra è selezionata], [S],
  [T.U.83], [Verifica che la funzione getSelectedBarInfo restituisca le informazioni corrette della barra quando una barra è selezionata], [S],
  [T.U.84], [Verifica che la funzione takeScreenshot chiami correttamente i metodi di rendering e salvataggio dell'immagine], [S],
  [T.U.85], [Verifica che la funzione downloadImage crei correttamente un link e triggeri il click per il download dell'immagine], [S],
  [T.U.86], [Verifica che la funzione resetCamera ripristini correttamente la posizione della telecamera], [S],
  [T.U.87], [Verifica che la funzione zoomIn modifichi correttamente la posizione della telecamera], [S],
  [T.U.88], [Verifica che la funzione zoomOut modifichi correttamente la posizione della telecamera], [S],
  [T.U.89], [Verifica che la funzione setBarFilterSelection imposti filter.barFilterSelection solo se il valore è ammesso], [S],
  [T.U.90], [Verifica che filter.selection.clear() venga chiamato da setBarFilterSelection quando il valore passato è 0], [S],
  [T.U.91], [Verifica che filter.selection.clear() non venga chiamato da setBarFilterSelection se il valore passato è diverso da 0], [S],
  [T.U.92], [Verifica che la funzione hideBarFilterPane imposti displayBarFilter a false], [S],
  [T.U.93], [Verifica che la funzione isInRange restituisca true se l'altezza è compresa nel range], [S],
  [T.U.94], [Verifica che la funzione isInRange restituisca false se l'altezza è al di fuori del range], [S],
  [T.U.95], [Verifica che la funzione isInRange restituisca false se min e max sono uguali], [S],
  [T.U.96], [Verifica che la funzione passesBarFilter restituisca true se la barra passa il filtro con avgFilter == 0], [S],
  [T.U.97], [Verifica che la funzione passesBarFilter restituisca false se la barra non passa il filtro con avgFilter == 1], [S],
  [T.U.98], [Verifica che la funzione passesBarFilter restituisca false se la barra non passa il filtro con avgFilter == 2], [S],
  [T.U.99], [Verifica che la funzione passesBarFilter restituisca false se la barra non passa il filtro con barFilterSelection == 2], [S],
  [T.U.100], [Verifica che la funzione passesBarFilter restituisca false se la barra non passa il filtro con barFilterSelection == 3], [S],
  [T.U.101], [Verifica che la funzione passesBarFilter restituisca true se nessun filtro è applicato], [S],
  [T.U.102], [Verifica che la funzione getBarColor restituisca il colore predefinito se colorSelection è 0], [S],
  [T.U.103], [Verifica che la funzione getBarColor restituisca un colore basato sulla coordinata x quando colorSelection è 1], [S],
  [T.U.104], [Verifica che la funzione getBarColor restituisca un colore basato sulla coordinata z quando colorSelection è 2], [S],
  [T.U.105], [Verifica che la funzione getBarColor restituisca un colore basato sul valore di altezza quando colorSelection è 3], [S],
  [T.U.106], [Verifica che la funzione isFirstIntersected restituisca true se l'oggetto è intersecato], [S],
  [T.U.107], [Verifica che la funzione isFirstIntersected restituisca false se l'oggetto non è intersecato], [S],
  [T.U.108], [Verifica che la funzione handleTextClick non faccia nulla se l'oggetto non è intersecato], [S],
  [T.U.109], [Verifica che la funzione uploadFile aggiorni fetchedData se uploadCsvFile restituisce dati validi], [S],
  [T.U.110], [Verifica che la funzione uploadFile non modifichi fetchedData se uploadCsvFile restituisce null], [S],
  [T.U.111], [Verifica che la funzione uploadFile chiami console.error quando si verifica un errore durante il caricamento del file], [S],
  [T.U.112], [Verifica che la funzione sortAscData ordini i dati in modo crescente e rimuova i duplicati], [S],
  [T.U.113], [Verifica che la funzione sortAscData restituisca un array vuoto se i dati sono vuoti], [S],
  [T.U.114], [Verifica che la funzione sortAscData mantenga gli elementi unici], [S],
  [T.U.115], [Verifica che la funzione sortDescData ordini i dati in modo decrescente e rimuova i duplicati], [S],
  [T.U.116], [Verifica che la funzione sortDescData restituisca un array vuoto se i dati sono vuoti], [S],
  [T.U.117], [Verifica che la funzione sortDescData mantenga gli elementi unici], [S],
  [T.U.118], [Verifica che la funzione fetchDb aggiorni fetchedData con i dati dal server se disponibili], [S],
  [T.U.119], [Verifica che la funzione fetchDb non aggiorni fetchedData se getDbData restituisce null], [S],
  [T.U.120], [Verifica che la funzione fetchExternal aggiorni fetchedData con i dati dal server se disponibili], [S],
  [T.U.121], [Verifica che la funzione fetchExternal non aggiorni fetchedData se getExternalData restituisce null], [S],
  [T.U.122], [Verifica che la funzione isFirstIntersected restituisca true se l'oggetto è intersecato], [S],
  [T.U.123], [Verifica che la funzione isFirstIntersected restituisca false se l'oggetto non è intersecato], [S],
  [T.U.124], [Verifica che il componente Scene.svelte venga #glossario("renderizzato") correttamente senza errori], [S],
  [T.U.125], [Verifica che il componente SettingsPane.svelte venga #glossario("renderizzato") correttamente senza errori], [S],
  [T.U.126], [Verifica che tutti i componenti di SettingsPane.svelte vengano caricati correttamente, inclusi i testi di "Settings", "Camera", "Source", "Filter", "Color" e "Export"], [S],
  )
    <tab:testdiunita>
]


== Test di Integrazione
#align(center)[
  #table(
  columns: (auto, auto, auto),
  align: (col, row) => (center, center, center,).at(col),
  inset: 6pt,
  table.header([*Codice identificativo*], [*Descrizione*], [*Stato*]),
  [T.I.1],[Verifica che il contesto dell'applicazione si avvii correttamente], [S],
  [T.I.2] ,[Verifica che l’endpoint /api/coordinates risponda correttamente senza parametri (default LARGE)], [S],
  [T.I.3] ,[Verifica che l’endpoint /api/coordinates risponda correttamente con parametro SMALL], [S],
  [T.I.4] ,[Verifica che l’endpoint /api/coordinates risponda correttamente con parametro MEDIUM], [S],
  [T.I.5] ,[Verifica che l’endpoint /api/coordinates risponda correttamente con parametro LARGE], [S],
  [T.I.6] ,[Verifica che l’endpoint /api/coordinates risponda correttamente con parametro non valido (default a LARGE)], [S],
  [T.I.7] ,[Verifica che l’endpoint /api/coordinates gestisca correttamente dati vuoti], [S],
  [T.I.8] ,[Verifica che l’endpoint /api/uploadCsv accetti file CSV validi], [S],
  [T.I.9] ,[Verifica che l’endpoint /api/uploadCsv rifiuti file CSV non validi], [S],
  [T.I.10] ,[Verifica che l’endpoint /api/uploadCsv rifiuti file CSV vuoti], [S],
  [T.I.11] ,[Verifica che l’endpoint /api/uploadCsv rifiuti file non CSV], [S],
  [T.I.12] ,[Verifica che l’endpoint /api/uploadCsv rifiuti file CSV troppo grandi], [S],
  [T.I.13] ,[Verifica che il servizio DefaultExternalDataService recuperi correttamente i dati da un'API esterna], [S],
  [T.I.14] ,[Verifica che il servizio DefaultExternalDataService gestisca correttamente un errore client (HTTP 400)], [S],
  [T.I.15] ,[Verifica che il servizio DefaultExternalDataService gestisca correttamente un errore server (HTTP 500)], [S],
  [T.I.16] ,[Verifica che il servizio DefaultExternalDataService gestisca correttamente errori di connessione non dovuti a timeout], [S],
  [T.I.17] ,[Verifica che il servizio DefaultExternalDataService gestisca correttamente errori di timeout], [S],
  [T.I.18] ,[Verifica che il servizio DefaultExternalDataService gestisca correttamente errori inaspettati], [S],
  [T.I.19] ,[Verifica che il servizio DefaultExternalDataService rifiuti contenuti con un tipo MIME non supportato], [S],
  [T.I.20] ,[Verifica che il servizio DefaultExternalDataService gestisca correttamente risposte non di successo (non HTTP 200)], [S],
  )
    <tab:testdiintegrazione>
]


