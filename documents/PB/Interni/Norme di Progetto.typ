#import "/templates/documento.typ": *
#import "/lib/plotst.typ": *

#show: conf.with(
  title: "Norme di Progetto",
  subtitle: "",
  author: "Il team",
  show_outline: true,
  outline_depth: 4,
  changelog: (
    "2.0.0","19-04-2025","Revisione per incontro PB", (p.valdagno), (p.salvo),
    "1.2.0","21-03-2025","Ampliamento sezione processi di supporto",(p.checchinato,p.valdagno), (p.salvo, p.pesenato),
    "1.1.1","21-03-2025","Modifica sezione riferimenti, documentazione da consegnare e sviluppo",p.checchinato, (p.salvo, p.valdagno),
    "1.1.0","12-03-2025","Modifica sezioni da stile narrativo a procedurale. Aggiunta sezione relativa al versionamento. Aggiunti riferimenti alla fase PB. Aggiunto riferimento a fase di codifica - utilizzo di Git e della repo",p.pozzobon, (p.pesenato, p.scandaletti),
    "1.0.0","09-02-2025","Revisione per incontro RTB",p.pozzobon,(p.valdagno,p.lucato),
    "0.18.1", "31-01-2025",  "Aggiunta termini glossario", p.scandaletti, (p.pozzobon,p.lucato),
    "0.18.0", "29-01-2025", "Aggiunta sezione sviluppo e sottosezioni validazione, configurazioni, qualità, miglioramento e formazione", p.salvo, (p.lucato, p.pesenato),
    "0.17.1", "18-01-2025", "Aggiunta metrica Cost Variance", p.valdagno, (p.lucato, p.pesenato),
    "0.17.0", "14-01-2025", "Riscrittura relazione di estensione con extension points", p.scandaletti, (p.lucato, p.pozzobon),
    "0.16.0", "12-01-2025", "Aggiunta sottosezione Diagramma di Gantt", p.scandaletti, (p.pesenato,p.pozzobon),
    "0.15.0", "12-01-2025", "Aggiunta sottosezione Management - Gestione immagini", p.scandaletti, (p.pesenato, p.pozzobon),
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
L'obiettivo del documento è quello di definire le linee guida del gruppo per garantire un lavoro, fortemente asincrono, uniforme, coerente e di qualità. Per gestire il prodotto, che comprende software e documentazione, è necessario adottare un approccio strutturato al #glossario("ciclo di vita"). \
Tale documento è redatto secondo lo standard #glossario("ISO 12207:1995"), il quale identifica i processi di un #glossario("ciclo di vita") di un software, secondo una struttura modulare con relativa responsabilità su ciascun processo. \

== Glossario 
All'#glossario("interno") del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html")[_glossario_]. Tutte le parole consultabili nel glossario saranno identificate da una "#text(blue)[G]" in colore blu. Facendo click sul collegamento si aprirà una scheda del browser con il glossario 
== Riferimenti <Riferimenti>
Il documento è stato redatto con riferimento alla seguente documentazione.
=== Riferimenti informativi
- Riferimento al #glossario("capitolato") 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]] - _Ultimo accesso al documento 22/11/2024_
- Riferimento alle slide IS: *_Gestione
di progetto_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf]] -  _Ultimo accesso al documento 01/02/2025_
- Riferimento alle slide IS: *_Regolamento del progetto didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]] -  _Ultimo accesso al documento 12/12/2024_
=== Riferimenti normativi
- Riferimento alle slide IS: *_Processi di ciclo di vita_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf]] - Sezione sullo standard #glossario("ISO 12207:1995") -  _Ultimo accesso al documento 22/01/2025_


#pb()

= Processi Primari
== Fornitura
=== Introduzione
Secondo lo standard #glossario("ISO/IEC 12207:1995"), la fornitura viene definita come un insieme strutturato di #glossario("attività") e processi per la gestione e lo sviluppo del progetto e quindi per realizzare il prodotto software richiesto dal committente.

=== Scopo
Il processo si concentra sul monitoraggio e sulla gestione delle #glossario("attività") svolte dal team durante le varie fasi del progetto, dalla concezione iniziale fino alla consegna, assicurandosi che il prodotto finale rispetti i requisiti concordati con il committente, oltre a essere realizzato entro i tempi e i costi stabiliti. In questo modo viene garantita una visione completa e coerente della gestione delle #glossario("attività") durante l’intero #glossario("ciclo di vita") del progetto.

=== Comunicazione con l'azienda proponente
Le comunicazioni con Sanmarco Informatica, azienda #glossario("proponente") del progetto, avvengono principalmente via Google Chat.
Alex Beggiato, System Architect Team Leader, si rende disponibile a rispondere a eventuali domande o dubbi bloccanti durante il #glossario("periodo") secondo la modalità di cui sopra oppure attraverso una riunione dedicata via Google Meet. \
Gli incontri di Stato Avanzamento Lavori, #glossario("SAL"), vengono fissati di volta in volta a fine #glossario("periodo"), con l’impegno di non superare due settimane tra un incontro e l’altro, salvo esplicite motivazioni. \
Durante tale incontro, con relativo #glossario("verbale esterno"), il #glossario("responsabile") del #glossario("periodo") in corso rendiconta, in via generale, quanto svolto lasciando poi la parola ai diretti interessati per esposizione dettagliata del lavoro svolto e chiarimento di dubbi.

=== Documentazione da consegnare
In questa sezione vengono indicati i documenti che saranno consegnati all'azienda proponente _Sanmarco Informatica_ e ai committenti Prof. Tullio Vardanega e Prof. Riccardo Cardin.

==== Analisi dei Requisiti
All'#glossario("interno") vengono definite le #glossario("funzionalità") che la nostra webapp deve supportare, in modo da garantire un ottimo studio preliminare approfondito del progetto. Il documento deve contenere:
- *Casi d'uso*: che rappresentano in modo formale le #glossario("funzionalità") di un sistema, illustrando le #glossario("attività") svolte durante un'interazione
- *#glossario("UML") casi d'uso*: che rappresentano in modo grafico/visivo l'interazione tra un attore e uno o più casi d'uso
- *Requisiti*: ovvero l'insieme delle #glossario("funzionalità") richieste e quelle proposte in sede interna al gruppo. È dunque tutto quello che è stato pensato per far funzionare al meglio la webapp 

==== Piano di Progetto
Documento fondamentale per il gruppo, che permette di eseguire delle buone retrospettive, con un automiglioramento sia per il breve che per il lungo termine. All'#glossario("interno") del documento ci devono essere i seguenti punti:
- *Analisi dei rischi*: ovviamente è indispensabile per una buona pianificazione di ogni singolo #glossario("periodo"), per avere già delle tecniche e strategie da applicare quando 
- *Informazioni del progetto*: ovvero tutte quelle informazioni che è bene tenere traccia (e anche modificare in futuro).
  - Tempi di consegna previsti
  - Costi previsti
  - Struttura della pianificazione di un #glossario("periodo")
  - Struttura di quanto accaduto nell'effettivo durante un #glossario("periodo")
- *Lista dei periodi*: ovvero l'insieme tra il preventivo e il consuntivo, di quello che è accaduto, quello che è andato quanto pianificato e soprattutto quello che invece non era stato pianificato, fondamentale per l'automiglioramento

==== Piano di qualifica
Documento che serve al team per descrivere come è stata garantita l'efficienza durante il progetto. Questo serve per garantire ai committenti, all'azienda proponente e al team, che ci sono dei processi selezionati solo allo scopo di verificare che quanto fatto sia di ottima qualità, che sono state investite quantità di risorse ottime e che il prodotto rispetti le aspettative richieste. All'#glossario("interno") del documento dunque devono essere presenti:
- *Test del prodotto*: per garantire che il prodotto soddisfi quanto proposto dai committenti e dall'azienda proponente è necessario eseguire una serie di test che, solo dopo il loro test positivo, è possibile dichiarare un prodotto "soddisfacente"
  - *Test di sistema*
  - *Test di integrazione*
  - *Test di #glossario("unità")*
- *Metriche per garantire la qualità dei processi*: verifica e #glossario("validazione") dei processi, dunque come garantire che ogni processo abbia il risultato atteso (buona qualità con un quantitativo di risorse investite ottimo)
- *Metriche per garantire la qualità del prodotto*: verifica e #glossario("validazione") per garantire che il prodotto sia conforme a tutti gli obbiettivi di qualità

==== Specifica Tecnica
Il documento rappresenta una risorsa tecnica essenziale per la comprensione approfondita dell'#glossario("architettura") e delle scelte progettuali adottate nel sistema in sviluppo. Il suo obiettivo principale è fornire una descrizione dettagliata delle componenti software e delle strategie di progettazione seguite dal team.  

In particolare, vengono trattati due aspetti chiave:  
- *#glossario("Architettura") implementativa*: descrive un'analisi dettagliata delle strutture software, dei design pattern utilizzati e delle logiche di implementazione adottate per garantire scalabilità, manutenibilità ed efficienza del sistema.  
- *#glossario("Architettura") di deployment*: descrive la configurazione dell'infrastruttura, gli ambienti di esecuzione e le modalità di distribuzione del software.  

Il documento include inoltre la lista delle tecnologie utilizzate e i diagrammi #glossario("UML") (ad es. diagrammi delle classi e dei componenti) per supportare una comprensione chiara e strutturata del software. Esso quindi funge anche da guida per lo sviluppo, per la manutenzione e l'evoluzione del progetto, garantendo al contempo una copertura completa dei requisiti definiti nel documento #glossario("Analisi dei Requisiti").

==== Manuale Utente
Il presente manuale è progettato per offrire un supporto completo agli utenti nell'utilizzo del #glossario("software"), guidandoli attraverso le sue funzionalità in modo chiaro e dettagliato. L'obiettivo principale è consentire agli utenti di comprendere e sfruttare appieno le potenzialità del sistema, garantendo un'esperienza d'uso efficiente e intuitiva.

Il manuale si concentra principalmente sulle istruzioni operative per l'utilizzo quotidiano. Vengono fornite spiegazioni dettagliate sui principali flussi operativi, sulle modalità di interazione con l'interfaccia e sulle best practice per un uso ottimale del sistema.

