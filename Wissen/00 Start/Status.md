---
titel: Status
stand: 2026-11-23
---

# Status

## Fristen

| Wann | Was | Erledigt |
|---|---|---|
| So 22.11.2026, 10:00 | Gruppenmeeting Gruppe 11 (Datenerhebung, online, ≥ 30 Min.) | ☑ 10:14–10:55, n = 6 |
| So 22.11.2026, 13:00 | Protokolle von Simon/Tianshu in WhatsApp | ☐ |
| So 22.11.2026, 18:00 | Bewertung C/D abgeschlossen (Ziel) | ☐ |
| So 22.11.2026, 20:00 | Review 3.1 + Änderungen; Abgabe am Abend | ☐ |
| Mo 23.11.2026, 12:00 | Rohdaten-Zeile Gruppe 11 im Conceptboard | ☐ |
| Di 24.11.2026 | Abgabe Übungszettel 3.1 (Ordner `05_Woche`) + Sitzung 7 | ☑ 23.11. hochgeladen |
| Di 01.12.2026 | Abgabe Übungszettel 3.2 (Ordner `06_Woche`) + vier IRR-Werte | ☐ |
| Fr 04.12.2026, 10–12 | Sitzung 8, digital (verschoben vom 01.12.) | ☐ |
| Di 08.12.2026 | Sitzung 9: KI-Tools im akademischen Arbeiten I | ☐ |
| Di 15.12.2026 | Sitzung 10: KI-Tools II, Abschluss — **Gesamtportfolio** | ☐ |

Die Abstände rechnet der Block darunter bei jedem Lauf neu; die Tabelle hier ist die
menschliche Checkliste.

Die genaue Uhrzeit der Portfolio-Abgabe in Stud.IP steht in keinem der vorliegenden
Dokumente. Letzter Termin ist der 15.12.2026; die Frist vorher beim Dozenten erfragen
([[Offene Entscheidungen]]).

<!-- AUTO:START -->
**Fristen (automatisch, Stand 2026-11-27)**

| Termin | Was | Abstand | Wer |
|---|---|---|---|
| 2026-11-22, 10:00 | Gruppenmeeting Gruppe 11 (Datenerhebung) | erledigt 22.11.2026 | team |
| 2026-11-23, 12:00 | Rohdaten-Zeile Gruppe 11 im Conceptboard | **überfällig seit 4 T.** | team |
| 2026-11-24 | Abgabe Übungszettel 3.1 (Ordner 05) | erledigt 23.11.2026 | person |
| 2026-12-01 | Abgabe Übungszettel 3.2 (Ordner 06) und vier IRR-Werte | in 4 Tagen | person |
| 2026-12-04, 10:00 | Sitzung 8: IMRAD und Diskussion, digital | in 7 Tagen | — |
| 2026-12-08 | Sitzung 9: KI-Tools im akademischen Arbeiten I | in 11 Tagen | — |
| 2026-12-15 | Gesamtportfolio in Stud.IP abgeben | in 18 Tagen | person |

Board: 11 von 20 Karten erledigt. Details in [[Board]], Quellenstand in [[Abgaben (auto)]].
<!-- AUTO:END -->

## Nächste Aktion

**Stand 22.11., 12:05:** Das Meeting ist gelaufen (**10:14–10:55**, **n = 6**, N = 23).
Beide Protokolle liegen vor: [[Aufnahme Auto Tianshu]] und [[Manuelles Protokoll 22-11]];
Werkzeug **Otter.ai Pro Lite + Google Gemini Neon High** (kommerziell, 30 + 10 + 20 Min.).
**Jetzt:** C = Trung und D = Dominik bewerten unabhängig; **13:00** Protokolle in WhatsApp;
Ziel **18:00**; Katarina trägt ins Conceptboard ein; **20:00** Review 3.1; Abgabe am Abend
([[Messung 22-11]], [[Protokollvergleich 22-11]]).

**Stand 22.11.:** Schablone A von C ist im DOCX um die Auswertung ergänzt; die Skala für
Zufriedenheit ist als 1–5 bestätigt. **45 %/70 % bleibt ohne Antwort offen**; keine
Schätzung, keine Protokolländerung.

**Montag 23.11. vor 12:00:** Rohdaten-Zeile prüfen; `b1 = Trung`, `b2 = Dominik`
([[Rohdaten]]).

