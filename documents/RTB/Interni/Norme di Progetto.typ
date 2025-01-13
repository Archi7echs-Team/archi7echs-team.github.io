#import "/templates/documento.typ": *
#import "@preview/plotst:0.2.0": *

#show: conf.with(
  title: "Norme di Progetto",
  subtitle: "",
  author: "Il team",
  state: "Approvato",
  show_outline: true,
  outline_depth: 4,
  changelog: (
    "0.14.1", "12-01-2025", "Aggiunta sottosezione Management - Gestione immagini", p.scandaletti, p.pesenato,
    "0.14.0", "10-01-2025", "Stesura metriche di qualità e riscrittura introduzione e scopo della sezione fornitura", p.valdagno, (p.pesenato,p.pozzobon),
    "0.13.2", "09-01-2025", "Riorganizzazione di alcune sezioni", p.lucato, (p.pesenato,p.pozzobon),
    "0.13.1", "06-01-2025", "Fix - correzione ortografico Introduzione", p.pozzobon, (p.pesenato,p.valdagno),
    "0.13.0", "04-01-2025", "Stesura standard di qualità", p.valdagno, (p.lucato, p.pozzobon),
    "0.12.0", "02-01-2024", "Diagrammi UML (casi d'uso e classi). Documentazione da consegnare ", p.lucato, (p.pesenato, p.pozzobon),
    "0.11.0", "20-12-2024", "Stesura acronimi e abbreviazioni. Ristrutturazione versionamento ", p.pozzobon, (p.salvo,p.valdagno),
		"0.10.0", "19-12-2024", "Stesura gestione e analisi ore lavorative", p.checchinato, (p.scandaletti,p.valdagno),
    "0.9.0", "19-12-2024", "Stesura processi organizzativi-gestione dei processi e correzioni", p.pozzobon, (p.scandaletti,p.valdagno),
    "0.8.0", "17-12-2024", "Stesura comunicazione interna del team", p.pozzobon,(p.salvo,p.valdagno),
    "0.7.0", "16-12-2024", "Stesura norme tipografiche", p.checchinato,(p.salvo,p.valdagno),
    "0.6.0", "15-12-2024", "Stesura processi primari-comunicazioni con proponente e strumenti", p.pozzobon, (p.salvo,p.valdagno),
    "0.5.0", "15-12-2024", "Redatta sezione Gestione dell'assegnazione ruoli", (p.salvo,p.pozzobon), (p.scandaletti,p.valdagno),
    "0.4.1", "10-12-2024", "Fix sezione Verifica e Revisione della documentazione", p.salvo, (p.valdagno,p.checchinato),
    "0.4.0", "26-11-2024",  "Redatta gestione della board e istruzioni per la redazione/verifica dei documenti", p.lucato, p.checchinato,
    "0.3.0", "25-11-2024",  "Redatta sottosezione Documentazione", p.pozzobon, p.salvo,
    "0.2.0", "24-11-2024",  "Redatta sezione Introduzione", p.lucato, p.checchinato,
    "0.1.0", "24-11-2024",  "Redatta la suddivisione del documento", p.pozzobon, p.checchinato,
  )
)

= Introduzione
== Finalità del documento
L'obiettivo del documento è quello di definire le linee guida del gruppo per garantire un lavoro, fortemente asincrono, uniforme, coerente e di qualità. Per garantire la gestione del prodotto, composto da software e documentazione, è necessario un approccio strutturato al #glossario("ciclo di vita"). \
Tale documento è redatto secondo lo standard #glossario("ISO 12207:1995"), il quale identifica i processi di un ciclo di vita di un software, secondo una struttura modulare con relativa responsabilità su ciascun processo. \

== Glossario 
All'interno del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html")[_glossario_]. Tutte le parole consultabili nel glossario saranno identificate da una "#text(blue)[G]" in colore blu. Facendo click sul collegamento si aprirà una scheda del browser con il glossario 
== Riferimenti <Riferimenti>
Il documento è stato redatto con riferimento alla seguente documentazione.
=== Link al capitolato C5 - 3Dataviz
- Riferimento al capitolato 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]] - _Ultimo accesso al documento 22/11/2024_
=== Slide del corso IS
- Riferimento alle slide IS: *_Processi di ciclo di vita_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf]] - Sezione sullo standard ISO 12207:1995 -  _Ultimo accesso al documento 22/11/2024_
- Riferimento alle slide IS: *_Gestione
di progetto_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf]] -  _Ultimo accesso al documento 12/12/2024_
- Riferimento alle slide IS: *_Regolamento del progetto didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]] -  _Ultimo accesso al documento 12/12/2024_

#pb()

= Processi Primari
== Fornitura
=== Introduzione
Secondo lo standard #glossario("ISO/IEC 12207:1995"), la fornitura viene definita come un insieme strutturato di attività e processi per la gestione e lo sviluppo del progetto e quindi per realizzare il prodotto software richiesto dal committente.

=== Scopo
Il processo si concentra sul monitoraggio e sulla gestione delle attività svolte dal team durante le varie fasi del progetto, dalla concezione iniziale fino alla consegna, assicurandosi che il prodotto finale rispetti i requisiti concordati con il committente, oltre a essere realizzato entro i tempi e i costi stabiliti. In questo modo viene garantita una visione completa e coerente della gestione delle attività durante l’intero #glossario("ciclo di vita") del progetto.

=== Comunicazione con l'azienda proponente
Le comunicazioni con Sanmarco Informatica, azienda #glossario("proponente") del progetto, avvengono principalmente via Google Chat.
Alex Beggiato, System Architect Team Leader, si rende disponibile a rispondere a eventuali domande o dubbi bloccanti durante il periodo secondo la modalità di cui sopra oppure attraverso una riunione dedicata via Google Meet. \
Gli incontri di Stato Avanzamento Lavori, #glossario("SAL"), vengono fissati di volta in volta a fine periodo, fermo restando di non superare, salvo esplicite motivazioni, le due settimane dall'incontro precedente. \
Durante tale incontro, con relativo #glossario("verbale esterno"), il responsabile del periodo in corso rendiconta, in via generale, quanto svolto lasciando poi la parola ai diretti interessati per esposizione dettagliata del lavoro svolto e chiarimento di dubbi.

=== Documentazione da consegnare
In questa sezione vengono indicati i documenti che saranno consegnati all'azienda proponente _Sanmarco Informatica_ e ai committenti Prof. Tullio Vardanega e Prof. Riccardo Cardin.

==== Analisi dei Requisiti
All'interno vengono definite le funzionalità che la nostra webapp deve supportare, in modo da garantire un ottimo studio preliminare approfondito del progetto. Il documento deve contenere:
- *Casi d'uso*: che rappresentano in modo formale le funzionalità di un sistema, illustrando le attività svolte durante un’interazione
- *UML casi d'uso*: che rappresentano in modo grafico/visivo l'interazione tra un attore e uno o più casi d'uso
- *Requisiti*: ovvero l'insieme delle funzionalità richieste e quelle proposte in sede interna al gruppo. E' dunque tutto quello che è stato pensato per far funzionare al meglio la webapp 

==== Lettera di presentazione
Quando si deve consegnare quanto fatto (RTB o PB) ai committenti Prof. Tullio Vardanega e Prof. Riccardo Cardin è necessario farlo tramite un'invio di una mail *priva di allegati*, ma con un solo puntatore alla _Lettera di presentazione_ che deve essere in repo. E' dunque un documento che attesta il "completamento" di una delle due parti del progetto, dichiarando di essere pronti alla revisione di tutta la documentazione/materiale fatta fino a quel momento. All'interno della _Lettera di presentazione_ ci deve essere:
- *Introduzione*: per indicare lo scopo del documento
- *Link alla documentazione*: un puntatore che riporta alla repo del gruppo, dov'è possibile reperire tutta la documentazione
- *Lista di documenti presenti*: ovvero l'insieme dei verbali sia interni che esterni che il gruppo ha redatto durante il periodo, la documentazione "interna" e la documentazione "esterna".
- *Lista dei componenti del gruppo*: una semplice tabella che indica il nome e cognome accompagnati dalla matricola di ogni singolo componente del gruppo

==== Piano di Progetto
Documento fondamentale per il gruppo, che permette di eseguire delle buone retrospettive, con un automiglioramento sia per il breve che per il lungo termine. All'interno del documento ci devono essere i seguenti punti:
- *Analisi dei rischi*: ovviamente è indispensabile per una buona pianificazione di ogni singolo periodo, per avere già delle tecniche e strategie da applicare quando 
- *Informazioni del progetto*: ovvero tutte quelle informazioni che è bene tenere traccia (e anche modificare in futuro).
  - Tempi di consegna previsti
  - Costi previsti
  - Struttura della pianificazione di un periodo
  - Struttura di quanto accaduto nell'effettivo durante un periodo
- *Lista dei periodi*: ovvero l'insieme tra il preventivo e il consuntivo, di quello che è accaduto, quello che è andato quanto pianificato e soprattutto quello che invece non era stato pianificato, fondamentale per l'automiglioramento

