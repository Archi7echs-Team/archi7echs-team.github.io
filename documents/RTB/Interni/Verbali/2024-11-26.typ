#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 26/11/2024",
  subtitle: "Documento interno - verbale nr. 9",
  author: "Giovanni Salvò",
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.2", "09-02-2025",  "Rimozione sezione stato", p.pesenato, (),
    "0.1.1", "31-01-2025",  "Aggiunta termini glossario", p.scandaletti, (p.pozzobon,p.lucato),
    "0.1.0", "05-12-2024",  "Prima stesura documento", p.salvo, (p.valdagno, p.checchinato),
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

*Luogo* Online - #glossario("Piattaforma") #glossario("Discord") \

*Destinatari* Tutto il gruppo \

= Verbale

L'incontro inizia, come da programma alle ore 16.10. Sono presenti i seguenti componenti del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

#p.salvo si propone come #glossario("verbalizzante") dell’incontro. \
#p.lucato, in qualità di #glossario("responsabile di progetto"), prende la parola e si procede alla discussione in ordine dei punti all’#glossario("ordine del giorno").
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
Questa riunione segna la fine del primo #glossario("periodo") quindi si procede a discutere sul cambio dei ruoli e sul passaggio di consegne che esso provocherà. I nuovi ruoli sono così assegnati:
#table(
  columns: (1fr, 1fr),
  align: (col, row) => (center, center).at(col),
  inset: 6pt,
  table.header([*Ruolo*], [*Membri*]),
    [#glossario("Responsabile")],[Gabriele Checchinato],
    [#glossario("Amministratore")],[Giovanni Salvò],
    [Analista],[Francesco Pozzobon],
    [#glossario("Programmatore")],[Giacomo Pesenato \ Leonardo Lucato],
    [#glossario("Verificatore")],[Pietro Valdagno],
    [Progettista], [Gioele Scandaletti]
)
I ruoli sono stati assegnati considerando le preferenze personali, la disponibilità e il desiderio dei membri del team di mettersi alla prova in nuovi ambiti. Il ruolo di #glossario("programmatore"), in particolare, è stato attribuito per garantire la continuità del lavoro svolto in modo autonomo.

Successivamente, ogni membro ha condiviso le #glossario("attività") svolte nel #glossario("periodo") precedente e ha fornito indicazioni su come ricoprire il ruolo, offrendo una prima infarinatura al nuovo assegnatario per facilitare il passaggio di consegne.

== Dimostrazione del primo approccio alle tecnologie
#p.lucato mostra al team una versione semplificata del #glossario("PoC") realizzata tramite l'uso di Three.js e React. #p.pesenato invece mostra una versione realizzata tramite l'uso di Three.js ma come front-end #glossario("framework") viene utilizzato Svelte. La dimostrazione delle tecnologie scelte rafforza l'idea di usare Three.js come #glossario("libreria") JavaScript.

== Varie ed eventuali

Non essendoci altri argomenti da discutere l’incontro del team Archi7echs è terminato alle 17:00. \
Si convoca il prossimo incontro per mercoledì 04/12/2024 alle ore 15:00 per discutere di quanto svolto durante la settimana. \

= Decisioni

#decisioni((
  [2],[Ruoli],[I nuovi assegnatari dei ruoli proseguiranno con le #glossario("attività") legate al loro incarico attuale, offrendo supporto ai colleghi che hanno assunto il loro precedente ruolo, qualora necessario.],
  [3],[Tecnologie],[I membri incaricati proseguiranno lo studio delle tecnologie proposte al fine di giungere a una scelta definitiva.],

))


= TODO

#todo((
  (47,), (p.salvo), [Redazione #glossario("verbale interno") 2024-11-26],
  (48,), (p.salvo), [Redazione #glossario("verbale esterno") 2024-11-26],
  (49,), (p.salvo), [Attivare regola protezione #glossario("branch") sources],
  (50,), (p.salvo), [Aggiornamento glossario],
  (52,), (p.pozzobon), [Stesura caratteristiche utente in #glossario("AdR")],
  (53,), (p.pozzobon), [Inserire la gestione degli errori in #glossario("AdR")],
  (54,), (p.pozzobon), [Continuare i casi d'uso in #glossario("AdR")],

))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 26 novembre 2024

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ #p.salvo],
  [Il #glossario("responsabile di Progetto"):\ #p.checchinato],
)

