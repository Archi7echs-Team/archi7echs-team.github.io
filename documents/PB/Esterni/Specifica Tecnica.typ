#import "/templates/documento.typ": *
#import "/lib/plotst.typ": *

#show: conf.with(
  title: "Specifica Tecnica",
  subtitle: "",
  author: "Il team",
  show_outline: true,
  outline_depth: 3,
  changelog: (
    "0.2.0", "30-03-2025", "Stesura sezione componenti front-end", (p.checchinato, p.valdagno), (""),
    "0.1.0", "21-03-2025",  "Inizio stesura documento", p.checchinato, (p.salvo, p.valdagno),
  ),
)

= Introduzione
== Finalità del documento
Questo documento ha l'obiettivo di fornire una descrizione dettagliata e strutturata degli aspetti tecnici fondamentali del progetto *3Dataviz*. In particolare, esso rappresenta una guida di riferimento per comprendere l'architettura del sistema, le scelte implementative adottate e le specifiche di deployment.
Attraverso un'analisi approfondita, il documento illustra i principali componenti software e le tecnologie utilizzate. Inoltre, vengono descritte le motivazioni alla base delle decisioni progettuali, con un focus su scalabilità, manutenibilità e sicurezza del sistema.
Gli obiettivi principali di questa specifica tecnica sono:
- Fornire una documentazione chiara e dettagliata a supporto dello sviluppo e della manutenzione del software.
- Garantire l'allineamento con i requisiti funzionali e non funzionali definiti nel documento _Analisi dei Requisiti v1.0.0_.\
- Definire una base comune di conoscenza per tutti i membri del team, facilitando l'integrazione e l'evoluzione del sistema.
== Scopo del progetto
L'obiettivo è realizzare una piattaforma web di visualizzazione tridimensionale dei dati, che consenta all'utente che la utilizza di navigare e interagire con grafici a barre verticali 3D rappresentanti dati complessi, utili per l'analisi e la presentazione di informazioni.
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

= Front-end
== Componenti
In questa sezione vengono documentati in dettaglio i componenti #glossario("front-end") sviluppati in Svelte per il prodotto. Ogni file .svelte rappresenta un componente autonomo che implementa una specifica funzionalità dell'#glossario("interfaccia utente").
Per ciascun componente verranno illustrati i seguenti aspetti:

- *Descrizione*: una breve spiegazione del ruolo e dello scopo del componente all'interno dell'applicazione.

- *Struttura e Funzionalità*: la composizione del componente, evidenziando gli elementi chiave e la logica implementata.

- *Props e Variabili Reattive*: i dati in ingresso (props) e le variabili reattive che gestiscono lo stato interno.

- *Eventi e Comunicazione*: come il componente comunica con altri elementi, tramite eventi custom o binding.

- *Stili e Layout*: le regole CSS o l'utilizzo di framework di styling adottati per garantire un'interfaccia coerente.

- *Esempi di Utilizzo*: un esempio pratico su come il componente viene importato e integrato nell'applicazione.

- *Dipendenze Esterne*: eventuali librerie aggiuntive utilizzate e spunti per ottimizzazioni future.

Questa sezione permette di comprendere il funzionamento e l'interazione dei vari componenti, fornendo un riferimento utile per sviluppatori e manutentori.

=== App.svelte <app.svelte>

==== *Descrizione*  
Il componente *App.svelte* costituisce il punto di ingresso dell'applicazione e gestisce l'integrazione complessiva degli elementi 3D e delle impostazioni interattive. Esso ospita il canvas principale che contiene la scena 3D, il pannello delle impostazioni e la barra di controllo dei filtri, coordinando il flusso dei dati e lo stato globale della visualizzazione.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  - Il componente è incapsulato in un `<div>` che imposta le dimensioni (100vh x 100vw) e uno sfondo scuro per mettere in risalto la scena 3D.
  - All'interno del `<Canvas>` fornito da *threlte/core* vengono inclusi:  
    - *SettingsPane:* Pannello per il controllo dei filtri e delle impostazioni (es. range, colorazione, attivazione del piano medio)  
    - *BarPane:* Componente dedicato alla gestione e selezione dei filtri per le barre del grafico  
    - *Scene:* Componente che renderizza la scena 3D, incluse le barre che rappresentano i dati, utilizzando le props calcolate.
  
- *Funzionalità:*  
  - Calcola dinamicamente i valori minimo, massimo e la media dei dati, aggiornando reattivamente le variabili utilizzate per filtrare e visualizzare il grafico.
  - Definisce parametri come `spacing`, `rows`, `cols` e `target` per posizionare correttamente gli elementi nella scena.
  - Fornisce la funzione `resetTarget()` per ripristinare il target della visualizzazione a uno stato predefinito.
  - Sincronizza lo stato dei filtri (mediaFilter, avgEnabled, colorSelection, rangeValue, barFilterSelection, displayBarFilter) tramite binding bidirezionale, assicurando che le impostazioni modificate in *SettingsPane* e *BarPane* influenzino la visualizzazione nella *Scene*.

