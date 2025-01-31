#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 26/11/2024",
  subtitle: "Call con Sanmarco Informatica - verbale esterno nr. 4",
  author: "Giovanni Salvò",
  state: "Approvato",
  intern: false,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.0.2", "31-01-2025",  "Aggiunta termini glossario", p.scandaletti, (p.pozzobon,p.lucato),
    "0.0.1", "05-12-2024",  "Prima stesura documento", p.salvo, (p.valdagno,p.checchinato),
  )
)

_A seguito del lavoro svolto da parte del team e dell'impegno preso con l'azienda di aggiornarsi una volta ogni 2/3 settimane si decide, una volta contattato Alex Beggiato (System Architect Team Leader), di convocare una call con il seguente #glossario("ordine del giorno"):_


= Ordine del Giorno
  
+ #glossario("Revisione") Stato Avanzamento Lavori (#glossario("SAL"))
+ Domande e chiarimenti
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Martedì 26/11/2024 - ore 15.00 \
  
*Luogo* Online - #glossario("Piattaforma") Google Meet  \
  
*Destinatari* Azienda Sanmarco Informatica e tutti i componenti del gruppo Archi7echs \

= Verbale
 
L'incontro inizia, come da programma alle ore 15.00. Sono presenti i seguenti componenti del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

Per Sanmarco Informatica, invece, è presente:
- Alex Beggiato - System Architect Team Leader

#p.salvo si propone come #glossario("verbalizzante") dell’incontro. \
Si procede alla discussione in ordine dei punti all’#glossario("ordine del giorno").
#pb()


#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})


== Revisione #glossario("SAL") con Sanmarco Informatica
Durante l'incontro è stato illustrato il funzionamento della #glossario("repository") #glossario("GitHub") sia come archivio sia come strumento per la gestione del #glossario("progetto"). Sono stati mostrati il sito collegato alla #glossario("repository") e gli obiettivi futuri per migliorarne la fruibilità e automatizzarne i processi. Inoltre, sono state spiegate le automazioni implementate per la compilazione e l'aggiornamento automatico dei documenti e del sito e illustrato il procedimento per gestire la #glossario("revisione") della documentazione.

È stato consigliato di utilizzare la #glossario("repository") anche per il codice, in modo da gestire contemporaneamente documentazione e sviluppo, e sottolineata la necessità di effettuare test automatici prima della #glossario("verifica") delle parti di codice. È stato spiegato il funzionamento del board di #glossario("GitHub"), utile per monitorare e organizzare le #glossario("issue") e avere una visione complessiva del loro stato.

È stato presentato il funzionamento del glossario, sia come documento sia come automazione per la creazione di un glossario interattivo sul sito.

L’azienda è stata informata della scelta del team di impostare il #glossario("progetto") secondo la metodologia #glossario("Agile SCRUM"), decisione che è stata accettata e approvata.

Infine, su suggerimento di Alex Beggiato, è stato proposto di inserire un disclaimer nella #glossario("repository") per indicare che si tratta di un #glossario("progetto") universitario e che non verranno accettate commit da utenti #glossario("esterni").\


== Domande e chiarimenti
#p.pesenato chiede in che modo la gestione degli errori dovrà essere inserita nell' #glossario("AdR") e viene confermato il pensiero iniziale di aggiungerli agli use cases ma non nei requisiti.
Viene informata l'azienda che i primi test per la scelta delle tecnologie da utilizzare sono iniziati e viene chiesto se la creazione di un simil-#glossario("PoC") possa aiutare nell'individuazione di casi d'uso ancora non trovati. Alex conferma che lo scopo del #glossario("PoC") è proprio questo. #p.valdagno chiede delucidazioni sul ruolo dell'utente, che viene identificato come utente standard in assenza di una fase di accesso. Infine, vengono poste domande relative alla gestione di dati significativamente distanti dalla media di quelli inseriti.

== Varie ed eventuali
Non essendoci altri argomenti da discutere l’incontro è terminato alle 16:00. \
Viene indicato come prossimo #glossario("SAL") il giorno 10/12/2024 con orario da specificare. \
Il team si riunirà dopo la riunione per discutere di quanto emerso e per decidere gli argomenti da affrontare nel prossimo #glossario("periodo").

= Decisioni

#decisioni((
  [1],[Documenti],[Continuare stesura delle sezioni mancanti],
  [1],[Descrizione #glossario("repository")],[Inserire descrizione per specificare che si tratta di un #glossario("progetto") universitario],
  [1],[Gestione #glossario("repository")],[Verrà discusso durante il prossimo incontro come gestire la parte di codice],
  [2],[#glossario("PoC")],[Creazione di un simil-#glossario("PoC") per capire in modo più profondo le tecnologie e i requisiti],
  [3],[Prossimo incontro],[Confermare orario dell'incontro del'10/12/2024]
))

= TODO

#todo((
  (56,), (p.checchinato), [Aggiunta sezione about]
))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 26 novembre 2024

\
#figure(
  [#table(
    columns: (auto, 1fr),
    stroke: none,
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Il #glossario("Verbalizzante"):\ #p.salvo],
    [Il #glossario("responsabile di Progetto"):\ #p.checchinato],
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
