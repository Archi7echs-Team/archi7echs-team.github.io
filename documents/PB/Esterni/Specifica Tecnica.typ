#import "/templates/documento.typ": *
#import "@preview/plotst:0.2.0": *

#show: conf.with(
  title: "Specifica Tecnica",
  subtitle: "",
  author: "Il team",
  show_outline: true,
  outline_depth: 2,
  changelog: (
    "0.1.0", "20-03-2025",  "Inizio stesura documento", p.checchinato, "",
  ),
)

= Introduzione
== Finalità del documento
Questo documento ha l'obiettivo di fornire una descrizione dettagliata e strutturata degli aspetti tecnici fondamentali del progetto *3Dataviz*. In particolare, esso rappresenta una guida di riferimento per comprendere l'architettura del sistema, le scelte implementative adottate e le specifiche di deployment.
Attraverso un'analisi approfondita, il documento illustra i principali componenti software e le tecnologie utilizzate. Inoltre, vengono descritte le motivazioni alla base delle decisioni progettuali, con un focus su scalabilità, manutenibilità e sicurezza del sistema.
Gli obiettivi principali di questa specifica tecnica sono:
- Fornire una documentazione chiara e dettagliata a supporto dello sviluppo e della manutenzione del software.
- Garantire l'allineamento con i requisiti funzionali e non funzionali definiti nel documento _Analisi dei Requisiti v1.0.0_.\
- Definire una base comune di conoscenza per tutti i membri del team, facilitando l’integrazione e l’evoluzione del sistema.
== Scopo del progetto
L’obiettivo è realizzare una piattaforma web di visualizzazione tridimensionale dei dati, che consenta all’utente che la utilizza di navigare e interagire con grafici a barre verticali 3D rappresentanti dati complessi, utili per l'analisi e la presentazione di informazioni.
Il prodotto deve essere progettato per poter rappresentare  dati, in un modello 3D, navigabile e interattivo.\ Dunque le sue #glossario("funzionalità") principali includono:

- *Funzionalità di un ambiente 3D*: 
  - *Rotazione*: permettere la rotazione del grafico per osservarlo da diverse angolazioni.
  - *Pan*: consentire lo spostamento del grafico sul piano orizzontale.
  - *Zoom*: abilitare l'avvicinamento e l'allontanamento dal grafico.
  - *Auto-positioning*: posizionare automaticamente il grafico in una vista ottimale.

- *Visualizzazione del valore medio globale*: il sistema deve consentire di visualizzare un piano parallelo alla base, che rappresenta il valore medio globale dei dati.

- *Opacizzazione o nascondimento delle barre*:  il sistema deve offrire la possibilità di opacizzare o nascondere le barre con valori superiori o inferiori rispetto a:
  - una barra selezionata;
  - il valore medio globale rappresentato dal piano visualizzato.
 Inoltre, deve permettere di lasciare visibili o non opacizzati solo i valori di minimo o di massimo delle y, ossia i punti estremi.

- *Visualizzazione dei valori corrispondenti a una barra*: il sistema deve consentire di visualizzare i valori corrispondenti a una barra quando questa è soggetta a un evento "#glossario("hover")" del mouse.

- *[Opzionale] Visualizzazione del valore medio del singolo elemento*: il sistema deve consentire di visualizzare un piano parallelo alla base, che rappresenta il valore medio di un singolo elemento di un asse (X o Z). 
== Glossario
All'interno del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html")[_glossario_]. Tutte le parole consultabili nel glossario saranno identificate da una "#text(blue)[G]" in colore blu. Facendo click sul collegamento si aprirà una scheda del browser con il glossario 
== Riferimenti

=== Riferimenti normativi
- Norme di Progetto (v 1.0.0)
- Riferimento al #glossario("capitolato") 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]] - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: *_Regolamento del #glossario("progetto") didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]] - _Ultimo accesso 20/03/2025_