**IRR (22.11.):** Die vier κ-Werte sind berechnet — Vollständigkeit manuell κ = 0,21
(Po 65,2 %, N = 23), automatisch κ = 1,00 (Po 100 %, N = 23); Genauigkeit manuell
κw = 0,06 (Po 58,3 %, N = 12), automatisch κw = −0,07 (Po 92,5 %, N = 20). Ds Schablonen
liegen im Vault; die N-Abweichung (D rechnete mit 21) und der Textbaustein für 3.2 stehen
in `06_Woche-Portfolioabgabe/IRR_Kappa_Notiz_3.2.md`.

**Dienstag 24.11.:** eigene Fassung von Übungszettel 3.1 als PDF abgeben. Der Entwurf in
`05_Woche` ist von Sebastian, nicht die eigene Abgabe; Inhalt übernehmen ist richtig, aber
die Datei muss `PDA_Do_Trung_WS26-27_Sitzung05.pdf` heißen und den individuellen Abschnitt
enthalten. **Stand 23.11.:** Die korrekte PDF ist in Stud.IP hochgeladen; im Abgabeordner
liegt weiterhin eine versehentlich hochgeladene falsche Datei, die nur der Dozent
entfernen kann (Mail an Dr. Busse).

**Leseansicht:** [[Theo dõi dự án (VI)]] erklärt denselben Stand auf Vietnamesisch;
`dashboard.html` im selben Ordner zeigt Countdown, Checkliste und die Rechner für N und κ.

**Automation (22.11.):** GitHub Actions bleibt der einzige Scheduler (Run
`45068450441`, success, genau ein Discord-Bericht). Nod wurde real getestet und
verworfen: Model-Check mit `qwen2.5-coder:14b` scheitert (32k-Kontext, 5,14 Token/s),
der Schedule lief nach Serverstopp 53 s verspätet an und meldete Erfolg ohne
Ausführung. Messwerte und Bedingungen in [[Entscheidungen]].

**Stand 22.11., 23:45 (WhatsApp, Screenshot):** Katarina meldet um **20:08**, alle Werte
seien in der Tabelle; Sebastian lädt um **22:48** die Endfassung als DOCX (und im Google-Doc)
hoch. Diese Endfassung unterscheidet sich vom Entwurf vom 21.11. nur durch die Titelzeile
und den Tippfehler „brache“ → „brachte“; Frage 5 darin beschreibt **Sebastians** Rolle
(Koordination, Moderation) und gilt nicht für die eigene Abgabe. **Offen:** prüfen, ob die
eigenen `b1`-Werte nach 20:08 noch in die Zeile gekommen sind ([[Offene Punkte]]).
Board-Link und Zeile 11 stehen in [[Rohdaten]]; die Zeile gilt mit ihren Werten
(`meeting_min` 37, `zeit_auto_einrichtung` 25) als Gruppendatensatz. Die Abweichungen zu
den Protokollen (41 Min., 30 Min.) sind dokumentiert, werden aber nicht angeglichen
(Gruppenentscheidung 22.11.2026). Schreibregeln für alle
weiteren `.tex`-Abgaben: [[Schreibregeln für .tex-Abgaben]].

## Stand je Person

Rollen aus Übungszettel 2.2 ([[Gruppe 11]]) und dem Poll vom 15./16.11.2026
([[Rollenvote 15-11]]). **Am 22.11. geklärt: C = Trung, D = Dominik; Katarina =
Conceptboard.** Die Spalte „nächster Schritt" ist daraus abgeleitet, keine zusätzliche
Zuweisung.

| Person | Rolle (belegt) | Nächster Schritt | Frist |
|---|---|---|---|
| **Trung Do** | Qualitätssicherung · **Person C** | Schablone A+B für beide Protokolle, `b1` berechnen, 3.1-Review; eigene 3.1 am 23.11. hochgeladen | 22.11. 18:00 / 20:00; 24.11. |
| Sebastian Stanzel | Gruppensprecher, Moderator | Koordination, 3.1-Entwurf, Review, Rohdaten-Zeile gegenprüfen | 22.11. 20:00 |
| Katarina Mechnikova | Qualitätssicherung · **Conceptboard** | Ergebnisse ins Conceptboard eintragen; keine Bewertung | 22.11. 20:00; 23.11. 12:00 |
| Simon Borsch | Messung und Methode · Person A | Manuelles Protokoll liegt vor; **Mitschreibzeit zu klären** (Meeting 41 Min.); bis 13:00 in WhatsApp | 22.11. 13:00 |
| Tianshu Han | Messung und Methode · Person B | **Otter.ai Pro Lite + Gemini Neon High**; Einrichtung 30, Verarbeitung 10, Nachbearbeitung 20 Min.; Protokoll liegt vor; bis 13:00 in WhatsApp | 22.11. 13:00 |
| Dominik Schmid | Dokumentation · Person D | 2. Bewertung nach Vorliegen beider Protokolle; Anonymisierung, Text für 3.2 | 22.11. 18:00; 01.12. |

