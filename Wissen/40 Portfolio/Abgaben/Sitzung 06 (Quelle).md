---
titel: "Abgabe Sitzung 06"
quelle: "Lecture/06_Woche-Portfolioabgabe"
stand: 2026-11-23
hash: 352a3cdce14d
automatisch: true
---

> Automatisch eingelesen aus `Lecture/06_Woche-Portfolioabgabe` am 2026-11-23. Nicht bearbeiten —
> inhaltliche Arbeit gehört in die handgeschriebenen Notizen.

# Abgabe Sitzung 06 (Quelle)

Übungszettel 3.2, Abgabe 2026-12-01. Quelle: `06_Woche-Portfolioabgabe`

## Dateien

| Datei | Größe | Typ | Herkunft |
|---|---|---|---|
| `IRR_Kappa_Notiz_3.2.md` | 5 KB | MD | Fremddatei |

> **Keine eigene Datei in diesem Ordner.** Was hier liegt, ist nicht die
> eigene Abgabe ([[Portfolio Trung]]).

## Inhalt

### IRR_Kappa_Notiz_3.2.md

~~~~
---
titel: IRR (Cohens κ) für Übungszettel 3.2
stand: 2026-11-22
status: berechnet
---

# IRR (Cohens κ) für Übungszettel 3.2

Arbeitsnotiz, **kein Teil der Abgabe**. Grundlage: [[Schablone_A_Vollstaendigkeit_PDA_WiSe26-27_Trung|Schablone A (C)]],
[[Schablone_B_Genauigkeit_PDA_WiSe26-27_Trung|Schablone B (C)]],
[[Schablone_A_Vollstaendigkeit_PDA_WiSe26-27_Dominik|Schablone A (D)]],
[[Schablone_B_Genauigkeit_PDA_WiSe26-27_Dominik|Schablone B (D)]]. Formeln:
[[Inter-Rater-Reliabilität]] (Sitzung 6, Karten 12–19).

## Ergebnis

| Variable | Protokoll | Po | N | κ | Landis/Koch |
|---|---|---:|---:|---:|---|
| Vollständigkeit | manuell | 65,2 % | 23 | **0,21** | fair |
| Vollständigkeit | automatisch | 100,0 % | 23 | **1,00** | almost perfect |
| Genauigkeit (linear gewichtet) | manuell | 58,3 % | 12 | **0,06** | slight |
| Genauigkeit (linear gewichtet) | automatisch | 92,5 % | 20 | **−0,07** | poor |

## Vollständigkeit (dichotom)

**Manuell, N = 23** (`Pe = (18·14 + 5·9)/23² = 0,5614`):

| | D sagt 0 | D sagt 1 | Summe |
|---|---:|---:|---:|
| C sagt 0 | 3 | 2 | 5 |
| C sagt 1 | 6 | 12 | 18 |
| Summe | 9 | 14 | 23 |

`Po = 15/23 = 65,2 %` · `κ = (0,6522 − 0,5614)/(1 − 0,5614) = 0,21`.

**Automatisch, N = 23** (`Pe = (20·20 + 3·3)/23² = 0,7732`):

| | D sagt 0 | D sagt 1 | Summe |
|---|---:|---:|---:|
| C sagt 0 | 3 | 0 | 3 |
| C sagt 1 | 0 | 20 | 20 |
| Summe | 3 | 20 | 23 |

`Po = 100 %` · `κ = 1,00`. Beide bewerten exakt dieselben 20 Inhalte als erfasst
(Item 8 und 22–23 fehlen bei beiden).

## Genauigkeit (drei Stufen, lineare Gewichte)

Nur die Schnittmenge der erfassten Inhalte, Stufen 1 / 0,5 / 0;
`Po,w = (n_gleich + 0,5·n_eine Stufe)/n`.

