#!/usr/bin/env python3
"""Schreibt Board und Fristenblock fort.

Regeln:
  #auto    Karte mit vorhandenem `beleg:` wird abgehakt und nach Done verschoben;
           verschwindet der Beleg, wird das Häkchen zurückgenommen.
  #person und #team werden nie automatisch abgehakt. Sie bekommen nur den Vermerk
           `· Beleg vorhanden` / `· Beleg fehlt` und `· überfällig (N Tage)`.
  Ohne Änderung wird keine Datei geschrieben.

Aufruf:
    python3 Wissen/_tools/board_sync.py
    python3 Wissen/_tools/board_sync.py --check
"""

from __future__ import annotations

import json
import re
import sys
from datetime import date, datetime
from pathlib import Path

TOOLS = Path(__file__).resolve().parent
VAULT = TOOLS.parent
ROOT = VAULT.parent
BOARD = VAULT / "00 Start" / "Board.md"
STATUS = VAULT / "00 Start" / "Status.md"
FRISTEN = TOOLS / "fristen.json"
COVER = TOOLS / "abdeckung.json"
LOGFILE = TOOLS / "board.log"

CHECK_ONLY = "--check" in sys.argv
TODAY = date.today()

SECTIONS = ("To Do", "Doing", "Done")
HEAD_RE = re.compile(r"^##\s+(To Do|Doing|Done)\s*$")
CARD_RE = re.compile(
    r"^- \[(?P<box>[ x])\] \*\*(?P<id>[^*]+?) · (?P<title>[^*]+)\*\*(?P<rest>.*)$"
)
FALLIG_RE = re.compile(r"fällig:\s*(\d{4}-\d{2}-\d{2})")
BELEG_RE = re.compile(r'beleg:\s*"([^"]+)"')
GEN_RE = re.compile(
    r"\s·\s(?:überfällig \([^)]*\)|Beleg (?:vorhanden|fehlt)|erledigt \d{4}-\d{2}-\d{2})\s*$"
)


def strip_generated(rest: str) -> str:
    while True:
        new = GEN_RE.sub("", rest)
        if new == rest:
            return rest
        rest = new


def load_fristen() -> list:
    try:
        return json.loads(FRISTEN.read_text(encoding="utf-8"))
    except (OSError, ValueError):
        return []


def days_until(datum: str) -> int:
    return (datetime.fromisoformat(datum).date() - TODAY).days


def split_board(lines: list):
    """Rückgabe: (Kopf, {Section: (Kartenliste, Restzeilen)}, Fuß)."""
    starts = {}
    for i, line in enumerate(lines):
        m = HEAD_RE.match(line)
        if m and m.group(1) not in starts:
            starts[m.group(1)] = i

    if not starts:
        return lines, {}, []

    order = sorted(starts.items(), key=lambda kv: kv[1])
    head = lines[: order[0][1]]
    sections = {}
    for pos, (name, idx) in enumerate(order):
        end = order[pos + 1][1] if pos + 1 < len(order) else len(lines)
        body = lines[idx + 1 : end]
        cards = [ln for ln in body if ln.startswith("- [")]
        rest = [ln for ln in body if not ln.startswith("- [")]
        sections[name] = (cards, rest)
    return head, sections, []


def rebuild(head, sections, trailing) -> list:
    out = list(head)
    for name in SECTIONS:
        cards, rest = sections.get(name, ([], []))
        out.append(f"## {name}")
        out.extend(cards)
        out.extend(rest)
    out.extend(trailing)
    return out


def card_info(line: str):
    m = CARD_RE.match(line)
    if not m:
        return None
    rest = strip_generated(m.group("rest"))
    tags = set(re.findall(r"#(person|team|auto)", rest))
    fallig = FALLIG_RE.search(rest)
    beleg = BELEG_RE.search(rest)
    return {
        "id": m.group("id").strip(),
        "title": m.group("title").strip(),
        "box": m.group("box"),
        "rest": rest,
        "tags": tags,
        "fallig": fallig.group(1) if fallig else "",
        "beleg": beleg.group(1) if beleg else "",
    }


