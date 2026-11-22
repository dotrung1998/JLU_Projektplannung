---
titel: IRR (Cohens κ) — Arbeitsnotiz für Übungszettel 3.2
stand: 2026-11-22
status: offen — vier κ-Werte brauchen Ds Einzelurteile
---

# IRR (Cohens κ) für Übungszettel 3.2

Arbeitsnotiz, **kein Teil der Abgabe**. Grundlage: [[Rohdaten]] (Zeile 11, von der Gruppe am
22.11.2026 übernommen) und [[Inter-Rater-Reliabilität]] (Formeln: Sitzung 6, Karten 12–19).

## Stand

Die vier κ-Werte lassen sich aus den acht Prozentwerten **nicht** berechnen. κ braucht die
gemeinsame Tabelle der Einzelurteile (welcher Inhalt von wem erfasst und wie eingestuft
wurde); die acht Prozentwerte sind nur Randverteilungen. `Po` und damit κ bleiben offen.

| Variable | Protokoll | C = Trung | zweite Spalte | N |
|---|---|---:|---:|---:|
| Vollständigkeit | manuell | 78,3 % = 18/23 | 66,6 % ≈ 14/21 | 23 bzw. 21 |
| Vollständigkeit | automatisch | 87,0 % = 20/23 | 95,2 % ≈ 20/21 | 23 bzw. 21 |
| Genauigkeit | manuell | 91,7 % = 16,5/18 | 53,6 % = 7,5/14 | 18 bzw. 14 erfasste |
| Genauigkeit | automatisch | 97,5 % = 19,5/20 | 95,2 % ≈ 20/21 | 20 bzw. 21 |

Zwei Befunde aus der Rückrechnung (Arithmetik, keine Schätzung):

1. **Die zweite Spalte rechnet mit N = 21, nicht mit 23.** 14/21 = 66,7 %, 20/21 = 95,2 %,
   7,5/14 = 53,6 %, 20/21 = 95,2 % treffen die Board-Werte; mit N = 23 sind 66,6 % und
   95,2 % nicht darstellbar (15/23 = 65,2 %, 16/23 = 69,6 %, 22/23 = 95,7 %). Der Messplan
   verlangt N = 23. Die Zeile bleibt unverändert (Gruppenentscheidung); für 3.2 ist die
   Abweichung zu benennen.
2. **Die `b2`-Spalte der Board-Zeile enthält exakt die Werte von C** (78,3 / 87,0 / 91,7 /
   97,5, [[Bewertung C - Begründungen]]), also Trung und nicht D. Die Beschriftung
   `b1`/`b2` ist damit gegenüber der Absprache „b1 = Trung, b2 = Dominik" vertauscht. Nur
   die Beschriftung, nicht die Zahlen.

## Was κ aus den Randverteilungen nicht festlegt

Vollständigkeit manuell, gemeinsame Basis 21 Inhalte, C 18 erfasst, D 14 erfasst:
`Pe = (18·14 + 3·7)/21² = 0,619`. Je nach Überlappung `a` (gemeinsam erfasste Inhalte):

| a | Po | κ |
|---:|---:|---:|
| 11 | 52,4 % | −0,25 |
| 12 | 61,9 % | 0,00 |
| 13 | 71,4 % | 0,25 |
| 14 | 81,0 % | **0,50** |

Vollständigkeit automatisch, C 20 und D 20 von 21: `Pe = 0,909`; bei a = 19 ist
Po = 90,5 % und κ = −0,05, bei a = 20 ist Po = 100 % und κ = 1,00. Gleiche Randverteilung,
zwei völlig verschiedene κ — das Kappa-Paradox aus Sitzung 6.

Für die Genauigkeit (drei Stufen, lineare Gewichte) fehlt sogar die Randverteilung der
Stufen; hier ist ohne Ds Einzelurteile keine Spanne angebbar.

## Was fehlt und wie es dann geht

Benötigt: **Ds ausgefüllte Schablonen A und B** (Haken je Inhalt, Punkte 1 / 0,5 / 0) auf
derselben Basis wie C (23 Inhalte).

Dann in wenigen Minuten:

- Vollständigkeit: 2×2-Tabelle, `κ = (Po − Pe)/(1 − Pe)` mit
  `Pe = (Σ Zeilensumme × Spaltensumme)/N²`.
- Genauigkeit: nur die Schnittmenge der erfassten Inhalte, lineare Gewichte,
  `sklearn.metrics.cohen_kappa_score(a, b, weights="linear")`.
- Bericht: κ **mit Po und N**, Einordnung nach Landis/Koch, bei kleinem N als unsicher
  markieren.
