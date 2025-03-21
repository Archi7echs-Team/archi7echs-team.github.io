#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 17/03/2025",
  subtitle: "Documento interno - verbale nr. 20",
  author: p.pesenato,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "21-03-2025",  "Prima stesura documento", p.pesenato,(p.salvo),
  )
)

_A seguito della fine del secondo periodo della fase #glossario("PB"), il gruppo si riunisce per parlare di quanto segue:_

= Ordine del Giorno
+ Verifica avanzamento lavori durante il periodo appena trascorso
+ Definizione ruoli
+ Definizione dei gruppi di lavoro
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Lunedì 10/03/2025 - ore 15.00 \

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

#p.pesenato si propone come #glossario("verbalizzante") dell'incontro.\
#p.scandaletti, in qualità di #glossario("responsabile di progetto") dell'ottavo #glossario("periodo"), prende la parola e si procede alla discussione in ordine dei punti all'#glossario("ordine del giorno").

#pb();

#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})


== Verifica avanzamento lavori durante il periodo appena trascorso
Durante la riunione, #p.checchinato e #p.valdagno hanno mostrato il lavoro svolto durante il periodo, presentando un'interfaccia utente sviluppata con #glossario("Svelte") e #glossario("Threlte"). Il prototipo include le funzionalità di base per la visualizzazione dei dati e l'interazione con l'utente, dimostrando la corretta integrazione tra le tecnologie utilizzate e la corretta gestione dell'interattività. #p.lucato e #p.pesenato hanno invece presentato il lavoro svolto sul back-end, mostrando l'implementazione del servizio di parseCsv ed il servizio di connessione al database. L'architettura è stata strutturata secondo i pattern proposti da #glossario("Spring"), garantendo una gestione efficiente delle richieste e una corretta persistenza dei dati.

== Definizione ruoli
Essendo la fine dell'ottavo #glossario("periodo"), si procede alla definizione dei ruoli per il successivo. I ruoli assegnati sono i seguenti:

#table(
  columns: (1fr, 1fr),
  align: (col, row) => (center, center).at(col),
  inset: 6pt,
  table.header([*Ruolo*], [*Membri*]),
    [#glossario("Responsabile")],[#p.valdagno],
    [#glossario("Amministratore")],[#p.pesenato],
    [#glossario("Analista")],[#p.checchinato],
    [#glossario("Programmatore")],[#p.salvo, #p.pozzobon,\ #p.pesenato, #p.scandaletti,\ #p.lucato],
    [#glossario("Verificatore")],[#p.salvo],
    [#glossario("Progettista")],[#p.checchinato, #p.valdagno],
)

Successivamente i membri del team presenti si scambiano i compiti e le informazioni necessarie per il proseguimento del lavoro.

== Definizione dei gruppi di lavoro
In questo periodo è stato assegnato un numero maggiore di membri al ruolo di #glossario("programmatore"), poiché il team ha deciso di suddividersi in gruppi di lavoro distinti per approfondire lo sviluppo delle diverse componenti dell'applicazione.

Nello specifico, sono stati definiti due gruppi:
- Gruppo #glossario("front-end"): composto da #p.salvo e #p.pozzobon, si occuperà dello sviluppo dell’interfaccia utente utilizzando #glossario("Svelte") e #glossario("Threlte"). L'obiettivo principale è comprendere le best practice e i pattern più adatti per la gestione dell'interattività e della grafica 3D.
- Gruppo #glossario("back-end"): composto da #p.pesenato, #p.lucato e #p.scandaletti, lavorerà con #glossario("Spring") per continuare lo sviluppo dei servizi, in particolare lo sviluppo del servizio di connessione al database e l'implementazione delle API.

Questa suddivisione consente a tutti i membri coinvolti di sperimentare direttamente le tecnologie adottate, facilitando la comprensione delle architetture da applicare e favorendo un'integrazione più efficace tra le componenti del sistema.

== Varie ed eventuali
Si è deciso di contattare il #p.cardin per discutere delle modifiche apportate alle scelte tecnologiche dopo colloquio RTB.
Non essendoci altri argomenti da discutere l'incontro del team Archi7echs è terminato alle 16:00. \
Si convoca il prossimo incontro per martedì 25/03/2024 ad orario da stabilire per discutere di quanto svolto durante la settimana.

= Decisioni

#decisioni((
  [1],[Definizione ruoli],[Assegnati i ruoli per il prossimo #glossario("periodo") secondo quanto specificato nella tabella],
  [2],[Definizione gruppi di lavoro],[Suddivisione del team in due gruppi distinti per approfondire lo sviluppo delle componenti #glossario("front-end") e #glossario("back-end") dell'applicazione],
))

= TODO

#todo((
  (234,), (p.checchinato), [ST: inizio stesura documento specifica tecnica],
  (257,), (p.valdagno), [PdP - Stesura ottavo periodo],
  (258,), (p.checchinato), [AdR - Modifica tecnologie],
  (259,), (p.checchinato), [NdP - modifica sezione documenti da consegnare ],
  (260,), (p.checchinato), [NdP - modifica riferimenti],
  (261,), (p.checchinato), [NdP - modifica sezione sviluppo],
  (262,), (p.pesenato), [Verbale Interno 2025-03-17],
))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 17 marzo 2025

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ #p.pesenato],
  [Il #glossario("responsabile di Progetto"):\ #p.valdagno], 
)