==== Piano di qualifica
Documento che serve al team per descrivere come è stata garantita l'efficienza durante il progetto. Questo serve per garantire ai committenti, all'azienda proponente e al team, che ci sono dei processi selezionati solo allo scopo di verificare che quanto fatto sia di ottima qualità, che sono state investite quantità di risorse ottime e che il prodotto rispetti le aspettative richieste. All'interno del documento dunque devono essere presenti:
- *Test del prodotto*: per garantire che il prodotto soddisfi quanto proposto dai committenti e dall'azienda proponente è necessario eseguire una serie di test che, solo dopo il loro test positivo, è possibile dichiarare un prodotto "soddisfacente"
  - *Test di sistema*
  - *Test di integrazione*
  - *Test di unità*
- *Metriche per garantire la qualità dei processi*: verifica e validazione dei processi, dunque come garantire che ogni processo abbia il risultato atteso (buona qualità con un quantitativo di risorse investite ottimo)
- *Metriche per garantire la qualità del prodotto*: verifica e validazione per garantire che il prodotto sia conforme a tutti gli obbiettivi di qualità

== Strumenti
Sono attivi i seguenti strumenti e canali di comunicazione a disposizione dei membri del team:
- *Gruppo Telegram* per le comunicazioni rapide ed informali
- *Canale Discord* per le riunioni del gruppo in videoconferenza e le comunicazioni ufficiali, organizzate nei relativi sotto-canali
- *Gmail* per le comunicazioni ufficiali con il committente
- *Google Chat* per le comunicazioni con l'azienda proponente
- *Google Meet* per le riunioni in conferenza con l'azienda proponente
- *Google Drive e suite Google Documenti* per l'archiviazione e la modifica dei file condivisi del gruppo, quali:
  - Foglio appunti riunioni
  - Foglio ore condiviso

#pb()
= Processi di Supporto
== Documentazione 
Questa sezione tratta le norme per la redazione della documentazione del gruppo, in linea con l'organizzazione del team, allineando lo stile e la gestione delle revisioni.
=== Modelli di documento
La redazione di tutta la documentazione del gruppo avviene in #glossario("Typst") utilizzando i templates messi a disposizione nell'apposita cartella "templates" della #glossario("repository") \
I modelli di documento sono:
- documento
- allegato
- carta intestata
==== Documento
Questo #glossario("template") viene utilizzato per la redazione di tutta la documentazione interna ed esterna. \ 
Nella prima pagina del documento devono essere indicati, oltre a titolo e sottotitolo:
- *autore del documento*
- *tipologia del documento* (#glossario("Interno") o #glossario("Esterno"))
- *ultima modifica*
- *stato del documento* (Bozza oppure Approvato)
L'aggiornamento di autore e tipologia del documento è a cura del #glossario("redattore") del documento.  \
Lo stato del documento viene posto in _Bozza_ dal #glossario("redattore") e aggiornato dal #glossario("verificatore") quando il documento raggiunge una versione che ne consente l'#glossario("approvazione") e #glossario("rilascio"). \
L'ultima modifica viene aggiornata automaticamente ad ogni modifica della #glossario("Tabella delle revisioni"), prendendo la data dell'ultima #glossario("revisione") come data di ultima modifica. \
L'indice si aggiorna automaticamente in base alle sezioni di Typst, per il dettaglio su come suddividere correttamente il documento in sezioni e sottosezioni si rimanda alla documentazione ufficiale di Typst.

_ Per la gestione della tabella delle revisioni si fa riferimento all'apposita sezione, @tabella_revisioni, di questo documento. _ 
==== Allegato
Questo #glossario("template") viene utilizzato per la redazione degli allegati ai verbali (#glossario("interni") ed #glossario("esterni")). E' compito di chi redige l'allegato indicare, nell'apposita sezione nell'intestazione del documento:
- numero allegato (num progressivo riferito al verbale)
- numero di verbale (esplicitando se #glossario("interno") o #glossario("esterno"))
- data del verbale

Il documento di questa tipologia viene inserito nello stesso documento del verbale.

==== Carta intestata
Questo #glossario("template") viene utilizzato per tutte le comunicazioni ufficiali in uscita verso un destinatario esterno. \
E' compito di chi redige il documento indicare, nell'apposita sezione:
- destinatario del documento
- mezzo di invio del documento
- oggetto del documento


=== Redazione dei verbali
La modalità di redazione dei verbali #glossario("interni") ed #glossario("esterni") è la medesima. \
Nella prima pagina di contenuto, ovvero la pagina nr. 3, è necessario indicare, in ordine:
- breve sezione, scritta in _italic_ con motivo e modalità della convocazione
- #glossario("ordine del giorno")
- dettagli dell'incontro, con riferimento a:
 - data e ore della convocazione
 - luogo (in presenza oppure online, specificando in questo caso la #glossario("piattaforma")
 - destinatari dell'incontro
- verbale, specificando:
  - presenze


Dopo le presenze si procede con il riassunto della discussione dei relativi punti dell'#glossario("OdG"), da riportare in ordine. L'ultima sezione deve sempre essere  "*Varie ed eventuali*"" indicando, se ci sono state, discussioni di punti extra OdG ed orario di fine dell'incontro.

Il verbale deve inoltre contenere, nella relativa sezione del #glossario("template"):
- una tabella con un riassunto delle decisioni prese.  Ogni riga di questa deve contenere il riferimento al punto dell'#glossario("OdG"), per consentire al lettore di approfondire la sezione di interesse senza dover leggere tutto il documento, l'argomento e la decisione presa.
- una tabella #glossario("TODO") con riferimento alle #glossario("issue") create relativamente alle decisioni prese. In quest'ultima è necessario indicare #glossario("ID") della #glossario("issue"), assegnatario (se presente, in caso contrario "-"), descrizione del #glossario("task").

Alla fine del documento deve essere indicato Luogo e Data, sede del gruppo, e la data della riunione, #glossario("Verbalizzante") e #glossario("Responsabile di Progetto") e, nel caso di #glossario("verbale esterno"), firma, per approvazione, di un rappresentante dell'azienda.

=== Registro delle modifiche e versionamento <tabella_revisioni>
La tabella contenete il #glossario("registro delle modifiche"), situata a pagina 2 dei verbali e della documentazione del gruppo, escluso quindi allegati e carta intestata, deve essere aggiornata, da colui che redige il documento oppure ci effettua una modifica, ogni volta che un documento viene mandato in revisione. E' necessario indicare, in ogni riga della tabella, la data, la descrizione delle modifiche effettuate, l'autore delle modifiche e attribuire un numero di versione, secondo lo #glossario("schema x.y.z"), incrementando il valore _z_ . Il #glossario("revisore"), invece, oltre ad inserire il proprio nome nell'apposita cella, è tenuto a verificare che il numero di versione sia corretto. E' a cura di quest'ultimo, quindi, valutare l'eventuale incremento del valore _y_. L'incremento del valore _x_ avviene, invece, nello specifico caso del progetto, quando la documentazione viene consegnata al committente nelle due fasi di revisione: #glossario("RTB") e #glossario("PB"). 

== Standard UML per la stesura di alcuni documenti
All'interno dell'analisi dei requisiti è ovviamente di fondamentale importanza la presenza dei casi d'uso, descritti come: 
- *Descrizione*: una breve descrizione del caso d'uso che identifica chiaramente la funzione che il sistema deve svolgere.
- *Attore*: l’entità che interagisce col sistema, è un’entità esterna su cui non si possono effettuare modifiche.
- *Precondizioni*: le condizioni che definiscono lo stato iniziale del sistema e degli attori prima che l'interazione inizi.
- *Postcondizioni*: le condizioni che descrivono lo stato finale del sistema.
- *Scenario principale*: la sequenza di passi standard che descrive l'interazione principale tra l'attore e il sistema per completare un caso d’uso.
- *Scenari alternativi*: rappresentano dei casi particolari, ovvero quando uno dei passi dello scenario principale non è andato a buon fine ed è dunque necessario specificare come comportarsi in queste circostanze.

Per tutti quei casi d'uso che interagiscono con altri è molto importante inserire il _diagramma del caso d'uso_

=== Diagramma casi d'uso
I diagrammi dei casi d'uso sono una rappresentazione visiva utilizzata nell'ingegneria del software per descrivere le interazioni tra gli utenti (attori) e un sistema o applicazione. Fanno parte del linguaggio di modellazione UML e si concentrano su ciò che il sistema deve fare dal punto di vista dell'utente, piuttosto che sul "come" viene implementato.
I diagrammi dei casi d'uso, dunque, aiutano a identificare e documentare i requisiti funzionali del sistema, mostrando cosa deve essere fatto per soddisfare le esigenze degli utenti.

- *Chiarezza nella comunicazione*: Forniscono una rappresentazione semplice e intuitiva, comprensibile sia per i team tecnici che per i non tecnici, come stakeholder e clienti.
- *Base per ulteriori sviluppi*: Servono come punto di partenza per altre attività di progettazione e sviluppo, come la definizione dei diagrammi di sequenza, di attività o di stato.
- *Riduzione delle ambiguità*: I diagrammi forniscono una visione chiara delle funzionalità del sistema, evitando fraintendimenti e malintesi tra i vari membri del team.
- *Strumento di comunicazione universale*: Sono una rappresentazione standardizzata e riconosciuta che facilita la collaborazione tra persone con competenze e background diversi.

Per descrivere un caso d'uso con un suo diagramma dunque, il team utilizza uno standard, indicato nelle sezioni successive
==== Identificare un caso d'uso
Un caso d'uso è una descrizione di una funzionalità o servizio specifico offerto da un sistema, visto dal punto di vista dell'utente (attore esterno). Rappresenta un obbiettivo che un attore cerca di raggiungere attraverso l'interazione con il sistema. Viene rappresentato tramite un semplice ovale con un nome al suo interno. La sua nomenclatura è del tipo "UC N - Nome caso d'uso"
\ \
#figure(
  image("/img/ndp/casoduso.png", width: 40%),
  caption: [Identificare un caso d'uso],
) <casoduso>
\
E' possibile inoltre identificare un sottocaso d'uso. La nomenclatura è del tipo "UC N.n - Nome sottocaso d'uso" dove si intende che è è il sottocaso n del caso d'uso N
#figure(
  image("/img/ndp/sottocasoduso.png", width: 40%),
  caption: [Identificare un sottocaso d'uso],
) <sottocasoduso>
\
==== Identificare un attore
Un attore è un'entità esterna che interagisce con un sistema o applicazione per raggiungere un obiettivo specifico. L’attore rappresenta un "omino stilizzato" che utilizza o interagisce con il sistema modellato, ma non fa parte del sistema stesso.
\ \
#figure(
  image("/img/ndp/attore.png", width: 20%),
  caption: [Identificare un attore],
) <attore>

==== Identificare la webapp (sistema)
Il sistema, nel nostro caso la webapp, indica la "zona" in cui i casi (o sottocasi) d'uso vengono inseriti. E' rappresentato da un semplice rettangolo con all'interno i casi d'uso e all'esterno l'attore
\ \
#figure(
  image("/img/ndp/sistema.png", width: 40%),
  caption: [Identificare la webapp (sistema)],
) <sistema>

==== Identificare le relazioni 
Le relazioni nei diagrammi dei casi d’uso descrivono come gli elementi del sistema interagiscono tra loro. In particolare, rappresentano le connessioni tra attori e casi d’uso, oppure tra diversi casi d’uso. Servono a chiarire il comportamento del sistema, mostrando le dipendenze, le collaborazioni e le estensioni delle funzionalità. Ci sono vari tipi di relazioni: associazione, inclusione, estensione e generalizzazione.

===== Associazione
Collega un attore a un caso d’uso, indicando che l’attore interagisce con quel caso. E' rappresentato da una semplice linea
\ \
#figure(
  image("/img/ndp/associazione.png", width: 60%),
  caption: [Identificare la relazione associazione ],
) <associazione>
\ \ \
===== Inclusione
Indica che un caso d’uso include un altro caso come parte del suo flusso principale e si utilizza per evitare ripetizioni di azioni comuni a più casi d’uso. Viene rappresentata da una freccia tratteggiata con etichetta «include».
\ \ 
#figure(
  image("/img/ndp/inclusione.png", width: 85%),
  caption: [Identificare la relazione inclusione],
) <inclusione>

