#let horizontalrule = [
  #line(start: (0%, 0%), end: (100%, 0%))
]

#set text(lang: "it", font:"New Computer Modern")
#set align(left)

#let title(t) = text(size: 22pt, top-edge: 0pt)[== #t]
#let subtitle(st) = text(size: 18pt, bottom-edge: 0pt)[#emph[#st]]

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
  #title[Verbale incontro 16/10/2024]
  
  #subtitle[Documento interno - verbale nr. 1]
  
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
      [#strong[Ultima Modifica:] 04/11/2024 16:30],
      [#strong[Stato:] Approvato],
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
        [1.5], [04/11/2024], [Aggiunta allegato a fine documento], [Gioele Scandaletti], [Gabriele Checchinato], [Team],
        [1.4], [04/11/2024], [Aggiunta sezione "Decisioni" e sistemazione tab. revisioni], [Francesco Pozzobon], [Gabriele Checchinato], [Team],
        [1.3], [29/10/2024], [Correzioni], [Gabriele Checchinato], [Leonardo Lucato], [Team],
        [1.2], [23/10/2024], [Riscrittura in typst], [Gioele Scandaletti], [Leonardo Lucato], [Team],
        [1.1], [18/10/2024], [Correzioni], [Francesco Pozzobon], [Leonardo Lucato], [Team],
        [1.0], [17/10/2024], [Prima stesura documento], [Francesco Pozzobon], [Leonardo Lucato], [Team],
    )
    <tab:my_label>
  ]
]

#pagebreak(weak: true)

#set enum(indent: 12pt)
#set list(indent: 12pt)
#set par(justify: true)

_A seguito dell’incontro informale avvenuto in aula martedì 15/10/2024, al termine della presentazione dei capitolati da parte delle aziende, è stato creato un gruppo Telegram per le comunicazioni rapide e si è deciso di programmare per il giorno successivo una videoconferenza per discutere quanto segue:_


= Ordine del Giorno <ordine-del-giorno>
  
+ Nomina responsabile di progetto - 1a fase
+ Scelta nome e logo del gruppo
+ Creazione email del gruppo e scelta degli strumenti per la gestione delle repository e canale di comunicazione ufficiale
+ Gestione documentale
+ Opinione sui capitolati proposti
+ Azioni da intraprendere
+ Varie ed eventuali

= Dettagli dell'incontro <dettagli-incontro>

#strong[Data e ora convocazione] Mercoledì 16/10/2024 - ore 17.15 \
  
#strong[Luogo] Online - Piattaforma Discord \
  
#strong[Destinatari] Tutto il gruppo \

= Allegati <allegati>

#link(<allegato1>)[#text(blue)[Allegato 1] _Bozza email Sanmarco Informatica_] \

= Verbale <verbale>
 
L'incontro inizia, come da programma, alle ore 17.15. Sono presenti tutti i componenti del team:
- Gabriele Checchinato
- Leonardo Lucato
- Giacomo Pesenato
- Francesco Pozzobon
- Giovanni Salvò
- Gioele Scandaletti
- Pietro Valdagno

Leonardo Lucato espone i punti da trattare e Francesco Pozzobon si propone come verbalizzante dell’incontro. \
Si procede alla discussione in ordine dei punti all’ordine del giorno.

#pagebreak()

#show heading.where(level: 2): set heading(numbering: "Punto 1 -", level:1 )
#show heading: text.with(size: 0.92em)

== Nomina responsabile di progetto - 1#super[a] fase <nomina>

Il gruppo, all’unanimità, decide di nominare Leonardo Lucato come responsabile di progetto per la prima fase di candidatura.

== Scelta nome e logo del gruppo

Vengono elencate le proposte di nome e logo raccolte tramite il gruppo Telegram.
Proposte di Nome:
  
+ SWE - IT associates
+ SWdEvelopers
+ Digital Architects
+ Architechs
+ Archi7echs

Il gruppo, all’unanimità *approva* la proposta num. 5, *Archi7echs*. \
Si stanno raccogliendo idee per il logo e si è approvata la proposta di crearne uno che includa sia un’immagine sia il nome del gruppo. \
Gioele Scandaletti si propone per realizzarlo in formato vettoriale da utilizzare per identificare il gruppo.

== Creazione email del gruppo e scelta degli strumenti per la gestione delle repository e canale di comunicazione ufficiale

All’unanimità si *approva*, a seguito della proposta di Leonardo Lucato, di utilizzare Google Gmail come servizio di posta elettronica del gruppo. Leonardo ha quindi attivato al momento il nuovo account comunicato al team le credenziali. \
_L’indirizzo email del gruppo è: archi7echs\@gmail.com_ \
All’unanimità si *approva*, dopo la proposta di Giacomo Pesenato, di utilizzare Github come strumento per la gestione della repository documentale e di attendere invece l’aggiudicazione dell’appalto per creare la repository per la gestione del codice in collaborazione con l’azienda. \
Si è scelto di utilizzare Discord come canale di comunicazione ufficiale per le riunioni del gruppo, mantenendo attivo anche il gruppo Telegram per le comunicazioni rapide.

== Gestione documentale

Le proposte per la scrittura dei documenti inerenti al progetto sono state:
  