==== *Props e Variabili Reattive*  
- *Props:*  
  - *data:* matrice di numeri usata per definire l'altezza e la disposizione delle barre del grafico.
  - *valMin* e *valMax:* valori calcolati reattivamente per definire il range dei dati.
  - *media:* valore medio dei dati, utilizzato per il posizionamento e il filtraggio.
  - *defaultPosition:* posizione di default della camera, passata a SettingsPane per il controllo della visualizzazione.
  - *rangeValue, colorSelection, mediaFilter, avgEnabled, barFilterSelection, displayBarFilter:* variabili che controllano i filtri e le opzioni di visualizzazione, gestite con binding reattivo.
- *Variabili reattive:*  
  - *target:* calcolato dinamicamente in base a `rows`, `cols`, `spacing` e `media`, determina il centro della scena.
  - *max, rows, cols:* derivati dalla matrice `data`, usati per normalizzare e posizionare le barre.

==== *Eventi e Comunicazione*  
- Il componente sfrutta il binding bidirezionale per sincronizzare le impostazioni tra *SettingsPane*, *BarPane* e *Scene*.
- Le funzioni reattive (tramite `$effect()`) aggiornano automaticamente variabili come `rangeValue` e `target` quando cambiano i dati.
- La funzione `resetTarget()` viene passata a *SettingsPane* per consentire il ripristino della visualizzazione standard della scena.

==== *Stili e Layout*  
- Il componente è contenuto in un `<div>` con:
  - *Posizione:* `relative`
  - *Dimensioni:* `100vh` in altezza e `100vw` in larghezza
  - *Background:* Impostato su `rgb(14, 22, 37)`, creando un contrasto adeguato per la scena 3D.
- Il layout è pensato per occupare l'intera finestra del browser, garantendo un'esperienza immersiva.

==== *Esempi di Utilizzo*  
Il componente *App.svelte* rappresenta l'intera applicazione e viene usato come punto di ingresso per l'interfaccia utente.  
*Esempio di integrazione:*  
```svelte
<App />
```

==== *Dipendenze Esterne*  
- *threlte/core:* Fornisce il `<Canvas>` e altri componenti essenziali per integrare Three.js in Svelte.
- *three:* Utilizzato per la manipolazione di oggetti 3D e per la definizione di vettori (es. `Vector3`).
- *svelte:* Funzioni come `$state`, `$derived`, `$effect` sono usate per gestire lo stato reattivo e il ciclo di vita del componente.

=== Average.svelte <average.svelte>

==== *Descrizione*  
Il componente *Average.svelte* è responsabile di abilitare o disabilitare la visualizzazione del piano medio nel grafico 3D. Con un semplice checkbox, l'utente può attivare la visualizzazione della media, influenzando il rendering del grafico in modo dinamico.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  - Il componente importa il *Checkbox* (insieme ad altri elementi) dalla libreria *svelte-tweakpane-ui*.  
  - Utilizza un binding bidirezionale per associare il valore del checkbox alla variabile `avgEnabled`, che viene passata tramite props.
- *Funzionalità:*  
  - Presenta un semplice checkbox etichettato "Show average plane".  
  - Il cambio di stato del checkbox aggiorna il valore di `avgEnabled`, permettendo agli altri componenti (come la scena grafica) di adattare la visualizzazione in base alla presenza o meno del piano medio.

==== *Props e Variabili Reattive*  
- *Props:*  
  - *avgEnabled*: Variabile passata tramite props, resa reattiva con `$bindable()`, che controlla l'attivazione del filtro della media.  
- *Variabili reattive:*  
  - Il valore di `avgEnabled` è gestito in maniera reattiva grazie al binding diretto nel checkbox, consentendo aggiornamenti immediati nell'interfaccia.

==== *Eventi e Comunicazione*  
- Il componente comunica con il parent utilizzando il binding bidirezionale di `avgEnabled`.\ Quando l'utente seleziona o deseleziona il checkbox, il valore aggiornato viene automaticamente propagato al componente genitore, che può quindi reagire aggiornando la visualizzazione del grafico.

==== *Stili e Layout*  
- Il componente si affida agli stili predefiniti forniti da *svelte-tweakpane-ui* per il checkbox, garantendo un aspetto coerente con il resto dell'interfaccia.  

==== *Esempi di Utilizzo*  
- *Integrazione in SettingsPane.svelte:*  
  Il componente viene incluso all'interno di un pannello di impostazioni, dove l'utente può attivare il filtro della media.  
  ```svelte
  <Average bind:avgEnabled={avgEnabled}/>
  ```

==== *Dipendenze Esterne*  
- *svelte-tweakpane-ui*: Fornisce il componente *Checkbox* e le funzioni di tema necessarie per lo styling uniforme.  

=== Bar.svelte <bar.svelte>

