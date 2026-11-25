#!/bin/bash
# Selbsttest für sync_pull.sh.
#
# Baut im Repository-Wurzelverzeichnis ein temporäres Arbeitsverzeichnis, darin
# kleine Wegwerf-Repositories mit barem Remote und spielt die Fälle durch, die
# sync_pull.sh unterscheiden soll: aktuell, Remote voraus, mehrere Commits,
# Aufruf aus einem Unterordner, Skript in tieferem Ordner, unsauberes
# Arbeitsverzeichnis, kein Git-Repository, auseinandergelaufene Branches,
# --no-fetch mit und ohne FETCH_HEAD, fehlgeschlagener Fetch. Das Verzeichnis
# wird am Ende entfernt, auch bei Abbruch.
#
# Nur lokal, ohne Netz: alle Remotes sind Pfade im temporären Verzeichnis.
#
# Aufruf:
#   bash Wissen/_tools/test_sync_pull.sh
#
# Exit-Codes:
#   0  alle Fälle bestanden
#   1  mindestens ein Fall gescheitert (oder sync_pull.sh fehlt)
set -uo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPT="$DIR/sync_pull.sh"

if [ ! -f "$SCRIPT" ]; then
  echo "test_sync_pull: $SCRIPT fehlt — es gibt nichts zu prüfen." >&2
  exit 1
fi

if ! command -v git >/dev/null 2>&1; then
  echo "test_sync_pull: git ist nicht installiert." >&2
  exit 1
fi

if ! ROOT="$(git -C "$DIR" rev-parse --show-toplevel 2>/dev/null)"; then
  echo "test_sync_pull: $DIR liegt in keinem Git-Repository." >&2
  exit 1
fi

WORK="$(mktemp -d "$ROOT/.sync-test.XXXXXX")" || {
  echo "test_sync_pull: konnte kein temporäres Verzeichnis anlegen." >&2
  exit 1
}
cleanup() { rm -rf "$WORK"; }
trap cleanup EXIT INT TERM

# Die Wegwerf-Repositories bekommen eine eigene Identität und keine globalen
# Einstellungen: sonst hängen Hooks oder user.name der Maschine am Ergebnis.
export GIT_AUTHOR_NAME="sync-test" GIT_AUTHOR_EMAIL="sync-test@example.invalid"
export GIT_COMMITTER_NAME="sync-test" GIT_COMMITTER_EMAIL="sync-test@example.invalid"
export GIT_CONFIG_GLOBAL=/dev/null GIT_CONFIG_NOSYSTEM=1

PASS=0
FAIL=0
OUT=""
RC=0
SCRIPT_REL="Wissen/_tools/sync_pull.sh"

has() { case "$1" in *"$2"*) return 0 ;; *) return 1 ;; esac; }

report() { # $1 Name, $2 erwarteter Exit-Code, $3 Bedingung (0 = erfüllt)
  if [ "$RC" -eq "$2" ] && [ "$3" -eq 0 ]; then
    PASS=$((PASS + 1))
    printf 'PASS  %02d  %s\n' "$((PASS + FAIL))" "$1"
    return 0
  fi
  FAIL=$((FAIL + 1))
  printf 'FAIL  %02d  %s (rc=%s, erwartet %s)\n' "$((PASS + FAIL))" "$1" "$RC" "$2"
  printf '%s\n' "$OUT" | sed 's/^/        /'
  return 1
}

# Kopie des Skripts ins Wegwerf-Repository legen und über .git/info/exclude
# ausblenden, damit die Kopie das Arbeitsverzeichnis nicht unsauber macht.
install_script() { # $1 Repo, $2 Relpfad (optional)
  local repo="$1" rel="${2:-Wissen/_tools/sync_pull.sh}"
  mkdir -p "$repo/$(dirname "$rel")"
  cp "$SCRIPT" "$repo/$rel"
  chmod +x "$repo/$rel"
  printf '/%s\n' "$rel" >> "$repo/.git/info/exclude"
}

