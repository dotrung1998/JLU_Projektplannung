#!/bin/bash
# Taeglicher Lauf: Quellen einlesen, Board und Fristen fortschreiben.
# Von Hand aufrufbar; fuer den Automatikbetrieb siehe com.projektplanung.pda.daily.plist
# (startet daily_guard.sh, das einen verpassten Lauf nachholt).
set -uo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# launchd startet mit minimalem PATH; pdftotext und pandoc liegen unter Homebrew.
# PATH muss vor dem ersten git-Aufruf stehen, sonst findet ein Lauf unter launchd
# das Programm nicht.
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

# Wurzel über Git bestimmen, nicht über ../..: liegt das Skript woanders, würde
# ../.. aus dem Repository herauszeigen.
if ! ROOT="$(git -C "$DIR" rev-parse --show-toplevel 2>/dev/null)"; then
  echo "daily: $DIR liegt in keinem Git-Repository." >&2
  exit 1
fi
cd "$ROOT" || exit 1

LOG="$DIR/daily.log"
PY="$(command -v python3 || echo /usr/bin/python3)"
BEFORE=0
[ -f "$LOG" ] && BEFORE=$(wc -l < "$LOG" | tr -d ' ')

RC=0
FAILED=""
{
  echo "=== $(date '+%Y-%m-%d %H:%M:%S') ==="
  "$PY" "$DIR/ingest.py" || { RC=1; FAILED="ingest.py"; }
  echo "---"
  "$PY" "$DIR/board_sync.py" || { RC=1; FAILED="${FAILED:+$FAILED, }board_sync.py"; }
} >> "$LOG" 2>&1

# Ein gescheiterter Kernschritt muss sichtbar sein: Mitteilung, Bericht mit ❌, Exit ≠ 0.
echo "---" >> "$LOG"
if [ "$RC" -ne 0 ]; then
  MSG="Kernschritt fehlgeschlagen: $FAILED"
  echo "$MSG"
  /usr/bin/osascript -e "display notification \"$MSG\" with title \"Projektplanung: Lauf fehlgeschlagen\"" >/dev/null 2>&1 \
    || echo "Hinweis: macOS-Mitteilung konnte nicht angezeigt werden."
  "$PY" "$DIR/discord_notify.py" --status fail --detail "$FAILED" >> "$LOG" 2>&1 || true
else
  "$PY" "$DIR/discord_notify.py" --status ok >> "$LOG" 2>&1 || true
fi

# Nur den Block dieses Laufs zeigen, damit Hinweise nicht aus dem Fenster fallen.
tail -n "+$((BEFORE + 1))" "$LOG"

exit "$RC"
