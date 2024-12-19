#import "//templates/documento.typ": *
#import "@preview/plotst:0.2.0": *

#show: conf.with(
  title: "Norme di Progetto",
  subtitle: "",
  author: "Il team",
  state: "Approvato",
  show_outline: true,
  outline_depth: 4,
  changelog: (
    "0.1.7", "19-12-2024", "Stesura processi organizzativi-gestione dei processi e correzioni", p.pozzobon, (p.scandaletti,p.valdagno),
    "0.1.6", "15-12-2024", "Stesura processi primari-comunicazioni con proponente e strumenti", p.pozzobon, (p.salvo,p.valdagno),
    "0.1.5", "15-12-2024", "Redatta sezione Gestione dell'assegnazione ruoli", (p.salvo,p.pozzobon), (p.scandaletti,p.valdagno),
    "0.1.4", "10-12-2024", "Fix sezione Verifica e Revisione della documentazione", p.salvo, (p.valdagno,p.checchinato),
    "0.1.3", "26-11-2024",  "Redatta gestione della board e istruzioni per la redazione/verifica dei documenti", p.lucato, p.checchinato,
    "0.1.2", "25-11-2024",  "Redatta sottosezione Documentazione", p.pozzobon, p.salvo,
    "0.1.1", "24-11-2024",  "Redatta sezione Introduzione", p.lucato, p.checchinato,
    "0.1.0", "24-11-2024",  "Redatta la suddivisione del documento", p.pozzobon, p.checchinato,
  )
)


= Introduzione
== Finalità del documento
L'obiettivo del documento è quello di definire le linee guida del gruppo per garantire un lavoro, fortemente asincrono, uniforme, coerente e di qualità. Per garantire la gestione del prodotto, composto da software e documentazione, è necessario un approccio strutturato al #glossario("ciclo di vita"). \
Tale documento è redatto secondo lo standard #glossario("ISO 12207:1995"), il quale identifica i processi di un ciclo di vita di un software, secondo una struttura modulare con relativa responsabilità su ciascun processo. \

== Glossario 
All'interno del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html")[_glossario_]. Tutte le parole consultabili nel glossario saranno identificate da una "#text(blue)[G]" in colore blu. Facendo click sul collegamento si aprirà una scheda del browser con il glossario 
== Riferimenti
Il documento è stato redatto con riferimento alla seguente documentazione.
=== Link al capitolato C5 - 3Dataviz
- Riferimento al capitolato 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]] - _Ultimo accesso al documento 22/11/2024_
=== Slide del corso IS
- Riferimento alle slide IS: *_Processi di ciclo di vita_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf]] - Sezione sullo standard ISO 12207:1995 -  _Ultimo accesso al documento 22/11/2024_
- Riferimento alle slide IS: *_Gestione
di progetto_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf]] -  _Ultimo accesso al documento 12/12/2024_
- Riferimento alle slide IS: *_Regolamento del progetto didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]] -  _Ultimo accesso al documento 12/12/2024_

= Processi Primari

== Comunicazione con l'azienda proponente
Le comunicazioni con Sanmarco Informatica, azienda #glossario("proponente") del progetto, avvengono principalmente via Google Chat.
Alex Beggiato, System Architect Team Leader, si rende disponibile a rispondere a eventuali domande o dubbi bloccanti durante il periodo secondo la modalità di cui sopra oppure attraverso una riunione dedicata via Google Meet. \
Gli incontri di Stato Avanzamento Lavori, #glossario("SAL"), vengono fissati di volta in volta a fine periodo, fermo restando di non superare, salvo esplicite motivazioni, le due settimane dall'incontro precedente. \
Durante tale incontro, con relativo #glossario("verbale esterno"), il responsabile del periodo in corso rendiconta, in via generale, quanto svolto lasciando poi la parola ai diretti interessati per esposizione dettagliata del lavoro svolto e chiarimento di dubbi.

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

== Verifica e Revisione della documentazione
Il #glossario("verificatore"), una volta ricevuta la richiesta di #glossario("Pull Request"), attivata secondo l'apposita procedura, è tenuto alla revisione del documento sia dal punto di vista sintattico-lessicale e grammaticale che da quello del contenuto. Il compito dell' #glossario("amministratore") inoltre, include il controllo e l’aggiornamento dei riferimenti del #glossario("Glossario"), assicurandosi che non vi siano parole mancanti. In caso di errori di battitura o sintattici può procedere direttamente il #glossario("verificatore") alla correzione senza modificare la tabella delle revisioni. Nel caso invece in cui le modifiche da fare riguardino il contenuto del documento, quest'ultimo deve essere restituito all'autore della #glossario("Pull Request") con i commenti di quanto riscontrato durante la revisione. In questo caso quindi l'iter ripartirà dalla modifica, versionamento e aggiornamento della #glossario("Pull Request"). Il #glossario("responsabile") inoltre, dovrà svolgere lo stesso lavoro dopo la conferma del #glossario("verificatore") per garantire l'approvazione finale. Nel caso in cui il documento che richieda approvazione sia stato redatto dal #glossario("responsabile"), l'approvazione finale viene data dall'#glossario("amministratore"), che otterrà temporaneamente il ruolo di #glossario("responsabile") per questo compito.

=== Processo per la verifica della documentazione <processo_verifica>
Questa sezione presenta tutte le istruzioni che vengono applicate, dalla creazione/modifica del file fino alla sua verifica, per garantire la qualità del documento.

==== Redattore
+ ```bash git pull``` --- per scaricare le ultime modifiche
+ ```bash git checkout sources``` --- per spostarsi sul branch di lavoro
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

== Gestione della board
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