#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 22/01/2025",
  subtitle: "Documento interno - verbale nr. 16",
  author: p.salvo,
  state: "Approvato",
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.1", "31-01-2025",  "Aggiunta termini glossario", p.scandaletti, "",
    "0.1.0", "28-01-2025",  "Prima stesura documento", p.salvo, (p.checchinato, p.pesenato),
  )
)

_A seguito della riunione con il #p.cardin si decide di convocare una riunione per discutere di quanto segue:_

= Ordine del Giorno
+ Correzione dell'#glossario("AdR")
+ Miglioramenti del #glossario("PoC")
+ Discussione su come organizzare riunioni future
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Mercoledì 22/01/2025 - ore 14.40 \

*Luogo* Online - #glossario("Piattaforma") #glossario("Discord") \

*Destinatari* Tutto il gruppo \

= Verbale

L'incontro inizia, come da programma alle ore 14.40. Sono presenti tutti i membri del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

#p.salvo si propone come #glossario("verbalizzante") dell’incontro.\
#p.pesenato, in qualità di #glossario("responsabile di progetto") del quarto #glossario("periodo"), prende la parola e si procede alla discussione in ordine dei punti all’#glossario("ordine del giorno").

#pb();

#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})

== Correzione dell'AdR
Durante la riunione il gruppo esegue un #glossario("attività") di #glossario("revisione") generale dei diagrammi #glossario("UML"), specialmente quelli in cui il #p.cardin ha fatto notare errori o imprecisioni.
Viene inoltre riassunta la riunione con il #p.cardin a #p.valdagno che per motivi lavorativi non ha potuto partecipare ad essa.
Le modifiche richieste vengono esplicitate a #p.valdagno che sarà l'addetto alla correzione dell'#glossario("AdR") e dei diagrammi #glossario("UML") degli #glossario("UC").

== Miglioramenti del PoC
Il team discute sui miglioramenti necessari per la terminazione del #glossario("PoC"). Tra i miglioramenti necessari ne vengono particolarmente individuati due, l'aggiunta di barre dello stesso colore per y uguale e etichette con i nomi degli assi, oltre a un miglioramento generale del grafico.

== Discussione su come organizzare riunioni future
#p.pesenato chiede al team di pensare alle possibili date per riunioni future in vista della fine del #glossario("periodo") e della necessita di effettuare la candidatura per l'#glossario("RTB"). Il team concorda con una riunione indicativamente il 30/01/2025 con conseguente invio di lettera di candidatura il 31/01/2025.

== Varie ed eventuali
Non essendoci altri argomenti da discutere l'incontro del team Archi7echs è terminato alle 15:50. \
Si convoca il prossimo incontro per giovedì 30/01/2025 ad orario da stabilire per discutere di quanto svolto
durante la settimana.


= Decisioni
#decisioni((
  [1],[Correzione #glossario("UML")],[Gli #glossario("UML") e l'#glossario("AdR") devono subire un miglioramento continuo specialmente a seguito della riunione con il #p.cardin],
  [2],[Aggiornamento #glossario("PoC")],[Il #glossario("PoC") deve essere migliorato per dimostrare chiaramente che le tecnologie scelte sono adatte],
  ))

= TODO
#todo((
  (177,), (p.salvo), [Redazione #glossario("verbale interno") 2025-01-22],
  (170,), (p.valdagno), [#glossario("AdR") - Aggiunta diagrammi #glossario("UC") e aggiornamento tabelle requisiti],
  (173,), (p.scandaletti), [#glossario("Issue") 1 - #glossario("PoC")],
))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 22 gennaio 2025

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ #p.salvo],
  [Il #glossario("responsabile di Progetto"):\ #p.pesenato],
)