==== Lettera di presentazione
Quando si deve consegnare quanto fatto (#glossario("RTB") o #glossario("PB")) ai committenti Prof. Tullio Vardanega e Prof. Riccardo Cardin è necessario farlo tramite un'invio di una mail *priva di allegati*, ma con un solo puntatore alla _Lettera di presentazione_ che deve essere in #glossario("repo"). È dunque un documento che attesta il "completamento" di una delle due parti del progetto, dichiarando di essere pronti alla #glossario("revisione") di tutta la documentazione/materiale fatta fino a quel momento. All'#glossario("interno") della _Lettera di presentazione_ ci deve essere:
- *Introduzione*: per indicare lo scopo del documento
- *Link alla documentazione*: un puntatore che riporta alla #glossario("repo") del gruppo, dov'è possibile reperire tutta la documentazione
- *Lista di documenti presenti*: ovvero l'insieme dei verbali sia #glossario("interni") che #glossario("esterni") che il gruppo ha redatto durante il #glossario("periodo"), la documentazione "interna" e la documentazione "esterna".
- *Lista dei componenti del gruppo*: una semplice tabella che indica il nome e cognome accompagnati dalla matricola di ogni singolo componente del gruppo


== Strumenti
Sono attivi i seguenti strumenti e canali di comunicazione a disposizione dei membri del team:
- *Gruppo #glossario("Telegram")* per le comunicazioni rapide ed informali
- *Canale #glossario("Discord")* per le riunioni del gruppo in videoconferenza e le comunicazioni ufficiali, organizzate nei relativi sotto-canali
- *Gmail* per le comunicazioni ufficiali con il committente
- *Google Chat* per le comunicazioni con l'azienda proponente
- *Google Meet* per le riunioni in conferenza con l'azienda proponente
- *Google Drive e suite Google Documenti* per l'archiviazione e la modifica dei file condivisi del gruppo, quali:
  - Foglio appunti riunioni
  - Foglio ore condiviso

#pb()

== Sviluppo
=== Introduzione
Secondo lo standard #glossario("ISO/IEC 12207:1995"), lo sviluppo viene definito come un insieme strutturato di #glossario("attività"):
+ *Implementazione del processo*  
+ *Analisi dei requisiti di sistema*  
+ *Progettazione architetturale del sistema*
+ *Analisi dei requisiti software*
+ *Progettazione architetturale del software*
+ *Progettazione dettagliata del software*
+ *Codifica e testing del software*  
+ *Integrazione del software* 
+ *Test di qualifica del software*
+ *Integrazione di sistema*  
+ *Test di qualifica del sistema* 
+ *Installazione del software* 
+ *Supporto all'accettazione del software*

Queste attività garantiscono che il ciclo di vita del software segua un processo strutturato e controllato, assicurando la qualità e la conformità ai requisiti stabiliti.  
// applica il tag #glossario sui termini adeguati
==== Implementazione del processo
Questa fase costituisce il punto di partenza del #glossario("ciclo di vita") del #glossario("software"), stabilendo il modello di sviluppo secondo lo standard #glossario("ISO/IEC 12207:1995"). Si definiscono le responsabilità dei vari attori coinvolti, includendo sviluppatori, responsabili della #glossario("documentazione") e del controllo qualità. Viene scelto un framework metodologico che guidi ogni fase del processo e si identificano gli #glossario("standard") e le best practice da applicare. #glossario("Strumenti"), linguaggi di programmazione e metodi vengono selezionati per supportare le #glossario("attività") successive. Si redige un piano operativo che definisca tappe, risorse e scadenze. La documentazione iniziale garantisce la tracciabilità delle decisioni. Infine, revisioni periodiche permettono di affinare il modello e rispondere ai requisiti emergenti.

==== Analisi dei requisiti di sistema
Questa fase si concentra sull'identificazione dettagliata delle esigenze a livello di #glossario("sistema") e sulla definizione dei #glossario("requisiti"). Si esaminano i contesti operativi, le condizioni ambientali e le prestazioni attese, considerando aspetti quali sicurezza, usabilità e affidabilità. Vengono analizzati i vincoli tecnici e organizzativi, e la raccolta dei requisiti include input da fonti interne ed esterne. Ogni requisito è documentato in modo chiaro e verificabile, assicurando la tracciabilità attraverso strumenti specifici. Revisioni periodiche garantiscono coerenza e fattibilità tecnica, fornendo la base per la progettazione architetturale del sistema.

==== Progettazione architetturale del sistema
In questa fase viene definita una visione d'insieme dell'intero #glossario("sistema"), individuando i principali componenti #glossario("hardware") e #glossario("software") e le relative operazioni manuali. Ogni requisito viene allocato in specifici elementi, mentre le interfacce tra i componenti vengono chiaramente delineate per garantire scalabilità e modularità. La documentazione prodotta descrive la configurazione dei componenti e include valutazioni di coerenza e fattibilità, fondamentali per le fasi successive. Revisioni congiunte assicurano l'aderenza ai criteri tecnici stabiliti.

==== Analisi dei requisiti software
Questa fase traduce le esigenze del #glossario("sistema") in #glossario("requisiti") specifici per il #glossario("software"). Si dettagliano le funzionalità attese, le prestazioni, gli aspetti di sicurezza e usabilità, e i vincoli operativi. Ogni requisito viene documentato con specifiche chiare, distinguendo tra requisiti funzionali e non funzionali. Vengono inoltre definite le interfacce e i requisiti per la gestione dei dati e del database. La tracciabilità con i requisiti di sistema è garantita e revisioni periodiche confermano la coerenza e l'adeguatezza dei requisiti.

==== Progettazione architetturale del software
In questa fase i #glossario("requisiti") vengono convertiti in una struttura di alto livello per il #glossario("software"). Si identificano i moduli, i componenti e le interfacce interne ed esterne, assicurando una corretta distribuzione delle funzionalità. Vengono delineati anche i progetti preliminari per il database e la documentazione utente. La revisione degli #glossario("standard") di progettazione assicura coerenza e tracciabilità delle scelte tecniche, creando una solida base per la progettazione dettagliata.

==== Progettazione dettagliata del software
Questa fase approfondisce la progettazione definendo algoritmi, strutture dati e logiche operative per ciascun componente del #glossario("software"). Si producono diagrammi, pseudocodice e documenti tecnici che supportano la codifica, specificando in dettaglio le interfacce tra unità. Vengono aggiornate le specifiche per il database e la #glossario("documentazione") utente, e si definiscono i requisiti di test. Revisioni interne garantiscono coerenza, completezza e prontezza per la fase di codifica.

==== Codifica e testing del software
In questa fase il codice del #glossario("software") viene sviluppato seguendo le specifiche della progettazione dettagliata. Ogni unità viene implementata in modo modulare e accompagnata da procedure di test unitari. I test verificano la conformità del codice ai #glossario("requisiti") e al design previsto, con i risultati accuratamente documentati. Si applicano standard di codifica e strumenti di testing per monitorare la qualità e la copertura dei test, aggiornando la #glossario("documentazione") in parallelo.

==== Integrazione del software
Questa fase prevede l'unione delle diverse unità e moduli del #glossario("software") in un sistema coeso. Viene redatto un piano di integrazione che specifica le procedure, le responsabilità e le tempistiche necessarie per combinare le unità. Durante l'integrazione, vengono eseguiti test specifici per verificare l'interoperabilità e la corretta comunicazione tra i componenti. La #glossario("documentazione") viene aggiornata con ogni modifica, e revisioni periodiche confermano che l'aggregato soddisfi i requisiti iniziali.

==== Test di qualifica del software
In questa fase si eseguono test mirati per verificare che ogni #glossario("requisito") del #glossario("software") sia stato implementato correttamente. Vengono definiti casi di test dettagliati con input, output e criteri di successo, valutando funzionalità, performance, sicurezza e usabilità. I risultati vengono documentati in modo da evidenziare eventuali anomalie e garantire la copertura totale dei requisiti. Strumenti automatizzati e revisioni periodiche assicurano tracciabilità e coerenza durante il testing.

==== Integrazione di sistema
Questa attività combina il #glossario("software") con componenti hardware, processi manuali ed altri sistemi esterni, formando un sistema integrato. Viene creato un piano di integrazione di sistema che definisce procedure, responsabilità e criteri di verifica, assicurando che le varie componenti interagiscano correttamente. I test progressivi e la documentazione aggiornata garantiscono che il sistema complessivo soddisfi i requisiti globali, preparandolo per la fase finale di qualifica.

==== Test di qualifica del sistema
In questa fase l'intero sistema, comprendente #glossario("hardware") e #glossario("software"), viene testato in condizioni operative reali. Vengono eseguiti casi di test che simulano scenari d'uso quotidiano, valutando funzionalità, performance e sicurezza a livello globale. I risultati sono documentati per verificare la copertura dei requisiti di sistema e la conformità ai risultati attesi. Revisioni congiunte e strumenti di testing automatizzati supportano la valutazione, garantendo che il sistema sia robusto e pronto per la consegna.

==== Installazione del software
Questa fase riguarda la distribuzione del #glossario("software") nell'ambiente di destinazione, seguendo un piano di installazione dettagliato. Vengono identificate le risorse e le informazioni necessarie per configurare il sistema e assicurare il corretto avvio del codice e dei database. Il processo di installazione viene monitorato e documentato in ogni fase, garantendo il rispetto delle specifiche tecniche e operative. L'assistenza tecnica supporta la configurazione e risolve eventuali problematiche riscontrate durante il processo.

==== Supporto all'accettazione del software
Questa attività finale prevede l'assistenza durante le fasi di revisione e testing di accettazione da parte dell'acquirente. Il programmatore supporta la verifica della conformità del #glossario("software") ai requisiti contrattuali, coordinando sessioni di test congiunte e raccogliendo feedback. I risultati dei test e delle revisioni sono accuratamente documentati, garantendo trasparenza e tracciabilità. Viene fornita formazione finale agli utenti e stabilita una baseline definitiva per il prodotto consegnato. Il supporto post-consegna facilita la manutenzione e una transizione operativa fluida.

=== Strumenti  

Il gruppo utilizza una serie di strumenti per supportare lo sviluppo e la progettazione del #glossario("software"), garantendo efficienza e chiarezza nei processi:  

- *Visual Studio Code*: un editor di codice sorgente open source, leggero e altamente personalizzabile. Offre supporto per numerosi linguaggi di programmazione, integrazione con sistemi di controllo versione e una vasta gamma di estensioni per il #glossario("debugging") e l'automazione, rendendolo ideale per la scrittura e la revisione del codice.  

- *draw.io*: uno strumento online per la creazione di #glossario("diagrammi") e schemi, ampiamente utilizzato per realizzare #glossario("diagrammi") #glossario("UML"), flussi di processo e mappe concettuali. Grazie alla sua interfaccia intuitiva, facilita la rappresentazione visiva delle #glossario("architetture") e dei processi, migliorando la comunicazione all'interno del team.  

- *IntelliJ IDEA*: un ambiente di sviluppo integrato (#glossario("IDE")) potente e intelligente, particolarmente apprezzato per lo sviluppo in #glossario("Java"). Fornisce funzionalità avanzate come il completamento automatico del codice, il #glossario("refactoring") e il #glossario("debugging"), supportando lo sviluppo di applicazioni complesse con elevati standard qualitativi.

==== Utilizzo di Git e della #glossario("Repository")
Tutto il codice del progetto è contenuto nell'apposita repository #glossario("GitHub").

È cura del programmatore tenere sempre la sua #glossario("repository") locale aggiornata con quella remota mediante l'utilizzo del comando ```bash git pull ```.

Per lo sviluppo di codice, che sia questo a scopo implementativo o di fix, il programmatore dovrà seguire i seguenti passaggi: 
+ posizionarsi in un branch locale dedicato, partendo dal *main*, mediante il comando ```bash git checkout -b nuovoBranch ```
+ eseguire il commit locale delle modifiche
+ una volta terminata l'attività di codifica associata al branch è necessario fare il pull dello stesso, mediante i comandi: 
  + ```bash git add .``` o ```bash git add --all``` --- per aggiungere i file modificati nell'area di staging
  + ```bash git commit -m "messaggio"``` --- per creare un commit con i file aggiunti in staging
  + ```bash git push --set-upstream origin <nome_branch>``` --- per caricare il nuovo branch e le modifiche sul #glossario("repository") remoto
+ aprire la PR, assegnando il #glossario("responsabile") di progetto come revisore in quanto unica persona abilitata, dopo un controllo su quanto fatto, ad effettuare il merge sul main.

Il responsabile di progetto è tenuto a:
+ verificare il lavoro fatto dal programmatore
+ approvare la PR mediante l'apposita funzione di #glossario("GitHub")
+ chiudere la PR effettuando il merge sul main ed eliminando il branch oppure richiedere modifiche al programmatore
  - in caso di richiesta modifiche l'iter riparte


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
Lo stato viene inserito come "Approvato" solo nei verbali esterni, che hanno bisogno dell'approvazione da parte dell'azienda proponente. Negli altri documenti non viene inserito lo stato.\
L'ultima modifica viene aggiornata automaticamente ad ogni modifica della #glossario("Tabella delle revisioni"), prendendo la data dell'ultima #glossario("revisione") come data di ultima modifica. \
L'indice si aggiorna automaticamente in base alle sezioni di #glossario("Typst"), per il dettaglio su come suddividere correttamente il documento in sezioni e sottosezioni si rimanda alla documentazione ufficiale di #glossario("Typst").

_ Per la gestione della #glossario("tabella delle revisioni") si fa riferimento all'apposita sezione, @tabella_revisioni, di questo documento. _ 
==== Allegato
Questo #glossario("template") viene utilizzato per la redazione degli allegati ai verbali (#glossario("interni") ed #glossario("esterni")). È compito di chi redige l'allegato indicare, nell'apposita sezione nell'intestazione del documento:
- numero allegato (num progressivo riferito al verbale)
- numero di verbale (esplicitando se #glossario("interno") o #glossario("esterno"))
- data del verbale

Il documento di questa tipologia viene inserito nello stesso documento del verbale.

==== Carta intestata
Questo #glossario("template") viene utilizzato per tutte le comunicazioni ufficiali in uscita verso un destinatario #glossario("esterno"). \
È compito di chi redige il documento indicare, nell'apposita sezione:
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


Dopo le presenze si procede con il riassunto della discussione dei relativi punti dell'#glossario("OdG"), da riportare in ordine. L'ultima sezione deve sempre essere  "*Varie ed eventuali*" indicando, se ci sono state, discussioni di punti extra #glossario("OdG") ed orario di fine dell'incontro.

Il verbale deve inoltre contenere, nella relativa sezione del #glossario("template"):
- una tabella con un riassunto delle decisioni prese.  Ogni riga di questa deve contenere il riferimento al punto dell'#glossario("OdG"), per consentire al lettore di approfondire la sezione di interesse senza dover leggere tutto il documento, l'argomento e la decisione presa.
- una tabella #glossario("TODO") con riferimento alle #glossario("issue") create relativamente alle decisioni prese. In quest'ultima è necessario indicare #glossario("ID") della #glossario("issue"), assegnatario (se presente, in caso contrario "-"), descrizione del #glossario("task").

Alla fine del documento deve essere indicato Luogo e Data, sede del gruppo, e la data della riunione, #glossario("Verbalizzante") e #glossario("Responsabile di Progetto") e, nel caso di #glossario("verbale esterno"), firma, per approvazione, di un rappresentante dell'azienda.

=== Registro delle modifiche e versionamento <tabella_revisioni>
Ogni documento, escluso allegati e carta intestata, contiene la tabella delle revisioni con il #glossario("registro delle modifiche"). 

È compito di colui che scrive o modifica un documento:
+ Aggiornare la tabella con:
  - versione del documento, in forma x.y.z (@numversione)
  - data della modifica
  - descrizione
  - autore della modifica

È compito del #glossario("verificatore"):
+ verificare la correttezza, sia grammaticale/sintattica che di contenuto, delle modifiche apportate
+ assicurarsi che il numero di versione assegnato alla modifica sia corretto secondo le regole del team
+ inserire il proprio nome nell'apposita colonna della tabella

È compito del #glossario("responsabile"):
+ verificare la correttezza dei contenuti
+ inserire il proprio nome nell'apposita colonna della tabella, insieme a quello del verificatore

=== Ciclo di vita <ciclo_vita>

Il ciclo di vita di un documento può essere suddiviso nelle seguenti fasi:  

+ *Adattamento o creazione di un template*: si definisce la struttura base del documento, scegliendo o adattando un template conforme agli #glossario("standard") stabiliti, garantendo uniformità tra i vari documenti del progetto.  

+ *Definizione delle sezioni*: si identificano le sezioni necessarie in base agli obiettivi del documento, assicurandosi che coprano tutti gli aspetti richiesti e siano organizzate in modo logico e coerente.  

+ *Definizione degli elaboratori delle sezioni*: ogni sezione viene assegnata a specifici #glossario("elaboratori"), che hanno il compito di redigerla in base alle linee guida stabilite nel #glossario("Norme di Progetto").

+ *Stesura delle sezioni*: gli elaboratori scrivono il contenuto delle sezioni assegnate, seguendo gli #glossario("standard") definiti dalle #glossario("Norme di Progetto") e utilizzando un linguaggio chiaro e tecnico, se necessario.  

+ *Verifica da parte degli elaboratori*: dopo la stesura, gli #glossario("elaboratori") eseguono un primo controllo sulla correttezza, coerenza e completezza delle sezioni, assicurando il rispetto delle convenzioni stabilite dalle #glossario("Norme di Progetto").  

+ *Verifica delle sezioni*: i #glossario("verificatori") esaminano il documento per individuare eventuali errori, incongruenze o violazioni delle #glossario("norme di qualità"), fornendo feedback per eventuali correzioni.  

+ *Approvazione da parte del responsabile*: il #glossario("responsabile") approva il documento dopo la verifica finale, rilasciando la versione definitiva pronta per la pubblicazione e l'utilizzo ufficiale.

=== Sistema di composizione tipografica

Per la stesura dei documenti, il gruppo utilizza #glossario("Typst"), un moderno sistema di composizione tipografica che offre un'alternativa più accessibile rispetto a #glossario("LaTeX"). #glossario("Typst") combina la potenza della formattazione automatizzata con una sintassi più intuitiva e immediata. I principali vantaggi rispetto a LaTeX includono:
- Sintassi più semplice e leggibile, riducendo la curva di apprendimento per nuovi utenti.
- Gestione più intuitiva degli stili e delle strutture, senza necessità di pacchetti complessi.
- Maggiore integrazione con strumenti moderni, facilitando l'uso in ambienti collaborativi.

L'uso di #glossario("Typst") quindi, consente una redazione più veloce ed efficiente dei documenti, mantenendo un'elevata qualità tipografica e semplificando la gestione della formattazione.


== Numero di versione <numversione>
Come indicato il numero di versione è formato da 3 valori: *x.y.z*. \
L'incremento del valore *y* avviene ad ogni nuova modifica. \
L'incremento del valore *z* avviene ad ogni FIX richiesto da #glossario("verificatore") o #glossario("responsabile"). \
L'incremento del valore *x* avviene ad ogni scatto di versione, rispettivamente quindi: 
  - #glossario("RTB") --> _x=1_
  - #glossario("PB") --> _x=2_

== Standard UML per la stesura di alcuni documenti
All'#glossario("interno") dell'#glossario("analisi dei requisiti") è ovviamente di fondamentale importanza la presenza dei casi d'uso, descritti come: 
- *Descrizione*: una breve descrizione del caso d'uso che identifica chiaramente la funzione che il sistema deve svolgere.
- *Attore*: l’entità che interagisce col sistema, è un’entità esterna su cui non si possono effettuare modifiche.
- *Precondizioni*: le condizioni che definiscono lo stato iniziale del sistema e degli attori prima che l'interazione inizi.
- *Postcondizioni*: le condizioni che descrivono lo stato finale del sistema.
- *Scenario principale*: la sequenza di passi standard che descrive l'interazione principale tra l'attore e il sistema per completare un caso d’uso.
- *Scenari alternativi*: rappresentano dei casi particolari, ovvero quando uno dei passi dello scenario principale non è andato a buon fine ed è dunque necessario specificare come comportarsi in queste circostanze.

Per tutti quei casi d'uso che interagiscono con altri è molto importante inserire il _diagramma del caso d'uso_

=== Diagramma casi d'uso
I diagrammi dei casi d'uso sono una rappresentazione visiva utilizzata nell'ingegneria del software per descrivere le interazioni tra gli utenti (attori) e un sistema o applicazione. Fanno parte del linguaggio di modellazione #glossario("UML") e si concentrano su ciò che il sistema deve fare dal punto di vista dell'utente, piuttosto che sul "come" viene implementato.
I diagrammi dei casi d'uso, dunque, aiutano a identificare e documentare i requisiti funzionali del sistema, mostrando cosa deve essere fatto per soddisfare le esigenze degli utenti.

- *Chiarezza nella comunicazione*: Forniscono una rappresentazione semplice e intuitiva, comprensibile sia per i team tecnici che per i non tecnici, come stakeholder e clienti.
- *Base per ulteriori sviluppi*: Servono come punto di partenza per altre #glossario("attività") di progettazione e sviluppo, come la definizione dei diagrammi di sequenza, di #glossario("attività") o di stato.
- *Riduzione delle ambiguità*: I diagrammi forniscono una visione chiara delle #glossario("funzionalità") del sistema, evitando fraintendimenti e malintesi tra i vari membri del team.
- *Strumento di comunicazione universale*: Sono una rappresentazione standardizzata e riconosciuta che facilita la collaborazione tra persone con competenze e background diversi.

Per descrivere un caso d'uso con un suo diagramma dunque, il team utilizza uno standard, indicato nelle sezioni successive
==== Identificare un caso d'uso
Un caso d'uso è una descrizione di una #glossario("funzionalità") o servizio specifico offerto da un sistema, visto dal punto di vista dell'utente (attore #glossario("esterno")). Rappresenta un obbiettivo che un attore cerca di raggiungere attraverso l'interazione con il sistema. Viene rappresentato tramite un semplice ovale con un nome al suo #glossario("interno"). La sua nomenclatura è del tipo "#glossario("UC") N - Nome caso d'uso"
\ \
#figure(
  image("/img/ndp/casoduso.png", width: 40%),
  caption: [Identificare un caso d'uso],
) <casoduso>
\
È possibile inoltre identificare un sottocaso d'uso. La nomenclatura è del tipo "#glossario("UC") N.n - Nome sottocaso d'uso" dove si intende che è è il sottocaso n del caso d'uso N
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
Il sistema, nel nostro caso la webapp, indica la "zona" in cui i casi (o sottocasi) d'uso vengono inseriti. È rappresentato da un semplice rettangolo con all'#glossario("interno") i casi d'uso e all'#glossario("esterno") l'attore
\ \
#figure(
  image("/img/ndp/sistema.png", width: 40%),
  caption: [Identificare la webapp (sistema)],
) <sistema>

==== Identificare le relazioni 
Le relazioni nei diagrammi dei casi d’uso descrivono come gli elementi del sistema interagiscono tra loro. In particolare, rappresentano le connessioni tra attori e casi d’uso, oppure tra diversi casi d’uso. Servono a chiarire il comportamento del sistema, mostrando le dipendenze, le collaborazioni e le estensioni delle #glossario("funzionalità"). Ci sono vari tipi di relazioni: associazione, inclusione, estensione e generalizzazione.

===== Associazione
Collega un attore a un caso d’uso, indicando che l’attore interagisce con quel caso. È rappresentato da una semplice linea
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
Indica che un caso d’uso può estendere un altro caso d'uso aggiungendo comportamenti opzionali o condizionali. In sostanza quindi aumenta le #glossario("funzionalità") di uno use case. È rappresentata da una freccia tratteggiata con etichetta «extend».\
Attenzione: la freccia va dal caso da cui si vuole estendere verso il caso d'uso che estende. 
\ \ 
#figure(
  image("/img/ndp/estensione.png", width: 85%),
  caption: [Identificare la relazione estensione],
) <estensione>

In questo esempio, il caso d'uso N estende il caso d'uso M aggiungendo delle #glossario("funzionalità") specifiche, vincolate dalla _condizione_. L'_extension point_ rappresenta il punto in cui il caso d'uso da estendere può essere esteso, a seconda del verificarsi della _condizione_ specificata. La _condizione_ viene indicata collegando un commento alla freccia di estensione, contenente la descrizione della _condizione_ stessa e l'_extension point_ corrispondente. È importante segnalare l'_extension point_ anche nel caso d'uso esteso.

===== Generalizzazione
Lo scopo principale è di aggiungere o modificare le caratteristiche di base. Indica quindi un rapporto gerarchico, dove un attore o un caso d’uso più specifico eredita caratteristiche da uno più generico. Si utilizza per rappresentare specializzazioni di ruoli o di comportamenti ed è rappresentata da una freccia con linea continua e punta vuota (non tratteggiata).

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

Pertanto, i figli possono aggiungere delle #glossario("funzionalità") rispetto ai padri oppure modificarne il comportamento


=== Diagramma delle classi
Nei futuri documenti, durante le fasi di progettazione, sarà necessario rappresentare graficamente non più solo quello che l'utente desidera poter fare (interazioni con il sistema) ma anche come lo si andrà ad implementare. A questo scopo è quindi fondamentale impostare delle regole #glossario("UML") per la rappresentazione delle classi tramite diagrammi. Le #glossario("funzionalità") principali sono:
- *Modellare la struttura del sistema*: Forniscono una visione dettagliata di come le entità del sistema (classi) sono definite e come interagiscono tra loro.
- *Progettazione e Documentazione*: Sono utili durante la fase di progettazione per definire l’architettura del software e durante lo sviluppo per documentare il sistema.
- *Supporto per il Codice*: Possono essere utilizzati durante la fase di sviluppo per scrivere il codice o per comprendere e modificare un sistema esistente.
- *Facilitare la Comunicazione*: Rappresentano un linguaggio comune tra sviluppatori, analisti, progettisti e stakeholder.

Come per i diagrammi #glossario("UML") per i casi d'uso, il team utilizzerà degli "standard" per la scrittura dei diagrammi delle classi, descritti nelle sezioni successive
==== Identificare una classe
Una classe in #glossario("UML") è rappresentata come un rettangolo diviso in tre sezioni:
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
- _Ordered_ : Per array o vettori
- _Unordered_: Per gli insiemi

==== Identificare le relazioni
Come per quanto riguarda gli #glossario("UML") per i casi d'uso, le relazioni tra classi sono molto importanti per indicare come si "relazionano" tra loro.

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
È una relazione simile all'aggregazione, con il sostanziale cambiamento che una classe fa parte di un'altra classe, ma non può esistere indipendentemente, ma solo se fa parte dell'altra classe. Viene rappresentato tramite una linea con un rombo pieno alla fine.
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
*È importante che le dipendenze siano minimizzate (_loose coupling_)*.\
Indica che una classe utilizza l'altra per svolgere una funzione specifica o per accedere a un servizio. In altre parole, una classe dipende da un'altra quando un cambiamento nella classe dipendente potrebbe influenzare la classe che dipende da essa. È quindi una relazione "debole" grazie al suo basso grado di accoppiamento. È identificato da una freccia tratteggiata orientata.
\ \
#figure(
  image("/img/ndp/dipendenzaclassi.png", width: 80%),
  caption: [Identificare la relazione dipendenza tra classi],
) <dipendenzaclasse>

Quindi un cambiamento in B _potrebbe_ influenzare A, ma un cambiamento in A _non influenza_ B.

==== Classi di associazione
Aggiungono attributi e operazioni alle associazioni. Sono utilizzate per rappresentare informazioni aggiuntive o comportamenti specifici che appartengono a una relazione tra due (o più) classi, ma che non sono strettamente parte di nessuna delle due classi connesse. Per la rappresentazione è una classe (rettangolo) collegata alla linea di associazione tramite una linea tratteggiata. \ \

#figure(
  image("/img/ndp/classidiassociazione.png", width: 80%),
  caption: [Identificare le classi di associazione],
) <classidiassociazione>
\
==== Interfacce
L'interfaccia è una classe priva di implementazione. Una classe _realizza_ un'interfaccia se ne implementa le operazioni. Con #glossario("UML") 2.x viene identificata come un cerchio (_"Ball" notation_)
#figure(
  image("/img/ndp/interfacciaclassi.png", width: 80%),
  caption: [Identificare le classi di associazione],
) <interfacciaclassi>
In questo caso la classe A implementa la funzione "funz" dell'interfaccia "Interfaccia" che non ha la sua implementazione

