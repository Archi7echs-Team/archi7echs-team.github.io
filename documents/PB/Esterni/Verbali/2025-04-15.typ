#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 15/04/2025",
  subtitle: "Call con Sanmarco Informatica - verbale esterno nr. 13",
  author: p.salvo,
  state: "",
  intern: false,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "22-04-2025",  "Prima stesura documento", p.salvo, (p.checchinato,p.valdagno),
  )
)

_A seguito del lavoro svolto da parte del team durante l'undicesimo #glossario("periodo"), dell'impegno preso con l'azienda di aggiornarsi una volta ogni settimana e del voler presentare il resoconto finale si decide, una volta contattato Alex Beggiato (System Architect Team Leader di Sanmarco Informatica), di convocare una call con il seguente #glossario("ordine del giorno"):_


= Ordine del Giorno

+ Presentazione finale 
+ Prossimi passi
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Martedì 15/04/2025 - ore 17.00 \

*Luogo* Online - #glossario("Piattaforma") Google Meet  \

*Destinatari* Azienda Sanmarco Informatica e tutti i componenti del gruppo Archi7echs \

= Verbale

L'incontro inizia, come da programma alle ore 17.00. Sono presenti i seguenti membri del team:
- #p.checchinato
- #p.pesenato
- #p.salvo
- #p.scandaletti
- #p.valdagno
- #p.lucato

Per Sanmarco Informatica, invece, è presente:
- Alex Beggiato - System Architect Team Leader

#p.salvo si propone come #glossario("verbalizzante") dell'incontro. \
Si procede alla discussione in ordine dei punti all'#glossario("ordine del giorno").
#pb()

#ordine_del_giorno([
== Presentazione finale 
#p.lucato inizia presentando i passaggi necessari per installare l'#glossario("MVP"), descritti anche nel repository.
Dopo aver spiegato l'installazione si è dimostrato il raggiungimento di un livello di code coverage maggiore del 90% in entrambe le sezioni da testare (front-end e back-end), inoltre è stata dimostrata la possibilità di consultare il code coverage tramite action nel repository. \
Dopo la parte riguardante test e back-end si è passati alla parte front-end dimostrando il raggiungimento di tutti i requisiti specificati nel capitolato oltre a nuovi requisiti identificati durante lo sviluppo. \
Continuando è stato chiesto un chiarimento sul documento riguardante la lista dei bug, il quale non era stato prodotto perché consultabile tramite le issue di GitHub, modalità accettata dall'azienda. \
Infine Alex Beggiato ha posto domande al team sull'aspetto che ha provocato maggiore difficoltà per il team e sull'andamento generale del progetto. \
Alex Beggiato infine approva e accetta il risultato finale mostrato e consultabile tramite repository GitHub del team come MVP del progetto.

== Prossimi passi
Alex Beggiato chiede quali sono i prossimi passi per la chiusura del progetto. Vengono indicati i passaggi futuri come la revisione PB col #p.cardin
e in seguito quella con il #p.vardanega. 

== Varie ed eventuali
Non essendoci altri argomenti da discutere l'incontro è terminato alle 17:30. \
Il prossimo incontro verrà comunicato a seguito delle revisioni con i professori. \
])

= Decisioni
#decisioni((
  [2],[Revisione],[Candidarsi per revisione PB col #p.cardin],
)) 


= TODO
A seguito di questa riunione non è stata aperta alcuna issue che il team non avesse già aperto.

_Per il dettaglio delle decisioni si rimanda al punto dell'OdG_.


#v(3em)

Padova, 15 aprile 2025

\
#figure(
  [#table(
    columns: (auto, 1fr),
    stroke: none,
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Il #glossario("Verbalizzante"):\ #p.salvo],
    [Il #glossario("responsabile di Progetto"):\ #p.checchinato],
  )]
)

#v(2em)
#figure(
  [#grid(
    columns: (auto, 1fr),
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Per Sanmarco Informatica:\ Alex Beggiato \
    #place(center, image("/img/smi_sign.png", width: 120%))
    ],
  )]
)