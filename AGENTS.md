# AGENTS.md — Projektplanung Data Analytics (Gruppe 11)

Arbeits- **und** Gedächtnisort für das Seminar *Projektplanung Data Analytics*
(M.Sc. Data Analytics, JLU Gießen, WiSe 2026/27, Dr. Sebastian Busse).
Prüfungsleistung: **Gesamtportfolio** aus zehn Übungszetteln, Abgabe in Stud.IP.
Gruppenprojekt: **KI-gestützte vs. manuelle Meetingdokumentation** (Gruppe 11).

## Zuerst lesen

0. `Wissen/00 Start/Điểm vào (VI).md` — Kurzorientierung auf Vietnamesisch.
1. `Wissen/00 Start/Start.md` — Einstieg, aktueller Stand, Landkarte.
2. `Wissen/00 Start/Status.md` — Fristen, nächste Aktionen je Person.
3. `Wissen/00 Start/Offene Entscheidungen.md` — was nur die Gruppe bzw. die Person entscheiden kann.

## Ordner

| Pfad | Rolle |
|---|---|
| `00_Materialien/` | **Quelle.** Kursmaterial: Übungszettel, Conceptboard-Exporte, Portfoliovorlage, Messplan, Schablonen. Unverändert lassen. |
| `Lecture_07-MDA-15_Projektplanung_Data_Analytics/` | **Quelle.** Wöchentliche Abgabeordner `01_Woche` … `10_Woche_Gesamt`. Unverändert lassen. |
| `Wissen/` | **Gedächtnis.** Obsidian-Vault mit Start, Kurs, Sitzungen, Gruppe, Portfolio, Plan. |
| `Wissen/_tools/` | `sync_pull.sh` (Sitzungsbeginn), `ingest.py`, `board_sync.py`, `daily.sh`, `daily_guard.sh` — Stand ziehen, Einlesen, Statusfortschreibung. |

`JLU Spezializierungsmodul/` ist ein fremdes Projekt und wird **nicht** eingelesen.

## Pflichtschritte am Anfang jeder Sitzung

```bash
bash "Wissen/_tools/sync_pull.sh"      # main per Fast-Forward vorziehen
python3 Wissen/_tools/ingest.py        # neue/geänderte Quellen einlesen
python3 Wissen/_tools/board_sync.py    # Board und Fristen fortschreiben
cat "Wissen/00 Start/Neu seit letztem Lauf.md"
```

Der erste Schritt steht bewusst vor dem Einlesen: `ingest.py` muss auf dem neuesten Stand
laufen. `sync_pull.sh` holt nur und spult nur per Fast-Forward vor — es committet, pusht
und stasht nichts; ein unsauberes Arbeitsverzeichnis bricht es mit Exit 2 ab. Kann der
Cloud-Workspace nicht selbst fetchen, vorher über die Git-Integration fetchen und
`--no-fetch` übergeben.

Die Dateien im Repository sind die Quelle der Wahrheit; die Kopie im Skill
`cloud-session-sync` dient nur dazu, ein anderes Repository aufzusetzen. Weicht beides ab,
wird zuerst das Skript hier geändert und committet, danach der Skill.

Danach `Start.md` und `Status.md` lesen und erst dann arbeiten.

## Pflichtschritte am Ende jeder Sitzung, in der etwas passiert ist

1. `Wissen/00 Start/Status.md` — Fristen, nächste Aktion, Stand je Person.
2. `Wissen/00 Start/Entscheidungen.md` — **jede** Entscheidung mit Datum, Grund und
   verworfener Alternative anhängen. Nie rückwirkend umschreiben, nur ergänzen.
3. Wenn neue Unterlagen dazukommen: Datei in den passenden Quellordner legen
   (`00_Materialien/` bzw. `Lecture_…/NN_Woche…/`), `ingest.py` laufen lassen,
   betroffene Notizen fortschreiben.
