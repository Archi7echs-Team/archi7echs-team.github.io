#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 24/01/2025",
  subtitle: "Call con Sanmarco Informatica - verbale esterno nr. 8",
  author: "Giovanni Salvò",
  state: "Approvato",
  intern: false,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.1", "31-01-2025",  "Aggiunta termini glossario", p.scandaletti, (p.pozzobon,p.lucato),
    "0.1.0", "28-01-2025",  "Prima stesura documento", p.salvo, (p.checchinato, p.pesenato),
  )
)

_A seguito della chiamata con il #p.cardin e dell'impegno preso con l'azienda di aggiornarsi una volta ogni 2/3 settimane si decide, una volta contattato Alex Beggiato (System Architect Team Leader di Sanmarco Informatica), di convocare una call con il seguente #glossario("ordine del giorno"):_


= Ordine del Giorno
  
+ #glossario("Revisione") Stato Avanzamento Lavori (#glossario("SAL"))
+ Allineamento su tempistiche per #glossario("RTB")
+ Domande sul #glossario("PoC")
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Venerdì 24/01/2025 - ore 17.00 \
  
*Luogo* Online - #glossario("Piattaforma") Google Meet  \
  
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

#p.salvo si propone come #glossario("verbalizzante") dell’incontro. \
Si procede alla discussione in ordine dei punti all’#glossario("ordine del giorno").
#pb()

#ordine_del_giorno([
== Revisione #glossario("SAL") con Sanmarco Informatica
#p.valdagno, in qualità di analista, apre la riunione con un riassunto su quello che il gruppo ha svolto sull'#glossario("AdR") a seguito delle discussioni interne avute e grazie all'incontro effettuato con il #p.cardin.\ 
Alex Beggiato sottolinea l'importanza di soffermarsi sul #glossario("UC") che specifica la selezione del file .csv che contiene un'imprecisione e si sofferma sul funzionamento dei file .csv e della presenza di molteplici separatori accettati.\
#p.valdagno chiede delucidazioni sulla grandezza in bytes e se essa sia un #glossario("requisito") di vincolo o no. #p.salvo illustra i cambiamenti fatti a seguito dei consigli forniti da Alex Beggiato nella scorsa riunione con l'azienda.

== Allineamento su tempistiche per RTB
Alex Beggiato chiede le tempistiche e un chiarimento su ciò che aspetta il team. #p.pesenato essendo il #glossario("responsabile") risponde facendo presente la volontà del gruppo di presentare la candidatura al #glossario("RTB") entro la fine di gennaio.

== Domande sul PoC
#p.scandaletti chiede chiarimenti sui colori assegnati alle colonne del grafico e su come rappresentare le #glossario("label") per gli assi.

== Varie ed eventuali
Non essendoci altri argomenti da discutere l’incontro è terminato alle 17:30. \
Il prossimo incontro #glossario("SAL") è stato programmato per il giorno 05/02/2025 alle ore 16:00. \
Il team si impegna a contattare l'azienda dopo la riunione interna di settimana prossima.
])

= Decisioni

#decisioni((
  [1],[#glossario("AdR")],[Apportare le modifiche suggerite riguardo a #glossario("UC") e diagrammi #glossario("UML")],
  [2],[Requisiti di vincolo],[Stabilire le dimensioni massime dei file .csv],
)) 


= TODO
#todo((
  (174,), (p.valdagno), [#glossario("AdR") - Modifiche #glossario("UC") e diagrammi #glossario("UML")
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
    [Il #glossario("Verbalizzante"):\ #p.salvo],
    [Il #glossario("responsabile di Progetto"):\ #p.pesenato],
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