==== *Descrizione*  
Il componente *Bar.svelte* rappresenta una singola barra del grafico 3D. La sua funzione principale è quella di visualizzare un dato specifico attraverso la sua altezza e colorazione, e di rispondere alle interazioni dell'utente (hover e click) per applicare filtri e selezioni, migliorando l'interattività del grafico.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  - Il componente è basato su un elemento `<T.Mesh>` che crea la geometria della barra, con una `<T.BoxGeometry>` per definire la forma e un `<T.MeshStandardMaterial>` per il materiale, impostato in modo da gestire trasparenza e colorazione dinamica.
  - Un elemento `<Text>` viene posizionato sopra la barra per mostrare il valore (altezza) della barra in formato numerico, contribuendo a rendere il grafico più informativo.
- *Funzionalità:*  
  - Calcola dinamicamente l'opacità della barra in base alla condizione di filtraggio: se il valore (altezza) rientra nell'intervallo definito (`minVal`, `maxVal`) e rispetta i filtri aggiuntivi (media e filtri specifici per la barra), l'opacità è impostata a 1, altrimenti a 0.2.
  - Utilizza un *raycaster* per rilevare l'interazione del mouse con la barra e il testo, attivando un effetto hover grazie a un tween definito con `svelte/motion` e l'easing `cubicOut`.
  - La funzione `getBarColor()` determina il colore della barra in base alla selezione del criterio di colorazione (per righe, per colonne o in base al valore normalizzato).
  - Gestisce eventi di pointer (movimento, uscita, click) sia per il mesh della barra sia per il testo, aggiornando la selezione tramite metodi su un oggetto `selection`.

==== *Props e Variabili Reattive*  
- *Props:*  
  - *id*: Identificativo univoco della barra, utilizzato per la gestione delle selezioni.
  - *coordinates*: Posizione 3D della barra.
  - *height*: Altezza della barra, che determina il suo valore.
  - *currentCameraQuaternionArray*: Array che rappresenta l'orientamento corrente della camera, usato per orientare il testo.
  - *minVal, maxVal*: Valori limite per il filtraggio della visualizzazione.
  - *colorSelection*: Parametro che specifica il criterio di colorazione della barra.
  - *media, mediaFilter*: Valori usati per applicare filtri basati sulla media dei dati.
  - *barFilterSelection, selection*: Parametri per la gestione dei filtri specifici e delle selezioni multiple.
- *Variabili reattive:*  
  - *inRange*: Calcolato reattivamente per verificare se la barra rientra nell'intervallo definito.
  - *passesFilter*: Determina se la barra rispetta i filtri applicati (media e filtri specifici).
  - *opacity*: Impostata in modo reattivo in base al risultato combinato di `inRange` e `passesFilter`.
  - *mesh e text*: Riferimenti al mesh della barra e al testo, gestiti con `$state`, per poter applicare gli effetti di interazione.

==== *Eventi e Comunicazione*  
- *Interattività:*  
  - Il componente gestisce l'evento `onpointermove` per controllare l'effetto hover, impostando il valore del tween `hover` in base alla presenza della barra sotto il cursore, rilevato tramite il raycaster.
  - Gestisce `onpointerleave` per resettare l'effetto hover.
  - Gli eventi `onclick` su entrambi il mesh e il testo attivano funzioni che aggiornano lo stato di selezione, utilizzando metodi dell'oggetto `selection` (toggle o set) a seconda del numero di click.
- La comunicazione con il componente genitore avviene tramite props e binding, consentendo al sistema di filtrare e aggiornare dinamicamente la visualizzazione in base alle interazioni dell'utente.

==== *Stili e Layout*  
- La disposizione della barra è controllata tramite le props `coordinates` e `height`, che definiscono la posizione e la scala della geometria.
- L'elemento `<Text>` è posizionato sopra la barra, con dimensioni e rotazioni impostate per garantire la leggibilità, adattandosi dinamicamente all'orientamento della camera tramite il binding di `currentCameraQuaternionArray`.

==== *Esempi di Utilizzo*  
Il componente *Bar.svelte* viene utilizzato per generare ogni singola barra del grafico 3D.  
*Esempio di integrazione in un ciclo:*
```svelte
{#each data as row, rowIndex}
  {#each row as height, colIndex}
    <Bar 
      id={`bar-${rowIndex}-${colIndex}`}
      coordinates={[rowIndex * spacing, height / 2, colIndex * spacing]}
      {height}
      {currentCameraQuaternionArray}
      minVal={rangeValue[0]}
      maxVal={rangeValue[1]}
      colorSelection={colorSelection}
      media={media}
      mediaFilter={mediaFilter}
      barFilterSelection={barFilterSelection}
      {selection}
    />
  {/each}
{/each}
```

==== *Dipendenze Esterne*  
- *threlte/core:* Fornisce il framework per la creazione del mesh 3D e l'accesso al contesto della scena tramite `useThrelte()`.
- *threlte/extras:* Utilizzato per aggiungere funzionalità extra come il componente `<Text>` e per abilitare l'interattività.
- *three:* Libreria per la gestione di oggetti 3D; utilizza classi come `Raycaster`, `Vector2` e `Vector3` per le operazioni di calcolo vettoriale e per determinare l'interazione con la scena.
- *svelte/motion* e *svelte/easing:* Utilizzati per implementare il tweening dell'effetto hover, offrendo animazioni fluide.
- *three/tsl (select):* (Se utilizzato correttamente) può fornire funzionalità aggiuntive per la gestione delle selezioni, sebbene in questo file il suo ruolo non sia evidenziato chiaramente.

