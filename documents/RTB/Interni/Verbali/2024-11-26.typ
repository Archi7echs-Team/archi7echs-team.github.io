#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 26/11/2024",
  subtitle: "Documento interno - verbale nr. 9",
  author: "Giovanni Salvò",
  state: "Bozza",
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.0.1", "03-11-2024",  "Prima stesura documento", p.salvo, "",
  )
)

_E' stata convocata una riunione online del Team a seguito della chiamata con l'azienda Sanmarco Informatica di martedì 26/11/2024, per discutere di quanto segue:_


= Ordine del Giorno
  
+ Discussione post-#glossario("SAL") con Sanmarco Informatica
+ Definizione dei ruoli e passaggio di consegne
+ Dimostrazione del primo approccio alle tecnologie
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Martedì 26/11/2024 - ore 16.10 \
  
*Luogo* Online - Piattaforma Discord \
  
*Destinatari* Tutto il gruppo \

= Verbale
 
L'incontro inizia, come da programma alle ore 16.10. Sono presenti seguenti i componenti del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

#p.salvo si propone come verbalizzante dell’incontro. \
#p.lucato, in qualità di responsabile di progetto, prende la parola e si procede alla discussione in ordine dei punti all’ordine del giorno.
#pb()


#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})


== Discussione post-#glossario("SAL") con Sanmarco Informatica
Durante l'incontro con Alex Beggiato sono stati chiariti alcuni dubbi dei membri e il team ha ricevuto conferma della qualità di ciò che è stato svolto finora. Il team ha analizzato le conferme e i suggerimenti di Alex Beggiato per capire cosa migliorare o modificare.

== Definizione dei ruoli e passaggio di consegne
Questa riunione segna la fine del primo periodo quindi si procede a discutere sul cambio dei ruoli e sul passaggio di consegne che esso provocherà. I nuovi ruoli sono così assegnati:
#table(
  columns: (1fr, 1fr),
  align: (col, row) => (center, center).at(col),
  inset: 6pt,
  table.header([*Ruolo*], [*Membri*]),
    [Responsabile],[Gabriele Checchinato],
    [Amministratore],[Giovanni Salvò],
    [Analista],[Francesco Pozzobon],
    [Programmatore],[Giacomo Pesenato \ Leonardo Lucato],
    [Verificatore],[Pietro Valdagno],
    [Progettista], [Gioele Scandaletti]
)
I ruoli sono stati decisi sia per preferenza e disponibilità ma anche per permettere a chi voleva cimentarsi in quel ruolo di farlo. Inoltre, il ruolo di programmatore è stato assegnato per permettere la continuazione del lavoro svolto in modo autonomo. \ A seguito della definizione dei nuovi ruoli ogni membro ha spiegato ciò che ha svolto nel periodo passato e come "svolgere" il ruolo in modo da dare una prima infarinatura del ruolo al nuovo addetto.

== Dimostrazione del primo approccio alle tecnologie
#p.lucato mostra al team una versione semplificata del #glossario("PoC") realizzata tramite l'uso di Three.js e React. #p.pesenato invece mostra una versione realizzata tramite l'uso di Three.js ma come front-end framework viene utilizzato Svelte. La dimostrazione delle tecnologie scelte rafforza l'idea di usare Three.js come libreria JavaScript.

== Varie ed eventuali

Non essendoci altri argomenti da discutere l’incontro del team Archi7echs è terminato alle 17:00. \
Si convoca il prossimo incontro per martedì 03/12/2024 alle ore 15 per discutere di quanto svolto durante la settimana. \

= Decisioni

#decisioni((
  [2],[Ruoli],[I nuovi addetti ai ruoli procederanno con il lavoro assegnato al ruolo che ora ricoprono, aiutando l'addetto al loro vecchio ruolo in caso di necessità],
  [3],[Tecnologie],[I membri preposti continueranno con lo studio delle tecnologie proposte per arrivare a una scelta definitiva],
  
))


= TODO

#todo((
  (47,), (p.salvo), [Redazione verbale interno 2024-11-26],
  (48,), (p.salvo), [Redazione verbale esterno 2024-11-26],
  (49,), (p.salvo), [Attivare regola protezione branch sources],
  (50,), (p.salvo), [Aggiornamento glossario],
  (52,), (p.pozzobon), [Stesura caratteristiche utente in #glossario("AdR")],
  (53,), (p.pozzobon), [Inserire la gestione degli errori in #glossario("AdR")],
  (54,), (p.pozzobon), [Continuare i casi d'uso in #glossario("AdR")],
  
))

_Per il dettaglio delle decisioni si rimanda al punto dell'OdG._

#v(3em)

Padova, 26 novembre 2024

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il Verbalizzante:\ #p.salvo],
  [Il responsabile di Progetto:\ #p.checchinato],
)

