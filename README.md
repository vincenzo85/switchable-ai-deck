# Switchable AI — Deck 3D

Presentazione interattiva *«Costruisci il tuo oleodotto — dalla query alla risposta»*: un'unica condotta 3D
(impress.js) con una copertina e 28 stazioni (in fondo i riferimenti bibliografici e il gran finale), più una panoramica finale con i QR.

- **Online**: https://vincenzo85.github.io/switchable-ai-deck/
- **Codice del progetto**: https://github.com/vincenzo85/switchable-ai
- **Bibliografia** (27 paper verificati su arXiv): https://vincenzo85.github.io/switchable-ai-deck/bibliografia.html

---

## 🚀 Avvio rapido (consigliato per il palco)

Serve solo Python 3 e Chrome/Chromium (o un browser moderno).

```bash
git clone https://github.com/vincenzo85/switchable-ai-deck.git
cd switchable-ai-deck
./avvia_server.sh            # porta 8000 (se occupata usa la successiva)
./avvia_server.sh 9000       # porta a scelta
NO_BROWSER=1 ./avvia_server.sh   # solo server, le pagine le apri tu
```

Lo script avvia un server locale (solo `127.0.0.1`) e apre due finestre:

| Finestra | Indirizzo | A cosa serve |
|---|---|---|
| **Deck** | `http://localhost:8000/deck.html` | Va sul proiettore: trascinala sul secondo schermo e premi **F11** |
| **Console relatore** | `http://localhost:8000/presenter.html` | Resta sul tuo portatile: copione, icone-promemoria, timer, anteprima |

**Ctrl+C** nel terminale ferma il server.

Su **Windows** (o senza lo script): dalla cartella del repo esegui `python -m http.server 8000`
e apri a mano i due indirizzi qui sopra.

> Deck e console devono essere aperti **dallo stesso indirizzo** (`http://localhost:PORTA/…`):
> così restano sincronizzati (BroadcastChannel). Con il doppio clic sui file (`file:///`) il deck
> funziona lo stesso, ma la sincronizzazione con la console non è garantita.

### Prima di salire sul palco
1. Avvia lo script un paio di minuti prima e lascia il deck sulla **copertina**.
2. Attendi la scritta **«Pronto · Spazio per iniziare»**: le slide si caricano una alla volta in background
   (la barra mostra quante sono pronte). Da lì in poi i voli tra le stazioni sono fluidi.
3. Allarga l'anteprima nella console se serve (vedi sotto) e azzera il timer con **0**.

---

## 🎮 Comandi

### Deck (proiettore)
| Tasto | Azione |
|---|---|
| **→**, **Spazio**, **Invio**, **PagGiù**, clic | Avanti: prima le frasi/effetti della slide, poi il volo alla stazione successiva |
| **←**, **PagSu**, **Backspace** | Indietro: nasconde l'ultima frase o torna alla stazione precedente |
| **V** | Versione breve (18 stazioni) ↔ completa (28); anche con `deck.html?breve` |
| **F11** | Schermo intero del browser |

I telecomandi da presentazione (che inviano PagGiù/PagSu) funzionano senza configurazione.

### Console relatore
| Tasto / Controllo | Azione |
|---|---|
| **Spazio** / **→** | Frase successiva (comanda anche il deck) |
| **←** | Frase precedente |
| **Shift+→** / **N** / **PagGiù** | Salta alla slide successiva |
| **Shift+←** / **P** / **PagSu** | Torna alla slide precedente |
| **R** | Riavvia la slide corrente |
| **T** · **0** | Pausa timer · azzera timer |
| **F** | Schermo intero |
| **V** o pulsante **BREVE · 18 / COMPLETA · 28** | Cambia versione del talk (anche sul deck): indice, numerazione e tempi seguono la versione |
| **H** o testo «contatore: on/off» | Mostra/nasconde il contatore grande sopra l'anteprima («2 di 5», poi avviso ambra «prossimo Spazio: nuova slide») |
| Clic sull'indice a destra | Vai direttamente a quella stazione |
| Barretta tra anteprima e copione | **Trascina** per ingrandire/ridurre l'anteprima, **doppio clic** per ripristinarla, oppure pulsanti **− / +** |

Per ogni slide la console mostra: messaggio chiave, **icone-promemoria** dei concetti (anche quelle
della prossima stazione), copione parlato, numeri verificati, frase-ponte, trappole da evitare e
domanda spinosa con risposta.

---

### Versione breve (15 minuti)
18 stazioni, circa 50 secondi l'una: **0 · 1 · 0b · 3 · 4 · 7 · 8 · 9 · B · D · 10 · 11 · E · G · 13 · 14 · 15 · 18**.
La scelta resta memorizzata nel browser; il deck e la console si allineano da soli.

## 🗺️ Le stazioni

**Prologo**

