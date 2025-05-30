#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 14/01/2025",
  subtitle: "Documento interno - verbale nr. 15",
  author: p.salvo,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.2", "09-02-2025",  "Rimozione sezione stato", p.pesenato, (p.pozzobon,p.lucato),
    "0.1.1", "31-01-2025",  "Aggiunta termini glossario", p.scandaletti, (p.pozzobon,p.lucato),
    "0.1.0", "20-01-2025",  "Prima stesura documento", p.salvo, (p.lucato, p.pesenato),
  )
)

_A seguito della riunione con l'Azienda e della fine del quarto #glossario("periodo") si decide di convocare una riunione per discutere di quanto segue:_

= Ordine del Giorno
+ #glossario("Revisione") dei diagrammi #glossario("UML")
+ Discussione su ore eseguite e sullo stato del #glossario("progetto")
+ Definizione dei ruoli e passaggio di consegne
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Martedì 14/01/2025 - ore 14.30 \

*Luogo* Online - #glossario("Piattaforma") #glossario("Discord") \

*Destinatari* Tutto il gruppo \

= Verbale

L'incontro inizia, come da programma alle ore 14.30. Sono presenti tutti i membri del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

#p.salvo si propone come #glossario("verbalizzante") dell’incontro.\
#p.pozzobon, in qualità di #glossario("responsabile di progetto") del quarto #glossario("periodo"), prende la parola e si procede alla discussione in ordine dei punti all’#glossario("ordine del giorno").

#pb();

#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})

== Revisione dei diagrammi UML
Durante la riunione, #p.salvo illustra al gruppo i diagrammi #glossario("UML") che ha migliorato seguendo i consigli del team e del rappresentante aziendale Alex Beggiato in modo tale che tutti i componenti siano a conoscenza del lavoro svolto.
Le modifiche eseguite ai diagrammi sono state inoltre accompagnate da delle modifiche agli #glossario("UC") a cui i diagrammi fanno riferimento, le quali vengono anch'esse esposte.

== Discussione su ore eseguite e sullo stato del progetto
Il team discute sul numero di ore eseguite in ogni ruolo persona per persona e di quante ore sono state eseguite di quelle disponibili. Osservando queste tabelle si riscontra un buona gestione delle ore _totali_ dedicate (con il relativo costo effettivo) in linea con quanto previsto. Alcune valutazioni di ore preventivate di qualche ruolo _specifico_ invece andrà rivista, in quanto, nella prima fase di preventivo si è stati troppo restrittivi. Inoltre il team discute dello stato del #glossario("progetto") osservando ogni documento. Si osserva che alcuni documenti devono ancora essere ultimati e aggiornati come gli #glossario("UML") e l'#glossario("Analisi dei Requisiti").

== Definizione dei ruoli e passaggio di consegne
Essendo la fine del quarto #glossario("periodo"), si procede alla definizione dei ruoli per il quinto #glossario("periodo"). La nuova assegnazione dei ruoli è la seguente:

#table(
  columns: (1fr, 1fr),
  align: (col, row) => (center, center).at(col),
  inset: 6pt,
  table.header([*Ruolo*], [*Membri*]),
    [#glossario("Responsabile")],[#p.pesenato],
    [#glossario("Amministratore")],[#p.salvo],
    [Analista],[#p.valdagno\ #p.pozzobon],
    [#glossario("Programmatore")],[#p.scandaletti],
    [#glossario("Verificatore")],[#p.lucato\ #p.checchinato],
)

Come visibile dalla tabella sopra, nessun componente del team ha avuto il ruolo di progettista assegnato, questo perchè non è stato ritenuto necessario per il quarto #glossario("periodo").

Successivamente i membri del team presenti si scambiano i compiti e le informazioni necessarie per il proseguimento del lavoro.

== Varie ed eventuali
Non essendoci altri argomenti da discutere l'incontro del team Archi7echs è terminato alle 17:00. \
Si convoca il prossimo incontro per lunedì 27/01/2025 ad orario da stabilire per discutere di quanto svolto
durante la settimana.

= Decisioni
#decisioni((
  [1],[Miglioramento #glossario("UML")],[Gli #glossario("UML") devono subire un miglioramento continuo anche in vista della riunione con il #p.cardin],
  [1],[Aggiornamento #glossario("AdR")],[L'#glossario("AdR") deve essere migliorata e i suoi cambiamenti devono essere riflessi nei diagrammi #glossario("UML")],
  [3],[Continuare stesura \ documenti],[Continuare stesura documenti in vista della #glossario("revisione") #glossario("RTB") col #p.cardin],
))

= TODO
#todo((
  (164,), (p.salvo), [Redazione #glossario("verbale interno") 2025-01-14],
  (165,), (p.salvo), [#glossario("NdP") - aggiunta sezioni],
  (167,), (p.valdagno), [Aggiunta metrica #glossario("NdP") e #glossario("PdQ")],
  (168,), (p.pesenato), [#glossario("PdP") - stesura quarto #glossario("periodo")],
  (169,), (p.valdagno), [#glossario("AdR") - aggiunta diagrammi #glossario("UC") e aggiornamento tabelle requisiti],
))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 14 gennaio 2025

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ #p.salvo],
  [Il #glossario("responsabile di Progetto"):\ #p.pesenato],
)