\
===== Estensione (e condizioni)
Indica che un caso d’uso può estendere un altro caso d'uso aggiungendo comportamenti opzionali o condizionali. In sostanza quindi aumenta le funzionalità di uno use case. E' rappresentata da una freccia tratteggiata con etichetta «extend».\
Attenzione: la freccia va dal caso da cui si vuole estendere verso il caso d'uso che estende. 
\ \ 
#figure(
  image("/img/ndp/estensione.png", width: 85%),
  caption: [Identificare la relazione estensione],
) <estensione>
In questo caso dunque, il caso d'uso N ha ora delle funzionalità (condizionate dalla condizione) del caso d'uso M. \
Per indicare una condizione è sufficiente collegare alla freccia tratteggiata con scritto "extend" un commento con inscritta la condizione

===== Generalizzazione
Lo scopo principale è quello di aggiungere o modificare le caratteristiche di base. Indica quindi un rapporto gerarchico, dove un attore o un caso d’uso più specifico eredita caratteristiche da uno più generico. Si utilizza per rappresentare specializzazioni di ruoli o di comportamenti ed è rappresentata da una freccia con linea continua e punta vuota (non tratteggiata).

Esistono quindi due tipi di generalizzazioni: generalizzazione tra attori e generalizzazioni tra use case

#figure(
  image("/img/ndp/generalizzazioneattori.png", width: 10%),
  caption: [Identificare la relazione generalizzazione tra attori],
) <generalizzazioneattori>
\ \ \
#figure(
  image("/img/ndp/generalizzazionecasiduso.png", width: 30%),
  caption: [Identificare la relazione generalizzazione tra casi d'uso],
) <generalizzazionecasiduso>

Dunque i figli possono aggiungere delle funzionalità rispetto ai padri oppure modificarne il comportamento


=== Diagramma delle classi
Nei futuri documenti, durante le fasi di progettazione, sarà necessario rappresentare graficamente non più solo quello che l'utente desidera poter fare (interazioni con il sistema) ma anche come lo si andrà ad implementare. A questo scopo è quindi fondamentale impostare delle regole UML per la rappresentazione delle classi tramite diagrammi. Le funzionalità principali sono:
- *Modellare la struttura del sistema*: Forniscono una visione dettagliata di come le entità del sistema (classi) sono definite e come interagiscono tra loro.
- *Progettazione e Documentazione*: Sono utili durante la fase di progettazione per definire l’architettura del software e durante lo sviluppo per documentare il sistema.
- *Supporto per il Codice*: Possono essere utilizzati durante la fase di sviluppo per scrivere il codice o per comprendere e modificare un sistema esistente.
- *Facilitare la Comunicazione*: Rappresentano un linguaggio comune tra sviluppatori, analisti, progettisti e stakeholder.

Come per i diagrammi UML per i casi d'uso, il team utilizzerà degli "standard" per la scrittura dei diagrammi delle classi, descritti nelle sezioni successive
==== Identificare una classe
Una classe in UML è rappresentata come un rettangolo diviso in tre sezioni:
- *Nome della classe*: La prima sezione contiene il nome della classe, scritto in grassetto e centrato (in corsivo se la classe è astratta).
- *Attributi*: La seconda sezione elenca le proprietà della classe, indicando il tipo di dati e la visibilità (es. privato o pubblico).
  \ La definizione è: \ _Visibilità nome : tipo [molteplicità] = default {proprietà aggiuntive}_
- *Metodi*: La terza sezione elenca i metodi o le operazioni che la classe può eseguire, specificandone i parametri e il tipo di ritorno.
\ 
#figure(
  image("/img/ndp/classe.png", width: 60%),
  caption: [Identificare una classe],
) <classe>
Il simbolo che c'è prima di un'attributo è detto _visibilità_ e può essere di 4 tipi:
- *+* indica che la visibilità è pubblica
- *-* indica che la visibilità è privata
- *\#* indica che la visibilità è protetta
- *∼* indica che la visibilità è di package
\
Le _proprietà aggiuntive_ possono essere:
- _Orderd_ : Per array o vettori
- _Unordered_: Per gli insiemi

==== Identificare le relazioni
Come per quanto riguarda gli UML per i casi d'uso, le relazioni tra classi sono molto importanti per indicare come si "relazionano" tra loro.

===== Associazione
Identifica che un'istanza di una classe è legata a una o più istanze di un'altra classe. Viene identificata da una semplice linea continua orientata.\ 
#figure(
  image("/img/ndp/associazioneclassi.png", width: 80%),
  caption: [Identificare la relazione associazione tra classi],
) <associazioneclasse>

Alla fine della freccia è possibile indicare la _molteplicità_:\
- *1* (uno a uno): Un oggetto di una classe è associato a un solo oggetto dell'altra.
- *0..1* (zero o uno): Un oggetto di una classe può essere associato a nessun oggetto o 1 oggetto dell'altra classe.
- *0..\** (zero o più): Un oggetto di una classe può essere associato a nessun oggetto o a più oggetti dell'altra classe.
- *1..\** (uno o più): Almeno un oggetto di una classe è associato a uno o più oggetti dell'altra.
- *n* (es. 3): Un numero specifico di associazioni.

===== Aggregazione
Rappresenta un legame "parte di" tra due classi. In questa relazione, una classe (il "tutto") è composta da una o più istanze di un'altra classe (le "parti"), ma le "parti" possono esistere indipendentemente dal "tutto". Dunque un oggetto è composto da altri oggetti, ma le parti possono avere una vita indipendente e non sono distrutte quando il tutto viene eliminato. Viene indicato con una linea e un rombo vuoto vicino alla classe che è parte di un'altra classe
\ \
#figure(
  image("/img/ndp/aggregazioneclassi.png", width: 80%),
  caption: [Identificare la relazione aggregazione tra classi],
) <aggregazione>
Quindi in questo esempio B è parte di A.

===== Composizione
E' una relazione simile all'aggregazione, con il sostanziale cambiamento che una classe fa parte di un'altra classe, ma non può esistere indipendentemente, ma solo se fa parte dell'altra classe. Viene rappresentato tramite una linea con un rombo pieno alla fine.
\ \
#figure(
  image("/img/ndp/composizioneclassi.png", width: 75%),
  caption: [Identificare la relazione composizione tra classi],
) <composizioneclasse>
\ 
Quindi in questo esempio B è parte della classe A ma B non può esistere indipendentemente, ma solo come parte di A

