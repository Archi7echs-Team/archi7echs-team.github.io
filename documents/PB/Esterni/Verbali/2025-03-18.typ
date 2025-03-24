#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 18/03/2025",
  subtitle: "Call con Sanmarco Informatica - verbale esterno nr. 10",
  author: p.pesenato,
  state: "",
  intern: false,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "19-03-2025",  "Prima stesura documento", p.pesenato, (p.salvo, p.valdagno),
  )
)

_A seguito del lavoro svolto da parte del team durante l'ottavo #glossario("periodo") e dell'impegno preso con l'azienda di aggiornarsi una volta ogni 2 settimane si decide, una volta contattato Alex Beggiato (System Architect Team Leader di Sanmarco Informatica), di convocare una call con il seguente #glossario("ordine del giorno"):_


= Ordine del Giorno
  
+ Informazioni riguardo il lavoro svolto durante l'ultimo periodo
+ Prossimi passi
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Martedì 18/03/2025 - ore 12.00 \
  
*Luogo* Online - #glossario("Piattaforma") Google Meet  \
  
*Destinatari* Azienda Sanmarco Informatica e tutti i componenti del gruppo Archi7echs \

= Verbale
 
L'incontro inizia, come da programma alle ore 12.00. Sono presenti i seguenti membri del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.scandaletti

Per Sanmarco Informatica, invece, è presente:
- Alex Beggiato - System Architect Team Leader

#p.pesenato si propone come #glossario("verbalizzante") dell’incontro. \
Si procede alla discussione in ordine dei punti all’#glossario("ordine del giorno").
#pb()

#ordine_del_giorno([
== Informazioni riguardo il lavoro svolto durante l'ultimo periodo
#p.lucato introduce ad Alex Beggiato il lavoro svolto durante l'ultimo periodo, mostrando come sia stata suddivisa l'attività tra frontend e backend.
Lascia poi la parola a #p.checchinato, che spiega la gestione della parte frontend, evidenziando l'utilizzo di Svelte-Tweakpane-UI per la creazione di un'interfaccia grafica dedicata alla visualizzazione dei dati in partenza. Mostra inoltre le funzionalità implementate, come Zoom In, Zoom Out e l'interazione con le barre del grafico. \
Successivamente, #p.lucato illustra la parte backend, descrivendo i pattern utilizzati e la struttura adottata. Presenta i servizi implementati fino a quel momento, corredandoli di test. \
A questo punto, Alex Beggiato interviene con una domanda:
"Non sarebbe preferibile restituire un'interfaccia invece di una classe? È buona pratica fornire sempre un tipo di ritorno ben definito, rappresentato da un'interfaccia. In questo modo si può cambiare l'implementazione senza dover cambiare il codice che la chiama."
Il team prende atto della domanda e si impegna a valutare la proposta.

== Prossimi passi
Per quanto riguarda il backend i prossimi passi saranno implementare i test per i servizi e controller del database, code coverage ed i test di mutazione. \
Per quanto riguarda il frontend continuare con i requisiti specificati nell'AdR e implementare i test di unità. \

== Varie ed eventuali
Una volta terminata la discussione, si è chiesto ad Alex Beggiato di programmare le riunioni non più a distanza di due settimane ma di una a settimana in quanto i periodi sono stati accorciati da due ad una settimana. Alex Beggiato accetta.
Non essendoci altri argomenti da discutere l’incontro è terminato alle 12:35. \
Il prossimo incontro #glossario("SAL") è stato programmato per il giorno 27/03/2025 alle ore 16:00. \
])

= Decisioni

#decisioni((
  [1],[Backend],[Implementare i test per i servizi e controller del database, code coverage ed i test di mutazione],
  [2],[Frontend],[Continuare con i requisiti specificati nell'AdR e implementare i test di unità],
  [3],[SAL],[Programmare le riunioni con Sanmarco Informatica una volta a settimana],
)) 


= TODO
A seguito di questa riunione non è stata aperta alcuna issue che il team non avesse già aperto.

_Per il dettaglio delle decisioni si rimanda al punto dell’OdG_.


#v(3em)

Padova, 19 marzo 2025

\
#figure(
  [#table(
    columns: (auto, 1fr),
    stroke: none,
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Il #glossario("Verbalizzante"):\ #p.pesenato],
    [Il #glossario("responsabile di Progetto"):\ #p.valdagno],
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
