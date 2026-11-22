---
titel: Bachelorarbeit – Kurzvorstellung (DE)
stand: 2026-11-22
---

# Bachelorarbeit – Kurzvorstellung

Grundlage: die drei eigenen Übungszettel zur Bachelorarbeit:

- **1.1** „Was habe ich eigentlich gemacht?“ — Abstract, Kernaussage, eigentliches Ergebnis, Veränderung im Vorgehen.
- **1.2** „Wie bin ich vorgegangen und warum?“ — rekonstruierter Projektplan, geplant vs. ergeben, was bei der Strukturierung geholfen hätte.
- **2.1** „Was würde ich beim nächsten Mal anders machen?“ — verbesserter Plan, drei Änderungen, Wenn-Dann-Prinzipien, verborgene Stärke.

Die folgenden Fassungen sind für die **Vorstellungsrunde** gedacht (Leitfrage 1, Richtwert ca. 1,5 Min. pro Person). Sie sind bewusst in einfachem Deutsch gehalten und kommen **ohne exakte Kennzahlen** aus: Statt MAPE, RMSE und p-Wert wird die Größe der Verbesserung qualitativ beschrieben. Die Belegzahlen stehen am Ende nur für Rückfragen.

## Kurzversion (ca. 45 Sekunden, ohne Kennzahlen)

Meine Bachelorarbeit untersucht, wie man den späteren Wert von Elektroautos besser vorhersagen kann. Das ist für Leasing wichtig: Wer den Restwert falsch schätzt, kalkuliert Leasingrate und Risiko falsch. Ich habe eine dreistufige Pipeline in Python gebaut: Ein Kalman-Filter verfolgt die Wertentwicklung, eine Bayessche Schätzung liefert eine Unsicherheitsspanne, und CatBoost korrigiert die restlichen Fehler. Im Test mit synthetischen Daten wurde die Vorhersage deutlich genauer als bei einer einfachen Faustregel; die Abweichung ging auf einen Bruchteil zurück, und der Unterschied war statistisch klar. Aber die Daten waren synthetisch, die Validierung mit echten Leasingdaten fehlt. Nicht gut war außerdem mein fehlender Wochenplan; beim nächsten Mal würde ich mit Meilensteinen und Puffern planen und die Ergebnisse mit echten Leasingdaten prüfen.

## Vorstellung (ca. 1,5 Minuten, ohne Kennzahlen)

Meine Bachelorarbeit heißt „Strategien zur Förderung des Elektrofahrzeugabsatzes bei Hyundai Capital Bank Europe GmbH“. Es ging um die Frage: **Wie kann man den späteren Wert von Elektroautos zuverlässiger vorhersagen?** Das ist für Leasing wichtig: Ein falscher Restwert verzerrt Leasingrate und Risiko.

Ich durfte keine vertraulichen Unternehmensdaten nutzen; die **synthetischen Hyundai-Daten** orientieren sich an öffentlichen DAT-Marktdaten. Meine Methode war eine dreistufige Python-Pipeline: Ein **Kalman-Filter** verfolgt die Wertentwicklung, eine **Bayessche Schätzung mit MCMC** liefert eine Unsicherheitsspanne für die Abwertung, und **CatBoost** korrigiert die restlichen Fehler mit EV-Merkmalen.

Im Vergleich zu einer einfachen linearen Faustregel wurde die Vorhersage **deutlich genauer**: Die Abweichung ging **auf einen Bruchteil** zurück, sowohl prozentual als auch in Euro, und der Unterschied war statistisch klar.

Wichtig: Die Daten waren synthetisch. Das Ergebnis zeigt, dass die Pipeline konsistent funktioniert – noch nicht, dass sie echte Marktpreise besser trifft. Das eigentliche Ergebnis ist ein funktionierender, nachvollziehbarer Prototyp, kein produktionsreifes Produkt; die Validierung mit echten Leasingdaten fehlt.

Nicht gut liefen mehrere Dinge: Ich hatte keinen festen Wochenplan, habe die Zweitprüfer nacheinander angefragt und mir Python parallel angeeignet. Dadurch entstand zeitlicher Druck. Auch meine Aussage „uneingeschränkt geeignet“ war zu stark, und einzelne Werte passten nicht zusammen. Beim nächsten Mal würde ich den Zweitprüfer parallel anfragen, Python früh testen, mit Meilensteinen und Puffern planen und mit echten Leasingdaten validieren.

Die Kernaussage: Ein Computer-Modell kann den späteren Wert eines Elektroautos im Test **deutlich genauer** vorhersagen als eine einfache Faustregel. Damit lassen sich Leasingraten fairer und Risiken besser kalkulieren – vorausgesetzt, das Modell wird mit echten Daten weiter geprüft.

