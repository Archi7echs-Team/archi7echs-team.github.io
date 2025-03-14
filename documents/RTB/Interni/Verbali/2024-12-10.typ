#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 10/12/2024",
  subtitle: "Documento interno - verbale nr. 11",
  author: p.checchinato,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.2", "09-02-2025",  "Rimozione sezione stato", p.pesenato, (p.pozzobon,p.lucato),
    "0.1.1", "31-01-2025",  "Aggiunta termini glossario", p.scandaletti, (p.pozzobon,p.lucato),
    "0.1.0", "15-12-2024",  "Prima stesura documento", p.checchinato, (p.scandaletti,p.valdagno),
  )
)


_A seguito dell'incontro con l'azienda Sanmarco Informatica svoltosi nel pomeriggio di lunedì 09/12/2024 e della fine del secondo #glossario("periodo") si decide di convocare una riunione per discutere di quanto segue:_

= Ordine del Giorno
+ Presentazione regola protezione #glossario("branch") 
+ Discussione post-#glossario("SAL") con Sanmarco Informatica
+ Definizione dei ruoli e passaggio di consegne
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Mercoledì 10/12/2024 - ore 15.00 \

*Luogo* Online - #glossario("Piattaforma") #glossario("Discord") \

*Destinatari* Tutto il gruppo \

= Verbale

L'incontro inizia, come da programma alle ore 15.00. Sono presenti i seguenti componenti del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.valdagno

#p.checchinato si propone come #glossario("verbalizzante") dell’incontro.\
#p.checchinato, in qualità di #glossario("responsabile di progetto") del secondo #glossario("periodo"), prende la parola e si procede alla discussione in ordine dei punti all’#glossario("ordine del giorno").
#pb()

#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})

== Presentazione regola protezione branch
#p.checchinato, per conto di #p.salvo, presenta la regola di protezione del #glossario("branch") sources, che impedirà i commit diretti. Sarà obbligatoria la creazione di un #glossario("branch") di sviluppo per ogni feature, con il merge consentito solo previa #glossario("approvazione") del #glossario("verificatore") e del #glossario("responsabile") in quel momento.

== Discussione post-#glossario("SAL") con Sanmarco Informatica
#p.lucato e #p.pesenato si ritengono soddisfatti del feedback ricevuto dall'azienda Sanmarco Informatica sui loro simil-#glossario("PoC"). Essi continueranno il loro lavoro utilizzando i #glossario("framework") Vitest, Playwright e Cypress, quest'ultimo consigliato dall'azienda, per la realizzazione dei test. #p.pozzobon si ritiene anch'esso soddisfatto della risposta ricevuta e si appresta a continuare il suo lavoro nel documento dell'#glossario("analisi dei requisiti") con l'inserimento dei casi d'uso relativi alla gestione degli errori.

== Definizione dei ruoli e passaggio di consegne

Essendo la fine del secondo #glossario("periodo"), si procede alla definizione dei ruoli per il terzo #glossario("periodo"). Ecco i ruoli assegnati:

#table(
  columns: (1fr, 1fr),
  align: (col, row) => (center, center).at(col),
  inset: 6pt,
  table.header([*Ruolo*], [*Membri*]),
    [#glossario("Responsabile")],[#p.valdagno],
    [#glossario("Amministratore")],[#p.checchinato\ #p.pozzobon],
    [Analista],[#p.lucato\ #p.pesenato],
    [#glossario("Programmatore")],[#p.pesenato],
    [#glossario("Verificatore")],[#p.salvo\ #p.scandaletti],
)
Come visibile dalla tabella sopra, nessun componente del team ha avuto il ruolo di progettista assegnato, questo perchè non è stato ritenuto necessario per il terzo #glossario("periodo").

Successivamente i membri del team presenti si scambiano i compiti e le informazioni necessarie per il proseguimento del lavoro.

== Varie ed eventuali
Non essendoci altri argomenti da discutere l’incontro del team Archi7echs è terminato alle 16:30. \
Si convoca il prossimo incontro per martedì 17/12/2024 alle ore 15:00 per discutere di quanto svolto durante la settimana. \

#pb();

= Decisioni
#decisioni((
  [1],[Protezione #glossario("branch")],[Adottare la regola di protezione #glossario("branch")],
  [2],[Post-#glossario("SAL")],[Continuare il lavoro con la parte di test],
  [3],[Definizione ruoli],[Assegnati i ruoli per il terzo #glossario("periodo")]
))

= TODO
#todo((
  (72,), (p.valdagno), [#glossario("Piano di progetto"): stesura secondo #glossario("periodo")],
  (73,), (p.salvo), [Redazione #glossario("verbale esterno") 2024-12-09],
  (74,), (p.checchinato), [Redazione #glossario("verbale interno") 2024-12-10],
  (75,), ("Analista"), [Fix #glossario("Analisi dei Requisiti"): Attori]
))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 10 dicembre 2024

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ #p.checchinato],
  [Il #glossario("responsabile di Progetto"):\ #p.valdagno],
)