- [0 · Di chi è il tubo?](slides/slide_0.html) — Non serve sempre un modello migliore. Serve una torre di controllo.
- [1 · Costruire l’infrastruttura](slides/slide_01.html) — Un'infrastruttura di controllo tra l'applicazione e i modelli.

**Atto I**

- [2 · Intelligenza in affitto](slides/slide_02.html) — In demo vola tutto, in produzione arrivano i vincoli reali.
- [0b · Economico oggi ≠ per sempre](slides/slide_0b.html) — Un prezzo da commodity non è un contratto con il futuro.
- [3 · Control Plane](slides/slide_03.html) — Cambia una sola riga: la torre decide la rotta.
- [4 · Regole ferree](slides/slide_04.html) — La torre non è un LLM: 0 ms di latenza deterministica.
- [5 · Rented Intelligence](slides/slide_05.html) — Il Cloud è un jet: lo accendi quando devi volare lontano.

**Atto Ii**

- [6 · Owned Intelligence](slides/slide_06.html) — Modello locale on-premise: zero costo per token marginale, privacy assoluta.
- [7 · RAG locale protetto](slides/slide_07.html) — I documenti aziendali non escono: retrieval locale con hnswlib e nomic-embed.
- [8 · Matrice di routing](slides/slide_08.html) — Instradare in base a Sensibilità dei dati e Complessità del task.
- [9 · Paradosso FinOps](slides/slide_09.html) — Risparmio del 96%? È vero, ma è un'illusione se non contate l'hardware.

**Atto Iii**

- [A · Ogni richiesta lascia una traccia](slides/slide_A.html) — Dalle richieste all'evidenza: ogni interazione diventa dato telemetrico.
- [B · Le tre memorie](slides/slide_B.html) — Tre livelli separati: la policy cambia senza riscrivere la storia.
- [C · Prima le prove certe](slides/slide_C.html) — Prima le prove certe deterministiche: test, compilazione e schema validation prima del giudice qualitativo.
- [D · Il tuo feedback è un sensore](slides/slide_D.html) — Copia, riprova, correzione: i segnali impliciti che guidano il sistema.

**Climax**

- [10 · Stress Test](slides/slide_10.html) — 100 su 100 servite, fallback automatici e zero violazioni di privacy.
- [11 · Osservabilità](slides/slide_11.html) — Quello che non misuri non puoi governarlo: Grafana e Langfuse.

**Atto Iv**

- [E · Il ciclo](slides/slide_E.html) — Osserva → Decidi → Esegui → Misura → Impara.
- [F · Esplorare o sfruttare](slides/slide_F.html) — Addestramento (compro conoscenza) vs Produzione (spendo conoscenza).
- [G · Il budget è una policy](slides/slide_G.html) — Il budget non è solo un vincolo: è parte della policy di apprendimento.
- [H · L’ignoto va al Frontier](slides/slide_H.html) — La novità è un segnale di rotta: Q → {Q₁..Q₄} → distanza dalla memoria.

**Atto V**

- [12 · Workflows, Agenti e MCP](slides/slide_12.html) — Dal chatbot alla catena operativa: n8n e server MCP con strumenti dedicati.
- [13 · Data Flywheel](slides/slide_13.html) — Il Frontier diventa insegnante: distillazione dal traffico verso il modello locale.
- [14 · Mese 1 vs Mese 12](slides/slide_14.html) — Trasformare spesa operativa (OpEx) in asset intellettuale posseduto.

**Atterraggio & Chiusura**

- [15 · Il mandato per il C-Suite](slides/slide_15.html) — Una GPU ferma costa più del cloud. Il punto di pareggio è all'utilizzo (12%).

**Chiusura & Risorse**

- [16 · La torre di controllo](slides/slide_16.html) — La torre di controllo governa il sistema: codice sorgente aperto, architettura e benchmark riproducibili.

- [17 · Riferimenti](slides/slide_17.html) — Tutti i paper citati, con QR verso la [bibliografia completa](bibliografia.html).
- [18 · Gran finale](slides/slide_18.html) — Torre di controllo e flywheel in 3D, tutti i QR e il best paper del giorno svelato col rullo di tamburi (Spazio).

Ogni slide è disponibile anche da sola nella cartella [`slides/`](slides/).

---

## 📁 Contenuto

```
deck.html / index.html   presentazione completa, file unico autonomo (immagini incorporate)
presenter.html           console relatore
bibliografia.html        i paper citati, con link (pagina del QR)
slides/                  le singole slide autonome
avvia_server.sh          server locale + apertura deck e console
```

## 🛠️ Tecnologia

- **impress.js** per i voli 3D lungo la condotta.
- **Canvas / Web Animations API** per scanner, luci, foschie e testi frase per frase.
- **Autonomo**: immagini in base64 e slide in iframe `srcdoc`, nessuna dipendenza esterna obbligatoria.
