#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 07/01/2024",
  subtitle: "Documento interno - verbale nr. 14",
  author: p.valdagno,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.2", "09-02-2025",  "Rimozione sezione stato", p.pesenato, p.pozzobon,
    "0.1.1", "31-01-2025",  "Aggiunta termini glossario", p.scandaletti, (p.pozzobon,p.lucato),
    "0.1.0", "10-01-2025",  "Prima stesura documento", p.valdagno, (p.pesenato,p.pozzobon),
  )
)

_A seguito del #glossario("periodo") delle vacanze di Natale e del superamento della metà del quarto #glossario("periodo") si decide di convocare una riunione per discutere di quanto segue:_

= Ordine del Giorno
+ #glossario("Revisione") dei diagrammi #glossario("UML")
+ Modifiche alla struttura del documento #glossario("NdP")
+ Modifiche agli indici dei documenti
+ Suddivisione #glossario("attività") per il #glossario("PdQ")
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Martedì 07/01/2025 - ore 14.30 \

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

#p.valdagno si propone come #glossario("verbalizzante") dell’incontro.\
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
Durante la riunione, #p.checchinato illustra al gruppo i diagrammi #glossario("UML") che ha realizzato in modo tale che tutti i componenti siano a conoscenza del lavoro svolto e possano contribuire proponendo modifiche. #p.lucato propone di modificare il diagramma dell'#glossario("UC") 1 e successivamente anche i diagrammi dell'#glossario("UC") 2.1 con rispettivi sotto-#glossario("UC"), il gruppo concorda all'unanimità con le proposte di modifica.
Alcune delle modifiche proposte ai diagrammi inoltre devono essere accompagnate da delle modifiche agli #glossario("UC") a cui i diagrammi fanno riferimento.

== Modifiche alla struttura del documento NdP
#p.pozzobon propone di riorganizzare la struttura delle documento #glossario("NdP") in modo tale che rispetti meglio la suddivisione dei processi dello standard #glossario("ISO 12207:1995"). La proposta viene accettata
all’unanimità.

== Modifiche agli indici dei documenti
#p.pozzobon suggerisce di modificare lo stile dell'indice dei documenti per visualizzare in grassetto i titoli delle sezioni principali e di aggiungere una sezione di indice per le immagini utilizzate nei documenti. Le proposte vengono accettate
all’unanimità e #p.scandaletti procede subito a testare la visualizzazione dei titoli in grassetto sulla documentazione condivisa in #glossario("typst").

== Suddivisione attività per il PdQ
Durante la riunione il team discute sul come dividersi le #glossario("attività") riguardanti la stesura del #glossario("PdQ"). Il team innanzitutto riflette su quali metriche adottare e successivamente decide di dividere le #glossario("attività") da svolgere tra #glossario("responsabile") e amministratori.

== Varie ed eventuali
Non essendoci altri argomenti da discutere l'incontro del team Archi7echs è terminato alle 16:00. \
Si convoca il prossimo incontro per lunedì 13/01/2025 ad orario da stabilire per discutere di quanto svolto
durante la settimana.

= Decisioni
#decisioni((
  [1],[Gestione delle #glossario("issue")],[Ogni assegnatario di una #glossario("issue") deve dare una stima delle data di inizio e di fine nella board #glossario("Github")],
  [2],[Data di fine #glossario("periodo")],[Viene stabilita come data di fine del quarto #glossario("periodo") il 13/01/2025],
  [3],[Indici documenti],[Modificare gli indici dei documenti per visualizzare i titoli principali in grassetto e aggiungere un indice per le immagini],
))

= TODO
#todo((
  (130,), (p.scandaletti), [Documentazione - indice - capitolo in grassetto],
  (131,), (p.lucato), [#glossario("NdP") - spostamento sezione Documentazione da consegnare],
  (132,), (p.lucato), [#glossario("NdP") - spostamento sezione Processi Primari->Comunicazione con #glossario("proponente")],
  (133,), (p.lucato), [#glossario("NdP") - spostamento sezione #glossario("UML")],
  (135,), (p.valdagno), [#glossario("NdP") - metriche di qualità],
  (136,), (p.valdagno), [#glossario("NdP") - sottosezioni fornitura],
  (137,), (p.scandaletti), [Documentazione - indice figure ed indice tabelle],
  (138,), (p.valdagno), [Redazione #glossario("Verbale Interno") 2025-01.07],
  (139,), (p.lucato, p.pozzobon), [#glossario("PdQ") - sezione test],
  (140,), (p.checchinato), [#glossario("AdR") - Fix #glossario("UC")],
  (141,), (p.scandaletti), [#glossario("NdP") - Pianificazione #glossario("issue") mediante Gantt ],
  (142,), (p.scandaletti), [#glossario("NdP") - organizzazione #glossario("Repo") per gestione immagini documentazione],
  (144,), (p.scandaletti), [#glossario("NdP") - Extension point],
  (146,), (p.pozzobon), [#glossario("AdR") - fix #glossario("UML")],
  (147,), (p.salvo), [#glossario("AdR") - #glossario("UML") #glossario("UC") da 19 a 25],
))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 07 gennaio 2025

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ #p.valdagno],
  [Il #glossario("responsabile di Progetto"):\ #p.pozzobon],
)
