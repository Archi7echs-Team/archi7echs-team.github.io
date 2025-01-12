#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 10/01/2025",
  subtitle: "Call con Sanmarco Informatica - verbale esterno nr. 7",
  author: "Pietro Valdagno",
  state: "Bozza",
  intern: false,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "12-01-2025",  "Prima stesura documento", p.valdagno, "",
  )
)

_A seguito del periodo delle vacanze di Natale e dell'impegno preso con l'azienda di aggiornarsi una volta ogni 2/3 settimane si decide, una volta contattato Alex Beggiato (System Architect Team Leader di Sanmarco Informatica), di convocare una call con il seguente ordine del giorno:_


= Ordine del Giorno
  
+ Revisione Stato Avanzamento Lavori (SAL)
+ Domande e chiarimenti
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Venerdì 10/01/2025 - ore 16.00 \
  
*Luogo* Online - Piattaforma Google Meet  \
  
*Destinatari* Azienda Sanmarco Informatica e tutti i componenti del gruppo Archi7echs \

= Verbale
 
L'incontro inizia, come da programma alle ore 16.00. Sono presenti i seguenti componenti del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

Per Sanmarco Informatica, invece, è presente:
- Alex Beggiato - System Architect Team Leader

#p.valdagno si propone come verbalizzante dell’incontro. \
Si procede alla discussione in ordine dei punti all’ordine del giorno.
#pb()

#ordine_del_giorno([
== Revisione #glossario("SAL") con Sanmarco Informatica
#p.pozzobon, in qualità di responsabile di progetto, apre la riunione con un riassunto su quello che il gruppo ha svolto e sul come il team ha gestito il lavoro durante il periodo delle vacanze di Natale. \
#p.checchinato mostra i diagrammi UML che realizzato. in quanto analista. \ 
Alex Beggiato  sottolinea l'importanza di non realizzare casi d'uso e diagrammi eccessivamente complessi per la gestione degli errori e successivamente propone alcune aggiunte e modifiche:
 - aggiungere un caso d'uso che riguardi un errore nel caricamento di dati da database;
 - aggiungere un caso d'uso per nascondere la visualizzazione (dopo che questa è stata attivata) del piano parallelo alla base del grafico che rappresenta la media;
 - modificare il caso d'uso dell'errore _APITimeout_ per renderlo più generico e avere quindi la possibilità di gestire dei sotto-casi.

== Domande e chiarimenti
#p.pozzobon chiede come gestire la #glossario("repository") del #glossario("Proof Of Concept") e viene detto di creare una nuova #glossario("repository") dedicata all'interno dell'organizzazione. \ 
#p.lucato chiede poi quali requisti di vincolo si potrebbero aggiungere e Alex Beggiato consiglia di aggiungere dei requisiti che riguardino il numero massimo per le dimensioni del grafico (inteso come massimo numero di righe e di colonne) e il tempo di risposta del sistema per il caricamento del grafico, in merito a ciò #p.lucato chiede inoltre in che modo stabilire le specifiche tecniche del sistema e Alex Beggiato consiglia di trovare un pc con delle specifiche tecniche entro una certa logica e utilizzarlo come ambiente di test per stabilire appunto le specifiche minime.

== Varie ed eventuali
Non essendoci altri argomenti da discutere l’incontro è terminato alle 17:00. \
Non viene indicato il giorno preciso del prossimo incontro ma viene comunque suggerito che avvenga entro la fine del mese. \
])

= Decisioni

#decisioni((
  [1],[#glossario("Repository") #glossario("PoC")],[Creare nell'organizzazione una nuova #glossario("repository") dedicata al #glossario("PoC")],
  [2],[#glossario("AdR")],[Apportare le modifiche suggerite riguardo a #glossario("UC") e diagrammi UML],
  [3],[Requisiti di vincolo],[Stabilire i massimi per le dimensioni dei grafici],
  [4],[Prossimo incontro],[Stabilire la data e l'orario del prossimo incontro],
)) 


= TODO
#todo((
  (155,), (p.salvo), [AdR - sistemazione UML e UC a seguito della riunione SA]
))

_Per il dettaglio delle decisioni si rimanda al punto dell’OdG_.


#v(3em)

Padova, 10 gennaio 2025

\
#figure(
  [#table(
    columns: (auto, 1fr),
    stroke: none,
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Il Verbalizzante:\ #p.valdagno],
    [Il responsabile di Progetto:\ #p.pozzobon],
  )]
)


