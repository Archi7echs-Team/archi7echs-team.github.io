#let horizontalrule = [
  #line(start: (0%, 0%), end: (100%, 0%))
]

#set text(lang: "it", font:"New Computer Modern")
#set align(left)

#let title(t) = text(size: 22pt, top-edge: 0pt)[== #t]
#let subtitle(st) = text(size: 18pt, bottom-edge: 0pt)[#emph[#st]]

#show link: underline

#set text(size: 12pt)
#page(background: align(bottom + right, image("//img/logounipd.png", width: 70%)))[
  #set align(center)
  
  #figure(image(width: 50%, "//img/logo.png"))
  
  #v(2em)
  
  #text(size: 16pt)[Archi7echs - archi7echs\@gmail.com] \
  
  Progetto di #strong[Ingegneria del Software] \
  A.A. 2024/2025 \

  #align(horizon)[
  #horizontalrule
  #v(12pt)
  #title[Verbale incontro 13/11/2024]
  
  #subtitle[Documento interno - verbale nr. 6]
  
  #v(12pt)
  #horizontalrule
  ]
  #figure(
    placement:bottom,
    [#table(
      columns: (auto, 1fr),
      stroke: none,
      align: (col, row) => (left, right,).at(col),
      inset: 6pt,
      [#strong[Autore:] Francesco Pozzobon],
      [#strong[Tipologia Documento:] Interno],
      [#strong[Ultima Modifica:] 18/11/2024 10:10],
      [#strong[Stato:] Bozza],
    )]
  )
  #pagebreak(weak: true)
]

#set page(numbering: "1")
#counter(page).update(1)


#set align(left)

== Tabella delle Revisioni <tabella-delle-revisioni>
#v(1em)
#align(center)[
  #figure[
    #table(
        columns: 6,
        align: (col, row) => (center, center, center, center, center, center,).at(col),
        inset: 6pt,
        table.header([*Rev.*], [*Data*], [*Descrizione*], [*Elaborazione*], [*Verifica*], [*Approvazione*]),
        [1.0.0], [14/11/2024], [Prima stesura documento], [Francesco Pozzobon], [], [],
    )
    <tab:my_label>
  ]
]

#pagebreak(weak: true)

#set enum(indent: 12pt)
#set list(indent: 12pt)
#set par(justify: true)

_A seguito dell'attività Diario di Bordo svolta in aula nella mattinata di martedì 12/11/2024 si decide di convocare una call per discutere di quanto segue:_


= Ordine del Giorno <ordine-del-giorno>
  
+ Definizione norme di progetto
+ Prossime azioni da intraprendere
+ Presentazione Github Actions
+ Suddivisione ruoli
+ Varie ed eventuali

= Dettagli dell'incontro <dettagli-incontro>

#strong[Data e ora convocazione] Mercoledì 13/11/2024 - ore 15.00 \
  
#strong[Luogo] Online - Piattaforma Discord \
  
#strong[Destinatari] Tutto il gruppo \

= Verbale <verbale>
 
L'incontro inizia alle ore 15.10. Sono presenti tutti i componenti del team:
- Gabriele Checchinato
- Leonardo Lucato
- Giacomo Pesenato
- Francesco Pozzobon
- Giovanni Salvò
- Gioele Scandaletti
- Pietro Valdagno

Francesco Pozzobon si propone come verbalizzante dell’incontro. \
Si procede alla discussione in ordine dei punti all’ordine del giorno.

#pagebreak()

#show heading.where(level: 2): set heading(numbering: "Punto 1 -", level:1 )
#show heading: text.with(size: 0.92em)

== Definizione norme di progetto
Il tema principale della riunione è stata la definizione delle principali norme di progetto volte alla definizione del _way of working_. Il gruppo, nell'obiettivo di rendere più efficiente la scrittura asincrona della documentazione, decide quanto segue:
- ogni documento dovrà essere redatto utilizzando gli appositi Template
- i verbali conterranno, oltre alla sezione 'Decisioni' anche la sezione 'TODO' contenente i task 
- ogni modifica a documenti già esistenti deve essere fatta in locale, con precedente pull dalla repo, successiva commit (con riferimento allla issue) e push in un apposito branch per consentire la verifica e l'approvazione del documento
- ogni task avrà una Github Issue associata per consentire il tracciamento delle decisioni, dei compiti e lo storico delle attività associate ad un ticket. E' quindi di fondamentale importanza riportare in ogni commit l'ID della issue per avere a disposizione, nella piattaforma Github, tutti gli eventi correlati
- è compito di ogni membro del team aggiornare lo stato delle issue a lui associate nella project board di Github per consentire al responsabile di progetto e a tutto il gruppo di avere un'infografica con l'attuale situzione dei lavori

Giacomo Pesenato propone di creare le Milestones per le 3 rispettiva fasi del progetto:
- Candidatura _(già ultimata)_
- RTB
- PB
Per la gestione delle issue invece propone di creare le Label da associare ad ognuna:
- A.d.R per l'Analisi dei Requisiti
- Agg_Sito per la gestione del sito web del team
- Candidatura per la prima fase del progetto
- N.d.P per le Norme di Progetto
- V.E. per i verbali esterni
- V.I. per i verbali interni