## Was nicht gut lief – und was ich verbessern würde

### Inhaltlich

- **Synthetische Daten, keine echte Validierung.** Die Pipeline ist in sich konsistent, aber nicht an echten Leasingrückläufern geprüft. Dadurch bleibt die Aussage über den Markt begrenzt; die Arbeit ist eher eine Machbarkeitsstudie als eine Marktvalidierung.
- **Einzelne Werte passten nicht zusammen.** Die Abwertungsrate aus dem Kalman-Filter und der Bayessche Posterior lagen deutlich auseinander. Das hätte früher auffallen und geklärt werden müssen.
- **Die damalige Formulierung war zu stark.** „Uneingeschränkt geeignet“ und „produktionsreif“ passen nicht zu einer synthetischen Machbarkeitsstudie.
- **Der Fokus lag stärker auf der Methode als auf der Marktvalidierung.** Das ist als Machbarkeitsstudie legitim, muss aber klar so benannt werden.

### Projektplanung

- **Kein fester Wochenplan.** Die Richtung war klar, aber Meilensteine und Puffer fehlten; dadurch entstand zeitlicher Druck.
- **Zweitprüfer nacheinander angefragt.** Mehrere Absagen und Wartezeiten verschoben die Anmeldung.
- **Python parallel gelernt.** Der Aufwand war schwer einzuschätzen; eine kleine Test-Pipeline vorab hätte geholfen.
- **Späte Anmeldung und Überschneidung mit Nachklausuren.** Formalitäten und Prüfungsphasen liefen parallel.

### Was ich konkret verbessern würde

- **Inhalt:** Mit echten Leasingrückläufern validieren; die Werte konsistent kalibrieren; die Aussage auf „Prototyp“ präzisieren.
- **Planung:** Zweitprüfer parallel anfragen; Python früh an einer kleinen Test-Pipeline üben; Wochenplan mit Meilensteinen und Puffern; feste kurze Termine mit dem Betreuer.
- **Kommunikation:** Schwachstellen früher ansprechen und die Arbeit klar als Machbarkeitsstudie einordnen.

### Was gut lief

- Die klare inhaltliche Richtung und die laufende Dokumentation von Problemen und Ergebnissen.
- Komplexe Inhalte einfach und klar erklären zu können.

## Kernaussage in einem Satz

Ein Computer-Modell kann den späteren Wert eines Elektroautos im Test **deutlich genauer** vorhersagen als eine einfache Faustregel. Damit lassen sich Leasingraten fairer und Risiken besser kalkulieren – **vorausgesetzt, das Modell wird mit echten Daten weiter geprüft**.

## Technik einfach erklärt

| Begriff | Einfache Erklärung |
|---|---|
| **Restwert** | Geschätzter Wiederverkaufswert des Autos am Ende des Leasingvertrags. |
| **Leasingrate** | Monatliche Zahlung; sie hängt unter anderem davon ab, wie hoch der Restwert am Ende sein wird. |
| **Kalman-Filter** | Mathematisches Modell, das einen Wert über die Zeit verfolgt und neue Beobachtungen einbezieht. Bild: ein Navigationssystem, das die Route laufend korrigiert. |
| **Bayessche Inferenz / MCMC** | Schätzt die monatliche Abwertung als Verteilung – also mit einer Unsicherheitsspanne, nicht als einen festen Wert. |
| **CatBoost** | Machine-Learning-Verfahren (Gradient Boosting), das aus Merkmalen der Fahrzeuge lernt und die restlichen Fehler korrigiert. |
| **MAPE** | Mean Absolute Percentage Error: durchschnittlicher prozentualer Fehler. Kleiner ist besser. |
| **RMSE** | Root Mean Square Error: Fehler in Euro. Kleiner ist besser; große Ausreißer werden stärker bestraft. |
| **Synthetische Daten** | Künstlich erzeugte Daten, die sich an echten Marktdaten orientieren. Sie ermöglichen Tests, ersetzen aber keine Validierung mit echten Preisen. |

## Rückblick Projektplanung

### Tatsächlicher Ablauf (rekonstruiert, KW geschätzt)