===== Generalizzazione
_A generalizza B, se ogni oggetto di B è anche un oggetto di A_\
Il concetto è quello dell'ereditarietà della programmazione ad oggetti dove ci sono classi che ereditano da altre (chiamate classi figlie o sottoclassi). Viene identificata da una freccia con la punta vuota.
\ \
#figure(
  image("/img/ndp/generalizzazioneclassi.png", width: 80%),
  caption: [Identificare la relazione generalizzazione tra classi],
) <generalizzazioneclasse>
Quindi in questo esempio B è figlia di A (superclasse)

===== Dipendenza
La _definizione_ è: _Si ha dipendenza tra due elementi di un diagramma se la modifica alla definizione del primo (fornitore) può cambiare la definizione del secondo (client)_.
*E' importante che le dipendenze siano minimizzate (_loose coupling_)*.\
Indica che una classe utilizza l'altra per svolgere una funzione specifica o per accedere a un servizio. In altre parole, una classe dipende da un'altra quando un cambiamento nella classe dipendente potrebbe influenzare la classe che dipende da essa. E' quindi una relazione "debole" grazie al suo basso grado di accoppiamento. E' identificato da una freccia tratteggiata orientata.
\ \
#figure(
  image("/img/ndp/dipendenzaclassi.png", width: 80%),
  caption: [Identificare la relazione dipendenza tra classi],
) <dipendenzaclasse>

Quindi un cambiamento in B _potrebbe_ influenzare un cambiamento in A, ma un cambiamento in A _non influenza_ B.

==== Classi di associazione
Aggiungono attributi e operazioni alle associazioni. Sono utilizzate per rappresentare informazioni aggiuntive o comportamenti specifici che appartengono a una relazione tra due (o più) classi, ma che non sono strettamente parte di nessuna delle due classi connesse. Per la rappresentazione è una classe (rettangolo) collegata alla linea di associazione tramite una linea tratteggiata. \ \

#figure(
  image("/img/ndp/classidiassociazione.png", width: 80%),
  caption: [Identificare le classi di associazione],
) <classidiassociazione>
\
==== Interfacce
L'interfaccia è una classe priva di implementazione. Una classe _realizza_ un'interfaccia se ne implementa le operazioni. Con UML 2.x viene identificata come un cerchio (_"Ball" notation_)
#figure(
  image("/img/ndp/interfacciaclassi.png", width: 80%),
  caption: [Identificare le classi di associazione],
) <interfacciaclassi>
In questo caso la classe A implementa la funzione "funz" dell'interfaccia "Interfaccia" che non ha la sua implementazione

E' possible inoltre dichiarare il fatto che una classe ha la necessità di "collegarsi" con un'interfaccia per poter accedere ad alcune funzionalità. Ad esempio: 

#figure(
  image("/img/ndp/interfaccerichieste.png", width: 100%),
  caption: [Identificare le classi di associazione],
) <interfaccerichieste>

Questo significa che il _singleton_ PagamentoFactory ha bisogno (require) dell'interfaccia _IPagamento_ per "accedere" a _Bonifico_.

== Acronimi ed abbreviazioni
Nella documentazione prodotta dal gruppo vengono utilizzati, vista la ripetizione dei termini, i seguenti acronimi e le seguenti abbreviazioni:

#align(center)[
    #table(
      columns: (auto, auto),
    align: (col, row) => (center, center).at(col),
    inset: 6pt,
    table.header([*Acronimo*], [*Parola*]),
    [AdR],[Analisi dei Requisiti],
    [UC], [Use Case],
    [NdP], [Norme di Progetto],
    [PdP], [Piano di Progetto],
    [PdQ], [Piano di Qualifica],
    [PoC], [Proof of Concept],
    [RTB], [Requirements and Technology Baseline],
    [PB], [Product Baseline],
    [MVP], [Minimum Viable Product]
    )
    <tab:acronimi>
] 

#align(center)[
    #table(
      columns: (auto, auto),
    align: (col, row) => (center, center).at(col),
    inset: 6pt,
    table.header([*Abbreviazione*], [*Parola*]),
    [G],[Glossario]
    )
    <tab:abbreviazioni>
] 




== Verifica e Revisione della documentazione
Il #glossario("verificatore"), una volta ricevuta la richiesta di #glossario("Pull Request"), attivata secondo l'apposita procedura, è tenuto alla revisione del documento sia dal punto di vista sintattico-lessicale e grammaticale che da quello del contenuto. Il compito dell' #glossario("amministratore") inoltre, include il controllo e l’aggiornamento dei riferimenti del #glossario("Glossario"), assicurandosi che non vi siano parole mancanti. In caso di errori di battitura o sintattici può procedere direttamente il #glossario("verificatore") alla correzione senza modificare la tabella delle revisioni. Nel caso invece in cui le modifiche da fare riguardino il contenuto del documento, quest'ultimo deve essere restituito all'autore della #glossario("Pull Request") con i commenti di quanto riscontrato durante la revisione. In questo caso quindi l'iter ripartirà dalla modifica, versionamento e aggiornamento della #glossario("Pull Request"). Il #glossario("responsabile") inoltre, dovrà svolgere lo stesso lavoro dopo la conferma del #glossario("verificatore") per garantire l'approvazione finale. Nel caso in cui il documento che richieda approvazione sia stato redatto dal #glossario("responsabile"), l'approvazione finale viene data dall'#glossario("amministratore"), che otterrà temporaneamente il ruolo di #glossario("responsabile") per questo compito.

=== Processo per la verifica della documentazione <processo_verifica>
Questa sezione presenta tutte le istruzioni che vengono applicate, dalla creazione/modifica del file fino alla sua verifica, per garantire la qualità del documento.

==== Redattore

+ ```bash git checkout sources``` --- per spostarsi sul branch di lavoro
+ ```bash git pull``` --- per scaricare le ultime modifiche
+ ```bash git checkout -B <nome_branch>``` --- per creare un nuovo branch di lavoro, partendo dal branch di lavoro sources
+ Crea dei file o modifica i file esistenti
+ ```bash git add .``` o ```bash git add --all``` --- per aggiungere i file modificati nell'area di staging
+ ```bash git commit -m "messaggio"``` --- per creare un commit con i file aggiunti in staging
+ ```bash git push --set-upstream origin <nome_branch>``` --- per caricare il nuovo branch e le modifiche sul repository remoto
+ Aprire la #glossario("Pull Request") 
 - La #glossario("Pull Request") può essere aperta tramite un pulsante "Create #glossario("Pull Request")" presente nella pagina iniziale del repository
 - La #glossario("Pull Request") può essere aperta andando nella pagina "Pull Requests", impostando "nome_branch" come branch sorgente e "sources" come branch di destinazione. Premere successivamente il pulsante "Create #glossario("Pull Request")"
 -  *ATTENZIONE*. Impostare il merge al branch _sources_ (viene selezionato in automatico se è stato creato il nuovo branch a partire dal branch _sources_). E' molto importante fare sempre attenzione a questo punto, per non incorrere a problemi di merge.
+ Una volta creata, si assegna il #glossario("verificatore") nella sezione "Reviewers" a destra della pagina della #glossario("Pull Request") senza dimenticare d'inserire anche il #glossario("responsabile"), le labels, la board sotto la voce project e la #glossario("milestone") se presenti.
+ Collega la/le issue/issues alla #glossario("Pull Request") nella sezione "Development" a destra della pagina per la modifica della stessa. Questo permette di chiudere tutte le issue associate una volta che la #glossario("Pull Request") è stata approvata.
 - *ATTENZIONE*. L'impostazione delle issue va effettuata *DOPO* la creazione della #glossario("Pull Request") e non prima. Questo serve per garantire che venga aggiunto il messaggio del link tra issue e #glossario("Pull Request").
Il merge verso il branch _sources_ verrà effettuata dal #glossario("responsabile") solo dopo la modifica/verifica del documento.

==== Verificatore - Responsabile
Questa sezione presenta tutte le istruzioni a cui attenersi, dal momento in cui il documento è stato modificato fino alla sua verifica.
+ ```bash git pull``` --- per scaricare le ultime modifiche
+ ```bash git checkout <nome_branch>``` --- per spostarsi sul branch dove ci sono le modifiche da verificare
+ Controlla i documenti che sono stati modificati
 - Se ci sono errori di battitura o sintattici, corregge il documento in locale procedendo poi con i commit
 + ```bash git add .``` o ```bash git add --all``` --- per aggiungere i file modificati nell'area di staging
 + ```bash git commit -m "messaggio"``` --- per creare un commit con i file aggiunti in staging
 + ```bash git push``` --- per caricare le modifiche sul branch
+ Decidere se approvare o meno la #glossario("Pull Request")
 - Se si decide di non approvarla per mancanza di informazioni importanti, si dovrà rifiutare la #glossario("Pull Request") e indicare i motivi del rifiuto:
 	+ Premere su "Add your review" in alto a destra
 	+ Premere su "Review changes" e selezionare "Request changes", scrivendo i motivi del rifiuto
 	+ Premere su "Submit review"
 	+ Attendere che il #glossario("relatore") apporti le modifiche richieste
 - Se si decide di approvare la #glossario("Pull Request"), procedere con i seguenti passaggi per il merge:
 	+ Premere su "Add your review" in alto a destra
 	+ Premere su "Review changes" e selezionare "Approve"
 	+ Premere su "Submit review"
