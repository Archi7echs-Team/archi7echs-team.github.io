#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 27/03/2025",
  subtitle: "Call con Sanmarco Informatica - verbale esterno nr. 11",
  author: p.lucato,
  state: "",
  intern: false,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "29-03-2025",  "Prima stesura documento", p.lucato, (p.checchinato,p.salvo),
  )
)

_A seguito del lavoro svolto da parte del team durante il nono #glossario("periodo") e dell'impegno preso con l'azienda di aggiornarsi una volta ogni settimana si decide, una volta contattato Alex Beggiato (System Architect Team Leader di Sanmarco Informatica), di convocare una call con il seguente #glossario("ordine del giorno"):_


= Ordine del Giorno
  
+ Informazioni riguardo il lavoro svolto durante l'ultimo periodo
+ Domande e chiarimenti
+ Prossimi passi
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Giovedì 27/03/2025 - ore 16.00 \
  
*Luogo* Online - #glossario("Piattaforma") Google Meet  \
  
*Destinatari* Azienda Sanmarco Informatica e tutti i componenti del gruppo Archi7echs \

= Verbale
 
L'incontro inizia, come da programma alle ore 16.00. Sono presenti i seguenti membri del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

Per Sanmarco Informatica, invece, è presente:
- Alex Beggiato - System Architect Team Leader

#p.lucato si propone come #glossario("verbalizzante") dell'incontro. \
Si procede alla discussione in ordine dei punti all'#glossario("ordine del giorno").
#pb()

#ordine_del_giorno([
== Informazioni riguardo il lavoro svolto durante l'ultimo periodo
#p.lucato mostra il lavoro svolto nel lato backend durante il nono periodo, dimostrando di aver portato a termine l'implementazione del reperimento dei dati anche dall'API esterno di Weather Forecast. Per fare ciò, ha mostrato il processo di build e deploy del backend con Docker che di conseguenza espone gli endpoint per il reperimento dei dati. Viene fatto notare come tutte le modalità di repertimento dei dati (DB, .csv, API esterna) abbiano come oggetto di ritorno un _MatrixData_. Successivamente vengono mostrati tutti i test implemenetati, con l'aggiunta dei test di mutazione di _PITest_. #p.lucato procede con la generazione del _pit_report_ per mostrare ed analizzare i risultati dei test di mutazione. Alex Beggiato consiglia di aggiungere qualche semplice test di unità per aumentare la percentuale di codice coperto, ma si ritiene soddisfatto del lavoro svolto. \
#p.pozzobon mostra il lavoro svolto nel lato frontend, mostrando i requisiti implementati e le funzionalità aggiunte. Fa notare come alcune delle funzionalità implementate non erano presenti nella prima scrittura del documento #glossario("AdR") e che sono state aggiunte in seguito ad una discussione con il team. Presenta come prossimi passi la continuazione degli ultimi requisiti da implementare e il collegamento del lato front-end con quello di back-end per il reperimento dei dati (menù già predisposto). \ Alex Beggiato si ritiene soddisfatto del lavoro svolto e consiglia di aumentare di poco lo spacing tra le barre verticali del grafico, per aiutare l'utente a selezionare quelle più \"interne\" al grafico e di conseguenza quelle più di difficile selezione. \

== Domande e chiarimenti
#p.lucato chiede ad Alex Beggiato alcune domande riguardanti l'interfaccia _MatrixData_ e la sua implementazione, esponendo i suoi dubbi riguardo all'ultima riunione effettuata mostrando in contemporanea l'implementazione che sembrava più coerente con quanto discusso in precendenza. \ Alex Beggiato conferma che l'implementazione mostrata da #p.lucato è corretta e che il lavoro svolto è in linea con quanto discusso. Portare l'oggetto MatrixData ad essere un'interfaccia e implementarla a seconda dell'oggetto di ritorno necessario (in base al tipo di reperimento di dati), permette di avere sempre un'unica interfaccia di ritorno nelle varie funzioni implementate, con la possibilità di aggiungere altre variabili in una futura implementazione, rendendo il codice più robusto e manutenibile.\

== Prossimi passi
Come indicato da Alex Beggiato, verranno implementati i test di unità per il lato back.end. Anche nel lato frontend verranno definiti i test di unità, con la possibilità di scrivere anche i test e2e. Si procederà dunque con il collegamento del front-end con il back-end per il reperimento dei dati con le successive funzioni per il parsing. \
Si iniziano i lavori per la scrittura del documento #glossario("Specifica Tecnica") (#glossario("ST")) e l'inserimento dei nuovi requisiti nel documento #glossario("AdR"). \

== Varie ed eventuali
Non essendoci altri argomenti da discutere l'incontro è terminato alle 16:40. \
Il prossimo incontro #glossario("SAL") è stato programmato per il giorno 04/04/2025 alle 17:00. \
])

= Decisioni

#decisioni((
  [1],[Test di un'unità],[Implementare ulteriori test di unità in alcune classi per aumentare la percentuale di copertura dei test di mutazione],
  [2],[Collegamento front-end con back-end],[Collegare il front-end con il back-end per il reperimento dei dati],
  [3],[Test di unità],[Implementare test di unità per le funzionalità già definite nel lato frontend],
  [3],[Scrittura ST],[Iniziare a scrivere il documento della ST],
  [3],[AdR],[Continuare a scrivere l'AdR e aggiungere i requisiti non presenti],
)) 


= TODO
A seguito di questa riunione non è stata aperta alcuna issue che il team non avesse già aperto.

_Per il dettaglio delle decisioni si rimanda al punto dell'OdG_.


#v(3em)

Padova, 28 marzo 2025

\
#figure(
  [#table(
    columns: (auto, 1fr),
    stroke: none,
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Il #glossario("Verbalizzante"):\ #p.lucato],
    [Il #glossario("responsabile di Progetto"):\ #p.salvo],
  )]
)

#v(2em)
#figure(
  [#grid(
    columns: (auto, 1fr),
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Per Sanmarco Informatica:\ Alex Beggiato \
    #place(center, image("//img/smi_sign.png", width: 120%))
    ],
  )]
)
