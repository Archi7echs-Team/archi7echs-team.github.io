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
  #title[Verbale incontro 04/11/2024]
  
  #subtitle[Documento interno - verbale nr. 5]
  
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
      [#strong[Ultima Modifica:] 04/11/2024 18:00],
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
        [1.0], [04/11/2024], [Prima stesura documento], [Francesco Pozzobon], [Gabriele Checchinato\ Giovanni Salvò], [Team],
    )
    <tab:my_label>
  ]
]

#pagebreak(weak: true)

#set align(left)

#set par(justify: true)

_A seguito dell'analisi del lavoro del gruppo, pubblicata dal committente in data 03/11/2024, e commentata nella lezione del 04/11/2024 si è deciso, al termine di un incontro informale avvenuto al termine della lezone, di convocare una riunione del gruppo con il seguente ordine del giorno:_

= Ordine del Giorno <ordine-del-giorno>

+ Revisione verbali
+ Preventivo e lettera di presentazione - osservazioni del committente
+ Gestione repo e sito documentazione
+ Varie ed eventuali

= Dettagli dell'incontro <dettagli-incontro>

#strong[Data e ora convocazione] Lunedì 04/11/2024 - ore 15.00 \
  
#strong[Luogo] Online - Piattaforma Discord \
  
#strong[Destinatari] Tutto il gruppo \

= Verbale <verbale>
#set list(indent: 12pt) 

L'incontro inizia, come da programma, alle ore 15.00. Sono presenti tutti i componenti del team:
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
#set enum(indent: 12pt)
#set list(indent: 12pt)

== Revisione verbali<revverbali>

Rilette le osservazioni poste dal committente in merito ai verbali è stato deciso di aggiungere, ad ogni documento interno, una sezione 'Decisioni' con relativa tabella contenente tutte le decisioni prese e relativo punto dell'ordine del giorno. Per i verbali esterni, invece, essendo documenti riepilogativi con le risposte date dalle aziende in merito alle domande si è deciso di inserire una sezione 'Conclusioni'. Visto che quest'ultima contiene il pensiero del gruppo circa l'incontro, si è deciso di non inviare all'azienda il documento aggiornato per approvazione, in quanto il contenuto che li riguarda non ha subito modifiche.\
Francesco Pozzobon si impegna ad aggiornare i verbali interni con le decisioni mentre il team, in maniera sincrona, ragiona sulle conclusioni dei verbali interni.\
In merito alla gestione delle revisioni, mancante in alcuni punti in quanto si pensava che bastasse revisionare una versione successiva per dare per buona anche una precedenente, si è deciso di completare la tabella nei documenti con tale problematica.\
Per rendere più fruibile la visualizzazione degli allegati si è deciso di inserirli a fine documento, senza caricarli separatamente con link nel verbale. Gioele Scandaletti si propone per effettuare tali modifiche.

== Preventivo e lettera di presentazione - osservazioni del committente<preventivo>

Anche per questo punto sono state rilette le osservazioni poste e si è deciso di procedere nelle seguenti modalità:
- aggiunta, nella lettera di presentazione, delle motivazioni della scelta del capitolato
- giustificazione delle suddivisioni orarie per ruolo ed inserimento dei criteri di rotazione all'interno del team
- aggiunta giustificazione data stima consegna

Su proposta di Giacomo Pesenato è stato deciso di inserire nel preventivo un grafico a torta che rappresenti, in modo visuale, la suddivisione delle ore.

La discussione si è principalmente concentrata sulla gestione della rotazione delle ore in quanto, al momento, si ritiene essere prematuro assegnare compiti a ciascun membro del team con relative ore. Il gruppo concorda sul fatto di iniziare il progetto assegnando i ruoli in base alle esigenze di ognuno: questo per garantire un punto d'inizio come "studio" del ruolo assegnato. Nella seconda fase, invece, i ruoli verranno attribuiti in modo equo in base alle esigenze del progetto. Il requisito di tale rotazione rimane il soddisfacimento delle ore individuali per ogni ruolo con relativi cambi, per permettere ad ogni membro lo svolgimento di un numero coerente di ore. Il tempo di rotazione sarà quindi variabile.

Il team procede a rendere effettive tali modifiche in modalià sincrona.   

== Gestione repo e sito documentazione<repo>

Ai fini della candidatura è stato deciso di fornire al committente il link alla page /docs automatica della repo Github. Il team si prefissa di organizzare, per la fase successiva, un'unica modalità sincronizzata tra sito principale, precedentemente realizzato da Gioele Scandaletti, e i documenti caricati progressivamente.

== Varie ed eventuali<varie>

Non essendoci altri argomenti da discutere l’incontro del team Archi7echs è terminato alle 17:50.

`Il presente verbale è stato approvato da tutto il team nella corrente seduta in quanto redatto in contemporanea alla riunione`.

= Decisioni

#table(
  columns: (auto, 1.5fr, 1fr),
  align: (col, row) => (center, center, center).at(col),
  inset: 6pt,
  table.header([*Pt.*], [*Argomento*], [*Decisione*]),
    [1],[Verbali interni],[Aggiunta sezione 'Decisioni' con tabella riepilogativa],
    [1],[Verbali esterni], [Aggiunta sezione 'Conclusioni'],
    [1],[Verbali], [Aggiunta allegato a fine verbale],
    [1],[Gestione revisione], [Correzione tabella con revisioni],
    [2],[Lettera di presentazione], [Aggiunta giustificazione scelta],
    [2],[Preventivo], [Giustificazione ore/ruolo, aggiunta criteri rotazione e grafico a torta con le ore],
    [2],[Preventivo], [Giustificazione data stima consegna],
    [2],[Suddivisione ore], [Prima fase in base alle preferenze di ogni membro. \ Seconda fase in base alle esigenze del progetto],
    [3],[Sito web], [Uniformare sito creato con documenti caricati. \ Creazione rispettive automazioni ],
)
  
_Per il dettaglio delle decisioni si rimanda al punto dell'OdG._
    
#v(2em)
Padova, 4 novembre 2024 \
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