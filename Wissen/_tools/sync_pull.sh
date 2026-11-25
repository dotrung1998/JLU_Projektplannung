#!/bin/bash
# Sitzungsbeginn: den Arbeitsstand auf den aktuellen main bringen.
#
# Warum ein eigenes Skript statt einer Zeile in daily.sh: daily.sh läuft auch in
# GitHub Actions auf einem frischen Checkout mit losem HEAD (actions/checkout).
# Dort ist ein Pull sinnlos und ein Merge riskant, er würde den Tageslauf
# abbrechen. Dieses Skript gehört an den Anfang einer Sitzung — vor dem ersten
# Lesen und Schreiben —, nicht in den automatischen Lauf.
#
# Es holt nur und spult nur per Fast-Forward vor. Es committet nichts, pusht
# nichts, stasht nichts und schreibt keinen eigenen Commit um. Ist der Stand
# hinter main, wird er vorgespult; liegen eigene Commits daneben, bricht das
# Skript ab und die Person entscheidet.
#
# Aufruf:
#   bash Wissen/_tools/sync_pull.sh
#   bash Wissen/_tools/sync_pull.sh --no-fetch
#     (nach einem Fetch über die Git-Integration des Cloud-Workspace)
#
# Exit-Codes:
#   0  schon aktuell oder vorgespult
#   1  liegt in keinem Git-Repository
#   2  Arbeitsverzeichnis unsauber, es wird nicht gezogen
#   3  Fetch fehlgeschlagen oder kein FETCH_HEAD vorhanden
#   4  auseinandergelaufen (eigene Commits), nichts verändert
#   5  Fast-Forward nicht möglich, nichts verändert
set -uo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Wurzel über Git bestimmen, nicht über ../..: liegt das Skript höher oder tiefer
# (z. B. in tools/), würde ../.. aus dem Repository herauszeigen.
if ! ROOT="$(git -C "$DIR" rev-parse --show-toplevel 2>/dev/null)"; then
  echo "sync_pull: $DIR liegt in keinem Git-Repository." >&2
  exit 1
fi
cd "$ROOT" || exit 1

REMOTE="${SYNC_REMOTE:-origin}"
BRANCH="${SYNC_BRANCH:-main}"
DO_FETCH=1
[ "${1:-}" = "--no-fetch" ] && DO_FETCH=0

# 1. Unfertige Änderungen gehören der Person: nicht stashen, nicht überschreiben.
if [ -n "$(git status --porcelain)" ]; then
  echo "sync_pull: Arbeitsverzeichnis ist nicht sauber — es wird nicht gezogen." >&2
  git status --short | sed 's/^/  /' >&2
  echo "Erst committen oder stashen, dann erneut aufrufen." >&2
  exit 2
fi

# 2. main holen. Dieses Repository schreibt beim Fetch kein origin/main-Ref,
#    deshalb ist FETCH_HEAD die verlässliche Vergleichsquelle.
if [ "$DO_FETCH" -eq 1 ]; then
  if ! git fetch --quiet "$REMOTE" "$BRANCH"; then
    echo "sync_pull: Fetch von $REMOTE/$BRANCH fehlgeschlagen (Netz, Rechte oder Anmeldung)." >&2
    echo "Im Cloud-Workspace: Fetch über die Git-Integration ausführen und danach" >&2
    echo "dieses Skript mit --no-fetch starten." >&2
    exit 3
  fi
fi

if ! git rev-parse --verify --quiet FETCH_HEAD >/dev/null; then
  echo "sync_pull: kein FETCH_HEAD vorhanden — einmal ohne --no-fetch aufrufen." >&2
  exit 3
fi

HEAD_NOW=$(git rev-parse --short HEAD)
BRANCH_NOW=$(git rev-parse --abbrev-ref HEAD)
BEHIND=$(git rev-list --count HEAD..FETCH_HEAD)
AHEAD=$(git rev-list --count FETCH_HEAD..HEAD)

if [ "$BEHIND" -eq 0 ]; then
  echo "sync_pull: nichts zu ziehen — $BRANCH_NOW enthält $REMOTE/$BRANCH vollständig (HEAD $HEAD_NOW, $(git log -1 --format=%cs HEAD))."
  [ "$AHEAD" -gt 0 ] && echo "  $AHEAD eigene Commit(s) darüber."
  exit 0
fi

if [ "$AHEAD" -gt 0 ]; then
  echo "sync_pull: $BRANCH_NOW ist $AHEAD Commit(s) vor und $BEHIND hinter $REMOTE/$BRANCH." >&2
  echo "Nichts verändert. Erst prüfen, ob die eigenen Commits dorthin gehören," >&2
  echo "dann bewusst mergen oder rebasen — nie erzwingen." >&2
  git log --oneline "FETCH_HEAD..HEAD" | sed 's/^/  /' >&2
  exit 4
fi

# 3. Nur vorspulen: HEAD wird nie umgeschrieben, nichts geht verloren.
if git merge --ff-only --quiet FETCH_HEAD; then
  echo "sync_pull: von $HEAD_NOW auf $(git rev-parse --short HEAD) vorgespult ($BEHIND Commit(s) von $REMOTE/$BRANCH)."
  git log --oneline "$HEAD_NOW..HEAD" | sed 's/^/  /'
  exit 0
fi

echo "sync_pull: Fast-Forward nicht möglich, nichts wurde verändert." >&2
echo "Stand prüfen mit: git status" >&2
exit 5
