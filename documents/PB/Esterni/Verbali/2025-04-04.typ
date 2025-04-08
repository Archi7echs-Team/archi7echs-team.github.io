#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 04/04/2025",
  subtitle: "Call con Sanmarco Informatica - verbale esterno nr. 12",
  author: p.salvo,
  state: "",
  intern: false,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "07-04-2025",  "Prima stesura documento", p.salvo, (p.lucato, p.pesenato),
  )
)

_A seguito del lavoro svolto da parte del team durante il decimo #glossario("periodo") e dell'impegno preso con l'azienda di aggiornarsi una volta ogni settimana si decide, una volta contattato Alex Beggiato (System Architect Team Leader di Sanmarco Informatica), di convocare una call con il seguente #glossario("ordine del giorno"):_


= Ordine del Giorno

+ Informazioni riguardo il lavoro svolto durante l'ultimo periodo
+ Prossimi passi
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Venerdì 04/04/2025 - ore 17.00 \

*Luogo* Online - #glossario("Piattaforma") Google Meet  \

*Destinatari* Azienda Sanmarco Informatica e tutti i componenti del gruppo Archi7echs \

= Verbale

L'incontro inizia, come da programma alle ore 16.00. Sono presenti i seguenti membri del team:
- #p.checchinato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

Per Sanmarco Informatica, invece, è presente:
- Alex Beggiato - System Architect Team Leader

#p.salvo si propone come #glossario("verbalizzante") dell'incontro. \
Si procede alla discussione in ordine dei punti all'#glossario("ordine del giorno").
#pb()

#ordine_del_giorno([
== Informazioni riguardo il lavoro svolto durante l'ultimo periodo
#p.pozzobon mostra il lavoro svolto nel lato front-end riguardante i test e il relativo code coverage. Inoltre, espone la difficoltà nel produrre alcuni test per arrivare al 100% di code coverage. Alex Beggiato interviene dicendo che non è necessario il 100% di code coverage se vengono spiegati i motivi che non hanno reso possibile il raggiungimento di esso. 
\
#p.pesenato chiede chiarimenti ad Alex Beggiato per i test riguardanti l'#glossario("API") che sono resi complicati dal rate limit esterno. Inoltre, mostra i nuovi test aggiunti ai precedenti test di mutazione consigliati al team da Alex Beggiato. 
\
#p.scandaletti illustra il collegamento tra front-end e back-end dimostrando come la richiesta all'#glossario("API") avvenga e i dati vengano posizionati sul grafico oltre al caricamento dei dati tramite database.

== Prossimi passi
Fatto presente lo stato di avanzamento dei documenti e del #glossario("MVP") viene chiesto ad Alex Beggiato se la prossima riunione possa essere una riunione finale nel caso i documenti richiesti nel capitolato siano pronti. Alex Beggiato conferma questa possibilità.


== Varie ed eventuali
Non essendoci altri argomenti da discutere l'incontro è terminato alle 16:30. \
Il prossimo incontro #glossario("SAL") è stato programmato per il giorno 15/04/2025 alle 17:00. \
])

= Decisioni
#decisioni((
  [1],[Test],[Analizzare lo stato di code coverage e decidere se continuare con altri test],
  [2],[Scrittura ST],[Terminare scrittura del documento della ST],
  [2],[Documenti capitolato],[Completare i documenti richiesti nel capitolato],
  [2],[MVP],[Completare l'#glossario("MVP")],
)) 


= TODO
A seguito di questa riunione non è stata aperta alcuna issue che il team non avesse già aperto.

_Per il dettaglio delle decisioni si rimanda al punto dell'OdG_.


#v(3em)

Padova, 04 aprile 2025

\
#figure(
  [#table(
    columns: (auto, 1fr),
    stroke: none,
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Il #glossario("Verbalizzante"):\ #p.salvo],
    [Il #glossario("responsabile di Progetto"):\ #p.pesenato],
  )]
)

#v(2em)
#figure(
  [#grid(
    columns: (auto, 1fr),
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Per Sanmarco Informatica:\ Alex Beggiato \
    #place(center, image("//img/smi_sign.png", width: 120%))
    ],
  )]
)