=== BarPane.svelte <barpane.svelte>
==== *Descrizione*  
Il componente *BarPane.svelte* gestisce la visualizzazione e la selezione dei filtri per le barre del grafico. Viene mostrato quando l'utente ha abilitato il filtro tramite la variabile `displayBarFilter` e consente di scegliere tra diverse modalità di visualizzazione delle barre in base ai valori selezionati.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  -  Il componente è realizzato tramite `<Pane>` fornito da *svelte-tweakpane-ui*.
  - All'interno del `<Pane>`, vengono presentati vari bottoni per selezionare il filtro da applicare sulle barre:
   - *"Only selected bar":* mostra solo la barra selezionata.
   - *"Values higher than the selected bar value":* filtra e visualizza solo le barre con valori superiori alla barra selezionata.
   - *"Values lower than the selected bar value":* filtra e visualizza solo le barre con valori inferiori alla barra selezionata.
   - *"Filter reset":* ripristina la visualizzazione predefinita senza alcun filtro applicato.

- *Funzionalità:*  
  - Il componente consente di modificare il valore di `barFilterSelection` in base al filtro selezionato tramite i bottoni. 
  - Mostra i controlli di filtro solo se la variabile `displayBarFilter` è abilitata, controllando se visualizzare o meno il pannello di selezione.

==== *Props e Variabili Reattive*  
- *Props:*  
  - *displayBarFilter:* variabile che controlla se visualizzare il pannello di selezione del filtro.
  - *barFilterSelection:* variabile che memorizza la selezione del filtro per la visualizzazione delle barre.
  
- *Variabili reattive:*  
  - Non ci sono variabili reattive aggiuntive, ma `barFilterSelection` cambia dinamicamente in base alla selezione dell'utente.

==== *Eventi e Comunicazione*  
- Gli eventi `on:click` legati ai bottoni modificano la variabile `barFilterSelection`, la quale è legata al componente principale per gestire la visualizzazione del grafico.
- Il valore di `barFilterSelection` è utilizzato per applicare il filtro corrispondente alla visualizzazione delle barre in *Scene.svelte*.

==== *Stili e Layout*  
- L'aspetto è minimalista, con i bottoni disposti verticalmente, ognuno dei quali rappresenta una modalità di filtro.

==== *Esempi di Utilizzo*  
*Esempio di integrazione:*  
```svelte
<div>
  <Canvas>
    <BarPane {displayBarFilter} bind:barFilterSelection/>
  </Canvas>
</div>
```  
L'esempio mostra come il componente viene utilizzato all'interno di un contenitore `<Canvas>`, con il binding bidirezionale della variabile `barFilterSelection` per sincronizzare la selezione del filtro tra il componente *BarPane* e il resto dell'applicazione.

==== *Dipendenze Esterne*  
- *svelte-tweakpane-ui:* fornisce il componente `<Pane>` per il layout e i bottoni per l'interazione.

=== CameraSettings.svelte <camerasettings.svelte>

==== *Descrizione*  
Il componente *CameraSettings.svelte* consente all'utente di controllare la posizione della camera nella scena 3D. In particolare, offre le funzionalità di zoom in, zoom out e reset della posizione, permettendo di regolare dinamicamente la visualizzazione in base alle esigenze dell'utente.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  - Il componente importa e utilizza il *Button* dalla libreria *svelte-tweakpane-ui* per rendere disponibili tre azioni: "Resetta", "Zoom In" e "Zoom Out".  
  - Utilizza l'hook `useThrelte` per accedere al riferimento della camera corrente e manipolare la sua posizione.  
- *Funzionalità:*  
  - Definisce una posizione di default per la camera e imposta una variabile di zoom (`zoomValue`) che viene modificata incrementando o decrementando di un valore fisso (`zoomStep`).  
  - Le funzioni `zoomIn()` e `zoomOut()` modificano `zoomValue` e chiamano `updateCamera()`, che aggiorna la posizione della camera lungo la sua direzione corrente.  
  - La funzione `resetPosition()` ripristina la posizione della camera al valore predefinito e invoca la funzione `resetTarget` passata tramite props.

==== *Props e Variabili Reattive*  
- *Props:*  
  - `defaultPosition`: la posizione iniziale della camera, con un valore predefinito impostato a `new Vector3(15, 7.5, 15)`.  
  - `resetTarget`: funzione passata tramite props per ripristinare il target della visualizzazione.
- *Variabili reattive:*  
  - `zoomValue`: controlla il livello di zoom corrente, inizialmente impostato a 5.  
  - `zoomStep`: costante che definisce l'incremento/decremento del livello di zoom ad ogni click.  
  - `camera`: ottenuto tramite `useThrelte()`, fornisce il riferimento alla camera 3D per la manipolazione della sua posizione.

