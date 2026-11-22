---
titel: Sitzung 06
stand: 2026-11-17
---

# Sitzung 6 — Dokumentieren und auswerten: Inter-Rater-Reliabilität

**Di 17.11.2026.** Quelle: `PDA_Sitzung06_Board_linear_WiSe26-27_v1.pdf`.

## Worum es ging

Der Weg vom Meeting bis zur Abgabe, in sechs Schritten (Karte 6):

| Schritt | Wer | Was | Bis wann |
|---|---|---|---|
| 1 Protokolle fertigstellen | Person A, B | beide Protokolle, Zeiten dokumentieren | direkt nach dem Meeting |
| 2 Protokolle weiterreichen | A, B | an C und D, danach keine Änderung mehr | vor der Bewertung |
| 3 Unabhängig bewerten | C, D | Schablone A und B für beide Protokolle | vor der Rohdatenfrist |
| 4 Rohdaten eintragen | eine Person | fünf Zeitwerte, acht Prozentwerte, Werkzeug | Mo 23.11., 12:00 |
| 5 IRR berechnen und dokumentieren | Gruppe | vier IRR-Werte mit Po und N | Di 01.12. |
| 6 Protokolle anonymisieren | Gruppe | beide Protokolle in den Anhang | mit dem Gesamtportfolio |

## Auswertung der Schablonen (Beispiel, N = 19)

- **Schablone A:** Person C 13/19 = 68,4 %, Person D 12/19 = 63,2 %. Abweichungen bei den
  Inhalten 2, 7 und 10. Beide Werte gehen getrennt in die Rohdaten.
- **Schablone B:** jede Person stuft nur ein, was sie selbst als erfasst markiert hat;
  der Nenner ist die eigene Zahl erfasster Inhalte, nicht N. Beispiel: C 10/13 = 76,9 %,
  D 8,5/12 = 70,8 %.
- Ähnliche Prozentwerte heißen **nicht** Einigkeit. Ob zwei Personen übereinstimmen, zeigt
  erst der Vergleich Inhalt für Inhalt — die Inter-Rater-Reliabilität
  ([[Inter-Rater-Reliabilität]]).

## Die drei Kennzahlen nicht verwechseln

| Kennzahl | Was sie beschreibt |
|---|---|
| Bewertungs-Score | deskriptives Ergebnis einer bewertenden Person je Variable |
| prozentuale Übereinstimmung | Anteil gleicher Klassifikationen, ohne Zufallskorrektur |
| Cohens κ | dieselbe Einigkeit, **zufallskorrigiert** |

## Cohens κ in Kürze

`κ = (Po − Pe) / (1 − Pe)`. Für die Vollständigkeit ist κ ungewichtetet (dichotom), für die
Genauigkeit **linear gewichtet** (drei Stufen: 1 / 0,5 / 0). Landis-Koch: < 0 poor,
0–0,20 slight, 0,20–0,40 fair, 0,41–0,60 moderate, 0,61–0,80 substantial, 0,81–1 almost
perfect. Kappa immer zusammen mit **Po und N** berichten; bei kleinem N ist κ vorsichtig zu
lesen.

**Kappa-Paradox:** Sind die Kategorien sehr ungleich verteilt, kann κ trotz hoher
prozentualer Übereinstimmung niedrig oder negativ sein (Beispiel: Po = 84,2 %, κ = −0,08).
Markiert eine Person alle Inhalte als erfasst, ist κ = 0; markieren beide alle, ist κ nicht
berechenbar — das ist kein Wert von 0.

Werkzeuge: `sklearn.metrics.cohen_kappa_score` (Python, `weights="linear"`) oder das
R-Paket `irr`. Eingabe sind die **Einzelbewertungen je Inhalt**, nicht die Prozentwerte.
Die Genauigkeits-IRR läuft nur über die Schnittmenge der als erfasst markierten Inhalte;
dieses N ist kleiner als die Gesamtzahl und muss mitgenannt werden.

## Übungszettel 3.2 — „Wir setzen um und dokumentieren."

Fragen: Ablauf beider Protokollierungen mit allen fünf Einzelwerten und beiden Summen;
Ergebnisse für Zeitaufwand, Vollständigkeit, Genauigkeit und Inter-Rater-Reliabilität;
Abweichungen vom Messplan und vom eigenen Vorgehen; Vergleich des Projektplans aus 2.2 mit
dem tatsächlichen Verlauf; individuell die eigene Rolle.

Abgabe: Di 01.12.2026, Ordner `06_Woche-Portfolioabgabe`. Dieselbe Frist gilt für die vier
IRR-Werte.

## Was daran für die Gruppe zählt

Ohne zwei unabhängige Bewertende gibt es keine IRR — und ohne IRR fehlt 3.2 die Hälfte von
Frage 2. Deshalb ist die Rollenfestlegung vor dem Sonntag wichtiger als jede andere
Vorbereitung ([[Messung 22-11]]).
