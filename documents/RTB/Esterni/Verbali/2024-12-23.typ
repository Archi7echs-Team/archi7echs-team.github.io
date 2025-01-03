#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 23/12/2024",
  subtitle: "Call con Sanmarco Informatica - verbale esterno nr. 6",
  author: "Francesco Pozzobon",
  state: "Approvato",
  intern: false,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.1", "03-01-2025",  "Fix - aggiunta rif issue", p.pozzobon, p.valdagno,
    "0.1.0", "31-12-2024",  "Prima stesura documento", p.pozzobon, p.pesenato,
  )
)

_A seguito del lavoro svolto da parte del team durante il terzo periodo e dell'impegno preso con l'azienda di aggiornarsi una volta ogni 2/3 settimane si decide, una volta contattato Alex Beggiato (System Architect Team Leader di Sanmarco Informatica), di convocare una call con il seguente ordine del giorno:_


= Ordine del Giorno
  
+ Revisione Stato Avanzamento Lavori (SAL)
+ Domande e chiarimenti
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Lunedì 23/12/2024 - ore 16.30 \
  
*Luogo* Online - Piattaforma Google Meet  \
  
*Destinatari* Azienda Sanmarco Informatica e tutti i componenti del gruppo Archi7echs \

= Verbale
 
L'incontro inizia, come da programma alle ore 16.30. Sono presenti i seguenti componenti del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

Per Sanmarco Informatica, invece, è presente:
- Alex Beggiato - System Architect Team Leader

#p.pozzobon si propone come verbalizzante dell’incontro. \
Si procede alla discussione in ordine dei punti all’ordine del giorno.
#pb()


#ordine_del_giorno([
== Revisione #glossario("SAL") con Sanmarco Informatica
Pietro Valdagno, in qualità di responsabile di progetto, apre la riunione con un riassunto del lavoro del team durante il terzo periodo. \
Gli amministratori del periodo, #p.checchinato e #p.pozzobon illustrano il documento #glossario("NdP") aggiornato, soffermandosi sui punti che sono stati aggiunti. \
#p.lucato illustra successivamente i progressi dell'#glossario("AdR"), documento su cui ha lavorato insieme a #p.pesenato. Vengono letti tutti gli #glossario("UC"), sia i nuovi che quelli già esistenti che sono stati modificati e migliorati, con successiva opinione favorevole di Alex Beggiato. Della medesima sezione vengono illustrati e discussi gli #glossario("UC") creati come opzionali e non contenuti nelle specifiche di progetto, frutto del lavoro di studio del capitolato. Alex Beggiato approva questi ultimi, confermato l'etichettatura come Opzionali, in quanto appunto, come precedentemente indicato, sono extra-capitolato. Vengono poi giustificate, mediante apposita sezione del documento, le scelte tecnologiche effettuate dal gruppo a seguito del lavoro di studio dei #glossario("POC") che è stato effettuato. \
Viene infine presentato una prima bozza dell'interfaccia utente della #glossario("web app"), con relative sezioni di tool e strumenti di visualizzazione.

== Domande e chiarimenti
Viene posta da #p.lucato in merito alle sorgenti dati, ovvero se l'utente deve selezionare la sorgente da una lista proposta oppure inserire lui stesso la sorgente dati. Alex Beggiato conferma che le sorgenti dati devono essere proposte dall'applicazione stessa, non è quindi necessario che l'utente sia in grado di personalizzarle. 

== Varie ed eventuali
Non essendoci altri argomenti da discutere l’incontro è terminato alle 17:15. \
Viene indicato come prossimo #glossario("SAL") il giorno 10/01/2025 con orario da determinare successivamente. \
])

= Decisioni
A seguito di questa riunione, puramente a scopo #glossario("SAL"), non è stata presa alcuna decisione rilevante.

/*
#decisioni((
  [1],[Documenti],[Continuare stesura delle sezioni mancanti]
)) 
*/

= TODO
#todo((
  (121,), (p.lucato), [AdR - sistemazione UC e inserimento tabelle riferimenti]
))


#v(3em)

Padova, 23 dicembre 2024

\
#figure(
  [#table(
    columns: (auto, 1fr),
    stroke: none,
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Il Verbalizzante:\ #p.pozzobon],
    [Il responsabile di Progetto:\ #p.valdagno],
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

