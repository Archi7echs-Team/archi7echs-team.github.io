#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 25/11/2024",
  subtitle: "Documento interno - verbale nr. 8",
  author: "Francesco Pozzobon",
  state: "Approvato",
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.0.1", "26-11-2024",  "Prima stesura documento", p.pozzobon, p.valdagno,
  )
)

_E' stata convocata, attraverso il gruppo Telegram, una riunione online del Team per il pomeriggio di lunedì 25/11/2024, per discutere di quanto segue:_


= Ordine del Giorno
  
+ Preparazione #glossario("SAL") con Sanmarco Informatica
+ Gestione tabella delle revisioni
+ Uniformare stile di scrittura - nome file
+ Protezione #glossario("branch") sources
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Lunedì 25/11/2024 - ore 16.00 \
  
*Luogo* Online - Piattaforma Discord \
  
*Destinatari* Tutto il gruppo \

= Verbale
 
L'incontro inizia, come da programma alle ore 16.10. Sono presenti seguenti i componenti del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti

#p.valdagno è assente giustificato in quanto, per garantire la presenza al Diario di Bordo del 25/11/2024, ha spostato il turno lavorativo al pomeriggio.

#p.pozzobon si propone come verbalizzante dell’incontro. \
#p.lucato, in qualità di responsabile di progetto, prende la parola e si procede alla discussione in ordine dei punti all’ordine del giorno.
#pb()


#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})


== Preparazione #glossario("SAL") con Sanmarco Informatica
Durante l'incontro previsto per domani con Alex Beggiato, si relazionerà quanto fatto nelle due settimane trascorse nel precedente incontro. In particolare:
- decisione del team di impostare il progetto secondo #glossario("Agile SCRUM")
- #glossario("AdR"): oltre ad un controllo del lavoro, #p.pesenato chiederà dettagli circa la Gestione degli Errori, sezione appartenente a questo documento
- #glossario("NdP"): un'opinione su come si è impostato il lavoro fino ad ora, nel particolare nei processi attivi di stesura della documentazione, pull request e revisione e gestione delle issue
- #glossario("PoC"): dubbio sorto nella discussione ovvero la gestione di dati in termine di differenze di grandezza dei dati. _Esempio: valore 1 = 4 e valore 2 = 9000_


== Gestione tabella delle revisioni
Si analizza la problematica della colonna 'Approvazione' presente nella tabella delle revisioni dei documenti. Il team decide all'unanimità di rimuovere tale colonna e, di conseguenza, modificare il template ```bash documento.typ```. Si decide, visto che al momento sono stati resi rilasciati solo 3 verbali (2 interni ed 1 esterno), di aggiornare tali documenti.

== Uniformare stile di scrittura - nome file
#p.checchinato solleva il problema del nome dei file con sintassi differente, alcuni con gli spazi, altri invece con i "-". Il team decide di nominare i file con gli spazi. I file, creati fino ad ora e appartenenti alla fase #glossario("RTB"), devono essere rinominati.

== Protezione #glossario("branch") sources
#p.pozzobon propone di proteggere il #glossario("branch") sources con delle regole ad-hoc che si possono creare in #glossario("Github"). L'idea è quella di creare un gruppo 'Revisori' contenente chi ricopre tale ruolo nel periodo corrente e di concedere solo a questo gruppo la possibilità di modificare i file in sources mediante approvazione di #glossario("Pull Request"). Il team decide di effettuare delle prove in una repo di test e poi, se positive, rendere effettive le modifiche.

== Varie ed eventuali

Non essendoci altri argomenti da discutere l’incontro del team Archi7echs è terminato alle 17:00. \
Si convoca il prossimo incontro per domani, martedì 26/11/2024 alle ore 16, dopo la riunione con Alex Beggiato, per la programmazione del prossimo periodo. \

= Decisioni

#decisioni((
  [2],[Tabella delle revisioni],[Rimuovere colonna 'Approvazione' dal template],
  [3],[Stile di scrittura],[Il nome del file deve essere con gli spazi],
  [4],[Protezione branch],[Testare regole di protezione sources]
))


= TODO

#todo((
  (42,), (p.scandaletti), [Fix template documento],
  (43,), (p.pozzobon), [Redazione verbale interno 2024-11-25],
  (44,), (p.scandaletti), [Fix nomi documenti],
))

_Per il dettaglio delle decisioni si rimanda al punto dell'OdG._

#v(3em)

Padova, 25 novembre 2024

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il Verbalizzante:\ Francesco Pozzobon],
  [Il responsabile di Progetto:\ Leonardo Lucato],
)

