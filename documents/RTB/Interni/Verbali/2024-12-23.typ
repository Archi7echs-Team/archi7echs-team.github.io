#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 23/12/2024",
  subtitle: "Documento interno - verbale nr. 13",
  author: p.checchinato,
  state: "Approvato",
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.1", "31-01-2025",  "Aggiunta termini glossario", p.scandaletti, p.pozzobon,
    "0.1.0", "02-01-2025",  "Prima stesura documento", p.checchinato, (p.lucato,p.pozzobon),
  )
)

_A seguito dell'incontro con l'azienda Sanmarco Informatica che si svolgerà nel pomeriggio di lunedì 23/12/2024 , dell'arrivo delle vacanze di Natale e dell'incontro svoltosi in data 20/12/2024 con il #p.cardin , si decide di convocare una riunione per discutere di quanto segue:_

= Ordine del Giorno
+ Discussione sull'incontro con il #p.cardin
+ Preparazione alla riunione con Sanmarco Informatica
+ Organizzazione per il #glossario("periodo") di vacanze
+ Definizione dei ruoli e passaggio di consegne
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Lunedì 23/12/2024 - ore 15.00 \

*Luogo* Online - #glossario("Piattaforma") #glossario("Discord") \

*Destinatari* Tutto il gruppo \

= Verbale

L'incontro inizia, come da programma alle ore 15.00. Sono presenti i seguenti componenti del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.salvo
- #p.scandaletti
- #p.valdagno

#p.checchinato si propone come #glossario("verbalizzante") dell’incontro.\
#p.valdagno, in qualità di #glossario("responsabile di progetto") del secondo #glossario("periodo"), prende la parola e si procede alla discussione in ordine dei punti all’#glossario("ordine del giorno").

#pb();

#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})


== Discussione sull'incontro con il #p.cardin
Durante la riunione, #p.lucato e #p.pesenato hanno discusso con il gruppo delle risposte ricevute dal #p.cardin alle loro domande riguardo al documento dell'#glossario("Analisi dei requisiti"). Entrambi si sono dichiarati soddisfatti dei chiarimenti ottenuti, sottolineando come queste risposte consentiranno di procedere in modo più veloce e chiaro nella stesura del documento. Inoltre, hanno evidenziato come le indicazioni ricevute siano fondamentali per una migliore strutturazione dei casi d'uso e degli altri aspetti principali del #glossario("progetto").


== Preparazione alla riunione con Sanmarco Informatica
Durante la riunione, #p.pesenato e #p.lucato hanno illustrato al gruppo le modifiche apportate al documento dell'#glossario("Analisi dei requisiti"). La ristrutturazione è stata effettuata per migliorare la chiarezza e la qualità dei casi d'uso, oltre che per integrarvi ulteriori casi emersi dalle indicazioni fornite dal #p.cardin. Questa #glossario("revisione") è stata preparata in vista della presentazione ad Alex Beggiato, referente di Sanmarco Informatica, al fine di ottenere chiarimenti sull'obbligatorietà e sulla correttezza di alcuni casi d'uso specifici.

Oltre alla riorganizzazione del documento, #p.pesenato e #p.lucato hanno presentato al gruppo uno schizzo preliminare della #glossario("GUI") del #glossario("progetto"). Lo schizzo, elaborato per definire una prima struttura dell'interfaccia utente, servirà come base di discussione per raccogliere feedback e apportare eventuali miglioramenti durante la riunione.

== Organizzazione per il periodo di vacanze
Durante la riunione si è discusso dell'imminente #glossario("periodo") di vacanze natalizie e dell'impatto che questo avrà sul lavoro del gruppo. È stato concordato che, nonostante i rallentamenti inevitabili dovuti alle festività, si cercherà di mantenere un livello di produttività adeguato, concentrandosi su aggiunte e miglioramenti ragionevoli ai documenti e al #glossario("progetto"). Il gruppo ha pianificato di sfruttare questo #glossario("periodo") per consolidare quanto già realizzato, in modo da riprendere con slancio al termine delle vacanze.

== Definizione dei ruoli e passaggio di consegne

Essendo la fine del terzo #glossario("periodo"), si procede alla definizione dei ruoli per il quarto #glossario("periodo"). La nuova assegnazione dei ruoli è la seguente:

#table(
  columns: (1fr, 1fr),
  align: (col, row) => (center, center).at(col),
  inset: 6pt,
  table.header([*Ruolo*], [*Membri*]),
    [#glossario("Responsabile")],[#p.pozzobon],
    [#glossario("Amministratore")],[#p.valdagno\ #p.scandaletti],
    [Analista],[#p.checchinato\ #p.salvo],
    [#glossario("Verificatore")],[#p.lucato\ #p.pesenato],
)

Come visibile dalla tabella sopra, nessun componente del team ha avuto il ruolo di progettista assegnato, questo perchè non è stato ritenuto necessario per il quarto #glossario("periodo").

Successivamente i membri del team presenti si scambiano i compiti e le informazioni necessarie per il proseguimento del lavoro.

== Varie ed eventuali
Non essendoci altri argomenti da discutere l'incontro del team Archi7echs è terminato alle 16:25. \
Il giorno della prossima riunione non è stato stabilito, considerando le vacanze natalizie. La data verrà definita successivamente in base alle disponibilità del team.\

= Decisioni
#decisioni((
  [1],[Incontro con il #p.cardin],[Continuare la stesura del documento dell'#glossario("Analisi dei requisiti") seguendo le indicazioni ricevute],
  [2],[Incontro con Sanmarco Informatica],[Presentare le modifiche apportate al documento dell'#glossario("Analisi dei requisiti") e lo schizzo preliminare della #glossario("GUI")],
  [3],[Organizzazione vacanze],[Concentrarsi su aggiunte e miglioramenti ragionevoli ai documenti e al #glossario("progetto")],
  [4],[Definizione ruoli],[Assegnati i ruoli per il quarto #glossario("periodo")]
))

= TODO
#todo((
  (114,), (p.checchinato), [Redazione #glossario("verbale interno") 2024-12-23],
  (115,), (p.pozzobon), [Redazione #glossario("verbale esterno") 2024-12-23],
  (116,), (p.pozzobon), [#glossario("Piano di progetto"): stesura terzo #glossario("periodo")],
  (118,), (p.checchinato), [#glossario("AdR"): inizio #glossario("UML") #glossario("UC")],
  (119,), (p.lucato), [#glossario("NdP") - documentazione da consegnare ],
  (120,), (p.lucato), [#glossario("AdR") - sezione diagrammi casi d'uso e diagrammi delle classi],
  (121,), (p.lucato), [#glossario("AdR") - sistemazione #glossario("UC")],
  (122,), (p.valdagno), [#glossario("NdP") - Standard di qualità],
))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 23 dicembre 2024

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ #p.checchinato],
  [Il #glossario("responsabile di Progetto"):\ #p.valdagno],
)