È possible inoltre dichiarare il fatto che una classe ha la necessità di "collegarsi" con un'interfaccia per poter accedere ad alcune #glossario("funzionalità"). Ad esempio: 

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
    [#glossario("AdR")],[#glossario("Analisi dei Requisiti")],
    [#glossario("UC")], [Use Case],
    [#glossario("NdP")], [Norme di Progetto],
    [#glossario("PdP")], [Piano di Progetto],
    [#glossario("PdQ")], [#glossario("Piano di Qualifica")],
    [#glossario("PoC")], [Proof of Concept],
    [#glossario("RTB")], [Requirements and Technology Baseline],
    [#glossario("PB")], [Product Baseline],
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
Per il processo di verifica ed approvazione dei documenti il team utilizza le #glossario("Pull Request") di #glossario("GitHub").

Vengono riportati nelle sezioni successive i passaggi che ogni figura coinvolta in questo processo dovrà fare.

=== Processo per la verifica della documentazione <processo_verifica>
Questa sezione presenta tutte le istruzioni che vengono applicate, dalla creazione/modifica del file fino alla sua verifica, per garantire la qualità del documento.

==== Redattore

+ ```bash git checkout sources``` --- per spostarsi sul branch di lavoro
+ ```bash git pull``` --- per scaricare le ultime modifiche
+ ```bash git checkout -B <nome_branch>``` --- per creare un nuovo branch di lavoro, partendo dal branch di lavoro sources
+ Crea dei file o modifica i file esistenti
+ ```bash git add .``` o ```bash git add --all``` --- per aggiungere i file modificati nell'area di staging
+ ```bash git commit -m "messaggio"``` --- per creare un commit con i file aggiunti in staging
+ ```bash git push --set-upstream origin <nome_branch>``` --- per caricare il nuovo branch e le modifiche sul #glossario("repository") remoto
+ Aprire la #glossario("Pull Request") 
 - La #glossario("Pull Request") può essere aperta tramite un pulsante "Create #glossario("Pull Request")" presente nella pagina iniziale del #glossario("repository")
 - La #glossario("Pull Request") può essere aperta andando nella pagina "Pull Requests", impostando "nome_branch" come branch sorgente e "sources" come branch di destinazione. Premere successivamente il pulsante "Create #glossario("Pull Request")"
 -  *ATTENZIONE*. Impostare il merge al branch _sources_ (viene selezionato in automatico se è stato creato il nuovo branch a partire dal branch _sources_). È molto importante fare sempre attenzione a questo punto, per non incorrere a problemi di merge.
+ Una volta creata, si assegna il #glossario("verificatore") nella sezione "Reviewers" a destra della pagina della #glossario("Pull Request") senza dimenticare d'inserire anche il #glossario("responsabile"), le labels, la board sotto la voce project e la #glossario("milestone") se presenti.
+ Collega la/le issue/issues alla #glossario("Pull Request") nella sezione "Development" a destra della pagina per la modifica della stessa. Questo permette di chiudere tutte le #glossario("issue") associate una volta che la #glossario("Pull Request") è stata approvata.
 - *ATTENZIONE*. L'impostazione delle #glossario("issue") va effettuata *DOPO* la creazione della #glossario("Pull Request") e non prima. Questo serve per garantire che venga aggiunto il messaggio del link tra #glossario("issue") e #glossario("Pull Request").
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
+ Premere su "Merge #glossario("pull request")" e successivamente su "Confirm merge"
+ Una volta effettuato il merge, comparirà un bottone "Delete branch" che permette di eliminare il ramo di lavoro. Questo passaggio è fondamentale per mantenere pulita la #glossario("repository") e non avere branch inutilizzati. 

=== Analisi statica

L'#glossario("analisi statica") è una forma di #glossario("verifica del software") che non richiede l'esecuzione del programma. Invece di eseguire il codice, lo analizza insieme alla documentazione per verificare la conformità a regole predefinite, l'assenza di potenziali difetti e la presenza di proprietà desiderate. Questa tecnica può essere applicata a tutti i prodotti del #glossario("processo di sviluppo software"), non solo al codice eseguibile, e viene utilizzata anche nella validazione.  

L'analisi statica può essere eseguita attraverso diversi metodi:  
- Per prodotti più semplici, si possono utilizzare metodi di lettura, come il desk check, il walkthrough e l'inspection. La loro efficacia dipende dall'esperienza dei #glossario("verificatori") o dalla precisione di strumenti automatizzati.  
- Per analisi più approfondite e in contesti in cui la prova empirica è costosa, si adottano metodi formali, come quelli algebrici, basati sulla dimostrazione assistita di proprietà.  

Esistono diverse tipologie di analisi statica del codice, tra cui:  
- *Analisi del flusso di controllo*: verifica che l'esecuzione avvenga nella sequenza specificata e che il codice sia ben strutturato, individuando anche porzioni non raggiungibili.  
- *Analisi del flusso dei dati*: studia le modalità di accesso alle variabili (lettura, scrittura) per rilevare anomalie come scritture successive senza letture intermedie o letture che precedono le scritture. Mira inoltre ad accertare l'assenza di #glossario("variabili globali").  
- *Analisi dei limiti*: verifica che i valori del programma rimangano sempre entro i limiti definiti dal loro #glossario("tipo di dato"), controllando problemi come #glossario("overflow") e #glossario("underflow").  
- *Analisi dell'uso dello stack*: studia le dipendenze e le dinamiche di crescita dello stack durante l'esecuzione del programma.  
- Altre forme di #glossario("analisi statica") includono:  
  - *Analisi del flusso dell'informazione*  
  - *Esecuzione simbolica*  
  - *Verifica formale del codice*  
  - *Analisi del comportamento temporale*  
  - *Analisi di interferenza*  
  - *Analisi del codice oggetto*  

L'#glossario("analisi statica") è una fase essenziale del #glossario("processo di verifica e validazione") e precede, oltre a integrare, l'#glossario("analisi dinamica") (i test). Scrivere codice che faciliti la verifica, evitando funzionalità poco chiare, è fondamentale per una buona #glossario("analisi statica").

=== Analisi dinamica

L'#glossario("analisi dinamica") è una forma di verifica del software che implica l'esecuzione del codice per osservare il suo comportamento in un ambiente controllato. A differenza dell'#glossario("analisi statica"), che esamina il codice senza eseguirlo, l'#glossario("analisi dinamica") si basa sull'esecuzione di #glossario("oggetti di prova"), ovvero programmi eseguibili che includono la porzione di codice sotto esame. Ogni prova (test) consiste nell'esecuzione di tale programma con specifici #glossario("casi di prova"). Un #glossario("caso di prova") tipicamente definisce l'oggetto di prova, i valori di ingresso, l'uscita attesa, l'ambiente di esecuzione e lo stato iniziale, nonché i passi di esecuzione. L'obiettivo principale dell'#glossario("analisi dinamica") è rilevare la presenza di difetti nel #glossario("software") osservando discrepanze tra il comportamento effettivo e quello atteso. Le prove dovrebbero essere ripetibili e, idealmente, automatizzate per garantire coerenza e facilitare la #glossario("regressione").

Un elemento cruciale nell'#glossario("analisi dinamica") è l'#glossario("oracolo"), un meccanismo per determinare a priori i risultati attesi di un test e convalidare i risultati ottenuti. L'#glossario("analisi dinamica") è complementare all'#glossario("analisi statica") e contribuisce in modo significativo alla misurazione della qualità del prodotto,comprendendo diverse categorie di test che focalizzano la verifica su differenti livelli e aspetti del #glossario("software").

==== Test di unità (TU)

Il #glossario("test di unità") si concentra sulla verifica della più piccola unità di software utilmente testabile come entità singola, che tipicamente corrisponde a una singola procedura, una classe o un piccolo aggregato coeso. L'obiettivo è accertare la correttezza del codice "as implemented". I #glossario("test di unità") possono essere di due tipi principali:

- *#glossario("Test funzionali") (black-box)*: Si basano unicamente sulla specifica degli ingressi e delle uscite dell'unità sotto test, senza considerare la sua logica interna. Si utilizzano dati di ingresso che corrispondono a specifici esiti e le classi di equivalenza (insiemi di dati di ingresso che producono lo stesso comportamento funzionale) formano singoli #glossario("casi di prova"). I TU funzionali contribuiscono alla #glossario("requirements coverage"), ovvero alla percentuale di requisiti funzionali soddisfatti dal prodotto.
- *#glossario("Test strutturali") (white-box)*: Verificano la logica interna del codice dell'unità, perseguendo un alto grado di #glossario("structural coverage"). Un singolo #glossario("caso di prova") attiva un singolo cammino di esecuzione nell'unità. Le dimensioni della #glossario("structural coverage") includono #glossario("Statement Coverage") (ogni comando eseguito almeno una volta), #glossario("Branch Coverage") (ogni ramo del flusso di controllo attraversato almeno una volta) e #glossario("Decision/Condition Coverage") (ogni condizione di ogni decisione assume entrambi i valori di verità almeno una volta).

Per eseguire i #glossario("test di unità"), spesso si utilizzano #glossario("driver"), componenti fittizi che pilotano il test fornendo gli ingressi, e #glossario("stub"), componenti fittizi che simulano le parti del sistema dipendenti dall'unità sotto test.

==== Test di integrazione (TI)

Il #glossario("test di integrazione") si applica alle componenti individuate nel #glossario("design architetturale") e mira a verificare la loro interazione e collaborazione una volta integrate. L'obiettivo è rilevare difetti di progettazione architetturale o bassa qualità dei #glossario("test di unità"), assicurando che i dati scambiati tra le interfacce siano conformi alla specifica e che i flussi di controllo specificati siano corretti. L'integrazione può avvenire in modo incrementale, costruendo e verificando il sistema passo dopo passo. Questa strategia può comportare l'uso di molti #glossario("stub"), specialmente in approcci top-down che integrano prima le funzionalità di più alto livello.

==== Test di sistema (TS)

Il #glossario("test di sistema") verifica come l'esecuzione del sistema nel suo complesso soddisfi i requisiti software definiti nell'#glossario("Analisi dei Requisiti") (AdR). Completa la misura della #glossario("requirements coverage") iniziata con i #glossario("test di unità") funzionali. Il #glossario("test di sistema") è tipicamente funzionale (black-box) e non richiede conoscenza della logica interna del software. Inizia al completamento del #glossario("test di integrazione") e precede il #glossario("collaudo").

====  Test di accettazione (Collaudo)

Il #glossario("test di accettazione"), o #glossario("collaudo"), accerta il soddisfacimento dei requisiti utente (definiti nel #glossario("capitolato")) alla presenza del committente. È un'attività formale che, in caso di esito positivo, porta al rilascio finale del prodotto.

====  Test di regressione

Il #glossario("test di regressione") ha lo scopo di accertare che le modifiche apportate al #glossario("software") per aggiunte, correzioni o rimozioni non pregiudichino le funzionalità già verificate. Il rischio di regressione aumenta con l'aumentare dell'#glossario("accoppiamento") e al diminuire dell'#glossario("incapsulamento") tra i componenti. Il #glossario("test di regressione") comprende la ripetizione selettiva di #glossario("test di unità"), di #glossario("integrazione") e di #glossario("sistema") necessari per verificare che la modifica di una parte del #glossario("sistema") non causi errori in quella parte o in altre parti correlate.


== Comunicazione interna
La comunicazione interna del gruppo, fondamentale per lo svolgimento del progetto e allineamento dei #glossario("task"), si divide in due categorie:
- Comunicazione *sincrona*
- Comunicazione *asincrona*

=== Comunicazione sincrona

==== Periodi di due settimane
Il team, per allinearsi, si riunisce online il *martedì pomeriggio* della settimana in cui non è previsto l'incontro con l'azienda #glossario("proponente"). In questa riunione ogni membro del team relaziona quanto fatto nel #glossario("periodo") in corso, evidenziando eventuali criticità o fattori di rallentamento nello sviluppo dei #glossario("task"). Viene poi fatta una mini #glossario("retrospettiva") complessiva che consente di assumere eventuali decisioni per la prevenzione o risoluzione di problematiche non previste. Durante questo incontro viene aggiornata la #glossario("project board") con le nuove #glossario("issue") assegnate ai membri. Al termine di ogni incontro sarà cura dell'#glossario("amministratore") redigere apposito #glossario("verbale interno"). \
È a cura del #glossario("responsabile") di progetto valutare, concordando con il gruppo, eventuali riunioni di allineamento aggiuntive.  \ 
Ogni incontro dovrà, in ogni caso, essere preceduto da convocazione mediante i canali di messaggistica del team.

==== Periodi di una settimana
Il team si incontra una volta a settimana a conclusione del periodo corrente, utile per una #glossario("retrospettiva"), e per iniziare il periodo successivo, con relativa suddivisione dei ruoli e dei compiti. Ogni incontro prevede che venga redatto il relativo #glossario("verbale interno"), con successivo aggiornamento della repo con le nuove issue. Ogni incontro dovrà, in ogni caso, essere preceduto da convocazione mediante i canali di messaggistica del team.

==== Strumenti
Le riunioni online del team avvengono attraverso la #glossario("piattaforma") *#glossario("Discord")*. \
Le convocazioni avvengono invece, nei seguenti canali di messaggistica :
- *#glossario("Discord")*, canale di comunicazione ufficiale del team
- *#glossario("Telegram")*, canale di comunicazione informale del team

=== Comunicazione asincrona
La comunicazione asincrona avviene sia tra tutto il team che tra i singoli componenti, attraverso i canali di comunicazione del gruppo e le piattaforme di messaggistica. \
Questo tipo di comunicazione risulta fondamentale per consentire il corretto proseguimento dei #glossario("task") senza il vincolo delle sole riunione.

==== Strumenti
Le comunicazioni tra tutti i membri del gruppo avvengono nei canali di messaggistica messi a disposizione, ovvero:
- *#glossario("Discord")*, canale di comunicazione ufficiale del team
- *#glossario("Telegram")*, canale di comunicazione informale del team

Le comunicazioni interne tra i membri del gruppo, invece, possono avvenire in modalità di messaggistica o riunione online scegliendo tra le piattaforme gratuite presenti in rete.

== Validazione
L’#glossario("attività") di #glossario("validazione") viene svolta dimostrando che il prodotto software risponda ai requisiti degli utenti finali attraverso test, prove e altri metodi oggettivi. L’obiettivo dell’#glossario("attività") di #glossario("validazione") è anche, attraverso l’interazione diretta con il committente, di dimostrare che il prodotto software rispetti tutti i requisiti concordati e che esso funzioni correttamente avendo quindi un prodotto software pronto al #glossario("rilascio"). Dunque potremmo definire questa #glossario("attività") come il processo di accertamento che il prodotto software soddisfi i requisiti specificati e che sia conforme all’uso previsto, come spuntare una checklist di controllo.

== Qualità
=== Gestione della qualità
L'#glossario("attività") di gestione della qualità è un #glossario("processo") ampiamente descritto nel documento #glossario("PdQ"). \
La gestione della qualità è essenziale per garantire che il software, la documentazione e le #glossario("attività") di sviluppo rispettino gli standard e soddisfino i requisiti definiti. Questo processo si basa su principi strutturati che permettono di monitorare e migliorare costantemente la qualità del progetto. Per ottenere risultati efficaci inoltre, vengono implementati metodi di #glossario("verifica") e #glossario("validazione"), con il coinvolgimento attivo di tutti i membri del team e il supporto di strumenti specifici.

=== Standard ISO 9000:2000
Lo standard #glossario("ISO 9000:2000") fornisce una base solida per la gestione della qualità attraverso un insieme di principi che consentono alle organizzazioni di migliorare continuamente le loro prestazioni. Questi principi sono:
 - *Centralità del cliente*: la soddisfazione del cliente è un obiettivo prioritario e la qualità deve essere orientata alle sue esigenze.
 - *Leadership*: una chiara direzione strategica e una guida efficace sono fondamentali per garantire il successo del progetto.
 - *Partecipazione attiva del team*: il coinvolgimento e la responsabilizzazione di tutti i membri favoriscono il raggiungimento degli obiettivi.
 - *Approccio per processi*: ogni #glossario("attività") deve essere gestita come parte di un sistema interconnesso di processi.
 - *Miglioramento continuo*: l'evoluzione costante dei metodi di lavoro e delle strategie di sviluppo è essenziale per mantenere alti standard qualitativi.
 - *Decisioni basate sui dati*: le scelte devono essere supportate da analisi oggettive e dati concreti.
 - *Gestione dei rapporti con i fornitori*: stabilire relazioni di fiducia con fornitori e stakeholder migliora la qualità complessiva.
Tali principi vengono adottati per strutturare un sistema di gestione della qualità che favorisca la coerenza, l'efficienza e l'affidabilità del progetto.

=== Gestione del cambiamento
Nel contesto di un progetto software, la gestione del cambiamento rappresenta un elemento cruciale per garantire un'evoluzione efficace del #glossario("processo") di sviluppo. Il cambiamento può essere percepito come una sfida o come un'opportunità a seconda dell'approccio adottato dal team. 
Un cambiamento reattivo si verifica quando il team si adatta forzatamente a nuove situazioni senza una pianificazione adeguata, generando possibili inefficienze. Al contrario, un approccio proattivo permette di anticipare le necessità di modifica, valutandone i benefici e pianificandone l'implementazione in modo strutturato.\
Gli elementi chiave per una gestione efficace del cambiamento includono:
- *Identificazione delle necessità di cambiamento*: analisi delle aree che necessitano miglioramenti per ottimizzare il #glossario("processo") di sviluppo.
- *Comunicazione chiara*: coinvolgimento del team e degli stakeholder per garantire una transizione graduale e condivisa.
- *Pianificazione e attuazione*: definizione di strategie operative e assegnazione di responsabilità per gestire il cambiamento con il minimo impatto sul progetto.
- *Monitoraggio e adattamento*: valutazione continua degli effetti del cambiamento e eventuali correzioni per migliorarne l'efficacia.

== Configurazione
L’#glossario("attività") di gestione della configurazione è un processo che norma l’identificazione, organizzazione e controllo delle modifiche agli “artefatti” durante il loro #glossario("ciclo di vita").

=== Repository
Le #glossario("repository") del team archi7echs sono:
- *archi7echs-team.github.io*: #glossario("repository") usata per il versionamento, gestione e sviluppo dei file sorgente relativi alla documentazione nel branch sources, per generare la pagina web viene usato il branch website mentre i documenti compilati si possono trovare nel branch master \ Riferimento: #link("https://github.com/Archi7echs-Team/archi7echs-team.github.io")[#text(blue)[https://github.com/Archi7echs-Team/archi7echs-team.github.io]] - _Ultimo accesso al link 11/03/2025_
- *#glossario("PoC")*: #glossario("repository") usata per il #glossario("PoC") \ Riferimento: #link("https://github.com/Archi7echs-Team/PoC")[#text(blue)[https://github.com/Archi7echs-Team/PoC]] - _Ultimo accesso al link 11/03/2025_
- *#glossario("MVP")*: #glossario("repository") usata per il prodotto finale
Riferimento: #link("https://github.com/Archi7echs-Team/MVP")[#text(blue)[https://github.com/Archi7echs-Team/MVP]] - _Ultimo accesso al link 11/03/2025_

=== Struttura repository documentazione
La struttura del branch master è (le directory sono segnate in grassetto):
- *documents*
  - *Candidatura*
    - *Verbali*
    - Analisi capitolati
    - Lettera Candidatura
    - Preventivo
  - *#glossario("RTB")*
    - *#glossario("Esterni")*
      - *Verbali*
      - #glossario("Analisi dei requisiti")
      - Piano di Progetto
      - #glossario("Piano di Qualifica")
      - Lettera di Presentazione RTB
    - *#glossario("Interni")*
      - *Verbali*
      - Glossario
      - Norme di Progetto
  - *#glossario("PB")*
    - *#glossario("Esterni")*
      - *Verbali*
      - #glossario("Analisi dei requisiti")
      - #glossario("Piano di Progetto")
      - #glossario("Piano di Qualifica")
    - *#glossario("Interni")*
      - *Verbali*
      - Glossario
      - Norme di Progetto  

=== Sincronizzazione 
La sincronizzazione delle #glossario("attività") viene gestita attraverso #glossario("repository") condivise su #glossario("GitHub"), garantendo un flusso di lavoro organizzato e tracciabile. Ogni compito assegnato viene monitorato tramite specifiche #glossario("issue"), che permettono di mantenere una chiara visione dello stato di avanzamento del progetto.
Durante lo svolgimento delle #glossario("attività"), ogni membro del team lavora su una versione separata del codice, evitando conflitti e sovrapposizioni. Questo metodo consente di operare parallelamente su più task, ottimizzando la produttività e riducendo il rischio di interferenze tra le modifiche effettuate da diversi sviluppatori. \
Le modifiche apportate vengono periodicamente integrate nel flusso principale attraverso #glossario("pull request"), che permettono una revisione strutturata e garantiscono che solo codice verificato venga incorporato nel progetto.


== Risoluzione dei problemi
Durante lo sviluppo di un progetto complesso, possono emergere ostacoli di varia natura che, se non affrontati tempestivamente, rischiano di compromettere il corretto avanzamento delle #glossario("attività"). Il #glossario("processo") di risoluzione dei problemi ha quindi lo scopo di identificare, analizzare e correggere le criticità in modo strutturato, assicurando una gestione efficace delle anomalie e una continua ottimizzazione dei processi.

=== Rilevamento
Un'identificazione tempestiva delle problematiche è fondamentale per minimizzare il loro impatto sulle #glossario("attività"). Tutti i membri del team sono incoraggiati a segnalare eventuali anomalie non appena vengono individuate, attraverso strumenti di tracciamento adeguati. \
Una volta rilevato un problema, è necessario analizzarne le cause per comprendere la radice della questione ed evitare che si ripresenti in futuro. Per facilitare questo #glossario("processo"), ogni problema deve essere classificato in base alla sua gravità e alla sua urgenza. Inoltre, la documentazione accurata dei problemi e delle loro risoluzioni permette di individuare pattern ricorrenti e definire strategie preventive a lungo termine.

=== Risoluzione
Dopo aver individuato le cause di un problema, il team procede con l'identificazione della soluzione più efficace. Le strategie di intervento vengono valutate in base all'impatto atteso e all'effort richiesto, cercando sempre di minimizzare eventuali effetti collaterali sulle altre componenti del progetto. \
Una volta implementata la soluzione, è necessario verificare che il problema sia stato effettivamente risolto e che non abbia introdotto ulteriori anomalie. Se il problema persiste o emergono nuove criticità, si procede con una revisione della soluzione adottata fino al completo ripristino della funzionalità compromessa. \
Il *miglioramento continuo* del #glossario("processo") di risoluzione dei problemi avviene attraverso un'analisi periodica delle segnalazioni raccolte, con l'obiettivo di affinare le pratiche adottate e ridurre il rischio di ricorrenza delle stesse problematiche.

#pb()

= Management

== Gestione dell'assegnazione dei ruoli
Il team distribuisce, in accordo con i membri, i ruoli ad ogni #glossario("periodo"). L'obiettivo è garantire a ciascun componente del gruppo, secondo un criterio di rotazione, l'assegnazione di ogni compito durante lo svolgimento del progetto. \
I criteri che vengono considerati ad ogni scelta sono i seguenti:
- disponibilità dei singoli nel #glossario("periodo") seguente
- ruoli precedentemente coperti
- tendenza ad alternare i ruoli tra due periodi contigui
- possibilità di lasciare ruoli non coperti se non necessari per la fase successivamente
- possibilità di assegnare uno stesso ruolo a più membri se necessario

Vengono di seguito descritti i 6 ruoli previsti per lo sviluppo del progetto.

=== Responsabile
La figura di riferimento del gruppo e che lo rappresenta all'#glossario("esterno"), si
occupa del coordinamento e gestione delle risorse.  \
Nel dettaglio la figura del #glossario("Responsabile") si occupa di:
- Organizzare il #glossario("periodo") di riferimento, assegnando ruoli e creando #glossario("issue")
- Monitorare l'andamento del #glossario("periodo") in corso mediante analisi della #glossario("Project board") e raccogliendo feedback dai diretti interessati
- Organizzare e condurre le riunioni interne del team
- Illustrare, durante i #glossario("SAL") periodici con il proponente, il lavoro svolto dal gruppo 
- Predisporre il #glossario("diario di bordo")
- Valutare e gestire i rischi
- Approvare modifiche alla documentazione, secondo l'apposito procedimento
- Stesura del #glossario("PdP") con previsioni e retrospettive

=== Amministratore
Figura con il compito di assicurare l’efficienza, gestione e controllo dell’ambiente IT di lavoro nonché di supporto alla figura del #glossario("Responsabile"). \
Nel dettaglio la figura dell'#glossario("Amministratore") si occupa di:
- Controllare e garantire il corretto funzionamento della #glossario("repository")
- Studiare i processi #glossario("interni") per renderli più efficienti
- Garantire la sicurezza della #glossario("repository")
- Aggiornare il foglio ore relativamente al #glossario("periodo") in corso
- Scrittura e aggiornamento delle Norme di Progetto
- Sostituire il #glossario("Responsabile") in caso di sua temporanea assenza
- Aggiornare il glossario
- Approvare, dopo la verifica, i documenti redatti o modificati dal #glossario("Responsabile")

=== Analista
Figura con il compito di analisi ed illustrazione tecnica del problema. È richiesto, da parte di tale ruolo, la perfetta conoscenza del dominio. \
Nel dettaglio la figura dell'Analista si occupa di:
- Studiare il dominio e individuare gli #glossario("UC")
- Redigere l'#glossario("AdR") in tutte le sue sezioni
- Supportare le figure del Progettista e del Programmatore

=== Progettista
Figura con il compito di individuare e determinare le scelte realizzative. È richiesto, da parte di questa figura, competenze tecniche e tecnologiche aggiornate.

=== Programmatore
Figura con il compito di seguire la fase di codifica. Ha la responsabilità della realizzazione e mantenimento del codice. Questa figura richiede competenze tecniche ma deleghe limitate.

=== Verificatore
Figura a supporto di ogni #glossario("attività") del progetto. Sono richieste conoscenze e competenze tecniche e la conoscenza dettagliata delle Norme di Progetto del gruppo. \
Nel dettaglio la figura del #glossario("Verificatore") si occupa di:
- Controllare che la documentazione redatta sia corretta, senza errori ortografici, di contenuto e che rispetti le Norme di Progetto
- Mandare in approvazione i documenti al #glossario("responsabile") di progetto

Per le #glossario("attività") in capo a tale figura si rimanda al procedimento per la gestione delle modifiche della documentazione - @processo_verifica

== Gestione della board <gestione_board>
Il team utilizza la board di #glossario("GitHub") per la gestione delle #glossario("issue") e delle #glossario("attività"). \
Essa è suddivisa in colonne, ognuna delle quali rappresenta uno stato dell'#glossario("attività"). \
+ *To Do*: rappresenta il nostro #glossario("backlog"), ovvero tutte le #glossario("attività") che devono essere svolte
+ *In Progress*: #glossario("attività") in corso di svolgimento
+ *In review*: #glossario("attività") completata e in attesa di verifica
+ *Done*: #glossario("attività") completata e verificata

=== Processo di utilizzo board
+ Assegnazione di un'#glossario("attività"): l'#glossario("attività") viene assegnata a un membro del team
  - Se c'è la presenza di un "sottogruppo" di lavoro, le decisioni relative al come suddividere le #glossario("attività") saranno a carico del "#glossario("responsabile")" del sottogruppo. Si attua quindi una sorta di "divide et impera" per garantire una maggiore efficienza e una migliore gestione delle #glossario("attività").
+ Inizio dell'#glossario("attività"): il membro del team assegnato sposta l'#glossario("attività") dalla colonna *To Do* a *In Progress*
+ Completamento dell'#glossario("attività"): il membro del team sposta la card dalla colonna *In Progress* a *In review*
+ #glossario("Verifica") dell'#glossario("attività"): il #glossario("verificatore") controlla la #glossario("Pull Request") associata all'#glossario("attività") e, se viene approvata, per la struttura data alla #glossario("repository"),l'#glossario("attività") verrà spostata in automatico da *In review* a *Done* 

Sarà compito del #glossario("responsabile") del #glossario("progetto") controllare che le #glossario("attività") siano assegnate correttamente e che la board sia aggiornata. Inoltre, assegnerà il grado di priorità, in modo da garantire che quelle più importanti siano svolte per prime.

== Gestione e Analisi delle ore di lavoro

La gestione delle ore di lavoro e dei relativi costi è uno degli aspetti fondamentali per monitorare l’andamento del progetto. A tal fine, ogni membro del team dispone di una sezione del foglio ore creato tramite #glossario("Google Sheets"), che permette di registrare, riepilogare e analizzare le ore svolte e i costi associati. Inoltre, i dati inseriti nel foglio sono integrati con #glossario("Grafana"), un servizio che fornisce un cruscotto di monitoraggio visivo e analitico. Di seguito sono spiegate in dettaglio le diverse sezioni e #glossario("funzionalità").

=== Struttura e utilizzo del foglio ore
Il foglio ore si compone di due parti principali:
+ *Riepilogo dei Costi* (sezione sinistra)
	- Questa sezione fornisce un quadro complessivo delle ore totali e dei costi associati ai vari ruoli svolti nei vari periodi.
	- *Colonne principali*:
		- *Ruolo*: elenca i ruoli ricoperti (es. #glossario("Responsabile"), #glossario("Amministratore"), #glossario("Verificatore"), ecc.).
		- *#glossario("Periodo") X*: numero di ore svolte per ruolo nel #glossario("periodo") X.
		- *Tot. h*: somma delle ore svolte per ciascun ruolo.
		- *€/ora*: tariffa oraria di ciascun ruolo.
		- *Costo*: calcolo del costo totale ottenuto moltiplicando le ore svolte per la tariffa oraria.
	- Questa sezione consente di monitorare immediatamente i costi associati a ciascun ruolo e verificare se i tempi e i budget sono in linea con le previsioni.
+ *Tabella Oraria per #glossario("Periodo")* (sezione destra)
	- La sezione a destra è suddivisa in *periodi di riferimento*, ciascuno indicato con un numero progressivo e date specifiche.
	- *Colonne principali*:
		- *Data*: rappresenta il giorno specifico per cui vengono registrate le ore.
		- *Ruoli*: ciascun ruolo ha una colonna dedicata (es. #glossario("Responsabile"), #glossario("Amministratore"), #glossario("Verificatore"), ecc.).
		- *Ore svolte*: l’utente inserisce manualmente le ore svolte per ogni ruolo, in corrispondenza della data indicata.
	- Al termine del #glossario("periodo"), il totale delle ore inserite viene calcolato automaticamente e riportato nel riepilogo a sinistra, fornendo una chiara visione delle ore effettivamente lavorate.
=== Integrazione con Grafana
I dati raccolti nel foglio ore sono automaticamente collegati a #glossario("Grafana"), un servizio di monitoraggio che permette di visualizzare l’andamento del progetto attraverso grafici e dashboard interattive. Questo collegamento permette di avere un’analisi più approfondita e visiva delle #glossario("attività") svolte. La dashboard di #glossario("Grafana") è suddivisa in diverse sezioni chiave:
+ *Stato delle #glossario("Issue")*
	- #glossario("Grafana") monitora le #glossario("attività") del #glossario("repository") #glossario("GitHub"), mostrando:
	 - *#glossario("Issue") aperte e chiuse* in un grafico a torta.
	 - *#glossario("Issue") in corso, in #glossario("revisione") e completate* evidenziando il loro stato attuale.
+ Riepilogo di tutte le *#glossario("pull request")* e in che stato si trovano.
+ Stato della *board* di #glossario("GitHub") (#link(<gestione_board>)[*4.2 Gestione della board*]).
+ *Andamento Ore e Costi*
 - Questa sezione fornisce un confronto visivo tra le *ore previste* e le *ore effettivamente* svolte per ciascun ruolo.
 - Il grafico in basso a sinistra evidenzia:
  - *Ore Previste*: rappresentate in giallo.
	 - *Ore Effettive*: rappresentate in verde.
+ *Andamento Costi Preventivati vs Effettivi*
	- In basso a destra, un grafico a linea mostra:
	 - *Costi Preventivati*: i costi stimati durante la pianificazione del #glossario("periodo").
	 - *Costi Effettivi*: i costi registrati a fine #glossario("periodo").
	- Questo confronto permette di valutare eventuali scostamenti rispetto al piano iniziale e di adottare misure correttive.
+ *Riepilogo delle #glossario("Attività")*
 - Nella sezione centrale una tabella riporta i ruoli assegnati per il #glossario("periodo") corrente.
	
  
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
	- *Elenchi puntati*: devono essere usati per elencare oggetti, idee o concetti che non seguono un ordine particolare. Ad esempio, per elencare requisiti, caratteristiche, o #glossario("attività") che non sono sequenziali.
	- *Elenchi numerati*: devono essere utilizzati quando si descrivono #glossario("attività") che devono essere eseguite in un ordine preciso, come per le procedure passo passo, le istruzioni sequenziali o le fasi di un processo.

== Gestione immagini
- Ogni immagine presente nei documenti deve essere salvata nella cartella _img_
- Per ogni documento che utilizzi immagini non condivise con altri documenti, è necessario creare una sottocartella con il nome del suddetto documento in cui inserire le immagini ad esso relative

#pb() 
= Processi organizzativi
È fondamentale che il gruppo sia allineato nelle tempistiche e modalità di organizzazione dei processi nell'ottica di una corretta gestione dei #glossario("task") ed eventuali rischi annessi. 

== Gestione dei processi
Un #glossario("processo") è un insieme di #glossario("attività") correlate  e coese che trasformano bisogni (input) in prodotti (output) secondo specifiche regole. \

L'intero #glossario("ciclo di vita") di ogni processo è supportato dalla gestione di questo mediante il sistema di #glossario("Issue") di #glossario("Github"). 

La gestione di un processo è composta da diverse fasi:
 + Identificazione e definizione
 + Pianificazione
 + Monitoraggio
 + Gestione dei rischi
 + #glossario("Retrospettiva")

=== Identificazione e definizione di processi
Elemento fondamentale per la gestione di un processo è l'identificazione di questo. Un processo viene indicato come una minima #glossario("attività") che compone il progetto, indipendentemente essa sia di progettazione, analisi, codifica o gestione/amministrazione del progetto stesso. 

==== Identificazione mediante sistema Issue di Github 
Ogni processo viene identificato da:
- *#glossario("ID")*, generato automaticamente dal sistema
- *Nome* 
- *Descrizione*, se necessaria
- *Membro* (o membri) del team assegnati
- *#glossario("Label")*, fondamentale per identificare l'appartenenza del processo. Ogni #glossario("label") si riferisce alla relativa parte di documentazione/codifica di cui il processo fa parte. Nel dettaglio:
  - #glossario("AdR")
  - Agg_sito
  - Candidatura
  - Fix, per indicare la correzione di un errore ed è obbligatorio associare una seconda #glossario("label") che identifichi l'appartenenza del processo
  - Glossario
  - #glossario("NdP")
  - #glossario("PdP")
  - #glossario("PdQ")
  - V.E.
  - V.I.
- *Progetto*, configurazione di #glossario("Github") necessaria per poter gestire la #glossario("issue") mediante la #glossario("Project Board")
- *#glossario("Milestone")*, per identificare il #glossario("periodo") a cui il processo è associato
=== Pianificazione 
==== Descrizione
Ogni processo viene associato ad un #glossario("periodo"), indicato nel sistema di #glossario("Issue") come #glossario("Milestone"). 
Tale associazione consente di identificare il processo dentro una fase, definita da una data di inizio ed una fine, definendo quindi un termine massimo di completamento, salvo specifica indicazione a preventivo o motivazione a consuntivo. Tale gestione consente inoltre di avere una visione su tutti i processi, consentendo il monitoraggio e la #glossario("retrospettiva") del #glossario("periodo") stesso con stime di tempi, risorse e costi necessari per il completamento delle #glossario("Issue").

==== Attività a cura del responsabile

Il responsabile di progetto è tenuto a:
+ creare la #glossario("issue") in Github, assegnando un titolo esaustivo
+ inserire, se necessario, una descrizione procedurale volta a dare maggiori dettagli
+ assegnare la issue al membro/ai membri del team responsabili del completamento della stessa
+ assegnare una o più #glossario("labels") volte a categorizzare le #glossario("issue")
+ assegnare la issue al progetto
+ assegnare la issue alla #glossario("Milestone")


==== Diagramma di Gantt
Per una corretta pianificazione e gestione delle #glossario("issue"), è compito di ogni assegnatario delle #glossario("issue"):

+ impostare la _start date_ e la _end date_ nella relative sezione di #glossario("Github"), in modo tale che la project board mostri automaticamente il diagramma di Gantt con le tempistiche di inizio e fine del processo.

=== Monitoraggio
==== Descrizione
È necessario conoscere, in ogni momento, lo stato di avanzamento del processo mediante un corretto utilizzo della #glossario("Project Board") di #glossario("Github"). \
La board permette al #glossario("responsabile") di progetto di intervenire tempestivamente in caso di problematiche che sono sorte o stanno per sorgere. \
È compito del #glossario("responsabile") di progetto interfacciarsi con l'assegnatario della #glossario("Issue") qualora si presentasse qualche situazione di rischio per trovare una soluzione a questa. \
Se un membro del gruppo nota difficoltà non previste durante lo svolgimento del processo è tenuto ad avvisare tutto il team e sarà cura del #glossario("responsabile") trovare una soluzione al problema presentato.

==== Attività a cura dell'assegnatario di una issue
Ogni #glossario("Issue") appartiene ad uno stato, in tempo reale, che rappresenta il processo. È a cura dell'assegnatario della #glossario("Issue") identificare e aggiornare lo stato del processo mediante trascinamento nella #glossario("Project Board") nello stato corretto:
- *#glossario("Todo")*, #glossario("Issue") creata ma non ancora iniziata
- *In progress*, #glossario("Issue") in lavorazione
- *In review*, #glossario("Issue") completata e in attesa di verifica
- *Done*, #glossario("Issue") terminata

=== Gestione dei rischi
Ogni processo può essere soggetto a rischi, indicati nel Piano di Progetto. Una corretta prevenzione e gestione dei rischi, come indicato al punto precedente, richiede il corretto e tempestivo aggiornamento di una board. \
Il #glossario("responsabile") di progetto, al verificarsi di una situazione di rischio, è tenuto a prendere decisioni volte all'eliminazione di tale rischio con l'obiettivo di terminare i processi nei tempi previsti e rispettando le procedure ed indici di qualità. Tali decisioni vengono indicate e motivate nei #glossario("verbali interni") e nel #glossario("PdP"), in quest'ultimo nella sezione di #glossario("retrospettiva") del #glossario("periodo").

=== Retrospettiva
Ogni singolo processo è parte integrante della #glossario("retrospettiva") del #glossario("periodo"), dove eventuali criticità devono essere evidenziate e giustificate. \
Durante l'incontro periodico #glossario("SAL") con il proponente viene relazionata, da coloro che hanno seguito i processi interessati dalla riunione, la #glossario("retrospettiva") del processo stesso.

=== Miglioramento
L'#glossario("attività") di miglioramento è un aspetto fondamentale per garantire efficienza e qualità dei processi. Si identificano tutte quelle "aree" che necessitano degli accorgimenti che possono interessare questioni tempistiche e/o di qualità apportando quindi le dovute modifiche necessarie.
L’identificazione si materializza attraverso la #glossario("retrospettiva") svolta durante ogni riunione (ampiamente descritto all'#glossario("interno") del #glossario("PdP")) e anche grazie al cruscotto che permette di avere una visione d'insieme dei processi e delle #glossario("issue") in corso.
  

=== Formazione
L’#glossario("attività") di formazione è necessaria per avere un gruppo con conoscenze allineate e adatte per la realizzazione del progetto. L’obiettivo dell’#glossario("attività") è un gruppo con membri capaci di ricoprire ogni ruolo all’#glossario("interno") del gruppo avendo conseguito un livello di conoscenza generale adatto.
\ L’#glossario("attività") si divide in due modalità: 
-	*Individuale*: ogni membro si impegnerà a raggiungere un livello di conoscenze adatto per ricoprire ogni ruolo in modo autonomo
-	*Di gruppo*: per gruppo si intende anche due persone, nel caso l’#glossario("attività") individuale non sia consigliata o normalmente essa si svolge nel cambio dei ruoli passando le conoscenze maturate durante il #glossario("periodo") al gruppo o al singolo che andrà a ricoprire il ruolo.

#pb()
= Standard di qualità
Per una corretta gestione del #glossario("ciclo di vita") del progetto e per garantire la qualità dei processi e del prodotto software verranno adottati i seguenti standard internazionali sviluppati dall'#glossario("ISO"):
- *#glossario("ISO/IEC 9126")*: lo standard per la valutazione della qualità del prodotto software. Questo modello consente di analizzare e valutare il software in base a caratteristiche fondamentali, quali #glossario("funzionalità"), affidabilità, usabilità, efficienza, manutenibilità e portabilità. Queste caratteristiche sono misurabili attraverso delle metriche. La scelta di questo standard riflette l’obiettivo di fornire un prodotto che soddisfi pienamente le specifiche richieste del progetto. \
- *#glossario("ISO/IEC 12207:1995")*: lo standard per il #glossario("ciclo di vita") del software, che definisce un insieme strutturato di processi per la gestione e lo sviluppo del progetto. Questo standard prevede la suddivisione in processi primari, di supporto e organizzativi, garantendo una visione completa e coerente della gestione delle #glossario("attività") durante l’intero #glossario("ciclo di vita") del progetto. \
Questa combinazione di standard consente di bilanciare l'attenzione sulla qualità del prodotto con un approccio metodico alla gestione dei processi, assicurando un risultato finale che sia funzionale, efficiente e conforme alle migliori pratiche internazionali. 

== Modello di qualità secondo Standard ISO/IEC 9126
Di seguito vengono elencate e descritte le categorie fondamentali che classificano il modello. Ciascuna di queste è caratterizzata a sua volta da delle sotto-caratteristiche. Una delle sotto-caratteristiche comuni a tutte le categorie è la *conformità*, che si riferisce alla capacità del software di rispettare standard tecnici, norme e regolamenti relativi alla specifica caratteristica.

=== Funzionalità
É la capacità del software di fornire funzioni che soddisfino i requisiti specificati o impliciti, con sotto-caratteristiche come:
  - *Adeguatezza*: è la capacità del software di fornire un appropriato insieme di funzioni per soddisfare i requisiti specifici dell'utente.
  - *Accuratezza*: è la capacità del software di fornire i risultati corretti in modo tale che corrispondano a quanto richiesto.
  - *Interoperabilità*: è la capacità del software di interagire ed operare con altri sistemi.
  - *Sicurezza*: è la capacità del software di proteggere informazioni e dati da accessi non autorizzati.

=== Affidabilità
Misura la capacità del software di mantenere un livello di prestazioni specificato in determinate condizioni, anche in presenza di errori, per un #glossario("periodo") di tempo stabilito. Le sue sotto-caratteristiche sono:
  - *Maturità*: è la capacità del software di gestire in modo stabile le operazioni, evitando errori, malfunzionamenti e risultati non corretti.
  - *Tolleranza agli errori*: è la capacità di mantenere prestazioni specificate anche in caso di errori.
  - *Recuperabilità*: è la capacità del software di ripristinare un livello appropriato di prestazioni in caso di errori.

=== Usabilità
É la capacità del software di essere compreso, appreso e utilizzato dall'utente in condizioni specifiche. Le sotto-caratteristiche dell'usabilità sono:
  - *Comprensibilità*: è la facilità con la quale l'utente può capire le #glossario("funzionalità") disponibili e come queste possono essere utilizzate per raggiungere i propri obiettivi. Include la chiarezza dell'interfaccia utente e delle informazioni presentate.
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
  - *Modificabilità*: è la facilità con cui il software può essere modificato per aggiungere nuove #glossario("funzionalità") o per cambiare quelle esistenti.
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
Sono i processi che comprendono le #glossario("attività") direttamente legate allo sviluppo del software, si occupano quindi della realizzazione, distribuzione e manutenzione del prodotto software. \
L'obiettivo di questi processi è garantire che il prodotto sia consegnato e mantenuto secondo i requisiti.

=== Processi di supporto
Sono i processi che includono la gestione dei documenti e dei processi di controllo della qualità, dunque non producono direttamente il software, ma forniscono #glossario("attività") e servizi necessari per garantire la qualità ed efficacia. \
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
  - *Descrizione*: percentuale di #glossario("attività") completate entro le scadenze stabilite.
  - *Obiettivo*: misurare quanto il progetto rispetta i tempi previsti.
  - *Formula*: _SA = #math.frac("attività completate in tempo", "attività pianificate") x 100_

- *MPC2*:
  - *Nome*: Earned Value (*EV*)
  - *Descrizione*: rappresenta il valore del lavoro effettivamente completato fino a quel #glossario("periodo").
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
  - *Nome*: Cost Variance (*CV*)
  - *Descrizione*: misura la differenza tra il valore guadagnato (EV) e il costo effettivo (AC), un valore negativo indica che si è oltre il budget previsto, mentre un valore positivo indica un risparmio rispetto ai costi pianificati.
  - *Obiettivo*: monitorare l'aderenza al budget pianificato.
  - *Formula*: _CV = EV - AC_

- *MPC8*:
  - *Nome*: Estimated At Completion (*EAC*)
  - *Descrizione*: stima il costo totale previsto per completare il progetto, tenendo conto del rendimento attuale.
  - *Obiettivo*: fornire una previsione aggiornata dei costi finali del progetto.
  - *Formula*: _EAC = #math.frac("BAC", "CPI")_

- *MPC9*:
  - *Nome*: Estimated To Complete (*ETC*)
  - *Descrizione*: rappresenta la stima dei costi necessari per completare il lavoro rimanente di un progetto.
  - *Obiettivo*: fornire una previsione dei costi futuri.
  - *Formula*: _ETC = EAC - AC_

=== Processi di supporto
- *MPC10*:
  - *Nome*: Percentuale di Casi di Test Superati (*PCTS*)
  - *Descrizione*: misura la percentuale di casi di test eseguiti che hanno avuto esito positivo rispetto al totale dei casi di test eseguiti.
  - *Obiettivo*: valutare l'efficacia dei test nel garantire che il software soddisfi i requisiti e non presenti errori.
  - *Formula*: _PCTS = #math.frac("casi di test superati", "casi di test eseguiti") x 100_

- *MPC11*:
  - *Nome*: Percentuale di Metriche Soddisfatte (*PMS*)
  - *Descrizione*: misura la percentuale di metriche di qualità che sono state soddisfatte.
  - *Obiettivo*: valutare in modo globale il livello di qualità raggiunto.
  - *Formula*: _PMS = #math.frac("metriche soddisfatte", "metriche totali") x 100_

=== Processi organizzativi
- *MPC12*:
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
  - *Obiettivo*: garantire che la documentazione prodotta sia chiara e #glossario("accessibile"), evitando testi complessi.
  - *Formula*: _MIG = 89 + #math.frac("300·(numero frasi) - 10·(numero lettere) ", "numero parole")_

- *MPD6*:
  - *Nome*: Failure Density (*FD*)
  - *Descrizione*: rappresenta il numero di errori rilevati per #glossario("unità") di codice.
  - *Obiettivo*: valutare la qualità del codice e ridurre il numero di errori.
  - *Formula*: _FD = #math.frac("numero errori rilevati", "linee di codice totali") x 100_

- *MPD7*:
  - *Nome*: Statement Coverage (*SC*)
  - *Descrizione*: indica la percentuale di istruzioni del codice eseguite almeno una volta durante i test.
  - *Obiettivo*: misurare la copertura dei test.
  - *Formula*: _SC = #math.frac("istruzioni eseguite", "istruzioni totali") x 100_

- *MPD8*:
  - *Nome*: #glossario("Branch") Coverage (*BC*)
  - *Descrizione*: misura la percentuale di ramificazioni eseguite almeno una volta durante i test rispetto al totale delle ramificazioni presenti nel codice.
  - *Obiettivo*: garantire che tutte le possibili diramazioni del codice siano state testate per identificare eventuali errori nei percorsi condizionali.
  - *Formula*: _BC = #math.frac("ramificazioni eseguite", "ramificazioni totali") x 100_

- *MPD9*:
  - *Nome*: Correttezza Ortografica (*CO*)
  - *Descrizione*: misura il numero di errori ortografici presenti all'#glossario("interno") di un documento del progetto.
  - *Obiettivo*: garantire una documentazione chiara, migliorando la leggibilità.

=== Usabilità
- *MPD10*:
  - *Nome*: Facilità di Utilizzo (*FU*)
  - *Descrizione*: valuta quanto il software sia semplice da utilizzare per gli utenti.
  - *Obiettivo*: garantire un'esperienza utente positiva.

- *MPD11*:
  - *Nome*: Tempo di Apprendimento (*TA*)
  - *Descrizione*: misura il tempo necessario affinché un nuovo utente apprenda come utilizzare il sistema.
  - *Obiettivo*: ridurre il tempo richiesto per apprendere le #glossario("funzionalità") del sistema.

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
   