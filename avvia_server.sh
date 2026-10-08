#!/usr/bin/env bash
# Avvia il server locale e apre deck (proiettore) e console relatore in due finestre.
# Uso: ./avvia_server.sh [porta]      (default 8000; Ctrl+C per fermare)
#      NO_BROWSER=1 ./avvia_server.sh  solo server, senza aprire finestre
set -euo pipefail

cd "$(dirname "$(readlink -f "$0")")"
PORT="${1:-8000}"

# se la porta è occupata prova le successive
while (exec 3<>"/dev/tcp/127.0.0.1/$PORT") 2>/dev/null; do PORT=$((PORT + 1)); done

BASE="http://localhost:$PORT"
python3 -m http.server "$PORT" --bind 127.0.0.1 >/dev/null 2>&1 &
SERVER=$!
trap 'kill $SERVER 2>/dev/null; echo; echo "Server fermato."' EXIT
trap 'exit 0' INT TERM

# attende che il server risponda
for _ in $(seq 50); do (exec 3<>"/dev/tcp/127.0.0.1/$PORT") 2>/dev/null && break; sleep 0.1; done

open_win() {
  for b in google-chrome google-chrome-stable chromium chromium-browser; do
    if command -v "$b" >/dev/null; then "$b" --new-window "$1" >/dev/null 2>&1 & return; fi
  done
  xdg-open "$1" >/dev/null 2>&1 &
}
if [ -z "${NO_BROWSER:-}" ]; then
  open_win "$BASE/presenter.html"
  sleep 0.5
  open_win "$BASE/deck.html"
fi

cat <<EOF
Presentazione pronta su http://localhost:$PORT
  Deck (proiettore):  $BASE/deck.html       → spostala sul proiettore e premi F11
  Console relatore:   $BASE/presenter.html
Ctrl+C per fermare il server.
EOF
wait "$SERVER"
