#import "//templates/documento.typ": *
#import "@preview/plotst:0.2.0": *

#show: conf.with(
  title: "Norme di Progetto",
  subtitle: "",
  author: "Il team",
  state: "Bozza",
  show_outline: true,
  outline_depth: 4,
  changelog: (
    "0.1.2", "25-11-2024",  "Redatta sottosezione Documentazione", p.pozzobon, "","",
    "0.1.1", "24-11-2024",  "Redatta sezione Introduzione", p.lucato, p.checchinato,p.checchinato,
    "0.1.0", "24-11-2024",  "Redatta la suddivisione del documento", p.pozzobon, p.checchinato, p.checchinato,
  )
)


= Introduzione
== Finalità del documento
L'obiettivo del documento è quello di definire le linee guida del gruppo per garantire un lavoro, fortemente asincrono, uniforme, coerente e di qualità. Per garantire la gestione del prodotto, composto da software e documentazione, è necessario un approccio strutturato al #glossario("ciclo di vita"). \
Tale documento è redatto secondo lo standard #glossario("ISO 12207:1995"), il quale identifica i processi di un ciclo di vita di un software, secondo una struttura modulare con relativa responsabilità su ciascun processo. \

== Glossario 
All'interno del documento saranno spesso utilizzati degli acronimi o termini tecnici per semplificare la scrittura e la lettura. Per garantire che quanto scritto sia comprensibile a chiunque, è possibile usufruire del #link("https://archi7echs-team.github.io/glossario.html")[_glossario_]. Tutte le parole consultabili nel glossario saranno identificate da una "#text(blue)[G]" in colore blu. Facendo click sul collegamento si aprirà una scheda del browser con il glossario 
== Riferimenti
Il documento è stato redatto con riferimento alla seguente documentazione.
=== Link al capitolato C5 - 3Dataviz
- Riferimento al capitolato 5 di *_Sanmarco Informatica SPA - 3Dataviz_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C5.pdf]] - _Ultimo accesso al documento 22/11/2024_
=== Slide del corso IS
- Riferimento alle slide IS: *_Processi di ciclo di vita_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf]] - Sezione sullo standard ISO 12207:1995 -  _Ultimo accesso al documento 22/11/2024_
- Riferimento alle slide IS: *_Regolamento del progetto didattico_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[#text(blue)[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]] -  _Ultimo accesso al documento 22/11/2024_
= Processi di Supporto
== Documentazione 
Questa sezione tratta le norme per la redazione della documentazione del gruppo, in linea con l'organizzazione del team, allineando lo stile e la gestione delle revisioni.
=== Modelli di documento
La redazione di tutta la documentazione del gruppo avviene in #glossario("Typst") utilizzando i templates messi a disposizione nell'apposita cartella "templates" della #glossario("repository") \
I modelli di documento sono:
- documento
- allegato
- carta intestata
==== Documento
Questo #glossario("template") viene utilizzato per la redazione di tutta la documentazione interna ed esterna. \ 
Nella prima pagina del documento devono essere indicati, oltre a titolo e sottotitolo:
- *autore del documento*
- *tipologia del documento* (#glossario("Interno") o #glossario("Esterno"))
- *ultima modifica*
- *stato del documento* (Bozza oppure Approvato)
L'aggiornamento di autore e tipologia del documento è a cura del #glossario("redattore") del documento.  \
Lo stato del documento viene posto in _Bozza_ dal #glossario("redattore") e aggiornato dal #glossario("verificatore") quando il documento raggiunge una versione che ne consente l'#glossario("approvazione") e #glossario("rilascio"). \
L'ultima modifica viene aggiornata automaticamente ad ogni modifica della #glossario("Tabella delle revisioni"), prendendo la data dell'ultima #glossario("revisione") come data di ultima modifica. \
L'indice si aggiorna automaticamente in base alle sezioni di Typst, per il dettaglio su come suddividere correttamente il documento in sezioni e sottosezioni si rimanda alla documentazione ufficiale di Typst.

_ Per la gestione della tabella delle revisioni si fa riferimento all'apposita sezione di questo documento. _
==== Allegato
Questo template viene utilizzato per la redazione degli allegati ai verbali (interni ed esterni). E' compito di chi redige l'allegato indicare, nell'apposita sezione nell'intestazione del documento:
- numero allegato (num progressivo riferito al verbale)
- numero di verbale (esplicitando se interno o esterno)
- data del verbale

Il documento di questa tipologia viene inserito nello stesso documento del verbale.

==== Carta intestata
Questo template viene utilizzato per tutte le comunicazioni ufficiali in uscita verso un destinatario esterno. \
E' compito di chi redige il documento indicare, nell'apposita sezione:
- destinario del documento
- mezzo di invio del documento
- oggetto del documento


=== Redazione dei verbali
La modalità di redazione dei verbali interni ed esterni è la medesima. \
Nella prima pagina di contenuto, ovvero la pagina nr. 3, è necessario indicare, in ordine:
- breve sezione, scritta in _italic_ con motivo e modalità della convocazione
- #glossario("ordine del giorno")
- dettagli dell'incontro, con riferimento a:
 - data e ore della convocazione
 - luogo (in presenza oppure online, specificando in questo caso la #glossario("piattaforma")
 - destinatari dell'incontro
- verbale, specificando:
  - presenze

Dopo le presenze si procede con il riassunto della discussione dei relativi punti dell'#glossario("OdG"), da riportare in ordine. L'ultima sezione deve sempre essere  "*Varie ed eventuali*"" indicando, se ci sono state, discussioni di punti extra OdG ed orario di fine dell'incontro.

Il verbale deve inoltre contenere, nella relativa sezione del #glossario("template"):
- una tabella con un riassunto delle decisioni prese.  Ogni riga di questa deve contenere il riferimento al punto dell'#glossario("OdG"), per consentire al lettore di approfondire la sezione di interesse senza dover leggere tutto il Rdocumento, l'argomento e la decisione presa
- una tabella #glossario("TODO") con riferimento alle #glossario("issue") create relativamente alle decisioni prese. In quest'utlima è necessario indicare #glossario("ID") della #glossario("issue"), assegnatario (se presente, in caso contrario "-"), descrizione del #glossario("task").

Alla fine del documento deve essere indicato Luogo e Data,inserimento sempre Padova come luogo, sede del gruppo, e la data della riunione, #glossario("Verbalizzante") e #glossario("Responsabile di Progetto") e, nel caso di #glossario("verbale esterno"), firma, per approvazione, di un rappresentante dell'azienda.

=== Registro delle modifiche 
La tabella contenete il #glossario("registro delle modifiche"), situata a pagina 2 dei verbali e della documentazione del gruppo, escluso quindi allegati e carta intestata, deve essere aggiornata, da colui che redige il documento oppure ci effettua una modifica, ogni volta che un documento viene mandato in revisione. E' necessarrio indicare, in ogni riga della tabella, la data, la descrizione delle modifiche effettuate, l'autore delle modifiche e attribuire un numero di versione, secondo lo #glossario("schema x.y.z"), incrementando il valore _z_ . Il #glossario("revisore"), invece, oltre ad inserire il proprio nome nell'apposita cella, è tenuto a verificare che il numero di versione sia corretto. E' a cura di quest'ultimo, quindi, valutare l'eventuale incremento del valore _y_. L'incremento del valore _x_ avviene, invece, nello specifico caso del progetto, quando la documentazione viene consegnata al committente nelle due fasi di revisione: #glossario("RTB") e #glossario("PB"). 

== Verifica e Revisione della documentazione

= Management
== Gestione dell'assegnazione dei ruoli

== Gestione della board
