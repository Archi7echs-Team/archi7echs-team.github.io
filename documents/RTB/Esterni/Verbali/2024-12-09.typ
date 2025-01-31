#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 09/12/2024",
  subtitle: "Call con Sanmarco Informatica - verbale esterno nr. 5",
  author: "Giovanni Salvò",
  state: "Approvato",
  intern: false,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.0.2", "31-01-2025",  "Aggiunta termini glossario", p.scandaletti, p.pozzobon,
    "0.0.1", "18-12-2024",  "Prima stesura documento", p.salvo, (p.scandaletti,p.valdagno),
  )
)

_A seguito del lavoro svolto da parte del team e dell'impegno preso con l'azienda di aggiornarsi una volta ogni 2/3 settimane si decide, una volta contattato Alex Beggiato (System Architect Team Leader), di convocare una call con il seguente #glossario("ordine del giorno"):_


= Ordine del Giorno
  
+ #glossario("Revisione") Stato Avanzamento Lavori (#glossario("SAL"))
+ Domande e chiarimenti
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Lunedì 09/12/2024 - ore 16.30 \
  
*Luogo* Online - #glossario("Piattaforma") Google Meet  \
  
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

#p.salvo si propone come #glossario("verbalizzante") dell’incontro. \
Si procede alla discussione in ordine dei punti all’#glossario("ordine del giorno").
#pb()


#ordine_del_giorno([
== Revisione #glossario("SAL") con Sanmarco Informatica
Viene mostrata all'azienda l'aggiunta da parte di #p.checchinato, sotto loro consiglio, di un riferimento nella sezione "about" della #glossario("repository") #glossario("GitHub"), che spiega la natura universitaria del #glossario("progetto") e che non verranno accettati commit da persone esterne al gruppo. \
#p.pozzobon condivide quanto fatto nel documento #glossario("AdR") riguardante la sezione #glossario("UC"). \
Vengono presentati i simil-#glossario("PoC") preparati dai membri del team.
- #p.lucato illustra il suo simil-#glossario("PoC"), scritto con _React_ e la #glossario("libreria") Javascript _Three.js_, che presenta le classiche #glossario("funzionalità") di navigazione in un ambiente #glossario("3D"). Permette anche la possibilità di mostrare dati specifici, tramite l' #glossario("hover") e il rendering del piano medio. L'acquisizione dei dati per popolare il grafico #glossario("3D") utilizza un #glossario("database") _Postgres_.
- #p.pesenato illustra il suo simil-#glossario("PoC") realizzato tramite Svelte e Threlte, #glossario("libreria") di componenti volta a ottimizzare l'uso di _Three.js_ in applicazioni _Svelte_. Le #glossario("funzionalità") mostrate sono le stesse.
- #p.scandaletti esprime invece le difficolta riscontrate nell’uso di _Angular_ e, in particolare, nella compatibilità con la #glossario("libreria") _Three.js_.

== Domande e chiarimenti
#p.lucato chiede se i test debbano essere presenti nel #glossario("PoC") e se il referente aziendale avesse consigli su come realizzarli.
Viene suggerito l'utilizzo del #glossario("framework") di testing _Cypress_, senza escludere la possibilità di utilizzare tecnologie differenti. Inoltre viene confermato che i test non sono necessari per il #glossario("PoC") \
Viene chiesto come gestire la lista dei bug e delle loro fix, nasce la proposta di creare un documento specifico contenente l'elenco dei bug incontrati e delle loro rispettive soluzioni, per evitare di distribuire informazioni su più #glossario("repository") separate. \
Alex Beggiato chiede se ci sia una data limite per decidere la tecnologia da usare per la creazione del #glossario("PoC"), ricevendo una risposta negativa da parte del team.
Il team chiede se i simil-#glossario("PoC") siano adatti come base per il #glossario("PoC") finale, Beggiato risponde in maniera positiva, consigliando alcune migliorie necessarie.

== Varie ed eventuali
Non essendoci altri argomenti da discutere l’incontro è terminato alle 17:15. \
Viene indicato come prossimo #glossario("SAL") il giorno 23/12/2024 con orario da determinare successivamente. \
Il team si riunirà dopo la riunione per discutere di quanto emerso e per decidere gli argomenti da affrontare nel prossimo #glossario("periodo").
])

= Decisioni

#decisioni((
  [1],[Documenti],[Continuare stesura delle sezioni mancanti],
  [1],[Simil-#glossario("PoC") \ con Angular],[Sviluppare il simil-#glossario("PoC") con Angular per aver una conoscenza di tutte le tecnologie proposte],
  [2],[Test],[Ricercare modalità per svolgere i test e informarsi su Cypress],
  [2],[Scelta tecnologia],[Fissare una data entro cui decidere la tecnologia da usare in maniera definitiva],
  [3],[Prossimo incontro],[Stabilire orario dell'incontro del 23/12/2024 o trovare una nuova data]
))

= TODO
Da questa riunione non è scaturita la creazione di #glossario("issue") collegate direttamente a decisioni o consigli del #glossario("proponente").

_Per il dettaglio delle decisioni si rimanda al punto dell'#glossario("OdG")._

#v(3em)

Padova, 09 dicembre 2024

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
    #place(center, image("//img/smi_sign.png", width: 120%))
    ],
  )]
)