+ Google Documenti
+ Microsoft 365
+ Overleaf - LaTeX
All’unanimità il gruppo approva di utilizzare Overleaf - LaTeX come strumento di scrittura online collaborativa. Francesco Pozzobon si propone per la preparazione di un template da utilizzare per tutti i documenti.

== Opinione sui capitolati proposti

Uno ad uno ogni componente del gruppo espone le proprie opinioni circa i capitolati proposti dalle aziende che vengono elencati di seguito:
  
+ Zucchetti S.p.A - Artificial QI
+ Vimar - GENIALE
+ Var Group S.p.A. - Automatizzare le routine digitale tramite l’intelligenza generativa
+ Synclab - Near You
+ Sanmarco Informatica - 3Dataviz
+ M31 - Sistema di gestione di un magazzino distribuito
+ ERGON - LLM: Assistente virtuale
+ Bluewind - Requirement Tracker Pug-in VS Code
+ Azzurrodigitale - BuddyBot

Ogni membro del gruppo, a rotazione, ha espresso la propria opinione sui vari capitolati sottolineando 3 preferenze. Il team decide quindi di approfondire, inizialmente, i seguenti 2 progetti:
#[#set list(indent: 0pt)

- *3Dataviz* di _Sanmarco Informatica_, per l’interessante proposta nella gestione dei dati
- *BuddyBot* di _Azzurrodigitale_, per il vasto campo applicativo dell’applicazione e per l’ottima impressione avuta dall’azienda durante la presentazione
]

== Azioni da intraprendere

#show link: set text(blue)
E’ stato deciso di approfondire il modo in cui Sanmarco Informatica prevede di impostare la fase iniziale del progetto, se prevedono sessioni di affiancamento per l’analisi avanzata del capitolato, un esempio di mole di dati che il sistema dovrà gestire ed, infine, se, durante lo svolgimento del progetto, verranno utilizzate metodologie specifiche (esempio _Agile-SCRUM_). Per fare ciò si è deciso di contattare l’azienda via mail per porre le domande ed in merito è stata preparata una #link(<allegato1>, underline[bozza di messaggio]) da inviare il giorno seguente. Si valuterà successivamente alla risposta se chiedere una call aggiuntiva. Per Azzurrodigitale invece si è pensato di chiedere direttamente una call per una prima analisi più approfondita del capitolato ma, in merito, ci si aggiornerà per le vie brevi (_gruppo Telegram_).

== Varie ed eventuali

Non essendoci altri argomenti da discutere l’incontro del team Archi7echs è terminato alle 18:35. \
Il prossimo incontro verrà fissato, in base alle esigenze, nei prossimi giorni. La convocazione verrà fatta nel Gruppo Telegram. \

`Il presente verbale verrà approvato da tutto il team nella prossima seduta`.

= Decisioni

#table(
  columns: (auto, 1.5fr, 1fr),
  align: (col, row) => (center, center, center).at(col),
  inset: 6pt,
  table.header([*Pt.*], [*Argomento*], [*Decisione*]),
    [2],[Nome del gruppo],[Archi7echs],
    [3],[Email del gruppo],[archi7echs\@gmail.com],
    [3],[Repository documenti] ,[Github],
    [3],[Canale di comunicazione #underline[ufficiale]] ,[Discord],
    [3],[Canale di comunicazone #underline[informale]] ,[Telegram],
    [4],[Gestione collaborativa documentazione] ,[Overleaf - LaTeX],
    [5],[Capitolati da approfondire] ,[C5 - SanMarco Informatica \ C9 -  AzzurroDigitale],
    [6],[Azioni da intraprendere] ,[Email con domande a Sanmarco Informatica]
)

_Per il dettaglio delle decisioni si rimanda al punto dell'OdG._

#v(3em)

Padova, 18 ottobre 2024 \
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

<allegato1>

//template per allegati
#import "//templates/allegato.typ": *

//applicare le modifiche per la configurazione qua sotto
  
#show: doc => conf(
  title: "Bozza email per Sanmarco Informatica",
  id_allegato: 1,
  id_verbale: 1,
  date: "16/10/2024",
  doc
)

Buonasera, \
siamo il gruppo numero 13, Archi7echs, del progetto di SWE, corso del
prof. Tullio Vardanega e del prof. Riccardo Cardin dell’Università degli
Studi di Padova.

Con la presente siamo a dimostrare il nostro interesse per il capitolato
da voi proposto e vorremmo porvi alcune domande che riportiamo di
seguito:

Com’è prevista l’impostazione della fase iniziale del progetto? Sono
previste sessioni di affiancamento per l’analisi avanzata del capitolato? \
Potrebbero essere forniti esempi più concreti per quanto riguarda la
mole di dati che il prodotto finale dovrà supportare? \
Durante lo svolgimento del progetto, verranno utilizzate metodologie
specifiche (agile-scrum ad esempio)?

Siamo disponibili, in base alla vostre preferenze, anche ad eventuali
riunioni per trattare gli argomenti sopracitati. \
Per qualsiasi comunicazione, utilizzeremo questa email creata
appositamente dal gruppo (archi7echs\@gmail.com).

Restiamo in attesa di un vostro gentile riscontro. \

#firma

#pagebreak(weak: true)