=== Riferimenti informativi
- Riferimento documentazione: *_Svelte_*: #link("https://svelte.dev/docs/svelte/overview")[#text(blue)[https://svelte.dev/docs/svelte/overview]]\ _Ultimo accesso 20/03/2025_
- Riferimento documentazione: *_Threlte_*: #link("https://threlte.xyz/")[#text(blue)[https://threlte.xyz/]]\ _Ultimo accesso 20/03/2025_
- Riferimento documentazione: *_Sping_Boot_* #link("https://spring.io/projects/spring-boot")[#text(blue)[https://spring.io/projects/spring-boot]]\ _Ultimo accesso 20/03/2025_
- Riferimento documentazione: *_Maven_*: #link("https://maven.apache.org/")[#text(blue)[https://maven.apache.org/]]\ _Ultimo accesso 20/03/2025_
- Riferimento documentazione: *_PostgreSQL_*: #link("https://www.postgresql.org/")[#text(blue)[https://www.postgresql.org/]]\ _Ultimo accesso 20/03/2025_
- Riferimento documentazione: *_Docker_*: #link("https://docs.docker.com/")[#text(blue)[https://docs.docker.com/]]\ _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Progettazione: le dipendenze tra componenti*_:\ #link("https://www.math.unipd.it/~rcardin/swea/2022/Dependency%20Management%20in%20Object-Oriented%20Programming.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2022/Dependency%20Management%20in%20Object-Oriented%20Programming.pdf]] - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Analisi e descrizione delle funzionalità: Use Case e relativi diagrammi UML*_: #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf]] - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Progettazione e programmazione: Diagrammi delle classi (UML)*_: #link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf]]\ - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Analisi e descrizione delle funzionalità: Diagrammi delle attività (UML)*_: #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf]]\ - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Progettazione: I pattern architetturali*_: #link("https://www.math.unipd.it/~rcardin/swea/2022/Software%20Architecture%20Patterns.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2022/Software%20Architecture%20Patterns.pdf]]\ - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Progettazione: Il pattern Dependency Injection*_: #link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Architetturali%20-%20Dependency%20Injection.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Architetturali%20-%20Dependency%20Injection.pdf]]\ - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Progettazione: il pattern Model-View-Controller e derivati*_: #link("https://www.math.unipd.it/~rcardin/sweb/2022/L02.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/sweb/2022/L02.pdf]]\ - _Ultimo accesso 20/03/2025_ 
- Riferimento alle slide IS: _*Progettazione: i pattern creazionali (GoF)*_: #link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Creazionali.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Creazionali.pdf]]\ - _Ultimo accesso 20/03/2025_ 
- Riferimento alle slide IS: _*Progettazione: I pattern strutturali (GoF)*_: #link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Strutturali.pdf")[#text(blue)[https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Strutturali.pdf]]\ - _Ultimo accesso 20/03/2025_ 
- Riferimento alle slide IS: _*Progettazione: I pattern di comportamento (GoF)*_: #link("https://drive.google.com/file/d/1cpi6rORMxFtC91nI6_sPrG1Xn-28z8eI/view?usp=sharing")[#text(blue)[https://drive.google.com/file/d/1cpi6rORMxFtC91nI6_sPrG1Xn-28z8eI/view?usp=sharing]]\ - _Ultimo accesso 20/03/2025_
- Riferimento alle slide IS: _*Programmazione: SOLID programming*_: #link("https://drive.google.com/file/d/1o1Xun2dVVc3mDiaGyN0FrDJhhoO3lfLQ/view?usp=sharing")[#text(blue)[https://drive.google.com/file/d/1o1Xun2dVVc3mDiaGyN0FrDJhhoO3lfLQ/view?usp=sharing]]\ - _Ultimo accesso 20/03/2025_

= Tecnologie
In questa sezione vengono elencate le tecnologie utilizzate all'interno del progetto *3Dataviz*, dalla fase di progettazione alla sua implementazione. \
Ogni tecnologia utilizzata, verrà descritta tramite:
+ Nome della tecnologia
+ Descrizione della tecnologia e del suo utilizzo
+ Versione della tecnologia utilizzata
+ Link di riferimento alla sua documentazione
