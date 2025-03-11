#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 10/03/2025",
  subtitle: "Documento interno - verbale nr. 19",
  author: p.checchinato,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "11-03-2025",  "Prima stesura documento", p.checchinato, "",
  )
)

_A seguito della fine del primo periodo della fase #glossario("PB"), il gruppo si riunisce per parlare di quanto segue:_

= Ordine del Giorno
+ Discussione sulle tecnologie del back-end
+ Definizione ruoli
+ Definizione dei gruppi di lavoro
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Giovedì 10/03/2025 - ore 15.00 \

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

#p.checchinato si propone come #glossario("verbalizzante") dell'incontro.\
#p.salvo, in qualità di #glossario("responsabile di progetto") del settimo #glossario("periodo"), prende la parola e si procede alla discussione in ordine dei punti all'#glossario("ordine del giorno").

#pb();

#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})


== Discussione sulle tecnologie del back-end
Durante la riunione, #p.lucato, dopo uno studio approfondito sulle tecnologie back-end, ha proposto la sostituzione di #glossario("Node.js") e #glossario("Express") con #glossario("Spring"). La decisione è maturata anche a seguito del confronto con l'azienda in data 06/03/2025 e delle indicazioni fornite dal #p.cardin, il quale ha evidenziato come #glossario("Node.js") ed #glossario("Express") siano più orientati alla gestione delle richieste come middleware piuttosto che a un vero back-end strutturato. Inoltre, l'adozione di #glossario("Spring") consente una maggiore applicabilità di pattern architetturali consolidati, garantendo una gestione più robusta e scalabile dell'applicazione.

== Definizione ruoli
Essendo la fine del settimo #glossario("periodo"), si procede alla definizione dei ruoli per il successivo. I ruoli assegnati sono i seguenti:

#table(
  columns: (1fr, 1fr),
  align: (col, row) => (center, center).at(col),
  inset: 6pt,
  table.header([*Ruolo*], [*Membri*]),
    [#glossario("Responsabile")],[#p.scandaletti],
    [#glossario("Amministratore")],[#p.checchinato],
    [#glossario("Analista")],[#p.salvo],
    [#glossario("Programmatore")],[#p.checchinato, #p.lucato,\ #p.pesenato, #p.scandaletti,\ #p.valdagno],
    [#glossario("Verificatore")],[#p.pesenato],
    [#glossario("Progettista")],[#p.pozzobon, #p.salvo],
)

Successivamente i membri del team presenti si scambiano i compiti e le informazioni necessarie per il proseguimento del lavoro.

== Definizione dei gruppi di lavoro
In questo periodo è stato assegnato un numero maggiore di membri al ruolo di #glossario("programmatore"), poiché il team ha deciso di suddividersi in gruppi di lavoro distinti per approfondire lo sviluppo delle diverse componenti dell'applicazione.

Nello specifico, sono stati definiti due gruppi:
- Gruppo #glossario("front-end"): composto da #p.checchinato e #p.valdagno, si occuperà dello sviluppo dell’interfaccia utente utilizzando #glossario("Svelte") e #glossario("Threlte"). L'obiettivo principale è comprendere le best practice e i pattern più adatti per la gestione dell'interattività e della grafica 3D.
- Gruppo #glossario("back-end"): composto da #p.pesenato e #p.lucato, lavorerà con #glossario("Spring") per esplorare la gestione dei servizi, la strutturazione delle API e l'integrazione con il database.

Questa suddivisione consente a tutti i membri coinvolti di sperimentare direttamente le tecnologie adottate, facilitando la comprensione delle architetture da applicare e favorendo un'integrazione più efficace tra le componenti del sistema.

== Varie ed eventuali
Non essendoci altri argomenti da discutere l'incontro del team Archi7echs è terminato alle 16:30. \
Si convoca il prossimo incontro per lunedì 17/03/2024 ad orario da stabilire per discutere di quanto svolto durante la settimana.

= Decisioni

#decisioni((
  [1],[Discussione sulle tecnologie del back-end],[Sostituire #glossario("Node.js") e #glossario("Express") con #glossario("Spring") per garantire una gestione più robusta e scalabile dell'applicazione],
  [2],[Definizione ruoli],[Assegnati i ruoli per il prossimo #glossario("periodo") secondo quanto specificato nella tabella],
  [3],[Definizione gruppi di lavoro],[Suddivisione del team in due gruppi distinti per approfondire lo sviluppo delle componenti #glossario("front-end") e #glossario("back-end") dell'applicazione],
))

= TODO

#todo((
))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 10 marzo 2025

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ #p.checchinato],
  [Il #glossario("responsabile di Progetto"):\ #p.salvo],
)