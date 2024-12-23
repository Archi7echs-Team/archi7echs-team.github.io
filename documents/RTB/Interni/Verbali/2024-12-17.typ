#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 10/12/2024",
  subtitle: "Documento interno - verbale nr. 12",
  author: p.checchinato,
  state: "Approvato",
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "19-12-2024",  "Prima stesura documento", p.checchinato, p.scandaletti,
  )
)

_A seguito del raggiungimento della metà del terzo periodo e del diario di bordo che si terrà in data 18/12/2024, si decide di convocare una call per discutere di quanto segue:_

= Ordine del Giorno
+ Aggiornamento del sistema di versionamento
+ Introduzione dell’estensione Spell Checker
+ Scelta tecnologie per lo sviluppo del progetto
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* martedì 17/12/2024 - ore 15.00 \

*Luogo* Online - Piattaforma Discord \

*Destinatari* Tutto il gruppo \

= Verbale

L'incontro inizia, come da programma alle ore 15.00. Sono presenti i seguenti componenti del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

#p.checchinato si propone come verbalizzante dell’incontro.\
#p.valdagno, in qualità di responsabile di progetto, prende la parola e si procede alla discussione in ordine dei punti all’ordine del giorno.

#pb()

#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})

== Aggiornamento del sistema di versionamento
Durante la riunione, #p.pesenato propone una nuova modalità di versionamento per i documenti e i verbali, accettata all’unanimità dal team per la sua maggiore aderenza alle esigenze pratiche del progetto. La versione seguirà sempre il formato *x.y.z* ma con dei piccoli cambiamenti:
- *x* (major version) viene incrementata esclusivamente in corrispondenza delle consegne ufficiali delle fasi #glossario("RTB") o #glossario("PB").
- *y* (minor version) viene aumentata quando vengono aggiunti nuovi contenuti significativi, come paragrafi o sezioni.
- *z* (patch version) viene incrementata per correggere o modificare contenuti esistenti.

Sia i documenti che i verbali inizieranno con la versione *0.1.0* alla loro prima stesura. Le eventuali modifiche successive saranno gestite tramite pull request, con il  #glossario("revisore") o il #glossario("responsabile") che eventualmente specificherà nel messaggio della PR le correzioni da effettuare.

== Introduzione dell’estensione Spell Checker
#p.pozzobon propone l’introduzione dell’estensione Spell Checker per Visual Studio Code, in modo da ridurre gli errori di battitura e di grammatica nei documenti. La proposta viene accettata all’unanimità e si decide di procedere con l'installazione dell'estensione.

== Scelta tecnologie per lo sviluppo del progetto
Durante la riunione, il team ha discusso delle tecnologie da adottare per lo sviluppo del progetto, basandosi su analisi svolte in precedenza. Dopo aver considerato i risultati ottenuti dai simil-#glossario("PoC") realizzati in momenti precedenti, è stato deciso di utilizzare *Svelte* e *Threelte* (un’integrazione di Three.js per Svelte). La proposta, portata avanti da #p.pesenato, ha convinto il team per la semplicità nello sviluppo e nell’apprendimento, fattori ritenuti essenziali per il successo del progetto.

== Varie ed eventuali
Non essendoci altri argomenti da discutere l’incontro del team Archi7echs è terminato alle 16:00. \
Si convoca il prossimo incontro per lunedì 23/12/2024 alle ore 15:00 per discutere di quanto svolto durante la settimana. \


= Decisioni
#decisioni((
  [1],[Sistema di versionamento],[Si adotta una nuova modalità di versionamento per documenti e verbali, con incrementi di versione secondo le regole stabilite.],
  [2],[Estensione Spell Checker],[Si procede con l'installazione dell'estensione Spell Checker per Visual Studio Code per ridurre gli errori di battitura e di grammatica nei documenti.],
  [3],[Scelta tecnologie],[Si adottano le tecnologie Svelte e Threelte per lo sviluppo del #glossario("PoC").],

))
#pb();

= TODO

#todo((
  (92,), (p.pozzobon), [Norme di Progetto: Processi di Supporto - Abbreviazioni],
  (93,), (p.pesenato), [Analisi dei Requisiti: sezione tecnologie],
  (94,), (p.lucato), [Analisi dei Requisiti: riscrittura UC5 diviso in visualizzazione hover e visualizzazione click],
  (95,), (p.lucato), [Analisi dei Requisiti: aggiunta UC visualizzazione dati maggiori/minori della media],
  (96,), ("Analista"), [Analisi dei Requisiti: continuazione gestione degli errori],
  (99,), (p.checchinato), [Redazione verbale interno 2024-12-17],
  (100,), (p.pesenato), [Fix versionamento Analisi dei Requisiti],
  (101,), (p.pozzobon), [Fix versionamento Norme di Progetto],
  (102,), (p.valdagno), [Fix versionamento Piano di Progetto],
  (103,), (p.valdagno), [Piano di Qualifica: Introduzione],
  (106,), (p.scandaletti),[Fix aggiunta termini e definizioni al glossario]
))

_Per il dettaglio delle decisioni si rimanda al punto dell'OdG._

#v(3em)

Padova, 17 dicembre 2024

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il Verbalizzante:\ #p.checchinato],
  [Il responsabile di Progetto:\ #p.valdagno],
)

