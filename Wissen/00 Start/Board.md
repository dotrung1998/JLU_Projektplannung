---
titel: Board
stand: 2026-11-23
kanban-plugin: board
---

# Board — Projektplanung Data Analytics

Karten tragen `#person`, `#team` oder `#auto`, optional `fällig:` und `beleg:`.
`beleg:` ist ein Pfadmuster relativ zum Projektordner; `board_sync.py` prüft es.
`#person` und `#team` werden **nie** automatisch abgehakt, nur mit Belegstand und
Überfälligkeit versehen. Nur `#auto` wandert bei vorhandenem Beleg nach `Done`.

Kette: ROLLEN → MEETING → PROTO-A/PROTO-B → BEWERT-C/BEWERT-D → ROHDATEN → IRR.

## To Do
- [ ] **BEWERT-C · Schablone A und B für beide Protokolle** #team · fällig: 2026-11-22 — C = Trung; ohne Abgleich mit D, Einzelwerte je Inhalt aufbewahren; Ziel 18:00 · braucht: PROTO-A, PROTO-B · → [[Rollenvote 15-11]] · [[Messplan]] · überfällig (1 Tag)
- [ ] **BEWERT-D · Schablone A und B für beide Protokolle** #team · fällig: 2026-11-22 — D = Dominik; beginnt nach Vorliegen beider Protokolle, unabhängig von C; Ziel 18:00 · braucht: PROTO-A, PROTO-B · → [[Rollenvote 15-11]] · [[Messplan]] · überfällig (1 Tag)
- [ ] **ROHDATEN · Zeile Gruppe 11 im Conceptboard** #team · fällig: 2026-11-23 — fünf Zeitwerte, acht Prozentwerte, Werkzeug, Bewertende unabhängig ja/nein; b1 = Trung, b2 = Dominik; Katarina trägt ein; Ziel 20:00, harte Frist 23.11. 12:00 · braucht: BEWERT-C, BEWERT-D · → [[Rollenvote 15-11]] · [[Rohdaten]]
- [ ] **REVIEW31 · 3.1-Entwurf gegenlesen und Änderungen vorschlagen** #team · fällig: 2026-11-22 — alle bis 20:00; Abgabe am Abend; eigene Fassung weiter bis 24.11. · → [[Sitzung 05]] · [[Portfolio Trung]] · überfällig (1 Tag)
- [ ] **IRR · Po, Pe, κ und gewichtetes κ je Variable** #team · fällig: 2026-12-01 — vier IRR-Werte mit Po und N berichten; Genauigkeits-IRR nur über die Schnittmenge · braucht: ROHDATEN · → [[Inter-Rater-Reliabilität]]
- [ ] **UEZ32 · Übungszettel 3.2 abgeben** #person · fällig: 2026-12-01 — Durchführung, fünf Einzelzeiten und Summen, Schwierigkeiten, Vergleich mit dem Plan · → [[Sitzung 06]]
- [ ] **ANONYM · Beide Protokolle anonymisieren** #person · fällig: 2026-12-15 — Namen durch Person A–D ersetzen, persönliche Daten entfernen, Inhalt unverändert · → [[Anhang-Checkliste]]
- [ ] **PORTFOLIO · Gesamtportfolio zusammenstellen** #person · fällig: 2026-12-15 — zehn Seiten Kernteil, Deckblatt, Anhang; Abgabe in Stud.IP · → [[Portfolio Trung]]
- [ ] **PDF0102 · PDF für die Zettel 1.1 und 1.2 erzeugen** #auto · beleg: "Lecture_07-MDA-15_Projektplanung_Data_Analytics/01_Woche-Portfolioabgabe/*Sitzung01.pdf" — betrifft nur das Gesamtportfolio, nicht die damalige Abgabe · Beleg fehlt


## Doing


## Done
- [x] **UEZ31 · Übungszettel 3.1 abgeben** #person · fällig: 2026-11-24 · beleg: "Lecture_07-MDA-15_Projektplanung_Data_Analytics/05_Woche-Portfolioabgabe/PDA_Do_Trung*" — eigene `.tex` und `.pdf` liegen vor (eine Seite, Frage 5 enthalten); korrekte PDF am 23.11. in Stud.IP hochgeladen; falsche Datei liegt noch im Abgabeordner, Klärung per Mail an Dr. Busse · → [[Sitzung 05]] · [[Portfolio Trung]] · Beleg fehlt
- [x] **TOOL · Otter.ai: Version, Art und Prompt dokumentieren** #team — geklärt am 22.11.: Otter.ai Pro Lite + Google Gemini Neon High; kommerziell; 30/10/20 Min.; Prompt in [[Aufnahme Auto Tianshu]] · → [[Rohdaten]]
- [x] **PROTO-A · Manuelles Protokoll fertigstellen** #team — DOCX liegt vor; 10:14–10:55 (41 Min.); Nachbearbeitungszeit offen · → [[Manuelles Protokoll 22-11]]
- [x] **PROTO-B · Automatisches Protokoll fertigstellen** #team — DOCX liegt vor; Otter.ai Pro Lite + Gemini; 30/10/20 Min. · → [[Aufnahme Auto Tianshu]]
- [x] **ROLLEN · Person A–D für Sonntag festschreiben** #team — geklärt am 22.11.: A = Simon, B = Tianshu, C = Trung, D = Dominik; Katarina = Conceptboard · → [[Rollenvote 15-11]] · [[Messung 22-11]]
- [x] **FRAGE4 · Sebastians Punkt zu Frage 4 klären** #person — geklärt am 22.11.: Lesbarkeit/Struktur als blinde Flecken; Vollständigkeit/Genauigkeit subjektiv, Zeit relativ eindeutig; in 3.1 keine Lösungen · → [[Offene Punkte]]
- [x] **UEZ11 · Übungszettel 1.1 abgeben** #person — Abstract, Kernaussage, Reflexion; nur `.tex` gesichert · → [[Sitzung 01]]
- [x] **UEZ12 · Übungszettel 1.2 abgeben** #person — rekonstruierter Projektplan der Bachelorarbeit; nur `.tex` gesichert · → [[Sitzung 02]]
- [x] **UEZ21 · Übungszettel 2.1 abgeben** #person — zweite Version des Projektplans, drei Änderungen, Prinzipien · → [[Sitzung 03]]
- [x] **UEZ22 · Übungszettel 2.2 abgeben** #person — Forschungsfrage, vier Hypothesenpaare, Rollen, grober Plan · → [[Sitzung 04]]
- [x] **GRUPPE · Gruppenbildung und Rollen aus 2.2** #team — sechs Personen, Rollen verteilt, Gruppenplan KW46–KW51 · → [[Gruppe 11]]


%% kanban:settings
```
{"kanban-plugin":"board"}
```
%%