**Manuell, Schnittmenge 12** (Items 3, 4, 10, 12–17, 19–21): 4 exakt gleich, 6 eine Stufe
daneben, 2 zwei Stufen. `Po,w = (4 + 3)/12 = 58,3 %`; `Pe,w = 0,5556` → **κw = 0,06**.

**Automatisch, Schnittmenge 20** (Items 1–7 und 9–21): 17 exakt gleich, 3 eine Stufe
daneben (Nr. 1, 2, 9), keine zwei Stufen. `Po,w = (17 + 1,5)/20 = 92,5 %`;
`Pe,w = 0,930` → **κw = −0,07**: hohe Übereinstimmung, aber κ unter dem Zufallsniveau, weil
die Randverteilungen fast identisch sind (C 19×1 / 1×0,5, D 18×1 / 2×0,5). Das ist das
Kappa-Paradox aus Sitzung 6 (dort Po = 84,2 %, κ = −0,08).

## Die N-Frage: 21 gegen 23

D ließ die Items 22–23 (sechste Bachelorarbeit, nicht vorgestellt) leer und rechnete die
Vollständigkeit mit **N = 21** (14/21 = 66,6 %, 20/21 = 95,2 %). Der Messplan verlangt
**N = 23** und sagt: Ein Inhalt, der im Meeting nicht besprochen wurde, gilt in beiden
Protokollen als nicht erfasst. Mit 0 für 22–23 bei beiden Bewertenden gilt N = 23; die
Vollständigkeit manuell liegt dann bei 15/23 = **65,2 %** statt 66,6 %.

Der Einfluss auf κ ist nicht klein: auf Ds Basis N = 21 ist `Po = 13/21 = 61,9 %` und
`Pe = 0,619`, also **κ = 0,00**; auf der Messplan-Basis N = 23 ist **κ = 0,21**. Beide
Zahlen werden berichtet, damit die Abweichung nachvollziehbar bleibt. Die Rohdatenzeile
bleibt unverändert (Gruppenentscheidung).

Zweiter, kleinerer Befund: Ds Schablone B bewertet Item 8 automatisch mit 1, seine
Schablone A markiert Item 8 als nicht erfasst. Item 8 liegt nicht in der Schnittmenge
(C hat es nicht erfasst) und ändert κ deshalb nicht; die Abweichung ist dokumentiert.

## Textbaustein für 3.2 (Frage 2 / Frage 3)

> Die vier Werte der Inter-Rater-Reliabilität lassen sich nicht aus den Prozentwerten der
> Rohdatentabelle berechnen. Prozentwerte sind Randverteilungen: Sie zeigen, wie viele
> Inhalte eine Person als erfasst markiert hat, nicht aber, ob beide dieselben Inhalte
> markiert haben. Cohens κ hängt genau an dieser gemeinsamen Zuordnung; derselbe Prozentwert
> kann je nach Überlappung κ = 0,00 oder κ = 0,50 bedeuten. Gerechnet wurde deshalb auf der
> Ebene der Einzelurteile aus den Schablonen A und B. Dabei zeigte sich eine Abweichung von
> der Messvorgabe: Person D ließ die Items 22 und 23 (sechste Bachelorarbeit, nicht
> vorgestellt) leer und rechnete die Vollständigkeit mit N = 21; der Messplan verlangt
> N = 23, weil ein nicht besprochener Inhalt in beiden Protokollen als nicht erfasst gilt.
> Auf der gemeinsamen Basis N = 23 liegt die Vollständigkeit manuell bei 65,2 % statt
> 66,6 %, und κ steigt von 0,00 auf 0,21. Beide Zahlen werden berichtet, damit die
> Abweichung nachvollziehbar bleibt.

## Offen

- [ ] Ds Zustimmung zur gemeinsamen Basis N = 23 (Empfehlung: berichten, Abweichung nennen).
- [ ] Klärung Item 8 in Ds Schablone B (ändert κ nicht).
- [ ] Beschriftung `b1` / `b2` in der Rohdatenzeile: die `b2`-Spalte enthält die Werte von C.
~~~~
