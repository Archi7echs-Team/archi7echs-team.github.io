#import "/templates/documento.typ": *

#show: conf.with(
  title: "Verbale incontro 09/12/2024",
  subtitle: "Call con Sanmarco Informatica - verbale esterno nr. 5",
  author: "Giovanni Salvò",
  state: "Bozza",
  intern: false,
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "0.0.1", "11-12-2024",  "Prima stesura documento", p.salvo, "",
  )
)

_A seguito del lavoro svolto da parte del team e dell'impegno preso con l'azienda di aggiornarsi una volta ogni 2/3 settimane si decide, una volta contattato Alex Beggiato (System Architect Team Leader), di convocare una call con il seguente ordine del giorno:_


= Ordine del Giorno
  
+ Revisione Stato Avanzamento Lavori (SAL)
+ Domande e chiarimenti
+ Varie ed eventuali

= Dettagli dell'incontro

*Data e ora convocazione* Lunedì 09/12/2024 - ore 16.30 \
  
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

#p.salvo si propone come verbalizzante dell’incontro. \
Si procede alla discussione in ordine dei punti all’ordine del giorno.
#pb()


#set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    return numbering("1)", ..nums)
  } else {
    return "Punto " + numbering("1 -", nums.last())
  }
})


== Revisione #glossario("SAL") con Sanmarco Informatica
#p.checchinato inizia l'incontro mostrando all'azienda di aver seguito il loro consiglio di inserire un riferimento nella sezione "about", della repository #glossario("GitHub"), che si tratta di un progetto universitario e che non verranno accettate commit da persone esterne al gruppo. Viene passata la parola a #p.pozzobon che spiega quanto fatto nel documento #glossario("AdR") riguardante la sezione #glossario("UC"). Si decide di iniziare la presentazione dei simil-#glossario("PoC") svolti dai membri del team. #p.lucato condivide lo schermo e mostra il suo simil-#glossario("PoC") con le classiche funzionalità di un ambiente 3D, la #glossario("funzionalità") di #glossario("hover") e la #glossario("funzionalità") del piano medio oltre ad altre #glossario("funzionalità"). Spiega come ha realizzato tutto usando React e Three.js con cattura dei dati da un database Postgres. #p.pesenato invece illustra il suo simil-#glossario("PoC") realizzato tramite Svelte e Threlte, libreria per l'uso di Three.js su Svelte. Le funzionalità mostrate sono le stesse. #p.scandaletti invece esprime le difficolta incontrate nell’uso di Angular.

== Domande e chiarimenti
#p.lucato chiede se i test debbano essere presenti nel #glossario("PoC") e se il referente aziendale avesse consigli su come realizzarli. Viene consigliato di utilizzare cypress per effettuare i test anche se sono presenti molteplici strade. Viene chiesto come gestire la lista dei bug e delle loro fix. Proposta la creazione di un documento contenente la lista dei bug incontrati con la loro soluzione per ovviare alla presenza di più repository separate. Alex Beggiato chiede se ci sia una data limite per decidere la tecnologia da usare per la creazione del #glossario("PoC"). Il team risponde dicendo che non è ancora stata decisa una data limite. Il team chiede se i simil-#glossario("PoC") siano adatti come #glossario("PoC") e Alex risponde in modo positivo consigliando però alcune migliorie.

== Varie ed eventuali
Non essendoci altri argomenti da discutere l’incontro è terminato alle 17:15. \
Viene indicato come prossimo #glossario("SAL") il giorno 23/12/2024 con orario da specificare. \
Il team si riunirà dopo la riunione per discutere di quanto emerso e per decidere gli argomenti da affrontare nel prossimo periodo.

= Decisioni

#decisioni((
  [1],[Documenti],[Continuare stesura delle sezioni mancanti],
  [1],[Simil-#glossario("PoC") \ con Angular],[Sviluppare il simil-#glossario("PoC") con Angular per aver una conoscenza di tutte le tecnologie proposte],
  [2],[Test],[Ricercare modalità per svolgere i test e informasi su Cypress],
  [2],[Scelta tecnologia],[Decidere una data entro cui aver scelto la tecnologia da usare in modo definitivo],
  [3],[Prossimo incontro],[Confermare orario dell'incontro del'23/12/2024 o se chiedere altra data]
))

= TODO
Da questa riunione non è scaturita la creazione di issue collegate direttamente a decisioni o consigli del proponente.

_Per il dettaglio delle decisioni si rimanda al punto dell'OdG._

#v(3em)

Padova, 09 dicembre 2024

\
#figure(
  [#table(
    columns: (auto, 1fr),
    stroke: none,
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Il Verbalizzante:\ #p.salvo],
    [Il responsabile di Progetto:\ #p.checchinato],
  )]
)
#v(2em)
#figure(
  [#grid(
    columns: (auto, 1fr),
    align: (col, row) => (left, right,).at(col),
    inset:0pt,
    [Per Sanmarco Informatica:\ /*Alex Beggiato \
    #place(center, image("//img/smi_sign.png", width: 120%))*/
    ],
  )]
)