| Zeitraum | Tätigkeit / Ergebnis |
|---|---|
| KW 23–26/2025 | Themenfindung neben der Arbeit als Werkstudent bei HCBE; öffentliche Marktinformationen; eine CatBoost-Forschungsarbeit der südkoreanischen Muttergesellschaft als Ausgangspunkt. |
| KW 27–29/2025 | Ersten Projektplan an einen Professor mit Schwerpunkt Machine Learning geschickt; fachliche Einarbeitung; Warten auf Rückmeldung. |
| KW 30–35/2025 | Plan anhand der Hinweise überarbeitet, Fragen beantwortet, erneut zugesendet; weitere Literaturrecherche. |
| KW 36–40/2025 | Zweitprüfer gesucht; mehrere Absagen; Zusage etwa Ende September / Anfang Oktober; erinnerte Wartezeit von drei Wochen. |
| KW 41–49/2025 | Formalitäten, offene Punkte, parallel Nachklausuren; offizielle Anmeldung am 3. Dezember 2025. |
| KW 49/2025–KW 06/2026 | Pipeline in Python mit VS Code entwickelt und im Terminal getestet; Ergebnisse geprüft; Text in LaTeX auf TeXPage geschrieben; Abgabe am 3. Februar 2026. |
| Projektbegleitend | Python selbstständig vertieft (im Studium vor allem Java); Modelle zuerst über anschauliche Videos, dann über wissenschaftliche Literatur. |

### Geplant vs. ergeben

**Bewusst geplant:**

- Die vorhandene CatBoost-Forschungsarbeit als Ausgangspunkt nutzen und CatBoost mit weiteren Modellen kombinieren.
- Probleme und Ergebnisse laufend dokumentieren, damit daraus später der Text der Bachelorarbeit entsteht.

**Aus den Umständen ergeben:**

- Wegen der Vertraulichkeit keine echten Unternehmensdaten; Arbeit mit öffentlichen Marktinformationen und synthetischen Daten.
- Dadurch lag der Schwerpunkt stärker auf der methodischen Umsetzung als auf einer Validierung mit realen Unternehmensdaten.
- Der späte Anmeldetermin ergab sich aus der aufwendigen Zweitprüfersuche, weiteren Änderungen und den Nachklausuren.

### Die drei wichtigsten Änderungen für eine zweite Version

1. **Zweitprüfer gleichzeitig anfragen.** Beim ersten Mal nacheinander; mehrere Absagen und Wartezeiten verschoben die Anmeldung bis Dezember. Parallel anfragen verhindert, dass eine einzelne Absage wochenlang blockiert.
2. **Python früh üben.** Im Studium vor allem Java; der Aufwand für die Pipeline war schwer einzuschätzen. Eine kleine Test-Pipeline vor dem Start macht den tatsächlichen Aufwand früh sichtbar.
3. **Wochenplan mit Meilensteinen und Puffern.** Der Ablauf hatte keine feste Struktur; Wartezeiten, Nachklausuren und Einarbeitung störten sich gegenseitig. Meilensteine und feste Termine mit dem Betreuer zeigen Verzögerungen früh.

### Drei Wenn-Dann-Prinzipien

- **Wenn** ich von der Antwort einer anderen Person abhängig bin, **dann** arbeite ich parallel an einer anderen Aufgabe weiter und frage nach einer Woche nach.
- **Wenn** ich eine neue Methode oder ein neues Werkzeug brauche, **dann** teste ich es zuerst in klein, bevor ich die Zeit für das Projekt plane.
- **Wenn** ich plane, **dann** setze ich Meilensteine und einen Zeitpuffer ein, besonders in Prüfungsphasen. Das gilt auch für Masterthesis und Spezialisierungsmodul.

### Verborgene Stärke

Im Nachhinein war eine Stärke, die damals nicht bewusst war: komplexe Inhalte so einfach und klar wie möglich zu erklären, damit das Thema angenommen wird. Diese Fähigkeit hilft bei Betreuern, im Team und später im Beruf.

## Ehrliche Einordnung

- Die **Daten waren synthetisch**. Der Vergleich mit dem linearen Modell zeigt vor allem, dass die Pipeline in sich konsistent ist – nicht, dass sie reale Marktpreise besser trifft.
- Die Aussage „uneingeschränkt geeignet“ beziehungsweise „produktionsreif“ war zu stark. Nötig wäre eine Validierung mit echten Leasingrückläufern.
- Einzelne Werte passten nicht ganz zusammen: Die Abwertungsrate aus dem Kalman-Filter und der Bayessche Posterior lagen deutlich auseinander. Das ist ein Hinweis auf weiteren Klärungsbedarf, kein Beleg für einen Produktiveinsatz.
- Das **eigentliche Ergebnis** heute: ein funktionierender, nachvollziehbarer Prototyp, der das Zusammenspiel von Zustandsraummodell, Bayesscher Inferenz und Machine Learning mathematisch sauber herleitet und reproduzierbar umsetzt.

## Wenn Fragen kommen

**Warum drei Verfahren?**
Sie lösen drei verschiedene Probleme: Der Kalman-Filter modelliert die Zeitdynamik, die Bayessche Schätzung macht die Unsicherheit der Abwertung sichtbar, CatBoost korrigiert die verbleibenden Fehler mit Fahrzeugmerkmalen.

