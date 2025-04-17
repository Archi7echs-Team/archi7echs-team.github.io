#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 11/04/2025",
  subtitle: "Documento interno - verbale nr. 23",
  author: p.salvo,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "17-03-2025",  "Prima stesura documento", p.salvo,(p.checchinato,p.pozzobon),
  )
)

_A seguito della fine del quinto periodo della fase #glossario("PB"), il gruppo si riunisce per parlare di quanto segue:_

= Ordine del Giorno
+ Discussione su passi futuri e allineamento
+ Definizione ruoli
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Venerdì 11/04/2025 - ore 15.00 \

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

#p.salvo si propone come #glossario("verbalizzante") dell'incontro.\
#p.pesenato, in qualità di #glossario("responsabile di progetto") del undicesimo #glossario("periodo"), prende la parola e si procede alla discussione in ordine dei punti all'#glossario("ordine del giorno").

#pb();

#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})

== Discussione su passi futuri e allineamento
#p.valdagno e #p.checchinato illustrano il test coverage raggiunto tramite i nuovi test implementati nella parte di front-end del MVP, dimostrando una percentuale adatta a quella definita nel documento PdQ.
\
#p.pesenato illustra la fine della sezione back-end del documento Specifica Tecnica completando la macro-sezione riguardante il back-end.
\
#p.pozzobon illustra i cambiamenti effettuati nei documenti AdR e PdQ, resi necessari a seguito di nuove funzionalità aggiunte nel MVP.
\
#p.salvo illustra il documento Manuale Utente redatto durante il periodo.
\
#p.checchinato chiede al team di analizzare le ore rimanenti e il lavoro da effettuare per raggiungere il completamento del progetto entro il limite massimo di costo.
\
A seguito della proposta di #p.checchinato di effettuare l'incontro di presentazione MVP con l'azienda nella prossima riunione il team approva la proposta.

== Definizione ruoli
Essendo la fine del undicesimo #glossario("periodo"), si procede alla definizione dei ruoli per il successivo. I ruoli assegnati sono i seguenti:

#table(
  columns: (1fr, 1fr),
  align: (col, row) => (center, center).at(col),
  inset: 6pt,
  table.header([*Ruolo*], [*Membri*]),
    [#glossario("Responsabile")],[#p.checchinato],
    [#glossario("Amministratore")],[#p.lucato],
    [#glossario("Analista")],[#p.pesenato],
    [#glossario("Programmatore")],[#p.salvo],
    [#glossario("Verificatore")],[#p.scandaletti, #p.valdagno \ #p.pozzobon, #p.salvo],
    [#glossario("Progettista")],[_non presente_],
)
Il ruolo del #glossario("Progettista") non è stato assegnato a nessun membro in quanto non necessario in questo periodo di revisione finale.

Successivamente i membri del team presenti si scambiano i compiti e le informazioni necessarie per il proseguimento del lavoro.

== Varie ed eventuali
Il gruppo ricorda l'incontro con l'azienda proponente in data 15/04/2025. \
Si convoca il prossimo incontro per la settimana seguente ad orario da stabilire per discutere di quanto svolto durante la settimana.

#pb();

= Decisioni

#decisioni((
  [1],[Revisione finale],[Revisione di tutti i documenti necessari per revisione #glossario("PB")],
  [1],[Incontro finale],[Presentare #glossario("MVP") ad azienda],
  
))

= TODO

#todo((
  (325,), (p.checchinato), [#glossario("PdP"): Stesura periodo 11],
  (327,), (p.pozzobon), [Revisione finale #glossario("AdR")],
  (328,), (p.salvo), [Revisione finale #glossario("ST")],
  (329,), (p.checchinato), [Modifica lettera di presentazione],
  (335,), (p.salvo), [VI: scrittura #glossario("verbale interno") del 11/04/2025],
  (337,), (p.salvo), [VE: scrittura #glossario("verbale esterno") del 15/04/2025],
  
))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 11 aprile 2025

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ #p.salvo],
  [Il #glossario("responsabile di Progetto"):\ #p.checchinato], 
)