Il team, all'unaminità, approva.

== Prossime azioni da intraprendere
Questa fase di progetto, denominata Require and Tecnology Baseline (RTB) prevede la definizione e relativa stesura dei seguenti documenti:
- Documentazione Interna:
  - Norme di progetto
- Documentazione Esterna:
  - Piano di Progetto
  - Piano di Qualifica
  - Glossario
  - Analisi del Requisiti

Si decide di procedere con l'inizio della stesura delle *Norme di Progetto* e dell' *Analisi dei Requisiti* documento che sarà oggetto di revisione nel corso della prossima call con l'azienda.

== Presentazione Github Actions
Gioele Scandaletti illustra al team le Github Actions ultimate che consentono sia la compilazione automatica dei file redatti con Typst che la pubblicazione dei documenti nel #link("https://archi7echs-team.github.io/")[#text(blue)[sito web del gruppo]]\
Si decide si spostare la repo contenente la documentazione nella repo del sito in modo da aver entrambe le cose nello stesso posto.

== Suddivisione ruoli
#table(
  columns: (1fr, 1fr),
  align: (col, row) => (center, center).at(col),
  inset: 6pt,
  table.header([*Ruolo*], [*Membri*]),
    [Responsabile],[Leonardo Lucato],
    [Amministratore],[Francesco Pozzobon],
    [Analista],[Pietro Valdagno],
    [Programmatore],[Gioele Scandaletti],
    [Verificatore],[ Gabriele Checchinato\ Giovanni Salvò],
    [Progettista], [Giacomo Pesenato]
)

La suddivisione dei ruoli è stata effettuata in base a quanto riportato nel documento "Preventivo" pubblicato con la candidatura per la gara d'appalto. Dunque, viste le esigenze del gruppo, si è deciso assegnare i ruoli in base a quanto fatto fino a questo periodo, garantendo poi una rotazione equa per rispettare la quota finale di ore totali.
Visto che la principale attività nelle prime fasi di lavoro è la redazione dei documenti, è stato deciso di assegnare il ruolo di verificatore a due componenti del team.

== Varie ed eventuali
Per allinearsi agli standard visti a lezione si è deciso, d'ora in poi, di utilizzare il versionamento dei documenti tramite identificativo x.y.z dove:
- x: major version
- y: minor release
- z: correzioni 

Per i documenti più corposi: \
- Alla prima stesura di un documento viene applicata la versione 0.1.0, procedendo in modo incrementale, aumentando il valore _z_, in modo parallelo alle commit.
- Ogni correzione che viene applicata da un revisione richiede un incremento del valore di tipo _z_. 
- L'incremento del valore _x_ qual'ora la modifica porti il documento ad una versione completa.  

Per i verbali: \
- Alla prima stesura il verbale assume la versione 1.0.0
- Sarà cura del revisiore definire, in fase di correzione, il tipo di modifica (se minor o correzione) ed, in caso di richiesta di correzioni al redatore del documento, dovrà indicare nel messaggio della pull request il nuovo numero di versione da assegnare

Non essendoci altri argomenti da discutere l’incontro del team Archi7echs è terminato alle 17:00. \
Seguirà convocazione nel gruppo Telegram per il prossimo incontro del gruppo. \

= Decisioni

#table(
  columns: (auto, 1fr, 1.5fr),
  align: (col, row) => (center, center, center).at(col),
  inset: 6pt,
  table.header([*Pt.*], [*Argomento*], [*Decisione*]),
    [1],[Redazione documenti],[Template disponibili nella repo],
    [1],[Verbali],[Aggiunta sezione TODO],
    [1],[Redazione documenti],[Effettuata in locale con sincronizzazione commit nella la repo],
    [1],[Gestione TASK],[Github Issue - indicare nelle commit il relativo numero di issue per storico attività],
    [1],[Project Board],[Tenere aggiornato lo stato delle issue nell'apposita sezione Github],
    [1],[Gestione repo],[Creazione Milestones per rispettive fasi e Label per le issue],
    [2],[Prossime azioni],[Redazione Norme di Progetto e Analisi dei Requisiti ],
    [3], [Repository], [Migrazione repository documentale alla repository del sito],
    [Varie], [Storico revisioni], [Indicatore x.y.z]

)

= TODO

#table(
  columns: (auto, 0.8fr, 1.8fr),
  align: (col, row) => (center, center, center).at(col),
  inset: 6pt,
  table.header([*Rif. Issue*], [*Assegnatario*], [*TODO*]),
    [\#4],[Giacomo Pesenato \ Gioele Scandaletti],[Aggiornamento sito e spostamento della repository docs in quella della sito],
    [\#7], [Francesco Pozzobon], [Redazione verbale interno 2024-11-13], 
    
)

_Per il dettaglio delle decisioni si rimanda al punto dell'OdG._

#v(3em)

Padova, 13 novembre 2024 \
\
#figure(
  [#table(
    columns: (auto, 1fr),
    stroke: none,
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Il Verbalizzante:\ Francesco Pozzobon],
    [Il responsabile di Progetto:\ Leonardo Lucato],
  )]
)

#pagebreak(weak: true)