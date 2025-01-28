#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 24/01/2025",
  subtitle: "Call con Sanmarco Informatica - verbale esterno nr. 8",
  author: "Giovanni Salvò",
  intern: false,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "28-01-2025",  "Prima stesura documento", p.salvo, "",
  )
)

_A seguito della chiamata con il #p.cardin dell'impegno preso con l'azienda di aggiornarsi una volta ogni 2/3 settimane si decide, una volta contattato Alex Beggiato (System Architect Team Leader di Sanmarco Informatica), di convocare una call con il seguente ordine del giorno:_


= Ordine del Giorno
  
+ Revisione Stato Avanzamento Lavori (SAL)
+ Allineamento su tempistiche per RTB
+ Domande su PoC
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Venerdì 24/01/2025 - ore 17.00 \
  
*Luogo* Online - Piattaforma Google Meet  \
  
*Destinatari* Azienda Sanmarco Informatica e tutti i componenti del gruppo Archi7echs \

= Verbale
 
L'incontro inizia, come da programma alle ore 16.00. Sono presenti i seguenti tutti i membri del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

Per Sanmarco Informatica, invece, è presente:
- Alex Beggiato - System Architect Team Leader

#p.salvo si propone come verbalizzante dell’incontro. \
Si procede alla discussione in ordine dei punti all’ordine del giorno.
#pb()

#ordine_del_giorno([
== Revisione #glossario("SAL") con Sanmarco Informatica
#p.valdagno, in qualità di analista, apre la riunione con un riassunto su quello che il gruppo ha svolto sull'#glossario("AdR") a seguito di discussioni interne avute e grazie alla chiamata effettuata con il #p.cardin.\ 
Alex Beggiato sottolinea l'importanza di soffermarsi sul #glossario("UC") che specifica la selezione del file .csv che contiene un'imprecisione e si sofferma sul funzionamento dei file .csv e della presenza di molteplici separatori accettati.\
#p.valdagno chiede delucidazioni sulla grandezza in bytes e se essa sia un requisito di vincolo o no. #p.salvo illustra i cambiamenti fatti a seguito dei consigli forniti da Alex Alex Beggiato nella scorsa riunione con l'azienda.

== Allineamento su tempistiche per RTB
Alex Beggiato chiede le tempistiche e un chiarimento su ciò che aspetta il team. #p.pesenato essendo il responsabile risponde facendo presente la volontà del gruppo di presentare la candidatura al #glossario("RTB") entro la fine di gennaio.

== Domande su PoC
#p.scandaletti chiede chiarimenti sui colori assegnati alle colonne del grafico e su come rappresentare le label per gli assi.

== Varie ed eventuali
Non essendoci altri argomenti da discutere l’incontro è terminato alle 17:30. \
Non viene indicato il giorno preciso del prossimo incontro ma viene comunque suggerito che avvenga dopo la candidatura al #glossario("RTB"). \
Il team si impegna a contattare l'azienda dopo la riunione interna di settimana prossima.
])

= Decisioni

#decisioni((
  [1],[#glossario("AdR")],[Apportare le modifiche suggerite riguardo a #glossario("UC") e diagrammi UML],
  [2],[Requisiti di vincolo],[Stabilire i massimi per le dimensioni dei file .cvs],
  [4],[Prossimo incontro],[Stabilire la data e l'orario del prossimo incontro],
)) 


= TODO
#todo((
  (174,), (p.valdagno), [#glossario("AdR") - Modifiche UC e diagrammi UML
]
))

_Per il dettaglio delle decisioni si rimanda al punto dell’OdG_.


#v(3em)

Padova, 24 gennaio 2025

\
#figure(
  [#table(
    columns: (auto, 1fr),
    stroke: none,
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Il Verbalizzante:\ #p.salvo],
    [Il responsabile di Progetto:\ #p.pesenato],
  )]
)

#v(2em)
#figure(
  [#grid(
    columns: (auto, 1fr),
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Per Sanmarco Informatica:\ /* Alex Beggiato \
    #place(center, image("//img/smi_sign.png", width: 120%))
    */],
  )]
)
