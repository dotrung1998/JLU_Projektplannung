---
titel: Protokollvergleich 22-11
stand: 2026-11-22
typ: vergleich
---

# Protokollvergleich 22.11.2026

Quellen:

- [[Aufnahme Auto Tianshu]] — KI-Protokoll (Otter.ai Pro Lite + Google Gemini Neon High)
- [[Manuelles Protokoll 22-11]] — Protokoll von Simon

**Keine Bewertung.** Diese Notiz sammelt nur Befunde und Widersprüche. Die eigentliche
Bewertung nach Schablone A und B machen C (Trung) und D (Dominik) unabhängig voneinander.

## Rahmendaten

| Punkt | Befund | Beleg |
|---|---|---|
| Datum | **22.11.2026** | manuelles Protokoll |
| Geplanter Beginn | 10:00 Uhr | manuelles Protokoll |
| Tatsächlicher Beginn | **10:14 Uhr** (10:00–10:14 technische Probleme) | manuelles Protokoll |
| Ende | **10:55 Uhr** | KI-Protokoll |
| Dauer | **41 Minuten** (10:14–10:55); KI-Protokoll: ca. 40–41 Min. | beide |
| Teilnehmende | **6** | beide |
| N | **23** = 11 + 2 × 6 | Messplan |
| Bewertende unabhängig | **ja**: C = Trung, D = Dominik; A = Simon, B = Tianshu | Rollenstand |

## Werkzeug und Zeitwerte

| Angabe | Wert | Beleg |
|---|---|---|
| Aufnahme | **Otter.ai (Pro Lite)** | KI-Protokoll |
| Verarbeitung | **Google Gemini Neon High** | KI-Protokoll |
| Art | **kommerziell** | KI-Protokoll |
| Einrichtung | **30 Min** | KI-Protokoll |
| Verarbeitung inkl. Wartezeit | **10 Min** | KI-Protokoll |
| Nachbearbeitung | **20 Min** | KI-Protokoll |
| Manuelles Mitschreiben | **zu klären** | keine separate Stoppuhr; 41 Min. ist Meetingdauer |
| Manuelle Nachbearbeitung | **offen** | — |

Der automatische Zeitaufwand beträgt damit **60 Minuten** (30 + 10 + 20). Der manuelle
Gesamtaufwand ist erst nach Mitschreibzeit und Nachbearbeitung bekannt.

## Inhaltlicher Aufbau

| Abschnitt | KI-Protokoll | Manuelles Protokoll |
|---|---|---|
| 0 Rahmen | Teilnehmende, Dauer, Aufnahmehinweis; Datum fehlt | Datum, geplanter/tatsächlicher Beginn, n = 6 |
| 1 Bachelorarbeiten | fünf Arbeiten; Simon nicht vorgestellt | T, K, TD, D, S; Simon nicht vorgestellt |
| 2 Rückblick | drei Erkenntnisse, drei Änderungen | chronologische Aussagen zu K, S, D |
| 3 Vierte Variable | Zufriedenheit, Likert, drei Gütekriterien | Zufriedenheit, Skala, Reliabilität/Objektivität/Validität |
| 4 Messgrößen | Genauigkeit, Vollständigkeit, Zeitaufwand | Genauigkeit/Lesbarkeit, Zeitaufwand, Subjektivität |
| 5 Planung | Tabelle mit sechs Aufgaben und Fristen | Aufgaben und Fristen in Kurzform |

## Widersprüche und Lücken

1. **Tianshu / 54 %.** Manuell: „Lager 1 hatte 54 % Bestandsgenauigkeit“. Automatisch:
   „54 % der Artikel in Lager 1 wiesen Bestandsmängel auf“. Die Zahl stimmt, die Bedeutung
   ist gegensätzlich. Nicht auflösen, sondern in der Bewertung als Abweichung erfassen.
2. **Dominik / Einsparung.** Manuell: „45 % Einsparung“. Automatisch: „rund 70 %
   Emissionseinsparungen“. Auch dieser Widerspruch bleibt stehen.
3. **Datum.** Das KI-Protokoll sagt ausdrücklich, das Datum sei im Transkript nicht genannt.
   Das manuelle Protokoll datiert das Meeting auf **22.11.**.
4. **Dauer.** Das manuelle Protokoll nennt den tatsächlichen Beginn 10:14, aber kein Ende;
   das KI-Protokoll nennt das Ende 10:55 und ca. 40–41 Minuten. Daraus ergeben sich
   41 Minuten.
5. **Namen im Transkript.** „Trang“ ist Trung Do, „Katharina“ ist Katarina; das manuelle
   Protokoll verwendet `TD` und `K`. Die Moderation ist im KI-Protokoll nicht namentlich
   genannt; nach dem Rollenstand ist es Sebastian Stanzel.
6. **Simon.** Das KI-Protokoll sagt, Simon habe seine Bachelorarbeit wegen des parallelen
   manuellen Protokollierens nicht vorgestellt. Das manuelle Protokoll enthält ebenfalls
   keine Simon-BA; `S` steht dort für Sebastian. Das ist kein Widerspruch, sondern eine
   gemeinsame Lücke in Leitfrage 1.

## Was das für 3.2 und die Bewertung bedeutet

- Beide Protokolle decken die fünf Leitfragen ab, aber mit unterschiedlicher Struktur und
  Detailtiefe. Das KI-Protokoll folgt dem vorgegebenen Prompt; das manuelle Protokoll ist
  chronologisch und enthält `[…]`-Lücken.
- Die 54-%- und 45-/70-%-Stellen sind **keine Bewertungsentscheidung**. C und D müssen
  zuerst festlegen, ob der Inhalt als erfasst gilt und wie er in Schablone B eingeordnet
  wird.
- Die exakten Werkzeugzeiten und der Prompt sind jetzt belegt; damit sind
  `werkzeug`, `werkzeug_art`, `zeit_auto_einrichtung`, `zeit_auto_verarbeitung` und
  `zeit_auto_nachbearbeitung` für [[Rohdaten]] bekannt.
- `zeit_man_mitschreiben`, `zeit_man_nachbearbeitung` und alle acht Prozentwerte fehlen
  weiterhin. Sie dürfen nicht aus den Protokollen geschätzt werden; die Meetingdauer ist
  keine Mitschreibzeit.
