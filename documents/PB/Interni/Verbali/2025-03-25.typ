#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 25/03/2025",
  subtitle: "Documento interno - verbale nr. 21",
  author: p.lucato,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.1.0", "29-03-2025",  "Prima stesura documento", p.lucato,(p.checchinato),
  )
)

_A seguito della fine del terzo periodo della fase #glossario("PB"), il gruppo si riunisce per parlare di quanto segue:_

= Ordine del Giorno
+ Discussione dell'incontro svolto con il #p.cardin
+ Verifica avanzamento lavori durante il periodo appena trascorso
+ Definizione ruoli
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Lunedì 25/03/2025 - ore 16.00 \

*Luogo* Online - #glossario("Piattaforma") #glossario("Discord") \

*Destinatari* Tutto il gruppo \

= Verbale

L'incontro inizia, come da programma alle ore 16.00. Sono presenti tutti i membri del team:
- #p.checchinato
- #p.lucato
- #p.pesenato
- #p.pozzobon
- #p.salvo
- #p.scandaletti
- #p.valdagno

#p.lucato si propone come #glossario("verbalizzante") dell'incontro.\
#p.valdagno, in qualità di #glossario("responsabile di progetto") del nono #glossario("periodo"), prende la parola e si procede alla discussione in ordine dei punti all'#glossario("ordine del giorno").

#pb();

#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})


== Discussione dell'incontro svolto con il #p.cardin
Il team discute di quanto detto durante l'incontro effettuato con il #p.cardin in data 24/03/2025, richiesta per presentare le modifiche tecnologiche apportate. Il gruppo si ritiene soddisfatto del dialogo ottenuto, dove si è evidenziata un'ottima conoscenza delle tecnologie scelte nella prima parte di #glossario("RTB") e dei loro limiti. Grazie a questo, si è riusciti a valutare in maniera più critica la possibilità di utilizzare altre tecnologie (come #glossario("Spring Boot")), non per una scelta errata fatta in precedenza ma per una visione più critica dei limiti che apportava utilizzando Node.js ed Express. 

== Verifica avanzamento lavori durante il periodo appena trascorso
Nella prima parte di presentazioni, #p.pozzobon mostra quanto implementato durante la settimana. Si identificano nuovi filtri come l'opacizzazione di valori al di fuori di un range inserito dall'utente, un nuovo menu a comparsa dopo aver effettuato il click sopra una barra mostrando le informazioni principali della stessa, mostrare solo le barre con valore maggiore/minore della media globale. Si mostra la predisposizione di un menù per il reperimento dei dati tramite connessione al DB, dall'API esterna di Weather Forecast e da un file .csv. Il collegamento tra il lato frontend e il lato backend verrà effettuato nel prossimo periodo. #p.lucato mostra quanto completato durante la settimana insieme a #p.pesenato, evidenziando le ultime implementazioni per il reperimento dei dati tramite richiesta all'API esterna di Weather Forecast. Vengono citate 2 issue per la possibile CI/CD e la code coverage, previste per il periodo successivo.

== Definizione ruoli
Essendo la fine dell nono #glossario("periodo"), si procede alla definizione dei ruoli per il successivo. I ruoli assegnati sono i seguenti:

#table(
  columns: (1fr, 1fr),
  align: (col, row) => (center, center).at(col),
  inset: 6pt,
  table.header([*Ruolo*], [*Membri*]),
    [#glossario("Responsabile")],[#p.salvo],
    [#glossario("Amministratore")],[#p.lucato],
    [#glossario("Analista")],[#p.scandaletti],
    [#glossario("Programmatore")],[#p.pesenato, #p.pozzobon,\ #p.scandaletti],
    [#glossario("Verificatore")],[#p.checchinato],
    [#glossario("Progettista")],[#p.checchinato, #p.lucato, \ #p.pesenato, #p.salvo, \ #p.valdagno],
)

Successivamente i membri del team presenti si scambiano i compiti e le informazioni necessarie per il proseguimento del lavoro.


== Varie ed eventuali
#p.pozzobon mostra la possibilità di aggiungere alcune funzionalità non elencate nel documento di #glossario("AdR"). Il team valuterà la possibilità di inserirle se ritenute implementabili secondo i tempi e i costi a disposizione. Il gruppo ricorda l'incontro con l'azienda proponente in data 27/03/2025. \
Si convoca il prossimo incontro per martedì 02/04/2024 ad orario da stabilire per discutere di quanto svolto durante la settimana.

= Decisioni

#decisioni((
  [1],[Utilizzo di Spring Boot],[Durante l'incontro con #p.cardin, si rimarca la decisione di utilizzare il #glossario("framework") #glossario("Spring Boot") per la realizzazione del backend],
  [2],[Collegamento tra backend e frontend],[Si decide che nel prossimo periodo, per poter testare in maniera migliore la parte grafica, si effettuerà il collegamento tra il backend e il frontend, in modo da reperire i dati in maniera più veloce e sicura.],
  [2],[CI/CD],[Si decide di valutare la possibilità di implementare la CI/CD, per garantire che tutti i commit e i push nella #glossario("repo") dell'#glossario("MVP") non implementino dei bug distruttivi.],
))

= TODO

#todo((
  (279,), (p.lucato), [VI: scrittura #glossario("verbale interno") del 25/03/2025],
  (280,), (p.lucato), [VE: scrittura #glossario("verbale esterno") del 27/03/2025],
  (281,), (p.scandaletti), [Front-end: pannello filtri al click di ogni barra],
  (282,), (p.pozzobon), [Front-end: parametri filtri in oggetto dedicato],
  (283,), (p.checchinato, p.valdagno), [ST: Sezione componenti front-end],
  
))

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 25 marzo 2025

\
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  inset:0pt,
  [Il #glossario("Verbalizzante"):\ #p.lucato],
  [Il #glossario("responsabile di Progetto"):\ #p.salvo], 
)