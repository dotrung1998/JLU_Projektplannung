---
titel: Messplan
stand: 2026-11-21
---

# Messplan (verbindlich)

Quelle: `Planungsdokumente_für_Gruppenarbeit/Messplan-Messvorgaben_Gruppenprojekt_PDA_WiSe26-27.pdf`.
Gilt für alle Gruppen; Abweichungen müssen schriftlich festgehalten werden.

## Szenario

Ein Team protokolliert Meetings bisher von Hand und will die Vorgesetzten mit Daten
überzeugen, ob sich der Umstieg auf automatische Protokollierung lohnt. Verglichen wird
**einmal** an einem Meeting: einmal mitschreiben gegen einmalig einrichten und automatisch
auswerten. Dass die Einrichtung später entfällt, gehört in die Diskussion, **nicht** in die
Messung.

## Rollen

| Kennung | Aufgabe |
|---|---|
| Person A | manuelles Protokoll: schreibt im Meeting mit, arbeitet die Notizen aus |
| Person B | automatisches Protokoll: richtet das Werkzeug ein, zeichnet auf, lässt auswerten, prüft und korrigiert |
| Person C | erste bewertende Person, unabhängig von D, an keinem Protokoll beteiligt |
| Person D | zweite bewertende Person, unabhängig von C, an keinem Protokoll beteiligt |

Weitere Mitglieder können Moderation und Zeitnahme übernehmen. Beide Protokolle entstehen
unabhängig voneinander (A sieht Bs Fassung nicht, bevor das eigene Protokoll fertig ist).
Sobald die Bewertung beginnt, darf nichts mehr geändert werden.

## Zeitaufwand (Minuten, auf volle Minute aufrunden)

| Abschnitt | Wer | Start | Stopp |
|---|---|---|---|
| manuell: Mitschreiben | A | erste Notiz | letzte Notiz |
| manuell: Nachbearbeitung | A | Beginn der Ausarbeitung | Protokoll fertig |
| automatisch: Einrichtung | B | Suche nach dem Werkzeug | Werkzeug einsatzbereit |
| automatisch: Verarbeitung | B | Übergabe der Aufnahme | automatische Fassung liegt vor |
| automatisch: Nachbearbeitung | B | Beginn Prüfen/Korrigieren | Protokoll fertig |

- Meetingdauer zählt **nicht**.
- Wartezeit zählt mit (Upload, Transkription, neue Prompts).
- Einrichtung zählt mit, auch wenn sie vor dem Meeting passiert; bereits eingerichtete
  Werkzeuge: tatsächlichen Aufwand eintragen, im Zweifel 0, und schriftlich festhalten.
- Pausen zählen nicht.

`Zeit manuell = Mitschreiben + Nachbearbeitung`
`Zeit automatisch = Einrichtung + Verarbeitung + Nachbearbeitung`

## Vollständigkeit (Schablone A)

`N = 11 + 2 × Zahl der Personen im Meeting` (bei 4 Personen 19, bei 5 Personen 21, bei
6 Personen 23). Elf Inhalte gelten für alle (Leitfragen 2–5), zwei je vorgestellter
Bachelorarbeit (Leitfrage 1) in der Reihenfolge der Vorstellung.

`Vollständigkeit % = erfasste Inhalte / N × 100` (eine Nachkommastelle).

Erfasst heißt: Der Inhalt kommt im Protokoll erkennbar vor. Ob er richtig ist, bewertet
Schablone B. Ein Inhalt, der im Meeting nicht besprochen wurde, gilt in beiden Protokollen
als nicht erfasst.

## Genauigkeit (Schablone B)

Nur erfasste Inhalte werden eingestuft: **korrekt 1**, **leicht verzerrt 0,5**,
**falsch oder erfunden 0**.

`Genauigkeit % = Summe der Punkte / Zahl der erfassten Inhalte × 100`.

## Werkzeug

Name, Modell oder Version und Art (**kommerziell** oder **offen**) in die Rohdatentabelle.
Bei einem Sprachmodell für die Zusammenfassung zusätzlich den **Prompt** notieren.

## Rohdaten

Bis **Mo 23.11.2026, 12:00 Uhr** in die Tabelle auf dem Conceptboard, eine Zeile je Gruppe
([[Rohdaten]]).

## Sonderfall: drei Personen im Meeting

- Rollen A, B, C; **keine Person D**.
- A oder B übernimmt zusätzlich die zweite Bewertung; vorher festlegen, wer.
- `bewertende_unabhaengig = nein`.
- Es gelten die Inhalte 1–17, also `N = 17`.
- Wer die zweite Bewertung übernommen hat, wird dokumentiert.