4. `Wissen/00 Start/Start.md` — nur den Abschnitt „Aktueller Stand" fortschreiben.
5. Board: erledigte Karten abhaken; wer eine Karte nach `Doing` zieht, lässt sie dort.

## Harte Regeln

- **Keine erfundenen Angaben.** Fristen, Rollen und Messwerte nur mit Belegstelle
  (Dokument, Sitzung, Kartennummer). Unklares wird als `Status: zu klären` markiert.
- **Keine Zahlen ohne Quelle.** Wo eine Zahl fehlt, steht eine Lücke, kein Schätzwert.
- **Trennung von Befund und Meinung.** Empfehlungen gehören in
  `Entscheidungen.md` / `Offene Entscheidungen.md`, nicht in die Sitzungsnotizen.
- **Keine Zugangsdaten oder Tokens** in den Vault schreiben. Keine Matrikelnummer in
  handgeschriebene Notizen tippen. Die automatisch erzeugten `(Quelle)`-Notizen und
  Anhänge sind wörtliche Kopien der eigenen Abgaben und enthalten sie deshalb; diese
  Kopien bleiben lokal.
- **Fremde Abgaben kennzeichnen.** `05_Woche-Portfolioabgabe/Projektplanung Data Analytics.docx`
  ist der Entwurf von **Sebastian Stanzel**, nicht die eigene Abgabe von Trung.
- **Anonymisierung:** Protokolle im Anhang nur mit Kennungen `Person A`–`Person D`,
  ohne Namen und persönliche Angaben.
- **Sprache:** Vault-Inhalte auf Deutsch (direkt in Abgaben und Portfolio übernehmbar).
  Chat-Antworten an die Person auf Vietnamesisch, mit deutschen Fachbegriffen.
- **Keine Bot- oder Werkzeug-Attribution in Commits.** Keine `Co-Authored-By:`-Zeile,
  kein „Generated with …", keine Trailer. Die Commit-Message endet mit ihrem letzten
  inhaltlichen Satz. Commit-Messages auf Deutsch: eine Zeile Zusammenfassung, darunter
  Stichpunkte. Push nur, wenn die Person es verlangt.

## Automatik

`Wissen/_tools/daily.sh` ruft `ingest.py`, `board_sync.py` und `discord_notify.py`.
Das Skript schreibt nur:

- `Wissen/(Quelle)`-Notizen, `Wissen/90 Anhänge/`, `Wissen/40 Portfolio/Abgaben/`,
  `Wissen/10 Kurs/Abgaben (auto).md`
- `Wissen/00 Start/Ingest Log.md`, `Neu seit letztem Lauf.md`
- den Block zwischen `<!-- AUTO:START -->` und `<!-- AUTO:END -->` in `Status.md`
- Statusvermerke am Zeilenende der Board-Karten
- optional einen kurzen Discord-Bericht; der Webhook liegt in
  `~/.config/projektplanung/discord-webhook`, nie im Vault

`Wissen/_tools/fristen.json` ist die Fristenliste. Ein Eintrag mit `"erledigt":
"YYYY-MM-DD"` gilt als abgeschlossen: der Statusblock zeigt `erledigt …`, der
Discord-Bericht lässt ihn aus „Fällig" weg. Ohne dieses Feld bleibt ein vergangener
Termin als „überfällig" stehen.

Der LaunchAgent startet `daily_guard.sh`: der Guard holt einen Lauf nach, sobald für heute
noch keiner in `daily.log` steht (Login, Aufwachen, alle 30 Minuten). Scheitert `ingest.py`
oder `board_sync.py`, gibt es eine macOS-Mitteilung, einen ❌-Bericht und Exit-Code ≠ 0;
ein fehlgeschlagener Lauf wird am selben Tag nicht wiederholt.

Handgeschriebene Notizen werden nie überschrieben. Ohne Änderung schreibt der Lauf nichts.
`#person`- und `#team`-Karten werden **nie** automatisch abgehakt, nur mit Belegstand
und Überfälligkeit versehen; nur `#auto`-Karten wandern bei vorhandenem Beleg nach `Done`.
