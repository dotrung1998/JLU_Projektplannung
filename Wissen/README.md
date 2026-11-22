# Obsidian-Vault: Projektplanung Data Analytics

Dieser Ordner **ist** der Vault. Öffnen mit Obsidian → „Ordner als Vault öffnen" →
`Wissen/` auswählen. Keine Plugins nötig, alles ist reines Markdown mit Wikilinks.

## Aufbau

```
00 Start/      Start, Status, Board, Entscheidungen, offene Entscheidungen, Personen
10 Kurs/       Modulrahmen, Portfolio-Vorgaben, Seminarplan, Abgabenstand
20 Sitzungen/  Sitzung 01–06 und die Übungszettel 1.1–3.2 (Quellen + Einordnung)
30 Gruppe/     Gruppe 11, Messplan, Messung am 22.11., Rohdaten, IRR, offene Punkte
40 Portfolio/  eigenes Portfolio, Abgaben (auto), Anhang-Checkliste
50 Plan/       Projektplan KW43–KW15, Risiken
90 Anhänge/    automatisch kopierte PDFs und DOCX (zu lesen, nicht durchsuchbar)
_tools/        ingest.py, board_sync.py, daily.sh
```

## Einstieg

[[Start]] → [[Status]] → [[Offene Entscheidungen]]

Vietnamesische Leseansicht: [[Theo dõi dự án (VI)]]; interaktives Tracking im Browser:
`00 Start/dashboard.html` (Countdown, Checkliste, N- und κ-Rechner, Glossar).

## Wenn etwas Neues dazukommt

1. Datei in den passenden Quellordner legen (`00_Materialien/`, `Lecture_…/NN_Woche…/`).
2. Im Projektordner ausführen:

```bash
python3 Wissen/_tools/daily.sh
```

3. `00 Start/Neu seit letztem Lauf.md` lesen — dort steht, was neu oder geändert ist.
4. Betroffene Notizen fortschreiben.

Der Ingest überschreibt **nur** `(Quelle)`-Notizen, `90 Anhänge/`,
`40 Portfolio/Abgaben/` und `10 Kurs/Abgaben (auto).md`.
Alle handgeschriebenen Notizen bleiben unberührt.

## Automatik

`_tools/daily.sh` ruft `ingest.py` und `board_sync.py` auf und schreibt ein Protokoll nach
`_tools/daily.log`. Für den täglichen Lauf um 08:00 den Launchd-Job einmal installieren:

```bash
cp Wissen/_tools/com.projektplanung.pda.daily.plist ~/Library/LaunchAgents/
launchctl bootstrap gui/$(id -u) ~/Library/LaunchAgents/com.projektplanung.pda.daily.plist
```

Wieder entfernen:

```bash
launchctl bootout gui/$(id -u)/com.projektplanung.pda.daily
rm ~/Library/LaunchAgents/com.projektplanung.pda.daily.plist
```

Der Job schreibt nur innerhalb von `Wissen/`: Quelle-Notizen, Anhänge, Abgaben-Tabelle,
Ingest-Log, den Fristenblock in `Status.md` und Statusvermerke am Zeilenende der
Board-Karten. Handgeschriebene Notizen bleiben unangetastet; ohne Änderung schreibt der
Lauf nichts.

## Abdeckung der Quellen

Jede Datei in `00_Materialien/`, `Lecture_…/` und im Projektordner muss genau einen
Zustand haben: eine automatische `(Quelle)`-Notiz, eine Beschreibung in einer
handgeschriebenen Notiz oder ein begründeter Ausschluss in `_tools/abdeckung-regeln.json`.
Der Lauf zählt alle drei Fälle und meldet **unbekannte** Dateien mit Pfad; gibt es welche,
endet `ingest.py` mit Fehlercode 1. Das Ergebnis steht in `00 Start/Neu seit letztem Lauf.md`
und in `_tools/abdeckung.json`. Wer eine Datei bewusst nicht einlesen will, trägt sie mit
einem Satz Grund in `abdeckung-regeln.json` ein — stilles Überspringen gibt es nicht.
