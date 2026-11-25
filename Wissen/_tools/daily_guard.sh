#!/bin/bash
# Holt einen verpassten Tageslauf nach.
#
# Der LaunchAgent startet dieses Skript bei Login (RunAtLoad), um 8:00
# (StartCalendarInterval) und alle 30 Minuten (StartInterval). Es startet
# daily.sh nur, wenn in daily.log noch kein Lauf von heute steht. Damit wird ein
# Lauf nachgeholt, der wegen Schlaf oder ausgeschaltetem Rechner ausfiel.
#
# Kein eigenes Zustandsfile: die Quelle der Wahrheit ist daily.log selbst.
set -uo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

# Wurzel über Git bestimmen, nicht über ../..: liegt das Skript woanders, würde
# ../.. aus dem Repository herauszeigen.
if ! ROOT="$(git -C "$DIR" rev-parse --show-toplevel 2>/dev/null)"; then
  echo "daily_guard: $DIR liegt in keinem Git-Repository." >&2
  exit 1
fi
cd "$ROOT" || exit 1

LOG="$DIR/daily.log"
TODAY="$(date '+%Y-%m-%d')"

# Heute schon gelaufen? Dann nichts tun — auch nach einem Fehllauf kein Retry-Sturm;
# der Fehler wurde beim Lauf selbst gemeldet (Mitteilung, ❌-Bericht, Exit ≠ 0).
if [ -f "$LOG" ] && grep -q "^=== $TODAY " "$LOG"; then
  exit 0
fi

echo "Guard: kein Lauf für $TODAY, hole nach ($(date '+%H:%M'))"
/bin/bash "$DIR/daily.sh"
RC=$?
echo "Guard: Nachhol-Lauf rc=$RC"
exit "$RC"
