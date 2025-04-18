#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 14/04/2025",
  subtitle: "Documento interno - verbale nr. 24",
  author: p.salvo,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "18-03-2025",  "Prima stesura documento", p.salvo,(p.checchinato,p.lucato),
  )
)

_In vista della riunione con l'azienda del 15/04, il gruppo si riunisce per parlare di quanto segue:_

= Ordine del Giorno
+ Discussione su presentazione finale
+ Discussione su passi futuri
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Lunedì 14/04/2025 - ore 16.00 \

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
#p.checchinato, in qualità di #glossario("responsabile di progetto") del dodicesimo #glossario("periodo"), prende la parola e si procede alla discussione in ordine dei punti all'#glossario("ordine del giorno").

#pb();

#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})

== Discussione su presentazione finale
Il team controlla che tutti i requisiti elencati nel capitolato siano presenti e adatti. La presentazione del prodotto finale #glossario("MVP") toccherà le parti di front-end e back-end.
#p.lucato si occuperà della parte di presentazione.
#p.salvo chiede chiarimenti al team riguardo alla richiesta esposta nel capitolato di "lista bug" la quale non è stata redatta come documento ma è consultabile come issue di GitHub. 

== Discussione su passi futuri
#p.checchinato propone di candidarsi alla revisione #glossario("PB") col #p.cardin se l'incontro con l'azienda portasse all'approvazione del lavoro svolto.\
Vengono quindi controllati i documenti e il loro stato di avanzamento per decidere in che modo continuare la revisione.


== Varie ed eventuali
Il gruppo ricorda l'incontro con l'azienda proponente in data 15/04/2025. \
Si convoca il prossimo incontro per la settimana seguente ad orario da stabilire per discutere di quanto svolto durante la settimana.

= Decisioni

#decisioni((
  [2],[Revisione PB],[Candidarsi per revisione #glossario("PB") col #p.cardin],
  [2],[Revisione documenti],[Continuare la revisione dei documenti iniziata a seguito della precedente riunione],
  
))

= TODO

#todo((
  (336,), (p.salvo), [VI: scrittura #glossario("verbale interno") del 14/04/2025],
  (339,), (p.checchinato), [Revisione finale #glossario("PdP") per #glossario("PB")],
  (340,), (p.pozzobon), [Revisione finale #glossario("PdQ") per #glossario("PB")],
  (341,), (p.valdagno), [Revisione finale #glossario("NdP") per #glossario("PB")],
  (342,), (p.checchinato), [Revisione finale #glossario("Glossario") per #glossario("PB")],
  (343,), (p.lucato), [Revisione finale #glossario("MU") per #glossario("PB")],
))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 14 aprile 2025

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ #p.salvo],
  [Il #glossario("responsabile di Progetto"):\ #p.checchinato], 
)