def beleg_exists(pattern: str) -> bool:
    try:
        return any(ROOT.glob(pattern))
    except (OSError, ValueError):
        return False


def suffix_for(info: dict) -> str:
    parts = []
    if info["fallig"] and info["box"] != "x":
        delta = days_until(info["fallig"])
        if delta < 0:
            parts.append(f"überfällig ({-delta} Tag{'e' if -delta != 1 else ''})")
    if info["beleg"]:
        parts.append("Beleg vorhanden" if beleg_exists(info["beleg"]) else "Beleg fehlt")
    return "".join(f" · {p}" for p in parts)


def render_card(info: dict) -> str:
    return (
        f"- [{info['box']}] **{info['id']} · {info['title']}**"
        f"{info['rest']}{suffix_for(info)}"
    )


def sync_board():
    if not BOARD.exists():
        return False, []
    original = BOARD.read_text(encoding="utf-8").splitlines()
    head, sections, trailing = split_board(original)
    if not sections:
        return False, []

    messages = []
    for name in SECTIONS:
        cards, rest = sections.get(name, ([], []))
        for card in list(cards):
            info = card_info(card)
            if not info:
                continue

            if "auto" in info["tags"] and info["beleg"]:
                has = beleg_exists(info["beleg"])
                if has and info["box"] == " ":
                    info["box"] = "x"
                    info["rest"] = f"{info['rest']} · erledigt {TODAY.isoformat()}"
                    cards.remove(card)
                    if name != "Done":
                        sections["Done"][0].append(render_card(info))
                    messages.append(f"{info['id']}: erledigt (Beleg vorhanden)")
                    continue
                if not has and info["box"] == "x":
                    info["box"] = " "
                    info["rest"] = strip_generated(info["rest"])
                    cards.remove(card)
                    sections["To Do"][0].append(render_card(info))
                    messages.append(f"{info['id']}: Häkchen zurückgenommen (Beleg fehlt)")
                    continue

            new = render_card(info)
            if name == "To Do" and info["box"] == "x" and "auto" in info["tags"]:
                cards.remove(card)
                sections["Done"][0].append(render_card({**info, "box": "x"}))
                messages.append(f"{info['id']}: nach Done (erledigt)")
                continue
            if name == "Done" and info["box"] == " ":
                cards.remove(card)
                sections["To Do"][0].append(new)
                messages.append(f"{info['id']}: zurück nach To Do (offen)")
                continue

            idx = cards.index(card)
            cards[idx] = new

    result = rebuild(head, sections, trailing)
    changed = result != original
    if changed and not CHECK_ONLY:
        BOARD.write_text("\n".join(result).rstrip("\n") + "\n", encoding="utf-8")
    return changed, messages


def offene_fristen() -> list:
    """Wochen mit Dateien, deren Frist in fristen.json fehlt (aus abdeckung.json)."""
    try:
        data = json.loads(COVER.read_text(encoding="utf-8"))
    except (OSError, ValueError):
        return []
    return data.get("wochen_ohne_frist", [])


def status_block() -> str:
    rows = []
    for item in load_fristen():
        delta = days_until(item["datum"])
        when = item["datum"].replace("T", ", ")
        if delta < 0:
            state = f"**überfällig seit {-delta} T.**"
        elif delta == 0:
            state = "**heute**"
        elif delta == 1:
            state = "morgen"
        else:
            state = f"in {delta} Tagen"
        rows.append(f"| {when} | {item['titel']} | {state} | {item['wer']} |")

    done = total = 0
    if BOARD.exists():
        for line in BOARD.read_text(encoding="utf-8").splitlines():
            if line.startswith("- [x]"):
                done += 1
                total += 1
            elif line.startswith("- [ ]"):
                total += 1

    return (
        "<!-- AUTO:START -->\n"
        f"**Fristen (automatisch, Stand {TODAY.isoformat()})**\n\n"
        "| Termin | Was | Abstand | Wer |\n|---|---|---|---|\n"
        + "\n".join(rows)
        + "\n\n"
        f"Board: {done} von {total} Karten erledigt. "
        "Details in [[Board]], Quellenstand in [[Abgaben (auto)]].\n"
        + (
            "\n**Abgabe mit Dateien, aber ohne bekannte Frist:** Sitzung "
            + ", ".join(offene_fristen())
            + " — Frist in `_tools/fristen.json` nachtragen.\n"
            if offene_fristen() else ""
        )
        + "<!-- AUTO:END -->"
    )