**Warum synthetische Daten?**
Vertrauliche Unternehmensdaten waren nicht verfügbar. Die synthetischen Daten orientieren sich an öffentlichen Marktdaten der DAT. Das ermöglicht einen reproduzierbaren Test, ersetzt aber keine echte Marktvalidierung.

**Was war das eigentliche Ergebnis?**
Ein funktionierender, reproduzierbarer Prototyp und eine methodisch konsistente Pipeline – nicht ein produktionsreifes Produkt.

**Was war nicht gut?**
Die Daten waren synthetisch, eine Validierung mit echten Leasingdaten fehlt; einzelne Werte passten nicht zusammen; meine damalige Formulierung „uneingeschränkt geeignet“ war zu stark. Im Projekt hatte ich keinen festen Wochenplan, die Zweitprüfersuche lief nacheinander, und Python habe ich parallel gelernt.

**Was würdest du verbessern?**
Inhaltlich: mit echten Leasingrückläufern validieren, die Werte konsistent kalibrieren und die Aussage präzisieren. Planerisch: Zweitprüfer parallel anfragen, Python früh testen, Meilensteine und Puffer einplanen, feste kurze Termine mit dem Betreuer.

**Was war gut?**
Die klare Richtung, die laufende Dokumentation und die Fähigkeit, komplexe Inhalte einfach und klar zu erklären.

**Was war die verborgene Stärke?**
Komplexe Inhalte einfach und klar erklären zu können.

**Wie groß war die Stichprobe?**
Eine bewusst begrenzte synthetische Stichprobe, die für einen gepaarten Methodenvergleich reicht. Die genaue Zahl steht in den Belegzahlen – für die Aussage zählt die Größenordnung, nicht die Nachkommastelle.

**War der Unterschied signifikant?**
Ja, statistisch klar und nicht zufällig. Wegen der synthetischen Daten ist das aber kein Nachweis für reale Marktüberlegenheit.

**Was folgt daraus für die Bank?**
Das Modell kann die Leasingkalkulation und Risikopuffer unterstützen – aber erst nach Validierung mit echten Daten. „Produktionsreif“ wäre heute zu stark.

## Belegzahlen – nur für Rückfragen

Diese Tabelle ist **nicht zum Vorlesen**. Sie belegt die qualitativen Aussagen und dient nur für Nachfragen.

| Kennzahl | Wert | Quelle |
|---|---|---|
| Synthetische Testfälle | 400 | 1.1, Abstract |
| MAPE lineares Baseline | 8,22 % | 1.1, Abstract |
| MAPE Pipeline | 2,84 % | 1.1, Abstract |
| RMSE lineares Baseline | 2.560 € | 1.1, Abstract |
| RMSE Pipeline | 883 € | 1.1, Abstract |
| p-Wert, gepaarter t-Test | < 0,001 | 1.1, Abstract |
| Kalman-Abwertung | 772,83 €/Monat | 1.1, Reflexion |
| Bayesscher Posterior | 317,85 €/Monat | 1.1, Reflexion |

## Quellen

- **1.1:** `Wissen/90 Anhänge/Abgaben/Sitzung 01/PDA_Do_Trung_WS26-27_Sitzung01.tex`; auch in `Lecture_07-MDA-15_Projektplanung_Data_Analytics/01_Woche-Portfolioabgabe/`.
- **1.2:** `Wissen/90 Anhänge/Abgaben/Sitzung 02/PDA_Do_Trung_WS26-27_Sitzung02.tex`; auch in `Lecture_07-MDA-15_Projektplanung_Data_Analytics/02_Woche-Portfolioabgabe/`.
- **2.1:** `Lecture_07-MDA-15_Projektplanung_Data_Analytics/03_Woche-Portfolioabgabe/PDA_Do_Trung_WS26-27_Sitzung03.pdf`; Text auch in `Wissen/40 Portfolio/Abgaben/Sitzung 03 (Quelle).md`.
- **Rahmen der Vorstellung:** `Wissen/30 Gruppe/Quellen/Gruppenmeeting Leitfragen PDA WiSe26-27 (Quelle).md`, Leitfrage 1 (Richtwert ca. 1,5 Min. je Person).
- **Kontext:** `Wissen/20 Sitzungen/Sitzung 01.md`, `Sitzung 02.md`, `Sitzung 03.md`.

Hinweis: Die Zettel 1.1 und 1.2 liegen im Abgabeordner nur als `.tex` vor, 2.1 als PDF. Für das Gesamtportfolio müssen die PDFs noch erzeugt werden (siehe `Portfolio Trung.md`).
