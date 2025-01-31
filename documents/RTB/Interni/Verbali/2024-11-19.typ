#import "//templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 19/11/2024",
  subtitle: "Documento interno - verbale nr. 7",
  author: "Francesco Pozzobon",
  state: "Approvato",
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.0.3", "31-01-2025",  "Aggiunta termini glossario", p.scandaletti, p.pozzobon,
    "0.0.2", "24-11-2024",  "Rimozione punto OdG errato", p.pozzobon, p.salvo,
    "0.0.1", "21-11-2024",  "Prima stesura documento", p.pozzobon, p.salvo,
  )
)


_A seguito dell'#glossario("attività") #glossario("Diario di Bordo") svolta in aula nella mattinata di martedì 12/11/2024 e della riunione del 13/11/2024 si decide di convocare una call per discutere di quanto segue:_


= Ordine del Giorno
  
+ Suddivisione #glossario("attività")
+ Metodologia gestione del #glossario("progetto")
+ Nuovo #glossario("template") documentazione
+ Prossimo incontro con azienda
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Martedì 19/11/2024 - ore 15.15 \
  
*Luogo* Online - #glossario("Piattaforma") #glossario("Discord") \
  
*Destinatari* Tutto il gruppo \

= Verbale
 
L'incontro inizia, come da programma alle ore 15.15. Sono presenti tutti i componenti del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

#p.pozzobon si propone come #glossario("verbalizzante") dell’incontro. \
#p.lucato, in qualità di #glossario("responsabile di progetto"), prende la parola e si procede alla discussione in ordine dei punti all’#glossario("ordine del giorno").
#pb()


#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})


== Suddivisione attività
In riferimento alla suddivisione ruoli effettuata nel precedente incontro si organizza il lavoro come segue:
- *#glossario("Norme di Progetto")*: 
  - Punto di riferimento di ogni membro del team per favorire il lavoro asincrono sulla base di solidi principi di lavoro condivisi
  - stesura a cura del #glossario("responsabile di progetto") e dell'#glossario("amministratore")
- *#glossario("Piano di Progetto")*: 
  - documento contenente le previsioni del #glossario("progetto") in ottica di stato #glossario("progetto"), #glossario("task"), costi e ruoli con successiva #glossario("retrospettiva")
  - stesura a cura del #glossario("responsabile di progetto")
- *#glossario("Analisi dei Requisiti")*: 
  - documento contenente l'analisi dettagliata del #glossario("capitolato"), #glossario("attività") fondamentale precedente alla fase di codifica
  - stesura a cura dell'analista supportato, in questa fase, dal progettista e dal #glossario("programmatore")
- *Glossario*:
  - documento e pagina Web con la definizione dei termini usati nei documenti
  - il #glossario("verificatore") aggiunge mano a mano sul glossario le parole e, successivamente, saranno aggiunte le definizioni. _In questo #glossario("periodo") tale #glossario("attività") non è considerata prioritaria, è necessario solo tracciare le parole che richiedono definizione._
  - gestione automatizzata della sezione relativa del sito Web, a cura di #p.pesenato, progettista
  - i termini vengono di volta in volta inseriti dai redattori dei documenti

== Metodologia gestione del progetto
Il team decide, all'unanimità, di utilizzare *#glossario("Agile SCRUM")* per la gestione del #glossario("progetto"). Tale scelta è stata intrapresa, nonostante la possibilità che era stata sollevata da Alex Beggiato di Sanmarco Informatica, di utilizzare la metologia _Waterfall_ visto che le richieste del #glossario("progetto") sono tutte chiare fin da subito in quanto Agile consente di suddividere il lavoro in periodi con obiettivi definiti per ogni membro in ciascun *#glossario("periodo")*. \
Si concorda quindi di suddividere il #glossario("progetto") in #glossario("unità") definite *periodi*, e non sprint, in quanto il team si riserva la possibilità di concordare ad hoc la durata di ogni #glossario("periodo") in base alle esigenze. Rimanendo comunque tra una e tre settimane. \ La #glossario("repo"), attraverso la #glossario("funzionalità") "Milestones", viene organizzata di conseguenza creando la #glossario("Milestone") relativa a questa prima fase.

== Nuovo template documentazione
Gioele Scandaletti illustra il nuovo #glossario("template") per i documenti che consente, oltre a risparmiare circa 300 linee in ogni file #glossario("Typst"), un layout di tabella più semplice da leggere rispetto al precedente. \
Da questo momento sarà obbligatorio usare questo #glossario("template") in ogni documento redatto.

== Prossimo incontro con azienda
Si decide di fissare un incontro con l'azienda per settimana prossima per fare il punto della situazione ed un controllo nell'#glossario("Analisi dei Requisiti"). \
Il #glossario("responsabile di progetto"), #p.lucato, contatterà Alex Beggiato per chiedere la sua disponibilità.