make_repo() { # $1 Fallname; setzt REPO und REMOTE
  local d="$WORK/$1"
  mkdir -p "$d"
  git init -q --bare -b main "$d/remote.git" || return 1
  git clone -q "$d/remote.git" "$d/work" 2>/dev/null || return 1
  (
    cd "$d/work" || exit 1
    printf 'eins\n' > a.txt
    mkdir -p unterordner
    printf 'notiz\n' > unterordner/notiz.txt
    git add a.txt unterordner/notiz.txt
    git commit -qm "Start"
    git push -q origin main
  ) || return 1
  REPO="$d/work"
  REMOTE="$d/remote.git"
  install_script "$REPO"
}

advance_remote() { # $1 Fallname, $2 Anzahl Commits, $3 Dateipräfix
  local d="$WORK/$1" n="$2" p="$3" i
  git clone -q "$d/remote.git" "$d/other" 2>/dev/null || return 1
  for ((i = 1; i <= n; i++)); do
    (
      cd "$d/other" || exit 1
      printf '%s\n' "$i" > "$p$i.txt"
      git add "$p$i.txt"
      git commit -qm "$p$i"
    ) || return 1
  done
  ( cd "$d/other" && git push -q origin main ) || return 1
}

run_sync() { # $1 Repo, $2 Arbeitsverzeichnis relativ zum Repo, Rest: Argumente
  local repo="$1" cwd="$2"
  shift 2
  OUT="$(cd "$repo/$cwd" && bash "$repo/$SCRIPT_REL" "$@" 2>&1)"
  RC=$?
}

# --- 1: schon aktuell ------------------------------------------------------
make_repo aktuell || { echo "test_sync_pull: Aufbau fehlgeschlagen." >&2; exit 1; }
run_sync "$REPO" ""
has "$OUT" "nichts zu ziehen"
report "aktuell: nichts zu ziehen" 0 $?

# --- 2: Remote einen Commit voraus ----------------------------------------
make_repo voraus || exit 1
advance_remote voraus 1 b || exit 1
run_sync "$REPO" ""
c=1
if has "$OUT" "vorgespult" && [ -f "$REPO/b1.txt" ]; then c=0; fi
report "Remote voraus: ein Commit wird vorgespult" 0 "$c"

# --- 3: Remote drei Commits voraus ----------------------------------------
make_repo mehrere || exit 1
advance_remote mehrere 3 c || exit 1
run_sync "$REPO" ""
c=1
if [ -f "$REPO/c1.txt" ] && [ -f "$REPO/c2.txt" ] && [ -f "$REPO/c3.txt" ] \
  && has "$OUT" "3 Commit(s)"; then c=0; fi
report "Remote voraus: drei Commits kommen an" 0 "$c"

# --- 4: Aufruf aus einem Unterverzeichnis ----------------------------------
make_repo unterordner || exit 1
advance_remote unterordner 1 d || exit 1
run_sync "$REPO" "unterordner"
c=1
if [ -f "$REPO/d1.txt" ] && has "$OUT" "vorgespult"; then c=0; fi
report "Aufruf aus Unterverzeichnis findet die Wurzel" 0 "$c"

# --- 5: Skript liegt tiefer als Wissen/_tools ------------------------------
make_repo tiefer || exit 1
advance_remote tiefer 1 e || exit 1
SCRIPT_REL="Wissen/_tools/deep/sync_pull.sh"
install_script "$REPO" "$SCRIPT_REL"
run_sync "$REPO" ""
c=1
if [ -f "$REPO/e1.txt" ] && has "$OUT" "vorgespult"; then c=0; fi
report "Skript in tieferem Ordner findet die Wurzel" 0 "$c"
SCRIPT_REL="Wissen/_tools/sync_pull.sh"

# --- 6: geänderte, versionierte Datei --------------------------------------
make_repo geaendert || exit 1
advance_remote geaendert 1 f || exit 1
printf 'zwei\n' > "$REPO/a.txt"
HEAD_VORHER="$(git -C "$REPO" rev-parse HEAD)"
run_sync "$REPO" ""
c=1
if has "$OUT" "nicht sauber" && [ ! -f "$REPO/f1.txt" ] \
  && [ "$(cat "$REPO/a.txt")" = "zwei" ] \
  && [ "$(git -C "$REPO" rev-parse HEAD)" = "$HEAD_VORHER" ]; then c=0; fi