Tutte le istruzioni sopra descritte sono valide anche per il #glossario("responsabile") che dovrà inoltre seguire le indicazioni riportate di seguito (quest'ultime devono essere ignorate dal #glossario("verificatore")).
+ Premere su "Merge pull request" e successivamente su "Confirm merge"
+ Una volta effettuato il merge, comparirà un bottone "Delete branch" che permette di eliminare il ramo di lavoro. Questo passaggio è fondamentale per mantenere pulita la repository e non avere branch inutilizzati. 

== Comunicazione interna
La comunicazione interna del gruppo, fondamentale per lo svolgimento del progetto e allineamento dei task, si divide in due categorie:
- Comunicazione *sincrona*
- Comunicazione *asincrona*

=== Comunicazione sincrona
Il team, per allinearsi, si riunisce online il *martedì pomeriggio* della settimana in cui non è previsto l'incontro con l'azienda #glossario("proponente"). In questa riunione ogni membro del team relaziona quanto fatto nel periodo in corso, evidenziando eventuali criticità o fattori di rallentamento nello sviluppo dei task. Viene poi fatta una mini retrospettiva complessiva che consente di assumere eventuali decisioni per la prevenzione o risoluzione di problematiche non previste. Durante questo incontro viene aggiornata la #glossario("project board") con le nuove issue assegnate ai membri. Al termine di ogni incontro sarà cura dell'amministratore redigere apposito #glossario("verbale interno"). \
È a cura del responsabile di progetto valutare, concordando con il gruppo, eventuali riunioni di allineamento aggiuntive.  \ 
Ogni incontro dovrà, in ogni caso, essere preceduto da convocazione mediante i canali di messaggistica del team.

==== Strumenti
Le riunioni online del team avvengono attraverso la piattaforma *#glossario("Discord")*. \
Le convocazioni avvengono invece, nei seguenti canali di messaggistica :
- *#glossario("Discord")*, canale di comunicazione ufficiale del team
- *#glossario("Telegram")*, canale di comunicazione informale del team

=== Comunicazione asincrona
La comunicazione asincrona avviene sia tra tutto il team che tra i singoli componenti, attraverso i canali di comunicazione del gruppo e le piattaforme di messaggistica. \
Questo tipo di comunicazione risulta fondamentale per consentire il corretto proseguimento dei task senza il vincolo delle sole riunione.

==== Strumenti
Le comunicazioni tra tutti i membri del gruppo avvengono nei canali di messaggistica messi a disposizione, ovvero:
- *#glossario("Discord")*, canale di comunicazione ufficiale del team
- *#glossario("Telegram")*, canale di comunicazione informale del team

Le comunicazioni interne tra i membri del gruppo, invece, possono avvenire in modalità di messaggistica o riunione online scegliendo tra le piattaforme gratuite presenti in rete.

#pb()

= Management

== Gestione dell'assegnazione dei ruoli
Il team distribuisce, in accordo con i membri, i ruoli ad ogni periodo. L'obiettivo è garantire a ciascun componente del gruppo, secondo un criterio di rotazione, l'assegnazione di ogni compito durante lo svolgimento del progetto. \
I criteri che vengono considerati ad ogni scelta sono i seguenti:
- disponibilità dei singoli nel periodo seguente
- ruoli precedentemente coperti
- tendenza ad alternare i ruoli tra due periodi contigui
- possibilità di lasciare ruoli non coperti se non necessari per la fase successivamente
- possibilità di assegnare uno stesso ruolo a più membri se necessario

Vengono di seguito descritti i 6 ruoli previsti per lo sviluppo del progetto.

=== Responsabile
La figura di riferimento del gruppo e che lo rappresenta all'esterno, si
occupa del coordinamento e gestione delle risorse.  \
Nel dettaglio la figura del Responsabile si occupa di:
- Organizzare il periodo di riferimento, assegnando ruoli e creando #glossario("issue")
- Monitorare l'andamento del #glossario("periodo") in corso mediante analisi della #glossario("Project board") e raccogliendo feedback dai diretti interessati
- Organizzare e condurre le riunioni interne del team
- Illustrare, durante i #glossario("SAL") periodici con il proponente, il lavoro svolto dal gruppo 
- Predisporre il #glossario("diario di bordo")
- Valutare e gestire i rischi
- Approvare modifiche alla documentazione, secondo l'apposito procedimento
- Stesura del #glossario("PdP") con previsioni e retrospettive

=== Amministratore
Figura con il compito di assicurare l’efficienza, gestione e controllo dell’ambiente IT di lavoro nonché di supporto alla figura del Responsabile. \
Nel dettaglio la figura dell'Amministratore si occupa di:
- Controllare e garantire il corretto funzionamento della #glossario("repository")
- Studiare i processi interni per renderli più efficienti
- Garantire la sicurezza della #glossario("repository")
- Aggiornare il foglio ore relativamente al periodo in corso
- Scrittura e aggiornamento delle Norme di Progetto
- Sostituire il Responsabile in caso di sua temporanea assenza
- Aggiornare il glossario
- Approvare, dopo la verifica, i documenti redatti o modificati dal Responsabile

=== Analista
Figura con il compito di analisi ed illustrazione tecnica del problema. E' richiesto, da parte di tale ruolo, la perfetta conoscenza del dominio. \
Nel dettaglio la figura dell'Analista si occupa di:
- Studiare il dominio e individuare gli #glossario("UC")
- Redigere l'#glossario("AdR") in tutte le sue sezioni
- Supportare le figure del Progettista e del Programmatore

=== Progettista
Figura con il compito di individuare e determinare le scelte realizzative. E' richiesto, da parte di questa figura, competenze tecniche e tecnologiche aggiornate.

=== Programmatore
Figura con il compito di seguire la fase di codifica. Ha la responsabilità della realizzazione e mantenimento del codice. Questa figura richiede competenze tecniche ma deleghe limitate.

=== Verificatore
Figura a supporto di ogni attività del progetto. Sono richieste conoscenze e competenze tecniche e la conoscenza dettagliata delle Norme di Progetto del gruppo. \
Nel dettaglio la figura del Verificatore si occupa di:
- Controllare che la documentazione redatta sia corretta, senza errori ortografici, di contenuto e che rispetti le Norme di Progetto
- Mandare in approvazione i documenti al responsabile di progetto

Per le attività in capo a tale figura si rimanda al procedimento per la gestione delle modifiche della documentazione - @processo_verifica

== Gestione della board <gestione_board>
Il team utilizza la board di GitHub per la gestione delle issue e delle attività. \
Essa è suddivisa in colonne, ognuna delle quali rappresenta uno stato dell'attività. \
+ *To Do*: rappresenta il nostro #glossario("backlog"), ovvero tutte le attività che devono essere svolte
+ *In Progress*: attività in corso di svolgimento
+ *In review*: attività completata e in attesa di verifica
+ *Done*: attività completata e verificata

=== Processo di utilizzo board
+ Assegnazione di un'attività: l'attività viene assegnata a un membro del team
  - Se c'è la presenza di un "sottogruppo" di lavoro, le decisioni relative al come suddividere le attività saranno a carico del "responsabile" del sottogruppo. Si attua quindi una sorta di "divide et impera" per garantire una maggiore efficienza e una migliore gestione delle attività.
+ Inizio dell'attività: il membro del team assegnato sposta l'attività dalla colonna *To Do* a *In Progress*
+ Completamento dell'attività: il membro del team sposta la card dalla colonna *In Progress* a *In review*
+ Verifica dell'attività: il #glossario("verificatore") controlla la #glossario("Pull Request") associata all'attività e, se viene approvata, per la struttura data alla #glossario("repository"),l'attività verrà spostata in automatico da *In review* a *Done* 

Sarà compito del #glossario("responsabile") del #glossario("progetto") controllare che le attività siano assegnate correttamente e che la board sia aggiornata. Inoltre, assegnerà il grado di priorità, in modo da garantire che quelle più importanti siano svolte per prime.

== Gestione e Analisi delle ore di lavoro

La gestione delle ore di lavoro e dei relativi costi è uno degli aspetti fondamentali per monitorare l’andamento del progetto. A tal fine, ogni membro del team dispone di una sezione del foglio ore creato tramite Google Sheets, che permette di registrare, riepilogare e analizzare le ore svolte e i costi associati. Inoltre, i dati inseriti nel foglio sono integrati con Grafana, un servizio che fornisce un cruscotto di monitoraggio visivo e analitico. Di seguito sono spiegate in dettaglio le diverse sezioni e funzionalità.