== Varie ed eventuali
Francesco Pozzobon illustra le prove effettuate con #glossario("Grafana") per realizzare il cruscotto del #glossario("progetto"). In particolare l'integrazione con #glossario("Github"), con relativi filtri, e le molteplici possibilità di integrazione come #glossario("sorgente dati") consente di avere, in un unico posto, le relative infografiche sull'andamento del #glossario("progetto").

Non essendoci altri argomenti da discutere l’incontro del team Archi7echs è terminato alle 17:00. \
Seguirà convocazione via #glossario("Telegram") per il prossimo incontro. \



= Decisioni

#decisioni((
  [1],[Stesura #glossario("Piano di Progetto")],[A cura del #glossario("responsabile")],
  [1], [Stesura #glossario("Norme di Progetto")], [A cura del #glossario("responsabile") e dell'#glossario("amministratore")],
  [1], [Stesura #glossario("Analisi dei Requisiti")], [A cura dell'analista, del #glossario("programmatore") e del progettista],
  [1], [Glossario - aggiunta parole], [A cura dei revisori],
  [1], [Glossario - sezione nel sito web], [A cura di Giacomo Pesenato],
  [2], [Metodologia gestione #glossario("progetto")], [#glossario("Agile SCRUM") - con divisione in *periodi*],
  [3], [Documenti #glossario("Typst")], [Nuovo #glossario("template") attivo da utilizzare in ogni nuovo documento],
  [4], [Prossimo incontro con azienda],[Settimana prossima - chiedere ad Alex Beggiato disponibilità]
))


= TODO

#todo((

  (9,), ("Analista, Progettista, Programmatore*"), [#glossario("Analisi dei Requisiti"): introduzione],
  (10,), ("Analista, Progettista, Programmatore*"), [#glossario("Analisi dei Requisiti"): descrizione del prodotto],
  (11,), ("Analista, Progettista, Programmatore*"), [#glossario("Analisi dei Requisiti"): inizio casi d'uso],
  (12,), ("Analista, Progettista, Programmatore*"), [#glossario("Analisi dei Requisiti"): requisiti],
  (13,), ("Analista, Progettista, Programmatore*"), [#glossario("Analisi dei Requisiti"): inizio tracciamento dei requisiti],
  (14,), (p.lucato), [#glossario("Piano di Progetto"): stesura introduttiva],
  (15,), (p.lucato), [#glossario("Piano di Progetto"): analisi dei rischi],
  (16,), (p.lucato), [#glossario("Piano di Progetto"): stesura primo #glossario("periodo")],
  (17,), (p.pozzobon), [Redazione #glossario("verbale interno") 2024-11-19],
  (18,), ("-**"), [Prima stesura termini glossario],
  (19,), ("Responsabile, Amministratore*"), [#glossario("Norme di Progetto"): Introduzione],
  (20,), ("Responsabile, Amministratore*"), [#glossario("Norme di Progetto"): Scopo documento],
  (21,), ("Responsabile, Amministratore*"), [#glossario("Norme di Progetto"): Glossario],
  (22,), ("Responsabile, Amministratore*"), [#glossario("Norme di Progetto"): Riferimenti],
  (23,), ("Responsabile, Amministratore*"), [#glossario("Norme di Progetto"): Modelli di documento],
  (24,), ("Responsabile, Amministratore*"), [#glossario("Norme di Progetto"): Registro Modifiche],
  (25,), ("Responsabile, Amministratore*"), [#glossario("Norme di Progetto"): Versionamento],
  (26,), ("Responsabile, Amministratore*"), [#glossario("Norme di Progetto"): Verbali],
  (27,), ("Responsabile, Amministratore*"), [#glossario("Norme di Progetto"): #glossario("Verifica") documentazione],
  (28,), ("Responsabile, Amministratore*"), [#glossario("Norme di Progetto"): Gestione dell'assegnazione dei ruoli],
  (29,), ("Responsabile, Amministratore*"), [#glossario("Norme di Progetto"): Gestione board],
  (30,), ("Responsabile, Amministratore*"), [#glossario("Norme di Progetto"): #glossario("Processo") per la #glossario("verifica") dei documenti]
  
))

*\** In riferimento alle issues contrassegnate è compito degli incaricati suddividersi ed assegnarsi le #glossario("issue"). \
*\*\** Questa #glossario("issue") non prevede alcun assegnatario in quando per il suo completamento non è prevista scadenza e si occupano molteplici membri del team. Questa #glossario("issue") sarà etichiettata come chiusa quando l'automazione dell'aggiunta automatica dei termini nel sito è funzionante e i verificatori avranno aggiuto tutti i termini che richiedono definizione. 

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 19 novembre 2024

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ Francesco Pozzobon],
  [Il #glossario("responsabile di Progetto"):\ Leonardo Lucato],
)