report "unsauber: geänderte Datei blockiert den Pull" 2 "$c"

# --- 7: neue, unversionierte Datei -----------------------------------------
make_repo unversioniert || exit 1
printf 'neu\n' > "$REPO/neu.txt"
run_sync "$REPO" ""
c=1
if has "$OUT" "nicht sauber" && [ -f "$REPO/neu.txt" ]; then c=0; fi
report "unsauber: neue Datei blockiert den Pull" 2 "$c"

# --- 8: außerhalb jedes Git-Repositories -----------------------------------
mkdir -p "$WORK/kein-repo/Wissen/_tools"
cp "$SCRIPT" "$WORK/kein-repo/Wissen/_tools/sync_pull.sh"
OUT="$(cd "$WORK/kein-repo" \
  && GIT_CEILING_DIRECTORIES="$WORK/kein-repo" \
    bash "$WORK/kein-repo/Wissen/_tools/sync_pull.sh" 2>&1)"
RC=$?
has "$OUT" "keinem Git-Repository"
report "außerhalb eines Repositories: Exit 1" 1 $?

# --- 9: eigene Commits und Remote voraus -----------------------------------
make_repo divergiert || exit 1
(
  cd "$REPO" || exit 1
  printf 'eigen\n' > eigen.txt
  git add eigen.txt
  git commit -qm "Eigener Commit"
) || exit 1
advance_remote divergiert 1 g || exit 1
HEAD_VORHER="$(git -C "$REPO" rev-parse HEAD)"
run_sync "$REPO" ""
c=1
if has "$OUT" "vor und" && has "$OUT" "Nichts verändert" \
  && [ ! -f "$REPO/g1.txt" ] && [ -f "$REPO/eigen.txt" ] \
  && [ "$(git -C "$REPO" rev-parse HEAD)" = "$HEAD_VORHER" ]; then c=0; fi
report "auseinandergelaufen: nichts wird verändert" 4 "$c"

# --- 10: --no-fetch mit vorhandenem FETCH_HEAD -----------------------------
make_repo nofetch || exit 1
advance_remote nofetch 1 h || exit 1
( cd "$REPO" && git fetch -q origin main ) || exit 1
run_sync "$REPO" "" --no-fetch
c=1
if has "$OUT" "vorgespult" && [ -f "$REPO/h1.txt" ]; then c=0; fi
report "--no-fetch nutzt den vorhandenen FETCH_HEAD" 0 "$c"

# --- 11: --no-fetch ohne FETCH_HEAD ----------------------------------------
make_repo ohne-fetchhead || exit 1
rm -f "$REPO/.git/FETCH_HEAD"
run_sync "$REPO" "" --no-fetch
has "$OUT" "kein FETCH_HEAD"
report "--no-fetch ohne FETCH_HEAD: Exit 3" 3 $?

# --- 12: Fetch schlägt fehl ------------------------------------------------
make_repo fetchfehler || exit 1
git -C "$REPO" remote set-url origin "$WORK/fetchfehler/gibt-es-nicht.git"
HEAD_VORHER="$(git -C "$REPO" rev-parse HEAD)"
run_sync "$REPO" ""
c=1
if has "$OUT" "fehlgeschlagen" && [ -z "$(git -C "$REPO" status --porcelain)" ] \
  && [ "$(git -C "$REPO" rev-parse HEAD)" = "$HEAD_VORHER" ]; then c=0; fi
report "Fetch schlägt fehl: Exit 3" 3 "$c"

# --- Ergebnis --------------------------------------------------------------
echo
if [ "$FAIL" -eq 0 ]; then
  echo "test_sync_pull: $PASS/$((PASS + FAIL)) bestanden."
  exit 0
fi
echo "test_sync_pull: $FAIL von $((PASS + FAIL)) fehlgeschlagen." >&2
exit 1