def sync_status() -> bool:
    if not STATUS.exists():
        return False
    text = STATUS.read_text(encoding="utf-8")
    if "<!-- AUTO:START -->" not in text or "<!-- AUTO:END -->" not in text:
        return False
    new = re.sub(
        r"<!-- AUTO:START -->.*?<!-- AUTO:END -->",
        lambda _: status_block(),
        text,
        flags=re.S,
    )
    if new == text:
        return False
    if not CHECK_ONLY:
        STATUS.write_text(new, encoding="utf-8")
    return True


def validate_board() -> list:
    """Struktur prüfen, die das Obsidian-Kanban-Plugin erwartet."""
    if not BOARD.exists():
        return ["Board.md fehlt"]
    text = BOARD.read_text(encoding="utf-8")
    lines = text.splitlines()
    problems = []

    if not re.search(r"^kanban-plugin:\s*board\s*$", text, re.M):
        problems.append("Frontmatter `kanban-plugin: board` fehlt")

    lanes = [ln[3:].strip() for ln in lines if ln.startswith("## ")]
    for lane in lanes:
        if lane not in SECTIONS:
            problems.append(f"Unerwartete H2-Überschrift (würde als Lane erscheinen): {lane}")
    for name in SECTIONS:
        if lanes.count(name) != 1:
            problems.append(f"Lane `{name}` fehlt oder ist doppelt")

    head, sections, trailing = split_board(lines)
    for name, (cards, rest) in sections.items():
        for line in rest:
            stripped = line.strip()
            if stripped.startswith("- ") or stripped.startswith("* "):
                problems.append(f"{name}: Listenzeile außerhalb des Kartenformats: {stripped[:50]}")
        for card in cards:
            if not CARD_RE.match(card):
                problems.append(f"{name}: Karte nicht im Format `- [ ] **ID · Titel**`: {card[:50]}")

    m = re.search(r"%%\s*kanban:settings\s*```(.*?)```\s*%%", text, re.S)
    if not m:
        problems.append("kanban:settings-Block fehlt")
    else:
        try:
            settings = json.loads(m.group(1))
            if settings.get("kanban-plugin") != "board":
                problems.append("kanban:settings ohne `kanban-plugin: board`")
        except ValueError:
            problems.append("kanban:settings ist kein gültiges JSON")
    return problems


def log(message: str) -> None:
    stamp = datetime.now().strftime("%Y-%m-%d %H:%M")
    if not LOGFILE.exists():
        LOGFILE.write_text("# Board-Lauf\n\n", encoding="utf-8")
    with LOGFILE.open("a", encoding="utf-8") as handle:
        handle.write(f"{stamp} {message}\n")


def main() -> int:
    board_changed, messages = sync_board()
    status_changed = sync_status()
    for message in messages:
        print(f"  {message}")
    print(f"Board: {'geändert' if board_changed else 'unverändert'}")
    print(f"Status: {'geändert' if status_changed else 'unverändert'}")

    problems = validate_board()
    if problems:
        print("Board-Struktur: FEHLER")
        for problem in problems:
            print(f"  - {problem}")
    else:
        print("Board-Struktur: ok (Kanban-Plugin)")

    if not CHECK_ONLY and (board_changed or status_changed):
        log("Änderung: " + ("; ".join(messages) if messages else "Fristenblock"))
    return 1 if problems else 0


if __name__ == "__main__":
    sys.exit(main())