=== Struttura e utilizzo del foglio ore
Il foglio ore si compone di due parti principali:
+ *Riepilogo dei Costi* (sezione sinistra)
	- Questa sezione fornisce un quadro complessivo delle ore totali e dei costi associati ai vari ruoli svolti nei vari periodi.
	- *Colonne principali*:
		- *Ruolo*: elenca i ruoli ricoperti (es. Responsabile, Amministratore, Verificatore, ecc.).
		- *Periodo X*: numero di ore svolte per ruolo nel periodo X.
		- *Tot. h*: somma delle ore svolte per ciascun ruolo.
		- *€/ora*: tariffa oraria di ciascun ruolo.
		- *Costo*: calcolo del costo totale ottenuto moltiplicando le ore svolte per la tariffa oraria.
	- Questa sezione consente di monitorare immediatamente i costi associati a ciascun ruolo e verificare se i tempi e i budget sono in linea con le previsioni.
+ *Tabella Oraria per Periodo* (sezione destra)
	- La sezione a destra è suddivisa in *periodi di riferimento*, ciascuno indicato con un numero progressivo e date specifiche.
	- *Colonne principali*:
		- *Data*: rappresenta il giorno specifico per cui vengono registrate le ore.
		- *Ruoli*: ciascun ruolo ha una colonna dedicata (es. Responsabile, Amministratore, Verificatore, ecc.).
		- *Ore svolte*: l’utente inserisce manualmente le ore svolte per ogni ruolo, in corrispondenza della data indicata.
	- Al termine del periodo, il totale delle ore inserite viene calcolato automaticamente e riportato nel riepilogo a sinistra, fornendo una chiara visione delle ore effettivamente lavorate.
=== Integrazione con Grafana
I dati raccolti nel foglio ore sono automaticamente collegati a Grafana, un servizio di monitoraggio che permette di visualizzare l’andamento del progetto attraverso grafici e dashboard interattive. Questo collegamento permette di avere un’analisi più approfondita e visiva delle attività svolte. La dashboard di Grafana è suddivisa in diverse sezioni chiave:
+ *Stato delle Issue*
	- Grafana monitora le attività del repository GitHub, mostrando:
	 - *Issue aperte e chiuse* in un grafico a torta.
	 - *Issue in corso, in revisione e completate* evidenziando il loro stato attuale.
