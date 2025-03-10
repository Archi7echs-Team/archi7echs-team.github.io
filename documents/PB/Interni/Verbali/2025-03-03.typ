#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 03/03/2025",
  subtitle: "Documento interno - verbale nr. 18",
  author: p.lucato,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "03-03-2025",  "Prima stesura documento", p.lucato, (p.scandaletti,p.salvo),
  )
)

_Una volta ottenuto semaforo verde all'incontro con #p.cardin e valutazione dal #p.vardanega, il gruppo si riunisce per parlare di quanto segue:_

= Ordine del Giorno
+ Discussione su quali documenti aggiornare
+ Discussione su quali sono i nuovi documenti da redigere
+ Definizione dei ruoli
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Lunedì 03/03/2025 - ore 15.00 \

*Luogo* Online - #glossario("Piattaforma") #glossario("Discord") \

*Destinatari* Tutto il gruppo \

= Verbale

L'incontro inizia, come da programma alle ore 15.00. Sono presenti tutti i membri del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

#p.lucato si propone come #glossario("verbalizzante") dell’incontro.\
#p.lucato, in qualità di ultimo #glossario("responsabile di progetto") del #glossario("periodo") precedente, prende la parola e si procede alla discussione in ordine dei punti all’#glossario("ordine del giorno").

#pb();

#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})

== Discussione su quali documenti aggiornare
Come indicato dal #p.cardin, un documento che dovrà sicuramente essere aggiornato è l'#glossario("AdR"), modificandolo inizialmente secondo quanto fatto notare. Successivamente si dovranno aggiungere le sezioni relative ai requisiti di qualità e ai requisiti di vincolo. \
Anche il documento #glossario("NdP") e il #glossario("PdP") andranno aggiornati di conseguenza, in ordine: \ 1 - Nuove proposte che verranno indicate in questa seconda parte \ 2 - L'andamento dello stesso del progetto

== Discussione su quali sono i nuovi documenti da redigere
Vengono indicati #glossario("ST") (_Specifica tecnica_) e #glossario("MU") (_Manuale utente_) come 2 nuovi documenti da redigere. Si inizia con la stesura della #glossario("ST") durante lo studio da parte dei progettisti e si decide di stilare il documento #glossario("MU") in uno dei periodi successivi.

== Definizione dei ruoli
Concluso l'#glossario("RTB") si procede alla definizione dei ruoli per il settimo #glossario("periodo").

#table(
  columns: (1fr, 1fr),
  align: (col, row) => (center, center).at(col),
  inset: 6pt,
  table.header([*Ruolo*], [*Membri*]),
    [#glossario("Responsabile")],[#p.salvo],
    [#glossario("Amministratore")],[#p.lucato],
    [#glossario("Analista")],[#p.checchinato,\ #p.pozzobon ],
    [#glossario("Progettista")],[#p.checchinato \ #p.lucato \ #p.pesenato \ #p.scandaletti \ #p.valdagno ],
    [#glossario("Verificatore")],[#p.pesenato \ #p.scandaletti],
)

Come visibile dalla tabella sopra, nessun componente del team ha avuto il ruolo di programmatore assegnato, questo perché non è stato ritenuto necessario per il settimo #glossario("periodo"). Prima si pensa alla progettazione, successivamente all'implementazione eseguita dal programmatore.

== Varie ed eventuali
#p.checchinato indica di inviare un messaggio all'azienda proponente, per discutere degli esiti ricevuti e di come andremo a procedere con la parte di #glossario("PB") \ L'incontro del team Archi7echs è terminato alle 16:35. \


= Decisioni
#decisioni((
  
  [1],[Aggiornamento #glossario("AdR")],[Il documento di #glossario("AdR") verrà modificato secondo le indicazioni del #p.cardin],
  [1],[Aggiornamento #glossario("PdP")],[Come per ogni #glossario("periodo") si continuerà con la stesura del #glossario("PdP")],
  [1],[Aggiornamento #glossario("NdP")],[Verranno aggiornate le _Norme di Progetto_ a seconda di quanto sarà necessario aggiungere nella parte di #glossario("PB")],
  [2],[Inizio #glossario("ST")],[Si inizia con la stesura della _Specifica tecnica_],
  [2],[Posticipare inizio stesura #glossario("MU")],[Si decide l'inizio della stesura del documento di _Specifica tecnica_ verrà iniziato in un periodo successivo],
  ))

= TODO
#todo((
  (229,), (p.pozzobon), [#glossario("Cruscotto"): inizio PB, sistemazione ore],
  (230,), (p.pozzobon, p.checchinato), [Fix #glossario("AdR"): sistemazione #glossario("UC") post #glossario("RTB")],
  (232,), (p.salvo), [Fix #glossario("PdP"): aggiunta nuovo consultivo],
  (233,), (p.lucato), [VI: scrittura #glossario("verbale interno") del 03/03/2025],
  (236,), (p.checchinato), [Fix #glossario("PdQ"): sistemazione post RTB],
))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 03 marzo 2025

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ #p.lucato],
  [Il #glossario("responsabile di Progetto"):\ #p.salvo],
)