==== *Eventi e Comunicazione*  
- Il componente gestisce eventi *click* sui pulsanti per attivare le funzioni `zoomIn()`, `zoomOut()` e `resetPosition()`.  
- Questi eventi aggiornano lo stato della camera in tempo reale e comunicano il nuovo stato alla componente padre attraverso il binding dei props.

==== *Stili e Layout*  
- Il componente non include stili personalizzati, facendo affidamento sui componenti *Button* di *svelte-tweakpane-ui*, che garantiscono un layout coerente e un'interfaccia utente integrata nel tema globale definito.

==== *Esempi di Utilizzo*  
- Il componente *CameraSettings.svelte* viene tipicamente integrato in un pannello di controllo (ad esempio, all'interno di *SettingsPane.svelte*) per consentire agli utenti di regolare la visualizzazione 3D.  
  ```svelte
  <CameraSettings {defaultPosition} {resetTarget}/>
  ``` 

==== *Dipendenze Esterne*  
- *threlte/core*: Offre il hook `useThrelte`, che consente di accedere al riferimento della camera e ad altri elementi della scena.  
- *svelte-tweakpane-ui*: Fornisce i componenti UI come `Button`, `Pane` e strumenti di tema per una gestione coerente dell'interfaccia.  
- *three*: La classe `Vector3` da Three.js è utilizzata per definire e manipolare le posizioni nello spazio 3D.  

=== Chart.svelte <chart.svelte>

==== *Descrizione*  
Il componente *Chart.svelte* è responsabile del rendering del grafico 3D interattivo. In questo file viene costruita la scena principale che include la griglia di fondo, il piano medio (se abilitato), le etichette per righe e colonne e le barre 3D, ciascuna generata tramite il componente *Bar.svelte*. Inoltre, il componente calcola la media dei dati e aggiorna continuamente l'orientamento della camera per sincronizzare le etichette con il punto di vista attuale.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  - Il componente utilizza un `<T.Group>` per raggruppare tutti gli elementi della scena 3D.  
  - Include un *Mesh* per la griglia di fondo, definita tramite `<T.PlaneGeometry>` e `<T.MeshStandardMaterial>`, posizionata centralmente in base a `rows`, `cols` e `spacing`.  
  - Se il flag `avgEnabled` è attivo, viene creato un piano medio (semplice mesh) posizionato a livello della media calcolata dei dati.  
  - Le etichette delle righe e delle colonne sono implementate tramite il componente `<Text>` da *threlte/extras*, posizionate e ruotate per garantire una leggibilità ottimale.  
  - Il componente itera su una matrice di dati per generare, per ogni elemento, un componente *Bar.svelte* che visualizza la barra corrispondente.

- *Funzionalità:*  
  - Calcola il valore massimo dai dati per normalizzare le altezze delle barre e definire la dimensione della griglia.  
  - Determina il numero di righe e colonne in base alla matrice `data`, utilizzati per posizionare correttamente gli elementi 3D.  
  - Esegue il calcolo della media dei dati tramite la funzione `calculateAverage()`, utilizzata per il posizionamento del piano medio.  
  - Aggiorna in maniera continua l'orientamento della camera (quaternion) all'interno del ciclo di animazione avviato con `onMount()` e interrotto con `onDestroy()`, garantendo l'allineamento delle etichette con il punto di vista attuale.
  - La funzione `truncateText()` è utilizzata per assicurare che le etichette non siano troppo lunghe, mantenendo un layout ordinato.

==== *Props e Variabili Reattive*  
- *Props:*  
  - *data:* Matrice dei dati numerici utilizzata per definire l'altezza e la disposizione delle barre.
  - *rangeValue:* Intervallo di valori per il filtraggio visivo dei dati.
  - *spacing:* Distanza tra le barre, usata per il calcolo delle dimensioni della griglia.
  - *colorSelection:* Parametro che definisce il criterio di colorazione delle barre.
  - *media e mediaFilter:* Valori per il calcolo della media e per l'applicazione di filtri basati su di essa.
  - *controlTarget:* Funzione passata come prop per aggiornare il target della camera (se applicabile).
  - *avgEnabled:* Flag booleano che determina se visualizzare il piano medio.
  - *barFilterSelection:* Parametro per la gestione di filtri specifici sulle barre.
- *Variabili reattive:*  
  - *max, rows, cols:* Derivati dalla matrice `data`, utilizzati per dimensionare la griglia e normalizzare le barre.
  - *currentCameraQuaternionArray:* Array che memorizza l'orientamento corrente della camera, aggiornato continuamente nel ciclo di animazione.
  - *average:* Valore medio calcolato dai dati, usato per posizionare il piano medio.

==== *Eventi e Comunicazione*  
- Utilizza `onMount()` per avviare un ciclo di aggiornamento continuo dell'orientamento della camera, che aggiorna la variabile `currentCameraQuaternionArray` in tempo reale.
- Utilizza `onDestroy()` per interrompere l'animazione e prevenire memory leak.
- Le props e le variabili reattive vengono passate a *Bar.svelte* per sincronizzare il filtraggio e la visualizzazione delle barre.
- La comunicazione tra il componente e i componenti figli (come le etichette e le barre) è gestita tramite binding delle props e aggiornamenti reattivi, garantendo una visualizzazione coerente e dinamica.

==== *Stili e Layout*  
- Il layout 3D è organizzato all'interno di un `<T.Group>`, che assicura una struttura gerarchica chiara degli elementi della scena.  
- La griglia di base e il piano medio sono centrati in base a `rows`, `cols` e `spacing`, creando un layout bilanciato e armonioso.  
- Le etichette (Text) sono ruotate e posizionate in modo da risultare leggibili nonostante l'orientamento dinamico della camera.

==== *Esempi di Utilizzo*  
Il componente *Chart.svelte* viene solitamente integrato come parte della scena principale del grafico 3D.  
*Esempio di integrazione:*  
```svelte
<Chart 
  {data} 
  {rangeValue} 
  {spacing} 
  {colorSelection} 
  {media} 
  {mediaFilter} 
  {controlTarget} 
  {avgEnabled} 
  {barFilterSelection} 
/>
```  
Questo esempio mostra come il componente riceva tutti i dati e le impostazioni necessarie per costruire e aggiornare dinamicamente il grafico 3D.

==== *Dipendenze Esterne*  
- *threlte/core:*  
  - Fornisce componenti essenziali per la gestione del rendering 3D (es. `<T.Group>`, `<T.Mesh>`, `<T.PlaneGeometry>`, `<T.MeshStandardMaterial>`).  
  - Offre il hook `useThrelte` per accedere ai riferimenti della camera, renderer e scena.
- *threlte/extras:*  
  - Fornisce il componente `<Text>` per la visualizzazione delle etichette.  
  - Abilita funzionalità extra per migliorare l'interattività della scena.
- *three:*  
  - Libreria base per la gestione degli oggetti 3D, utilizzata per operazioni come il calcolo di `max`, `rows`, `cols`, e per il raycasting.
- *svelte:*  
  - Utilizzato per gestire il ciclo di vita del componente tramite `onMount()` e `onDestroy()`, nonché per il binding reattivo di props e variabili (ad es. `$state`, `$effect`).
- *svelte/motion e svelte/easing:*  
  - Utilizzati per definire il tweening dell'effetto hover, garantendo animazioni fluide e naturali.
- *three/tsl:*  
  - Importa eventualmente funzioni aggiuntive per la gestione della selezione, se necessario.

=== Color.svelte <color.svelte>
==== *Descrizione*  
Il componente *Color.svelte* fornisce un'interfaccia per la selezione del criterio di colorazione utilizzato nella visualizzazione 3D. Utilizza un controllo List della libreria *svelte-tweakpane-ui* per offrire opzioni predefinite come colorazione per righe, colonne o valori.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  -  Il componente importa e utilizza il componente `List` da *svelte-tweakpane-ui*, che fornisce un'interfaccia utente sotto forma di un menu a tendina per la selezione di un'opzione.
  - `List` è configurato con l'oggetto `options`, che definisce le modalità di selezione disponibili per il filtro colore.

- *Funzionalità:*  
  - Ogni volta che l'utente cambia la selezione nel menu, il valore di `colorSelection` si aggiorna automaticamente grazie al binding bidirezionale, riflettendo la scelta dell'utente.
  - Il valore selezionato viene visualizzato in tempo reale all'interno di un elemento `<pre>`, che permette di visualizzare il numero corrispondente all'opzione scelta, fornendo un feedback immediato all'utente.

==== *Props e Variabili Reattive*  
- *Props:*  
  - *colorSelection:* valore selezionato, passato come proprietà e gestito tramite binding bidirezionale.
  
- *Variabili reattive:*  
  - *options:* oggetto che contiene le possibili scelte per la modalità di colorazione.

==== *Eventi e Comunicazione*  
- Utilizza il binding bidirezionale `bind:value={colorSelection}` per aggiornare automaticamente il valore selezionato e rifletterlo nello stato globale dell'applicazione.

==== *Stili e Layout*  
- Il componente non definisce stili personalizzati, poiché si affida alla libreria *svelte-tweakpane-ui* per la gestione dell'interfaccia utente.


==== *Esempi di Utilizzo*  

*Esempio di integrazione:*  
```svelte
<TabPage title="Color filter">
    <Color bind:colorSelection={colorSelection} />
</TabPage>
```  
Nell'esempio il componente è incluso come una delle schede (Tab) all'interno del pannello delle impostazioni, e permette di modificare il tipo di colore utilizzato nell'applicazione.

==== *Dipendenze Esterne*  
- *svelte-tweakpane-ui:* fornisce il componente List per la selezione delle opzioni in modo strutturato e interattivo.

=== DataFilter.svelte <datafilter.svelte>
==== Descrizione 
Il componente *DataFilter.svelte* permette di filtrare i dati in base a intervalli specifici e valori relativi alla media. Gestisce un intervallo visibile di dati e consente all'utente di filtrare i valori inferiori o superiori alla media globale.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  - Utilizza un `IntervalSlider` per consentire la selezione di un intervallo di valori da visualizzare. 
  - Fornisce tre `Button`:
   - Uno per filtrare i *valori inferiori alla media*.
   - Uno per filtrare i *valori superiori alla media*.
   - Uno per *resettare* il filtro e riportare i valori all'intervallo completo.

- *Funzionalità:*  
  -  La variabile `value` controlla l'intervallo visualizzato.
  - I pulsanti modificano il valore di `mediaFilter`, che definisce i valori da visualizzare in base alla media globale.
  - Il reset del filtro riporta tutto ai valori di default. 

==== *Props e Variabili Reattive*  
- *Props:*  
  - *valMin e valMax:* valori minimi e massimi per l'intervallo di visualizzazione.
  - *mediaFilter:* variabile che memorizza il tipo di filtro applicato (0 = nessun filtro, 1 = sotto media, 2 = sopra media).
  - *value:* intervallo di valori da visualizzare, legato reattivamente all'IntervalSlider.
  
- *Variabili reattive:*  
  - *value:* intervallo di visualizzazione che può essere modificato tramite lo slider.

==== *Eventi e Comunicazione*  
- I `Button` emettono eventi click per cambiare lo stato di `mediaFilter` e `value` e sono utilizzati per applicare filtri e resettare l'intervallo di visualizzazione.
- L'intervallo di valori può essere modificato tramite il `IntervalSlider`, con il valore legato reattivamente a `value`.

==== *Stili e Layout*  
- Non sono specificati stili personalizzati. Viene utilizzato *svelte-tweakpane-ui* per il layout e l'interfaccia utente del filtro e dei pulsanti.

==== *Esempi di Utilizzo*  
*Esempio di integrazione:*  
```svelte
<TabPage title="Data filter">
    <DataFilter 
    {valMin} 
    {valMax} 
    bind:mediaFilter={mediaFilter}
    bind:value={rangeValue} />
</TabPage>
```  
Nell'esempio il componente *DataFilter* viene utilizzato in una TabPage all'interno di un'interfaccia a schede (Tab Group), permettendo la gestione dei filtri dei dati nell'applicazione.

==== *Dipendenze Esterne*  
- *svelte-tweakpane-ui:* non sono specificati stili personalizzati. Viene utilizzato *svelte-tweakpane-ui* per il layout e l'interfaccia utente del filtro e dei pulsanti. 

=== Scene.svelte <scene.svelte>
==== *Descrizione*  
Il componente *Scene.svelte* è responsabile per la visualizzazione della scena 3D, includendo la gestione della fotocamera, delle luci, e della rappresentazione grafica dei dati attraverso il componente *Chart*. Permette l'interazione tramite controlli di orbita e visualizza i dati in un contesto 3D dinamico.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  -  *Camera e controlli:* 
   - Utilizzo di una `PerspectiveCamera` per visualizzare la scena 3D da una posizione predefinita.
   - `OrbitControls` per abilitare l'interazione dell'utente con la scena, includendo il damping e la rotazione automatica.
   - `Gizmo` per visualizzare gli assi e migliorare la comprensione spaziale della scena.
  - *Luci:* due luci direzionali e una luce ambientale, per creare un'illuminazione dinamica e realistica nella scena.
  - *Componente grafico:* `Chart` è il componente che si occupa di visualizzare i dati in un grafico 3D. Esso riceve vari parametri, come `data`, `rangeValue`, `spacing`, `colorSelection`, etc.

- *Funzionalità:*  
  - La fotocamera `PerspectiveCamera` viene utilizzata per configurare la visualizzazione della scena da un'angolazione iniziale predefinita, con la possibilità di manipolare la scena grazie agli `OrbitControls`.
  - `OrbitControls` permette di interagire con la scena tramite il mouse, consentendo operazioni come zoom, panoramica e rotazione.
  - Il `Gizmo` fornisce una rappresentazione visiva degli assi XYZ, migliorando l'interazione e la comprensione della scena da parte dell'utente.

==== *Props e Variabili Reattive*  
- *Props:*  
  - *spacing:* distanza tra gli oggetti nel grafico.
  - *rangeValue:* intervallo per il filtro dei dati visualizzati.
  - *data:* i dati utilizzati per generare il grafico.
  - *colorSelection:* opzione per selezionare il tipo di colorazione dei dati.
  - *media:* media dei dati, usata per il filtraggio.
  - *mediaFilter:* tipo di filtro applicato (media, sopra, sotto).
  - *avgEnabled:* flag che attiva/disattiva il filtro basato sulla media.
  - *target:* posizione della fotocamera, passata dinamicamente per centrare la scena.
  - *barFilterSelection:* selezione del filtro per le barre.
  - *displayBarFilter:* flag che determina se mostrare o meno i filtri per le barre.
  
- *Variabili reattive:*  
  - *autoRotate:* flag (settato su `false`) he abilita o disabilita la rotazione automatica della scena.

==== *Eventi e Comunicazione*  
- Il componente *Scene.svelte* riceve i parametri tramite props e li passa al componente `Chart` per visualizzare i dati.
- Utilizza bind per il controllo del parametro `displayBarFilter` che sincronizza lo stato della visualizzazione delle barre.

==== *Stili e Layout*  
- Il layout della scena è gestito tramite il sistema di *Threlte* e *Three.js*, con una configurazione di luci e camera integrata. Non sono presenti stili CSS personalizzati nel componente.

==== *Esempi di Utilizzo*  
*Esempio di integrazione:*  
```svelte
<div>
  <Canvas>
    <Scene 
    {target} 
    {spacing} 
    {data} 
    {rangeValue} 
    {colorSelection} 
    {media} 
    {mediaFilter} 
    {avgEnabled} 
    {barFilterSelection} 
    bind:displayBarFilter/>
  </Canvas>
</div>
```  
L'esempio utilizzato in App.svelte mostra  l'integrazione del componente *Scene* tramite il tag `<Scene>` all'interno del `<Canvas>` per rendere la scena 3D interattiva e visibile nell'applicazione.

==== *Dipendenze Esterne*  
- *threlte/core:* gestisce la scena 3D, la fotocamera e il rendering.
- *threlte/extras:* fornisce i controlli `OrbitControls` e il `Gizmo` per la manipolazione della scena.
- *Three.js:* usato per la gestione di oggetti 3D come la fotocamera e le luci.

=== SettingsPane.svelte <settingspane.svelte>
==== *Descrizione*  
Il componente *SettingsPane.svelte* gestisce la sezione di impostazioni dell'applicazione, organizzando diverse opzioni tramite una serie di schede. Fornisce agli utenti il controllo su vari parametri come le impostazioni della fotocamera, la fonte dei dati, i filtri, e l'abilitazione della visualizzazione della media.

==== *Struttura e Funzionalità*  
- *Struttura:*  
  -  Utilizza il componente `Pane` di *svelte-tweakpane-ui* per creare un pannello fisso con un gruppo di schede (TabGroup).
  - Ogni *scheda* (TabPage) contiene un componente separato per gestire un gruppo di impostazioni, tra cui:
   - `CameraSettings` per il controllo della posizione della fotocamera
   - `DataSource` per la gestione della fonte dei dati
   - `DataFilter` per il controllo dei filtri sui dati
   - `Color` per selezionare il tipo di colorazione
   - `Average` per abilitare o meno la visualizzazione del piano che corrisponde alla media

- *Funzionalità:*  
  - Le schede offrono un'interfaccia interattiva per modificare e configurare parametri come la posizione della fotocamera, i filtri sui dati e il colore.
  - Sincronizzazione dei dati tra il componente e il resto dell'app tramite binding bidirezionale, permettendo che le modifiche alle impostazioni influenzino la visualizzazione dei dati in tempo reale.

==== *Props e Variabili Reattive*  
- *Props:*  
  - *resetTarget, defaultPosition, valMin, valMax, mediaFilter, colorSelection, rangeValue, value, avgEnabled:* variabili passate da componenti esterni, utilizzate per personalizzare e controllare il comportamento del componente `SettingsPane`.
  
- *Variabili reattive:*  
  - *bindable:* per legare variabili reattive come `mediaFilter`, `colorSelection`, `rangeValue`, `avgEnabled` a proprietà e parametri specifici, aggiornando automaticamente la visualizzazione quando cambiano.

==== *Eventi e Comunicazione*  
- Il componente comunica con gli altri tramite binding bidirezionale per sincronizzare variabili tra le schede e gli altri componenti.
- Le modifiche agli input, come la selezione del filtro dei colori o il range dei dati, vengono propagate attraverso il componente per aggiornare lo stato globale.

==== *Stili e Layout*  
- Il pannello delle impostazioni ha una posizione fissa, impostato tramite la proprietà `position="fixed"`.
- Le schede sono organizzate in un layout tabellare tramite `TabGroup`, con ciascuna scheda (`TabPage`) che consente l'accesso a diverse configurazioni.

==== *Esempi di Utilizzo*  
*Esempio di integrazione:*  
```svelte
<div>
  <Canvas>
    <SettingsPane 
    {resetTarget} 
    {defaultPosition} 
    {valMin} 
    {valMax} 
    bind:mediaFilter 
    bind:colorSelection 
    bind:rangeValue 
    bind:avgEnabled/>

  </Canvas>
</div>
```  
Nel''esempio, il componente SettingsPane viene usato all'interno di un <Canvas> e riceve le *props* necessarie tramite binding, come `resetTarget`, `defaultPosition`, `valMin`, `valMax`, e altre *variabili reattive* come `mediaFilter`, `colorSelection`, `rangeValue`, e `avgEnabled`.

==== *Dipendenze Esterne*  
- *svelte-tweakpane-ui:* libreria per creare interfacce utente con pannelli di configurazione avanzati.
- *ThemeUtils:* usato per applicare temi globali e predefiniti.
