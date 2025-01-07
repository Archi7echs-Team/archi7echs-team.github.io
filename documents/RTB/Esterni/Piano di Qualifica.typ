#import "/templates/documento.typ": *
#import "@preview/plotst:0.2.0": *

#show: conf.with(
  title: "Piano di Qualifica",
  subtitle: "",
  author: "Il team",
  state: "Approvato",
  intern: false,
  show_outline: true,
  outline_depth: 2,
  changelog: (
    "0.1.0", "19-12-2024", "Stesura introduzione", p.valdagno, (p.salvo, p.pozzobon),
  )
)

= Introduzione
== Finalità del documento
L'obiettivo del #glossario("PdQ") è descrivere l'insieme delle procedure di #glossario("verifica") e #glossario("validazione") adottate per garantire la qualità dei processi e del prodotto software. Il controllo di qualità serve per assicurare che vengano soddisfatti i requisiti tramite criteri oggettivi. \ 
Dato che il miglioramento continuo è uno degli elementi chiave dei sistemi di qualità i contenuti del documento saranno modificati e ampliati nel corso nel tempo.

== Glossario
All'interno del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html")[_glossario_]. Tutte le parole consultabili nel glossario saranno identificate da una "G" in colore blu. Premendoci sopra si aprirà il glossario.

== Riferimenti
=== Link al capitolato C5 - 3Dataviz
- Riferimento al capitolato 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]] - _Ultimo accesso al documento 22/11/2024_
=== Slide del corso IS
- Riferimento alle slide IS: *_Regolamento del progetto didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]] - _Ultimo accesso al documento 19/12/2024_

- Riferimento alle slide IS: *_Qualità del software_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf]] - _Ultimo accesso al documento 19/12/2024_
- Riferimento alle slide IS: *_Qualità di processo_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf]] - _Ultimo accesso al documento 19/12/2024_
- Riferimento alle slide IS: *_Verifica e validazione:_*
 - *_Introduzione_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T09.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T09.pdf]] \ - _Ultimo accesso al documento 19/12/2024_
 - *_Analisi statica_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T10.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T10.pdf]] \ - _Ultimo accesso al documento 19/12/2024_
 - *_Analisi dinamica_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T011.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T11.pdf]] \ - _Ultimo accesso al documento 19/12/2024_

= Metodologie di testing
In questa sezione vengono descritte le modalità di identificazione dei test che verranno applicati al progetto per controllare il rispetto delle metriche e l'implementazione degli #glossario("UC") individuati nell' #glossario("AdR"). \
I test si suddividono in:

== Identificazione dei test


