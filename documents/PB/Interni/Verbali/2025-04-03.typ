#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 03/04/2025",
  subtitle: "Documento interno - verbale nr. 22",
  author: p.salvo,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "04-03-2025",  "Prima stesura documento", p.salvo,(""),
  )
)

_A seguito della fine del quarto periodo della fase #glossario("PB"), il gruppo si riunisce per parlare di quanto segue:_

= Ordine del Giorno
+ Verifica avanzamento lavori durante il periodo appena trascorso
+ Definizione ruoli
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Giovedì 25/03/2025 - ore 14.30 \

*Luogo* Online - #glossario("Piattaforma") #glossario("Discord") \

*Destinatari* Tutto il gruppo \

= Verbale

L'incontro inizia, come da programma alle ore 16.00. Sono presenti tutti i membri del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

#p.salvo si propone come #glossario("verbalizzante") dell'incontro.\
#p.salvo, in qualità di #glossario("responsabile di progetto") del decimo #glossario("periodo"), prende la parola e si procede alla discussione in ordine dei punti all'#glossario("ordine del giorno").

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
#p.pozzobon mostra lo stato dei test per la parte front-end dimostrando una copertura del 91% ritenuta sufficiente ma migliorabile.
\
#p.scandaletti mostra il lavoro svolto per collegare back-end con il front-end dimostrando la corretta interazione tra essi.
\
#p.pesenato mostra l'aggiunta di alcuni test di mutazione per raggiungere una maggiore code coverage.

Il gruppo discute sullo stato di avanzamento dei documenti in vista del termine del progetto e dell'incontro con l'azienda.

== Definizione ruoli
Essendo la fine del decimo #glossario("periodo"), si procede alla definizione dei ruoli per il successivo. I ruoli assegnati sono i seguenti:

#table(
  columns: (1fr, 1fr),
  align: (col, row) => (center, center).at(col),
  inset: 6pt,
  table.header([*Ruolo*], [*Membri*]),
    [#glossario("Responsabile")],[#p.pesenato],
    [#glossario("Amministratore")],[#p.pozzobon],
    [#glossario("Analista")],[#p.scandaletti],
    [#glossario("Programmatore")],[#p.checchinato, #p.valdagno,\ #p.salvo],
    [#glossario("Verificatore")],[#p.lucato],
    [#glossario("Progettista")],[#p.salvo],
)

Successivamente i membri del team presenti si scambiano i compiti e le informazioni necessarie per il proseguimento del lavoro.

== Varie ed eventuali
Il gruppo ricorda l'incontro con l'azienda proponente in data 04/04/2025. \
Si convoca il prossimo incontro per la settimana seguente ad orario da stabilire per discutere di quanto svolto durante la settimana.

= Decisioni

#decisioni((
  [1],[Aggiunta casi d'uso],[Aggiunta nel documento #glossario("AdR") delle nuove funzionalità introdotte nel #glossario("MVP")],
  [1],[Aggiunta test],[Aggiunta nel documento #glossario("PdQ") dei nuovi test necessari per testare le nuove funzionalità introdotte nel #glossario("MVP")],
  [1],[Manuale Utente],[Inizio scrittura del documento #glossario("Manuale utente")],
  [1],[Cruscotto],[Aggiunta nel cruscotto indicatori di code coverage per una visione istantanea della percentuale di code coverage],
  
))

= TODO

#todo((
  (298,), (p.salvo), [VI: scrittura #glossario("verbale interno") del 03/04/2025],
  (299,), (p.salvo), [VE: scrittura #glossario("verbale esterno") del 04/04/2025],
  (300,), (p.salvo), [Inizio stesura #glossario("Manuale utente")],
  (301,), (p.pesenato), [#glossario("ST") - Moduli back-end],
  (303,), (p.pozzobon), [#glossario("AdR") - Fix UC e UML],
  (304,), (p.pozzobon), [#glossario("AdR") - Creazione UC reset selezione],
  (305,), (p.pozzobon), [#glossario("AdR") - Creazione UC chiusura pannello filtri al click della barra],
  (306,), (p.pozzobon), [#glossario("AdR") - Creazione UC per personalizzazione colorazione barre],
  (307,), (p.pozzobon), [#glossario("AdR") - Sistemazione UC 15 e 15.1],
  (308,), (p.pozzobon), [#glossario("AdR") - Sistemazione UC errori],
  (309,), (p.pozzobon), [#glossario("PdQ") - Aggiornamento tabelle requisiti],
  (310,), (p.pozzobon), [#glossario("Grafana") - Inserimento grafici relativi ai test e coverage],
))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 03 aprile 2025

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ #p.salvo],
  [Il #glossario("responsabile di Progetto"):\ #p.pesenato], 
)