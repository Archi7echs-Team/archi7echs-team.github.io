#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 04/12/2024",
  subtitle: "Documento interno - verbale nr. 10",
  author: "Giovanni Salvò",
  state: "Approvato",
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.0.1", "09-12-2024",  "Prima stesura documento", p.salvo, p.valdagno,
  )
)

_A seguito dell'attività Diario di Bordo svolta in aula nella mattinata di lunedì 02/12/2024 e della riunione del 26/11/2024 si decide di convocare una call per discutere di quanto segue:_


= Ordine del Giorno

+ Dimostrazione simil-#glossario("PoC") dai membri del team
+ Spiegazione rendicontazione ore e cruscotto
+ Discussioni sullo stato del lavoro e di come procedere
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Mercoledì 04/12/2024 - ore 15.10 \

*Luogo* Online - Piattaforma Discord \

*Destinatari* Tutto il gruppo \

= Verbale

L'incontro inizia, come da programma alle ore 15.10. Sono presenti i seguenti componenti del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

#p.salvo si propone come verbalizzante dell’incontro. \
#p.checchinato, in qualità di responsabile di progetto, prende la parola e si procede alla discussione in ordine dei punti all’ordine del giorno.
#pb()


#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})


== Dimostrazione simil-#glossario("PoC") dai membri del team
Durante l'incontro #p.lucato mostra le aggiunte al simil-#glossario("PoC") da lui realizzato, tra cui migliorie al piano medio e alle label applicate alle colonne. A seguire #p.pesenato mostra le modifiche applicate al suo simil-#glossario("PoC") tra cui la funzionalità del hover della colonna. #p.scandaletti espone le sue difficoltà nella creazione del simil-#glossario("PoC") tramite Angular a causa della complessità della tecnologia e del suo stato di salute nella scorsa settimana. \ 
Vengono esposti problemi nell'uso delle API da parte di #p.lucato che trovano aiuto da parte di #p.pesenato che si propone per trovare la soluzione nel suo simil-#glossario("PoC").

== Spiegazione rendicontazione ore e cruscotto
#p.pozzobon illustra il lavoro svolto nel documento #glossario("AdR") e spiega il funzionamento del documento #glossario("Google Sheets") in cui ogni membro dovrà inserire le ore produttive effettuate giorno per giorno, periodo per periodo, per portare a una rendicontazione ore dinamica e immediata. Inoltre, mostra al team il cruscotto realizzato tramite #glossario("Grafana") che riunisce tutti i dati importanti da #glossario("GitHub") e #glossario("Google Sheets") per dare una visione immediata dello stato del progetto sia come costi e ore ma anche come issue aperte e chiuse.

== Discussioni sullo stato del lavoro e di come procedere
Il team discute su come gestire il codice in #glossario("repo") e su come gestire le issue a esso collegate. #p.checchinato fa luce sulla necessità di inserire il responsabile come verificatore finale nelle #glossario("PR") dei documenti. Il team concorda su questa proposta. Il team discute lo stato del lavoro e le modalità per procedere nella stesura dei documenti a regola d'arte

== Varie ed eventuali

Non essendoci altri argomenti da discutere l’incontro del team Archi7echs è terminato alle 16:00. \
Si convoca il prossimo incontro per martedì 10/12/2024 alle ore 15:00 per discutere di quanto svolto durante la settimana. \

= Decisioni

#decisioni((
  [1],[Tecnologie],[I membri incaricati proseguiranno lo studio delle tecnologie proposte al fine di giungere a una scelta definitiva.],
  [2],[Rendicontazione ore],[I membri dovranno inserire le ore effettive giorno per giorno nel documento condiviso.],
  [3],[Lavoro svolto],[I membri dovranno continuare a lavorare a regola d'arte e per le prossime #glossario("PR") il responsabile dovrà essere inserito come verificatore.],

))


= TODO

#todo((
  (58,), (p.salvo), [Fix Norme di Progetto: Verifica e Revisione della documentazione],
  (60,), (p.checchinato), [Piano di Progetto: aggiunta rischi],
  (61,), (p.salvo), [Redazione verbale interno 2024-12-04],
  (63,), (p.pozzobon), [Fix #glossario("AdR"): Casi d'uso ],
))

_Per il dettaglio delle decisioni si rimanda al punto dell'OdG._

#v(3em)

Padova, 04 dicembre 2024

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il Verbalizzante:\ #p.salvo],
  [Il responsabile di Progetto:\ #p.checchinato],
)

