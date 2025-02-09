#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 30/01/2025",
  subtitle: "Documento interno - verbale nr. 17",
  author: p.salvo,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "08-02-2025",  "Prima stesura documento", p.salvo, (p.valdagno,p.lucato),
  )
)

_Per ragionare su come procedere in questo periodo d'esami e per ruotare i ruoli si decide di convocare una riunione per discutere di quanto segue:_

= Ordine del Giorno
+ Discussione su periodo passato e periodo futuro
+ Definizione dei ruoli e passaggio di consegne
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Giovedì 30/01/2025 - ore 14.40 \

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

== Discussione su periodo passato e periodo futuro
Il gruppo discute di come gestire il prossimo periodo e su ciò che è stato fatto nel periodo passato, il lavoro ha subito un rallentamento generale a causa dell'inizio della sessione universitaria. Il rallentamento era stato preventivato ed è stato affrontato in modo adatto. L'obiettivo del team in questo prossimo periodo è una revisione generale dei documenti e candidatura per incontro #glossario("RTB") con il #p.cardin. Inoltre #p.lucato propone alcuni cambiamenti nel nome dei documenti per maggiore chiarezza, decisione accolta dal team. Successivamente vengono identificati molteplici fix da eseguire.

== Definizione dei ruoli e passaggio di consegne
Essendo la fine del quinto #glossario("periodo"), si procede alla definizione dei ruoli per il sesto #glossario("periodo"). La nuova assegnazione dei ruoli è la seguente:

#table(
  columns: (1fr, 1fr),
  align: (col, row) => (center, center).at(col),
  inset: 6pt,
  table.header([*Ruolo*], [*Membri*]),
    [#glossario("Responsabile")],[#p.lucato],
    [#glossario("Amministratore")],[#p.pesenato],
    [Analista],[#p.salvo ],
    [#glossario("Programmatore")],[#p.scandaletti \ #p.checchinato ],
    [#glossario("Verificatore")],[#p.valdagno \ #p.pozzobon],
)

Come visibile dalla tabella sopra, nessun componente del team ha avuto il ruolo di progettista assegnato, questo perché non è stato ritenuto necessario per il quinto #glossario("periodo").

Successivamente i membri del team si scambiano i compiti e le informazioni necessarie per il proseguimento del lavoro.

== Varie ed eventuali
Non essendoci altri argomenti da discutere l'incontro del team Archi7echs è terminato alle 15:40. \
Si convoca il prossimo incontro in data e orario da stabilire per discutere di quanto svolto
durante la settimana e dell'incontro con l'azienda stabilito per il 06/02/2025.


= Decisioni
#decisioni((
  [1],[Cambiamento nome file],[I file dovranno contenere il numero di versione],
  [1],[Rimozione stato del documento],[Il campo stato della pagina iniziale di ogni documento verrà rimosso],
  [1],[Fix generale],[I problemi identificati verranno risolti e si effettuerà una revisione globale],
  [2],[Continuazione stesura documenti],[I compiti verranno passati e si continuerà con il miglioramento di documenti, sito e #glossario("PoC")],
  ))

= TODO
#todo((
  (185,), (p.salvo), [#glossario("AdR"): Fix immagini e fix sottocasi d'uso],
  (186,), (p.salvo), [Redazione #glossario("verbale interno") 2025-01-30],
  (187,), (p.lucato), [#glossario("PdP"): Stesura quinto periodo],
  (190,), (p.checchinato), [Fix Sito: sezione contatti],
  (191,), (p.checchinato, p.scandaletti), [Fix #glossario("Glossario"): caratteri speciali],
  (192,), (p.scandaletti), [Fix Sito: script pagina glossario],
  (193,), (p.scandaletti), [Fix actions: Inserimento versione document],
  (195,), (p.pozzobon), [#glossario("PdQ"): inserimento grafici metriche],
  (196,), (p.pozzobon), [#glossario("PdQ"): inserimento riferimento a Grafana],
  (198,), (p.scandaletti), [Issue 2 - #glossario("PoC")],
  (199,), (p.valdagno), [Revisione finale AdR per RTB],
))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 30 gennaio 2025

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ #p.salvo],
  [Il #glossario("responsabile di Progetto"):\ #p.pesenato],
)