## Bachelorarbeit (Vorstellungsrunde)

Die deutsche Kurzvorstellung für Leitfrage 1 liegt vor:
[[Bachelorarbeit – Kurzvorstellung (DE)]]. Sie nennt keine exakten Kennzahlen, beschreibt
die Verbesserung qualitativ und benennt Schwachstellen sowie konkrete Verbesserungen. Die
Belegzahlen stehen am Ende nur für Rückfragen.

## Sitzung 2 und 3 (Vorstellung)

Die deutsche Sprechfassung für die Zusammenfassung der Sitzungen 2 und 3 liegt vor:
[[Sitzung 02–03 – Zusammenfassung (DE)]]. Sie enthält eine 3-Minuten-Fassung, eine
1-Minuten-Fassung, Stichpunkte und Quellen.

## Gruppenentscheidungen 22.11.2026

- **Rollen:** C = Trung, D = Dominik; Katarina = Conceptboard; A = Simon, B = Tianshu.
- **Planung:** breit/adaptiv statt starrer Wochenplan; Dokumentation laufend verbessern;
  Arbeitszeiten, Erholung und Work-Life-Balance berücksichtigen.
- **Vierte Variable:** Zufriedenheit über Ratingskala; Stimmung/äußere Faktoren als Kontext.
- **Messgrenzen:** Lesbarkeit/Struktur wichtig; Vollständigkeit/Genauigkeit teilweise
  subjektiv, Zeit relativ eindeutig.
- **Limitation:** fehlende BA-Fragen nicht nachholen; als Vergleichsgrenze dokumentieren.
- **Werkzeug:** Otter.ai Pro Lite + Google Gemini Neon High; kommerziell; Einrichtung 30,
  Verarbeitung 10, Nachbearbeitung 20 Min.; Prompt dokumentiert. Alle sechs Mitglieder haben
  der Aufzeichnung zugestimmt (Gruppenangabe 22.11.2026).

## Eigene Abgaben

| Woche | Zettel | Datum | Datei im Ordner | Stand |
|---|---|---|---|---|
| 01 | 1.1 „Was habe ich eigentlich gemacht?" | 27.10.2026 | `…Sitzung01.tex` | abgegeben, **keine PDF gesichert** |
| 02 | 1.2 „Wie bin ich vorgegangen und warum?" | 03.11.2026 | `…Sitzung02.tex` | abgegeben, **keine PDF gesichert** |
| 03 | 2.1 „Was würde ich beim nächsten Mal anders machen?" | 10.11.2026 | `…Sitzung03.pdf` | abgegeben |
| 04 | 2.2 „Was wollen wir eigentlich herausfinden?" | 17.11.2026 | `…Sitzung04.pdf` | abgegeben |
| 05 | 3.1 „Wie messen wir, ob unsere Hypothese stimmt?" | 24.11.2026 | `…Sitzung05.tex` / `.pdf` | **abgegeben 23.11.** (korrekte PDF; falsche Datei noch im Ordner) |
| 06 | 3.2 „Wir setzen um und dokumentieren." | 01.12.2026 | — | offen |

Für das Gesamtportfolio braucht jede Seite eine PDF. Aus 01 und 02 lässt sich mit
`tectonic` eine erzeugen; das ist vor der Portfolio-Abgabe zu erledigen
([[Portfolio Trung]]).

## Was in dieser Woche zählt

1. **Heute die Kette halten.** Beide Protokolle liegen vor; C = Trung und D = Dominik
   bewerten unabhängig, 18:00 Ziel, 20:00 Review 3.1; ohne diese Kette fehlen IRR und 3.2.
2. **Rohdaten bis Montag 12:00.** Die Frist ist hart; Sitzung 7 am Dienstag baut darauf auf.
3. **Eigene 3.1 schreiben, nicht nur den Entwurf weiterreichen.** Der individuelle Abschnitt
   (Frage 5) fehlt im Entwurf vollständig und ist Pflicht.
