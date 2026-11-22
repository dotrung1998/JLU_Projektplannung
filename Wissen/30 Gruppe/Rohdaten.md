---
titel: Rohdaten
stand: 2026-11-22
---

# Rohdaten

Eine Zeile je Gruppe in der Tabelle auf dem **Conceptboard**, Frist **Mo 23.11.2026,
12:00 Uhr**. Spalten und Formate sind vorgegeben (Messplan, Abschnitt 7).

## Spalten

| Spalte | Inhalt | Format | Quelle |
|---|---|---|---|
| `gruppe` | Gruppennummer | Zahl | 11 |
| `n_personen` | Zahl der Personen im Meeting | 3–6 | Teilnehmerliste |
| `meeting_min` | Dauer des Meetings | Minuten | Zeitnahme |
| `werkzeug` | Name mit Modell oder Version | Text | B |
| `werkzeug_art` | Art des Werkzeugs | kommerziell / offen | B |
| `bewertende_unabhaengig` | Bewerten zwei Personen, die an keinem Protokoll beteiligt sind? | ja / nein | Rollenprüfung |
| `zeit_man_mitschreiben` | manuell: Mitschreiben | Minuten | A |
| `zeit_man_nachbearbeitung` | manuell: Nachbearbeitung | Minuten | A |
| `zeit_auto_einrichtung` | automatisch: Einrichtung | Minuten | B |
| `zeit_auto_verarbeitung` | automatisch: Verarbeitung inkl. Wartezeit | Minuten | B |
| `zeit_auto_nachbearbeitung` | automatisch: Nachbearbeitung | Minuten | B |
| `vollst_man_b1`, `vollst_man_b2` | Vollständigkeit manuell, Bewertung 1 und 2 | Prozent | C, D |
| `vollst_auto_b1`, `vollst_auto_b2` | Vollständigkeit automatisch, Bewertung 1 und 2 | Prozent | C, D |
| `genau_man_b1`, `genau_man_b2` | Genauigkeit manuell, Bewertung 1 und 2 | Prozent | C, D |
| `genau_auto_b1`, `genau_auto_b2` | Genauigkeit automatisch, Bewertung 1 und 2 | Prozent | C, D |

`b1` ist immer Person C, `b2` immer Person D. Diese Zuordnung gilt in allen Spalten
gleich. **`b1` = Trung Do (C)**, **`b2` = Dominik Schmid (D)** ([[Messung 22-11]]).

**Werkzeug:** `werkzeug` = **Otter.ai (Pro Lite) + Google Gemini Neon High**;
`werkzeug_art` = **kommerziell**; alle sechs Gruppenmitglieder haben der Aufzeichnung
zugestimmt (Gruppenangabe 22.11.2026).

## Stand 22.11.2026 (aus den Protokollen)

| Feld | Wert | Beleg / Hinweis |
|---|---|---|
| `gruppe` | **11** | — |
| `n_personen` | **6** | beide Protokolle; N = 23 |
| `meeting_min` | **41** | 10:14–10:55; KI-Protokoll nennt ca. 40–41 Min. |
| `werkzeug` | **Otter.ai (Pro Lite) + Google Gemini Neon High** | [[Aufnahme Auto Tianshu]] |
| `werkzeug_art` | **kommerziell** | [[Aufnahme Auto Tianshu]] |
| `bewertende_unabhaengig` | **ja** | C = Trung, D = Dominik; A = Simon, B = Tianshu |
| `zeit_man_mitschreiben` | **zu klären** | keine separate Stoppuhr; 41 Min. ist nur die Meetingdauer |
| `zeit_man_nachbearbeitung` | **offen** | im manuellen Protokoll nicht genannt |
| `zeit_auto_einrichtung` | **30** | Otter.ai/Gemini, inkl. Auswahl und Vortest |
| `zeit_auto_verarbeitung` | **10** | inkl. Prompting und Wartezeit |
| `zeit_auto_nachbearbeitung` | **20** | Prüfung und Formatierung |
| Zeit automatisch gesamt | **60** | 30 + 10 + 20 |
| `vollst_*`, `genau_*` | **offen** | unabhängige Bewertung durch C und D |

Die **41 Minuten** sind die Meetingdauer (10:14–10:55), **nicht** die Mitschreibzeit.
`zeit_man_mitschreiben` bleibt offen, bis Simon eine eigene Stoppuhr-Zeit nennt; die
Meetingdauer ersetzt diese Messung nicht.

## Was vor dem Eintragen geprüft werden muss

- Sind die fünf Zeitwerte **auf volle Minuten aufgerundet** und stammen sie aus einer Uhr,
  nicht aus einer Schätzung?
- Ist `N` zur Teilnehmerzahl passend (11 + 2 × Personen = **23** bei 6 Personen)?
- Sind die Prozentwerte auf **eine Nachkommastelle** gerundet?
- Sind `b1` und `b2` überall dieselben Personen?
- Steht bei drei Personen im Meeting `nein` in `bewertende_unabhaengig` und ist N = 17?

## Was noch fehlt (Stand 22.11.)

`zeit_man_mitschreiben`, `zeit_man_nachbearbeitung` und alle acht Prozentwerte. Die
übrigen Werte stehen oben.
Die Prozentwerte entstehen erst nach der unabhängigen Bewertung durch C und D
([[Messung 22-11]]). Ziel: Zeile bis **22.11., 20:00**; harte Frist **23.11., 12:00**.
Nicht teilweise ausfüllen.

## Nach dem Eintragen

- Screenshot oder Kopie der Zeile in `Wissen/90 Anhänge/` legen (Nachweis).
- Vier IRR-Werte berechnen und in `06_Woche` dokumentieren ([[Inter-Rater-Reliabilität]]).
- Die Zeile ist die Datengrundlage für Übungszettel 3.2, Frage 1 und 2 ([[Sitzung 06]]).
