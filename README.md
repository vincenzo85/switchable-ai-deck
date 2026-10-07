# Switchable AI Architecture — 3D Presentation Deck

Presentazione 3D interattiva per l'architettura **Switchable AI** (*«Dalla query alla risposta: build your own pipe»*).

Montata come un'unica pipeline continua in **impress.js**, con 25 stazioni collegate in 3D nello spazio (12 stazioni animate in HTML con player interattivo + 13 stazioni visive ad alta risoluzione).

---

## 🌐 Demo Online

- **Presentazione Completa (Deck 3D)**: [https://vincenzo85.github.io/switchable-ai-deck/](https://vincenzo85.github.io/switchable-ai-deck/)
- **File autonomo (offline)**: basta aprire `index.html` o `deck.html` con un doppio clic in qualsiasi browser moderno (nessuna dipendenza esterna, tutti gli asset e i font sono embedded).

---

## 🎮 Controlli di Navigazione

| Tasto / Gesto | Azione |
|---|---|
| **→** oppure **Spazio** | **Avanza**: attiva prima le frasi/effetti della slide corrente; esauriti i passaggi, la camera vola lungo il tubo 3D alla stazione successiva |
| **←** | **Indietro**: riavvolge i passaggi della slide o torna alla stazione precedente |
| **Clic** | Avanza al passaggio successivo |
| **F** | Schermo intero (fullscreen) |

---

## 🗺️ Mappa delle 25 Stazioni

### Prologo
- **0 · Di chi è il tubo?** — Il condotto principale e la domanda di governance sui dati.
- **1 · Costruire l'infrastruttura** — L'impianto ibrido locale/cloud.

### Atto I · L'illusione e le regole
- **2 · Intelligenza in affitto** — Il costo marginale del cloud e la dipendenza da API esterne.
- **0b · Economico oggi ≠ per sempre** — La volatilità dei prezzi e il lock-in tecnologico.
- **3 · Control Plane** — Il gateway centrale di ispezione e routing.
- **4 · Regole ferree** — Politiche deterministiche di sicurezza e data residency.
- **5 · Rented Intelligence** — Instradamento mirato su modelli Frontier cloud.

### Atto II · Il motore locale e i costi
- **6 · Owned Intelligence** — Hardware proprietario e inferenza locale a costo marginale zero.
- **7 · RAG locale protetto** — Recupero vettoriale confinato senza dispersione dei dati aziendali.
- **8 · Matrice di routing** — Decision engine multidimensionale (sensibilità vs complessità).
- **9 · Paradosso FinOps** — Analisi TCO e punto di pareggio economico.

### Atto III · Il sistema impara
- **A · Ogni richiesta lascia una traccia** — Dalla singola interazione alla creazione di conoscenza.
- **B · Le tre memorie** — Memoria episodica, semantica e procedurale.
- **C · Prima le prove dure** — Validazione rigorosa prima del deploy.
- **D · Il tuo feedback è un sensore** — Rilevamento continuo del segnale operativo.

### Climax & Telemetria
- **10 · Stress Test** — Resilienza del sistema, simulazione di turbolenza cloud e degradazione controllata.
- **11 · Osservabilità** — Telemetria in tempo reale: P95 latency (3.5s) e risparmio documentato (95.7%).

### Atto IV · Teoria del controllo
- **E · Il ciclo** — Anello di retroazione tra esecuzione e apprendimento.
- **F · Esplorare o sfruttare** — Bilanciamento dinamico tra modelli consolidati e nuovi frontier.
- **G · Anche il budget impara** — Allocazione predittiva dei costi.
- **H · L'ignoto va al Frontier** — Delegare all'esterno solo ciò che non è ancora standardizzabile.

### Atto V · Automazione & Mandato
- **12 · Workflows, Agenti e MCP** — Standardizzazione tramite Model Context Protocol (FastMCP) e mitigazione dell'overhead dei token (5x - 28x).
- **13 · Data Flywheel** — Volano dei dati proprietari.
- **14 · Mese 1 vs Mese 12** — Evoluzione dell'asset informativo nel tempo.
- **15 · Il mandato per il C-Suite** — Direttive strategiche di governance per il board.
- **Panoramica finale** — Vista isometrica globale dell'intera condotta 3D.

---

## 📂 Slide Singole (Standalone)

Ogni slide interattiva è disponibile anche in versione singola autonoma nella cartella [`slides/`](slides/):
- [Slide 1 · Costruire l'infrastruttura](slides/slide_01.html)
- [Slide 2 · Intelligenza in affitto](slides/slide_02.html)
- [Slide 3 · Control Plane](slides/slide_03.html)
- [Slide 4 · Regole ferree](slides/slide_04.html)
- [Slide 5 · Rented Intelligence](slides/slide_05.html)
- [Slide 6 · Owned Intelligence](slides/slide_06.html)
- [Slide 7 · RAG locale protetto](slides/slide_07.html)
- [Slide 8 · Matrice di routing](slides/slide_08.html)
- [Slide 9 · Paradosso FinOps](slides/slide_09.html)
- [Slide 10 · Stress Test](slides/slide_10.html)
- [Slide 11 · Osservabilità](slides/slide_11.html)
- [Slide 12 · Workflows, Agenti e MCP](slides/slide_12.html)

---

## 🛠️ Stack Tecnologico

- **impress.js** per le transizioni 3D lungo la condotta cilindrica nello spazio vettoriale.
- **HTML5 Canvas / Web Animations API** per luci geodetiche, particelle, scanner blueprint e foschie di calore.
- **SVG HUD & Isometric Layers** per cornici wireframe dinamiche e telemetria.
- **Self-contained**: immagini convertite in base64 e iframe `srcdoc` per consentire l'esecuzione locale immediata con doppio clic (`file:///`).