+ Riepilogo di tutte le *pull request* e in che stato si trovano.
+ Stato della *board* di GitHub (#link(<gestione_board>)[*4.2 Gestione della board*]).
+ *Andamento Ore e Costi*
 - Questa sezione fornisce un confronto visivo tra le *ore previste* e le *ore effettivamente* svolte per ciascun ruolo.
 - Il grafico in basso a sinistra evidenzia:
  - *Ore Previste*: rappresentate in giallo.
	 - *Ore Effettive*: rappresentate in verde.
+ *Andamento Costi Preventivati vs Effettivi*
	- In basso a destra, un grafico a linea mostra:
	 - *Costi Preventivati*: i costi stimati durante la pianificazione del periodo.
	 - *Costi Effettivi*: i costi registrati a fine periodo.
	- Questo confronto permette di valutare eventuali scostamenti rispetto al piano iniziale e di adottare misure correttive.
+ *Riepilogo delle Attività*
 - Nella sezione centrale una tabella riporta i ruoli assegnati per il periodo corrente.
	
  
== Norme tipografiche

I documenti devono rispettare standard tipografici e sintattici uniformi per garantire chiarezza e coerenza. Di seguito, si riportano le regole principali da seguire.

=== Regole Sintattiche
==== Nomi dei file
- I documenti iniziano con una lettera maiuscola.
- Il nome del documento è composto dalle parole che indicano il tipo e l’argomento principale del documento. Se il nome è formato da più parole, queste devono essere separate da spazi (es. Norme di Progetto, Piano di Progetto).
- I verbali seguono il formato AAAA-MM-GG, dove AAAA-MM-GG rappresenta la data dell’incontro a cui il verbale si riferisce.
==== Stili del testo
- *Grassetto*: evidenzia informazioni chiave come definizioni, titoli di sezioni o termini importanti.
- *Corsivo*: evidenzia parole tecniche o concetti introdotti per la prima volta.
- *Glossario*: i termini inseriti nel glossario sono contrassegnati da una #text(blue)[G] blu in pedice. Ad esempio, il termine #glossario("verificatore") appare con una #text(blue)[G] blu sotto di esso.
- *Link*: i collegamenti ipertestuali sono visualizzati in blu, come nel caso del link nella sezione #link(<Riferimenti>)[1.3]
- *Titoli*: seguono una gerarchia fino al livello H4, con formattazione coerente (H1, H2, H3, H4).
- *Font e dimensioni*: il font scelto è Roboto Serif, con una dimensione di 12 pt per il corpo del testo, e interlinea 1,5.
- *Margini*: i margini sono impostati a 2 cm sui lati orizzontali e 2,5 cm sui lati verticali.
- *Elenchi*:
	- *Elenchi puntati*: devono essere usati per elencare oggetti, idee o concetti che non seguono un ordine particolare. Ad esempio, per elencare requisiti, caratteristiche, o attività che non sono sequenziali.
	- *Elenchi numerati*: devono essere utilizzati quando si descrivono attività che devono essere eseguite in un ordine preciso, come per le procedure passo passo, le istruzioni sequenziali o le fasi di un processo.

== Gestione immagini
- Ogni immagine presente nei documenti deve essere salvata nella cartella _img_
- Per ogni documento che utilizzi immagini non condivise con altri documenti, è necessario creare una sottocartella con il nome del suddetto documento in cui inserire le immagini ad esso relative

#pb() 
= Processi organizzativi
E' fondamentale che il gruppo sia allineato nelle tempistiche e modalità di organizzazione dei processi nell'ottica di una corretta gestione dei task ed eventuali rischi annessi. 

== Gestione dei processi
Un #glossario("processo") è un insieme di attività correlate  e coese che trasformano bisogni (input) in prodotti (output) secondo specifiche regole. \

L'intero ciclo di vita di ogni processo è supportato dalla gestione di questo mediante il sistema di #glossario("Issue") di #glossario("Github"). 

La gestione di un processo è composta da diverse fasi:
 + Identificazione e definizione
 + Pianificazione
 + Monitoraggio
 + Gestione dei rischi
 + Retrospettiva

=== Identificazione e definizione di processi
Elemento fondamentale per la gestione di un processo è l'identificazione di questo. Un processo viene indicato come una minima attività che compone il progetto, indipendentemente essa sia di progettazione, analisi, codifica o gestione/amministrazione del progetto stesso. 

==== Identificazione mediante sistema Issue di Github 
Ogni processo viene identificato da:
- *ID*, generato automaticamente dal sistema
- *Nome* 
- *Descrizione*, se necessaria
- *Membro* (o membri) del team assegnati
- *#glossario("Label")*, fondamentale per identificare l'appartenenza del processo. Ogni #glossario("label") si riferisce alla relativa parte di documentazione/codifica di cui il processo fa parte. Nel dettaglio:
  - AdR
  - Agg_sito
  - Candidatura
  - Fix, per indicare la correzione di un errore ed è obbligatorio associare una seconda label che identifichi l'appartenenza del processo
  - Glossario
  - NdP
  - PdP
  - PdQ
  - V.E.
  - V.I.
- *Progetto*, configurazione di Github necessaria per poter gestire la issue mediante la #glossario("Project Board")
- *#glossario("Milestone")*, per identificare il periodo a cui il processo è associato
=== Pianificazione 
Ogni processo viene associato ad un #glossario("periodo"), indicato nel sistema di #glossario("Issue") come #glossario("Milestone"). 
Tale associazione consente di identificare il processo dentro una fase, definita da una data di inizio ed una fine, definendo quindi un termine massimo di completamento, salvo specifica indicazione a preventivo o motivazione a consuntivo. Tale gestione consente inoltre di avere una visione su tutti i processi, consentendo il monitoraggio e la retrospettiva del periodo stesso con stime di tempi, risorse e costi necessari per il completamento delle #glossario("Issue").

=== Monitoraggio
E' necessario conoscere, in ogni momento, lo stato di avanzamento del processo mediante un corretto utilizzo della #glossario("Project Board") di #glossario("Github"). Ogni #glossario("Issue") infatti appartiene ad uno stato, in tempo reale, che rappresenta il processo. E' a cura dell'assegnatario della #glossario("Issue") identificare e aggiornare lo stato del processo mediante trascinamento nella #glossario("Project Board") nello stato corretto:
- *Todo*, #glossario("Issue") creata ma non ancora iniziata
- *In progress*, #glossario("Issue") in lavorazione
- *In review*, #glossario("Issue") completata e in attesa di verifica
- *Done*, #glossario("Issue") terminata

La board permette al responsabile di progetto di intervenire tempestivamente in caso di problematiche che sono sorte o stanno per sorgere. \
E' compito del responsabile di progetto interfacciarsi con l'assegnatario della #glossario("Issue") qualora si presentasse qualche situazione di rischio per trovare una soluzione a questa. \
Se un membro del gruppo nota difficoltà non previste durante lo svolgimento del processo è tenuto ad avvisare tutto il team e sarà cura del responsabile trovare una soluzione al problema presentato.

=== Gestione dei rischi
Ogni processo può essere soggetto a rischi, indicati nel Piano di Progetto. Una corretta prevenzione e gestione dei rischi, come indicato al punto precedente, richiede il corretto e tempestivo aggiornamento di una board. \
Il responsabile di progetto, al verificarsi di una situazione di rischio, è tenuto a prendere decisioni volte all'eliminazione di tale rischio con l'obiettivo di terminare i processi nei tempi previsti e rispettando le procedure ed indici di qualità. Tali decisioni vengono indicate e motivate nei #glossario("verbali interni") e nel #glossario("PdP"), in quest'ultimo nella sezione di #glossario("retrospettiva") del periodo.

=== Retrospettiva
Ogni singolo processo è parte integrante della retrospettiva del periodo, dove eventuali criticità devono essere evidenziate e giustificate. \
Durante l'incontro periodico #glossario("SAL") con il proponente viene relazionata, da coloro che hanno seguito i processi interessati dalla riunione, la retrospettiva del processo stesso.

#pb()
= Standard di qualità
Per una corretta gestione del #glossario("ciclo di vita") del progetto e per garantire la qualità dei processi e del prodotto software verranno adottati i seguenti standard internazionali sviluppati dall'#glossario("ISO"):
- *#glossario("ISO/IEC 9126")*: lo standard per la valutazione della qualità del prodotto software. Questo modello consente di analizzare e valutare il software in base a caratteristiche fondamentali, quali funzionalità, affidabilità, usabilità, efficienza, manutenibilità e portabilità. Queste caratteristiche sono misurabili attraverso delle metriche. La scelta di questo standard riflette l’obiettivo di fornire un prodotto che soddisfi pienamente le specifiche richieste del progetto. \
- *#glossario("ISO/IEC 12207:1995")*: lo standard per il #glossario("ciclo di vita") del software, che definisce un insieme strutturato di processi per la gestione e lo sviluppo del progetto. Questo standard prevede la suddivisione in processi primari, di supporto e organizzativi, garantendo una visione completa e coerente della gestione delle attività durante l’intero #glossario("ciclo di vita") del progetto. \
Questa combinazione di standard consente di bilanciare l'attenzione sulla qualità del prodotto con un approcio metodico alla gestione dei processi, assicurando un risultato finale che sia funzionale, efficiente e conforme alle migliore pratiche internazionali. 

== Modello di qualità secondo Standard ISO/IEC 9126
Di seguito vengono elencate e descritte le categorie fondamentali che classificano il modello. Ciascuna di queste è caratterizzata a sua volta da delle sotto-caratteristiche. Una delle sotto-caratteristiche comuni a tutte le categorie è la *conformità*, che si riferisce alla capacità del software di rispettare standard tecnici, norme e regolamenti relativi alla specifica caratteristica.

=== Funzionalità
É la capacità del software di fornire funzioni che soddisfino i requisiti specificati o impliciti, con sotto-caratteristiche come:
  - *Adeguatezza*: è la capacità del software di fornire un appropriato insieme di funzioni per soddisfare i requisiti specifici dell'utente.
  - *Accuratezza*: è la capacità del software di fornire i risultati corretti in modo tale che corrispondano a quanto richiesto.
  - *Interoperabilità*: è la capacità del software di interagire ed operare con altri sistemi.
  - *Sicurezza*: è la capacità del software di proteggere informazioni e dati da accessi non autorizzati.

=== Affidabilità
Misura la capacità del software di mantenere un livello di prestazioni specificato in determinate condizioni, anche in presenza di errori, per un periodo di tempo stabilito. Le sue sotto-caratteristiche sono:
  - *Maturità*: è la capacità del software di gestire in modo stabile le operazioni, evitando errori, malfunzionamenti e risultati non corretti.
  - *Tolleranza agli errori*: è la capacità di mantenere prestazioni specificate anche in caso di errori.
  - *Recuperabilità*: è la capacità del software di ripristinare un livello appropriato di prestazioni in caso di errori.

=== Usabilità
É la capacità del software di essere compreso, appreso e utilizzato dall'utente in condizioni specifiche. Le sotto-caratteristiche dell'usabilità sono:
  - *Comprensibilità*: è la facilità con la quale l'utente può capire le funzionalità disponibili e come queste possono essere utilizzate per raggiungere i propri obiettivi. Include la chiarezza dell'interfaccia utente e delle informazioni presentate.
  - *Apprendibilità*: è la facilità con la quale gli utenti possono apprendere come utilizzare il sistema.
  - *Operabilità*: è la capacità del software di consentire agli utenti di operare e controllare il sistema senza difficoltà.
  - *Attrattiva*: è la capacità del software di essere gradevole  per l'utente che ne fa uso, attraverso elementi di piacevolezza come aspetti grafici o interattivi.

=== Efficienza 
É la capacità del software di fornire prestazioni adeguate rispetto alle risorse utilizzate, in condizioni specifiche. Le sotto-caratteristiche dell'efficienza sono:
  - *Comportamento temporale*: è la capacità di fornire adeguati tempi di risposta ed elaborazione durante l'esecuzione. 
  - *Utilizzo delle risorse*: è la capacità del software di utilizzare la quantità appropriata di risorse del sistema.

=== Manutenibilità 
É la facilità con cui un sistema software può essere modificato per correggere difetti e migliorare le prestazioni. Le sue sotto-caratteristiche sono:
  - *Analizzabilità*: è la facilità con la quale è possibile analizzare il codice per localizzare un errore o un difetto nello stesso.
  - *Modificabilità*: è la facilità con cui il software può essere modificato per aggiungere nuove funzionalità o per cambiare quelle esistenti.
  - *Stabilità*: è la capacità del software di evitare nuovi errori o difetti durante o dopo una modifica.
  - *Testabilità*: è la facilità con cui il software può essere testato per verificare la correttezza delle modifiche. É fondamentale per garantire che non vegano introdotti difetti e che il sistema funzioni come previsto.

=== Portabilità 
É la facilità con cui un software può essere trasferito da un ambiente a un altro. Le sue sotto-caratteristiche sono:
  - *Adattabilità*: è la capacità del software di essere modificato per adattarsi a nuovi ambienti senza necessitare di grandi modifiche.
  - *Installabilità*: è la facilità con cui il software può essere installato in un nuovo ambiente.
  - *Coesistenza*: è la capacità del software di funzionare correttamente insieme ad altri sistemi o software già presenti nello stesso ambiente, senza causare conflitti o interferenze.
  - *Sostituibilità*: é la facilità con cui il software può sostituire o essere sostituito da altre applicazioni nello stesso ambiente.

#pb()
== Suddivisione dei processi secondo Standard ISO/IEC 12207:1995
=== Processi primari
Sono i processi che comprendono le attività direttamente legate allo sviluppo del software, si occupano quindi della realizzazione, distribuzione e manutenzione del prodotto software. \
L'obiettivo di questi processi è garantire che il prodotto sia consegnato e mantenuto secondo i requisiti.

=== Processi di supporto
Sono i processi che includono la gestione dei documenti e dei processi di controllo della qualità, dunque non producono direttamente il software, ma forniscono attività e servizi necessari per garantire la qualità ed efficacia. \
L'obiettivo di questi processi è garantire che i processi primari funzionino in modo fluido e il prodotto finale soddisfi gli standard richiesti.

=== Processi organizzativi 
Sono i processi che coprono gli aspetti manageriali e di gestione delle risorse dunque forniscono la struttura e le pratiche a livello organizzativo per gestire e migliorare i processi primari e di supporto. \
L'obiettivo di questi processi è garantire che l'organizzazione sia in grado di supportare lo sviluppo, la gestione e il miglioramento continuo dei processi e dei prodotti.

#pb()

 = Metriche di qualità
 Le metriche di qualità sono misure oggettive e quantificabili per valutare e monitorare la qualità dei processi di sviluppo e del prodotto software. Servono dunque a garantire che il software soddisfi i requisiti richiesti e rispetti gli standard di qualità stabiliti, inoltre permettono di controllare l'andamento del progetto e quindi di individuare eventuali aree critiche dove adottare procedure di miglioramento. \
 Le due categorie principali sono:
 - *metriche di qualità del processo*: valutano la qualità dei processi di sviluppo e gestione;
 - *metriche di qualità del prodotto*: valutano direttamente le caratteristiche del software.

 == Metriche di qualità del processo
 Ogni metrica di questa sezione verrà identificata come segue:
 #align(center)[*MPC.NumProgressivo*] 
 Dove *MPC* è l'abbreviazione di #strong[M]etriche di qualità del #strong[P]ro#strong[C]esso e *NumProgressivo* è un intero che aumenta con ogni metrica. \
 Le formule di alcune di queste metriche utilizzano il valore #glossario("BAC"), che sta per _Budget At Completion_, ossia il costo totale pianificato per completare il progetto.
 === Processi primari
 - *MPC1*:
  - *Nome*: Schedule Adherence (*SA*)
  - *Descrizione*: percentuale di attività completate entro le scadenze stabilite.
  - *Obiettivo*: misurare quanto il progetto rispetta i tempi previsti.
  - *Formula*: _SA = #math.frac("attività completate in tempo", "attività pianificate") x 100_

- *MPC2*:
  - *Nome*: Earned Value (*EV*)
  - *Descrizione*: rappresenta il valore del lavoro effettivamente completato fino a quel periodo.
  - *Obiettivo*: misurare il progresso del progetto.
  - *Formula*: _EV = lavoro completato(%) x #glossario("BAC")_
  
- *MPC3*:
  - *Nome*: Planned Value (*PV*)
  - *Descrizione*: rappresenta il valore del lavoro pianificato da completare entro una determinata data.
  - *Obiettivo*: determinare quanto lavoro dovrebbe essere completato in un certo momento del progetto.
  - *Formula*: _PV = lavoro pianificato(%) x #glossario("BAC")_
  
- *MPC4*:
  - *Nome*: Schedule Variance (*SV*)
  - *Descrizione*: differenza tra il valore del lavoro completato e quello pianificato fino a un dato momento del progetto.
  - *Obiettivo*: rilevare la presenza di ritardi rispetto al piano iniziale, permettendo di intervenire tempestivamente.
  - *Formula*: _SV = EV - PV_

- *MPC5*:
  - *Nome*: Actual Cost (*AC*)
  - *Descrizione*: rappresenta il costo effettivo sostenuto per il lavoro completato fino a una data specifica.
  - *Obiettivo*: fornire una visione chiara delle spese effettive.
  - *Formula*: _somma dei costi effettivi_ (dato ricavabile dall'esito dei periodi nel #glossario("PdP"))

- *MPC6*:
  - *Nome*: Cost Performance Index (*CPI*)
  - *Descrizione*: misura l'efficienza dei costi di un progetto, confrontando il valore guadagnato (EV) con il costo effettivo (AC).
  - *Obiettivo*: fornire un'indicazione dell'efficacia nell'uso delle risorse economiche.
  - *Formula*: _CPI = #math.frac("EV", "AC")_

- *MPC7*:
  - *Nome*: Estimated At Completion (*EAC*)
  - *Descrizione*: stima il costo totale previsto per completare il progetto, tenendo conto del rendimento attuale.
  - *Obiettivo*: fornire una previsione aggiornata dei costi finali del progetto.
  - *Formula*: _EAC = #math.frac("BAC", "CPI")_

- *MPC8*:
  - *Nome*: Estimated To Complete (*ETC*)
  - *Descrizione*: rappresenta la stima dei costi necessari per completare il lavoro rimanente di un progetto.
  - *Obiettivo*: fornire una previsione dei costi futuri.
  - *Formula*: _ETC = EAC - AC_

=== Processi di supporto
- *MPC9*:
  - *Nome*: Percentuale di Casi di Test Superati (*PCTS*)
  - *Descrizione*: misura la percentuale di casi di test eseguiti che hanno avuto esito positivo rispetto al totale dei casi di test eseguiti.
  - *Obiettivo*: valutare l'efficacia dei test nel garantire che il software soddisfi i requisiti e non presenti errori.
  - *Formula*: _PCTS = #math.frac("casi di test superati", "casi di test eseguiti") x 100_

- *MPC10*:
  - *Nome*: Percentuale di Metriche Soddisfatte (*PMS*)
  - *Descrizione*: misura la percentuale di metriche di qualità che sono state soddisfatte.
  - *Obiettivo*: valutare in modo globale il livello di qualità raggiunto.
  - *Formula*: _PMS = #math.frac("metriche soddisfatte", "metriche totali") x 100_

=== Processi organizzativi
- *MPC11*:
  - *Nome*: Rischi Non Previsti (*RNP*)
  - *Descrizione*: rappresenta il numero di rischi non previsti rilevati durante il progetto.
  - *Obiettivo*: ridurre il numero di rischi imprevisti, migliorando pianificazione e gestione.

== Metriche di qualità del prodotto
 Ogni metrica di questa sezione verrà identificata come segue:
 #align(center)[*MPD.NumProgressivo*] 
 Dove *MPD* è l'abbreviazione di #strong[M]etriche di qualità del #strong[P]ro#strong[D]otto e *NumProgressivo* è un intero che aumenta con ogni metrica.

=== Funzionalità
- *MPD1*:
  - *Nome*: Requisiti Obbligatori Soddisfatti (*ROBS*)
  - *Descrizione*: percentuale di requisiti obbligatori soddisfatti.
  - *Obiettivo*: valutare il grado di soddisfacimento dei requisiti richiesti per il progetto.
  - *Formula*: _ROBS = #math.frac("requisiti obbligatori soddisfatti", "requisiti obbligatori totali") x 100_

- *MPD2*:
  - *Nome*: Requisiti Desiderabili Soddisfatti (*RDS*)
  - *Descrizione*: percentuale di requisiti desiderabili soddisfatti.
  - *Obiettivo*: valutare il grado di soddisfacimento dei requisiti richiesti per il progetto.
  - *Formula*: _ROS = #math.frac("requisiti desiderabili soddisfatti", "requisiti desiderabili totali") x 100_

- *MPD3*:
  - *Nome*: Requisiti Opzionali Soddisfatti (*ROPS*)
  - *Descrizione*: percentuale di requisiti opzionali soddisfatti.
  - *Obiettivo*: valutare il grado di soddisfacimento dei requisiti richiesti per il progetto.
  - *Formula*: _ROS = #math.frac("requisiti opzionali soddisfatti", "requisiti opzionali totali") x 100_

=== Affidabilità
- *MPD4*:
  - *Nome*: Code Coverage (*CC*)
  - *Descrizione*: percentuale di codice coperto dai test rispetto al totale del codice sviluppato.
  - *Obiettivo*: valutare l'efficacia del processo di testing e il livello di qualità assicurato dal processo.
  - *Formula*: _CC = #math.frac("linee di codice testate", "linee di codice totali") x 100_
  
- *MPD5*:
  - *Nome*: Indice Gulpease (*MIG*)
  - *Descrizione*: è una metrica che misura la leggibilità di un testo in lingua italiana, basandosi sulla lunghezza delle parole e delle frasi.
  - *Obiettivo*: garantire che la documentazione prodotta sia chiara e accessibile, evitando testi complessi.
  - *Formula*: _MIG = 89 + #math.frac("300·(numero frasi) - 10·(numero lettere) ", "numero parole")_

- *MPD6*:
  - *Nome*: Failure Density (*FD*)
  - *Descrizione*: rappresenta il numero di errori rilevati per unità di codice.
  - *Obiettivo*: valutare la qualità del codice e ridurre il numero di errori.
  - *Formula*: _FD = #math.frac("numero errori rilevati", "linee di codice totali") x 100_

- *MPD7*:
  - *Nome*: Statement Coverage (*SC*)
  - *Descrizione*: indica la percentuale di istruzioni del codice eseguite almeno una volta durante i test.
  - *Obiettivo*: misurare la copertura dei test.
  - *Formula*: _SC = #math.frac("istruzioni eseguite", "istruzioni totali") x 100_

- *MPD8*:
  - *Nome*: Branch Coverage (*BC*)
  - *Descrizione*: misura la percentuale di ramificazioni eseguite almeno una volta durante i test rispetto al totale delle ramificazioni presenti nel codice.
  - *Obiettivo*: garantire che tutte le possibili diramazioni del codice siano state testate per identificare eventuali errori nei percorsi condizionali.
  - *Formula*: _BC = #math.frac("ramificazioni eseguite", "ramificazioni totali") x 100_

- *MPD9*:
  - *Nome*: Correttezza Ortografica (*CO*)
  - *Descrizione*: misura il numero di errori ortografici presenti all'interno di un documento del progetto.
  - *Obiettivo*: garantire una documentazione chiara, migliorando la leggibilità.

=== Usabilità
- *MPD10*:
  - *Nome*: Facilità di Utilizzo (*FU*)
  - *Descrizione*: valuta quanto il software sia semplice da utilizzare per gli utenti.
  - *Obiettivo*: garantire un'esperienza utente positiva.

- *MPD11*:
  - *Nome*: Tempo di Apprendimento (*TA*)
  - *Descrizione*: misura il tempo necessario affinché un nuovo utente apprenda come utilizzare il sistema.
  - *Obiettivo*: ridurre il tempo richiesto per apprendere le funzionalità del sistema.

=== Efficienza
- *MPD12*:
  - *Nome*: Tempo Medio di Risposta (*TMR*)
  - *Descrizione*: misura il tempo medio che il sistema impiega per rispondere a una richiesta .
  - *Obiettivo*: ottimizzare i tempi di risposta per garantire una migliore esperienza utente.
  - *Formula*: _TMR = #math.frac("somma tempi di risposta delle richieste", "numero totale di richieste")_

- *MPD13*:
  - *Nome*: Utilizzo delle Risorse (*UR*)
  - *Descrizione*: indica l'efficienza del software in termini di utilizzo delle risorse durante l'esecuzione.
  - *Obiettivo*: monitorare l'efficienza nell'uso delle risorse.

=== Manutenibilità
- *MPD14*:
  - *Nome*: Complessità Ciclomatica (*V(G)*)
  - *Descrizione*: misura la complessità di un programma in base al numero di percorsi indipendenti nel flusso di controllo del codice.
  - *Obiettivo*: fornire un'indicazione della difficoltà di test e manutenzione del codice, identificando eventuali porzioni di codice troppo complesse.
  - *Formula*: _V(G) = E - N + 2P_ 
   \ dove:
   - E: numero di archi del grafo (transizioni tra nodi);
   - N: numero di nodi del grafo (istruzioni o blocchi di codice);
   - P: numero di componenti connesse (numero di funzioni o moduli del programma).
   