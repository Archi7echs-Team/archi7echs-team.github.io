#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 06/03/2025",
  subtitle: "Call con Sanmarco Informatica - verbale esterno nr. 9",
  author: p.lucato,
  state: "",
  intern: false,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "06-03-2025",  "Prima stesura documento", p.lucato, "",
  )
)

_Una volta ottenuto il semaforo verde dal #p.cardin e la valutazione da parte del #p.vardanega si decide di convocare una call con il seguente #glossario("ordine del giorno"):_


= Ordine del Giorno
  
+ Informazioni relative all'esito ottenuto
+ Cambio di tecnologie
+ Domande in merito alla fase di progettazione
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Giovedì 06/03/2025 - ore 15.30 \
  
*Luogo* Online - #glossario("Piattaforma") Google Meet  \
  
*Destinatari* Azienda Sanmarco Informatica e tutti i componenti del gruppo Archi7echs \

= Verbale
 
L'incontro inizia, come da programma alle ore 16.00. Sono presenti i seguenti membri del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.scandaletti
- #p.valdagno

Per Sanmarco Informatica, invece, è presente:
- Alex Beggiato - System Architect Team Leader

#p.lucato si propone come #glossario("verbalizzante") dell’incontro. \
Si procede alla discussione in ordine dei punti all’#glossario("ordine del giorno").
#pb()

#ordine_del_giorno([
== Informazioni relative all'esito ottenuto
#p.lucato mostra ad Alex Beggiato l'esito ottenuto dall'incontro finale che sancisce la fine dell'#glossario("RTB"). Sono stati fatti notare alcuni punti da tenere in considerazione, come la necessità di apportare alcune modifiche ai documenti come #glossario("AdR"), approfondendo gli #glossario("UC") e l'#glossario("NdP"). Nel complesso, dato l'esito positivo, il team e l'azienda sono soddisfatti del lavoro svolto.

== Cambio di tecnologie
Vista la \"bandiera\" di attenzione sollevata dal #p.cardin, il team ha accolto le osservazioni svolte e dopo un'attenta fase di studio, si è deciso di cambiare le tecnologie utilizzate per lo sviluppo del progetto. Si propone Spring Boot come #glossario("framework") per lo sviluppo del #glossario("backend") dell'#glossario("MVP"), in quanto offre una maggiore flessibilità nell'applicare i patterns di progettazione, effettuare i test tramite mock. Lo studio proposto dal team è stato accolto dall'azienda, la quale accetta ed è soddisfatta delle motivazioni proposte.

== Domande in merito alla fase di progettazione
Essendo il primo periodo del #glossario("PB") e avendo il team iniziato la fase di progettazione, si pongono alcune domande all'azienda riguardo la progettazione stessa. In particolare, si parla di alcuni pattern che il team ha pensato di utilizzare, come il Command Pattern per il lato frontend, mentre il Strategy Pattern per la lettura dei file per il lato backend. Vengono proposte delle idee, come un \"controller\"" lato frontend per avere un modo per centralizzare gli input e output delle azioni dell'utente. L'azienda accetta le proposte e si dichiara disponibile a fornire supporto in caso di necessità. L'azienda inoltre cita alcune librerie per i test come JUnit e Mockito (librerie già prese in considerazione dal team) con l'aggiunta dei test di mutazione. 

== Varie ed eventuali
Non essendoci altri argomenti da discutere l’incontro è terminato alle 16:15. \
Il prossimo incontro #glossario("SAL") verrà programmato per uno dei giorni tra il 18/03/2025 o il 20/03/2025. \
])

= Decisioni

#decisioni((
  [2],[Utilizzo di Spring Boot],[Si decide di passare a Spring Boot per il lato backend],
  [3],[Progettazione],[Continuare la fase di progettazione con quanto accordato con l'azienda],
  [3],[Fase di test],[Utilizzo di JUnit, Mockito e inizio studio dei test di mutazione],
)) 


= TODO
A seguito di questa riunione non è stata aperta alcuna issue che il team non avesse già aperto.

_Per il dettaglio delle decisioni si rimanda al punto dell’OdG_.


#v(3em)

Padova, 06 marzo 2025

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
    /*#place(center, image("//img/smi_sign.png", width: 120%))*/
    ],
  )]
)
