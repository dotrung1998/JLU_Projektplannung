---
titel: Inter-Rater-Reliabilität
stand: 2026-11-21
---

# Inter-Rater-Reliabilität (IRR)

Quelle: Sitzung 6, Karten 9–19 ([[Sitzung 06]]). Gilt für Übungszettel 3.2 und für den
Methodenteil des Portfolios.

## Warum nicht einfach Prozent?

Ein Teil der Übereinstimmung entsteht durch Zufall. Wie groß dieser Anteil ist, hängt
davon ab, wie oft jede Person „erfasst" vergibt. Cohen's κ zieht diesen Zufallsanteil ab.

## Vier Werte, die die Gruppe braucht

1. Vollständigkeit, manuelles Protokoll
2. Vollständigkeit, automatisches Protokoll
3. Genauigkeit, manuelles Protokoll
4. Genauigkeit, automatisches Protokoll

Jeweils mit **Po** und **N** berichten.

## Vollständigkeit (dichotom): einfaches κ

Kreuztabelle der Haken von Person C und Person D über alle N Inhalte.

```
Po  = (Zahl der übereinstimmenden Inhalte) / N
Pe  = (Σ Zeilensumme_i × Spaltensumme_i) / N²
κ   = (Po − Pe) / (1 − Pe)
```

**Beispiel aus der Sitzung** (manuelles Protokoll, N = 19):

| | D sagt 0 | D sagt 1 | Summe |
|---|---|---|---|
| C sagt 0 | 5 | 1 | 6 |
| C sagt 1 | 2 | 11 | 13 |
| Summe | 7 | 12 | 19 |

`Po = 16/19 = 84,2 %` · `Pe = (6·7 + 13·12)/19² = 198/361 = 0,5485` ·
`κ = (0,8421 − 0,5485)/(1 − 0,5485) ≈ 0,65` → **substantial**.

Dasselbe automatische Protokoll mit anderer Randverteilung: `Po = 84,2 %`,
`Pe ≈ 0,854`, `κ ≈ −0,08`. Gleiche Übereinstimmung, anderes κ — das **Kappa-Paradox**. Deshalb immer Po
und N mitberichten.

## Genauigkeit (drei Stufen): gewichtetes κ

Die Genauigkeit wird nur für die Inhalte verglichen, die **beide** als erfasst markiert
haben (Schnittmenge). Lineare Gewichte für die Stufen 1 / 0,5 / 0: Übereinstimmung = 1,
eine Stufe Abstand = 0,5, zwei Stufen = 0.

```
Po,w = (1·n_gleich + 0,5·n_eine_Stufe + 0·n_zwei_Stufen) / n_Schnittmenge
κw   = (Po,w − Pe,w) / (1 − Pe,w)
```

**Beispiel aus der Sitzung:** Schnittmenge 11 Inhalte, davon 8 exakt gleich, 3 mit einer
Stufe Abstand, 0 mit zwei Stufen.
`Po,w = (8 + 0,5·3)/11 = 9,5/11 ≈ 0,864` · `Pe,w ≈ 0,674` · `κw ≈ 0,58` → **moderate**.
Ungewichtet wäre κ = 0,50 — die Gewichtung belohnt die fast richtigen Einstufungen.

## Berichtsregeln

- κ immer mit **Po** und **N** nennen; bei kleinem N ausdrücklich als unsicher markieren.
- Landis-Koch-Skala zitieren, nicht nur die Zahl.
- Bei der Genauigkeit das **kleinere N** der Schnittmenge nennen.
- Ein negatives κ ist ein Befund, kein Fehler: Es bedeutet Übereinstimmung unterhalb des
  Zufallsniveaus.
- Nicht die Prozentwerte in κ eingeben, sondern die Einzelurteile je Inhalt.

## Umsetzung

- Python: `sklearn.metrics.cohen_kappa_score(a, b)` bzw. `weights="linear"` für die
  Genauigkeit. <https://scikit-learn.org/stable/modules/generated/sklearn.metrics.cohen_kappa_score.html>
- R: Paket `irr`, Funktion `kappa2` mit `weight="linear"`.
  <https://cran.r-project.org/web/packages/irr/irr.pdf>

Beide URLs stehen auf dem Board der Sitzung 6 (Karte 19).

## Stand 22.11.2026 — vier Werte noch offen

Die acht Prozentwerte aus [[Rohdaten]] (Zeile 11) reichen **nicht** für κ: Sie sind
Randverteilungen, κ braucht die gemeinsamen Einzelurteile. Arbeitsnotiz mit Rechnung,
Rückrechnung auf Zähler und zwei Befunden (zweite Spalte nur mit N = 21 konsistent;
`b2` enthält die Werte von C): `06_Woche-Portfolioabgabe/IRR_Kappa_Notiz_3.2.md`.
Nötig sind **Ds Schablonen A und B**; danach sind die vier Werte in wenigen Minuten gesetzt.
