---
titel: Entscheidungen
stand: 2026-11-22
---

# Entscheidungen

Nur ergänzen, nie rückwirkend umschreiben. Jede Zeile: Datum, Entscheidung, Grund,
verworfene Alternative.

## 2026-11-21 — Gedächtnis liegt im Projektordner

**Entscheidung.** Alle Unterlagen, Notizen und der Status liegen in diesem Ordner;
`Wissen/` ist ein Obsidian-Vault, die Quellen bleiben unverändert daneben liegen.

**Grund.** Die Quellen kommen wöchentlich dazu (Übungszettel, Board-Exporte, Abgaben).
Ein zweiter Ort würde doppelt gepflegt und liefe auseinander.

**Verworfen.** Notion oder eine Tabelle als führender Ort (kein Bezug zu den Dateien,
zwei Stände); nur Ordner ohne Notizen (Zusammenhänge und Fristen wären nicht ablesbar).

## 2026-11-21 — Sebastians 05-Entwurf ist Gruppenentwurf, keine eigene Abgabe

**Entscheidung.** `05_Woche-Portfolioabgabe/Projektplanung Data Analytics.docx` wird als
Entwurf von Sebastian Stanzel behandelt und inhaltlich genutzt. Die Abgabe am 24.11.
erfolgt als eigene PDF `PDA_Do_Trung_WS26-27_Sitzung05.pdf` mit individuellem Abschnitt.

**Grund.** Im Ordner liegt keine eigene Datei für Woche 05; der Entwurf enthält keinen
individuellen Abschnitt (Frage 5), der laut Zettel Pflicht ist. Die Abgabe muss die eigene
Leistung sein.

**Verworfen.** Entwurf unverändert einreichen (fremde Datei, fehlender Individualteil);
Entwurf ignorieren und bei null anfangen (verschenkt die gute Gruppenarbeit).

## 2026-11-21 — Keine dritte bewertende Person

**Entscheidung.** Es bleibt bei Person C und Person D. Eine zusätzliche dritte Bewertung
wird nicht erhoben.

**Grund.** Messplan Abschnitt 5 verlangt genau zwei unabhängige Bewertende, beide an keinem
Protokoll beteiligt. Sebastian hat das im WhatsApp-Verlauf vom 21.11. bestätigt
(„wir brauchen keine dritte Person, die was bewertet").

**Verworfen.** Dritte Bewertung als Absicherung (nicht vorgesehen, kostet Zeit vor der
Rohdatenfrist und ändert das vorgegebene Design).

## 2026-11-21 — In 3.1 keine Verbesserungsvorschläge

**Entscheidung.** Teil B von Übungszettel 3.1 benennt Schwachstellen und blinde Flecken,
aber keine Verbesserungsvorschläge.

**Grund.** Die Aufgabenstellung fragt nach Kritik an der Messung, nicht nach einem
besseren Verfahren; Sebastian hat das am 21.11. ausdrücklich so festgehalten.

**Verworfen.** Verbesserungsvorschläge ergänzen (beantwortet eine nicht gestellte Frage
und kostet Platz auf der einen Seite).

## 2026-11-21 — N-Formel aus dem Messplan übernehmen

**Entscheidung.** Die Vollständigkeit rechnet mit `N = 11 + 2 × Zahl der Personen im
Meeting`; die Formel wird nicht neu hergeleitet.

**Grund.** Sie steht verbindlich in Messplan Abschnitt 3 und gilt für alle Gruppen, damit
die Daten in Sitzung 7 zusammenpassen. Sebastians Antwort im WhatsApp-Verlauf: „Die Formel
habe ich vom Messplan."

**Verworfen.** Eigene N-Definition (würde die Vergleichbarkeit über Gruppen zerstören).

## 2026-11-21 — Gruppenmeeting am Sonntag, 22.11., 10:00

**Entscheidung.** Das Meeting für die Datenerhebung findet am Sonntag um 10:00 statt;
dort entstehen beide Protokolle und danach die Bewertungen.

**Grund.** So bleibt bis Montag 12:00 genug Zeit für zwei Protokolle, zwei unabhängige
Bewertungen und den Eintrag im Conceptboard. Katarina hat den Termin vorgeschlagen,
Sebastian hat ihn bestätigt.

**Verworfen.** Termin in der Folgewoche (verletzt die Rohdatenfrist vom 23.11., 12:00).

## 2026-11-21 — Vault-Oberfläche wie im JLU-Vault

**Entscheidung.** Der Vault `Wissen/` zeigt die linke Icon-Leiste (Ribbon) mit Dateien,
Suche, Graph, Canvas, täglicher Notiz, Vorlagen, Lesezeichen und Befehlspalette; das
Kanban-Plugin liegt unter `Wissen/.obsidian/plugins/obsidian-kanban` und ist aktiviert.

**Grund.** `Wissen/.obsidian/appearance.json` stand auf `"showRibbon": false`; damit fehlte
der sichtbare Zugang zu Graph, Suche und Befehlspalette. Das Board trägt
`kanban-plugin: board` im Frontmatter und braucht das Plugin, sonst bleibt es eine reine
Markdown-Liste. Beides ist aus dem JLU-Vault übernommen, ohne dessen Inhalte zu kopieren.

**Verworfen.** Ohne Plugin weiterarbeiten (Board bliebe im Alltag unbrauchbar); Ribbon
dauerhaft ausblenden (kostet den einzigen Schnellzugriff auf Graph und Suche).

**Hinweis.** War Obsidian beim Schreiben geöffnet, überschreibt die App die Einstellung
beim Beenden aus dem Speicher — dann in der App: Einstellungen (⌘,) → Erscheinungsbild →
Ribbon-Menü anzeigen.

## 2026-11-21 — Linke Leiste nach echtem Neustart sichtbar

**Entscheidung.** Die Oberfläche wird ab jetzt am laufenden Programm geprüft, nicht an
den Konfigurationsdateien allein.

**Vorgehen.** Obsidian per AppleScript beendet (`tell application "Obsidian" to quit`,
nach 2 s beendet), danach `appearance.json` und `workspace.json` bei geschlossener App
gelesen, den Vault `Wissen` mit `open -a Obsidian …/Wissen` neu geöffnet und nach 12 s
ein Bildschirmfoto aufgenommen (`/tmp/wissen-sidebar.png`).

**Befund.** Die linke Icon-Leiste (Ribbon) und der Datei-Explorer mit `_tools`,
`00 Start`, `10 Kurs` … `90 Anhänge`, `README` sind zu sehen; Kanban 2.0.51 ist aktiv.
Obsidian hat beide Dateien beim Start neu geschrieben, aber mit `showRibbon: true`,
ohne `collapsed` an der linken Leiste und ohne ausgeblendete Ribbon-Einträge.

**Verworfen.** Nur die Dateien zu ändern und den Neustart der Person zu überlassen —
genau daran ist der vorige Lauf gescheitert.

## 2026-11-22 — Vietnamesische Leseansicht als Markdown plus HTML

**Entscheidung.** Neben dem deutschen Vault gibt es zwei vietnamesische Ansichten in
`00 Start/`: [[Theo dõi dự án (VI)]] als ausführliche Markdown-Notiz und `dashboard.html`
als interaktive Seite mit Countdown, Checkliste, N- und κ-Rechner. Der deutsche Vault
bleibt die Quelle für Abgaben und Zitate.

**Grund.** Trung liest und plant auf Vietnamesisch; Fristen, Rollen und Formeln liegen
damit in einer Sprache, in der sie ohne Übersetzungsumweg geprüft werden können. Die
Markdown-Fassung ist in Obsidian verlinkbar und durchsuchbar, die HTML-Fassung macht
Termine und den eigenen Fortschritt im Browser sichtbar.

**Verworfen.** Nur deutsche Notizen (Übersetzung kostet vor jeder Frist Zeit); nur eine
HTML-Seite (nicht verlinkbar, kein Volltext im Vault); ein externes Notiztool (zweiter
Stand, driftet auseinander).

**Grenze.** Die vietnamesischen Seiten erklären nur; verbindlich bleiben Messplan,
Portfoliovorgaben und die Abgabe in Stud.IP.

## 2026-11-22 — Zeitachse im Dashboard: Fortschritt nur mit Beleg

**Entscheidung.** Ein vergangener Termin wird nicht mehr allein wegen seines Datums als
erledigt markiert. `dashboard.html` zeigt „xong“ nur, wenn ein ausdrücklicher Beleg
hinterlegt ist (vier abgegebene Zettel) oder **alle** verknüpften Checklisten-Einträge
getickt sind. Das Datum im Kopf der Seite ist fest auf `22.11.2026` gesetzt; die Uhrzeit
steht als Aufnahmezeit daneben.

**Grund.** Ein Datum beweist keine Leistung: Am 23.11. wäre die Rohdatenzeile sonst grün,
obwohl sie noch fehlt. Die Seite soll den echten Stand zeigen, nicht den Kalender.

**Verworfen.** Erledigt automatisch nach Datum (behauptet Fortschritt ohne Beleg);
Zeitachse ganz entfernen (nimmt die Orientierung über die Reihenfolge).

## 2026-11-22 — Sitzungstage richtiggestellt

**Entscheidung.** Die Notizen sagen nicht mehr pauschal „dienstags“, sondern „überwiegend
dienstags; Sitzung 5 (Fr 13.11.) und Sitzung 8 (Fr 04.12.) freitags, ab Sitzung 5 digital“.

**Grund.** [[Seminarplan]] und die Terminänderung aus Sitzung 4 belegen zwei Freitagstermine.
Die Kurzform „dienstags“ war für diese beiden Termine falsch.

**Verworfen.** „dienstags“ als Kurzform beibehalten (würde bei der Planung der beiden
Freitagstermine in die Irre führen).

## 2026-11-22 — Rollenpoll belegt A, B und D; C bleibt offen

**Entscheidung.** Der Poll vom 15./16.11.2026 wird als Beleg für die Messplan-Kennungen
übernommen: **Person A = Simon Borsch**, **Person B = Tianshu Han**, **Person D = Dominik
Schmid**, Moderator = Sebastian Stanzel. **Person C wird nicht vergeben**, solange
„1. Bewertung“ zwei Stimmen hat (Trung und Katarina).

**Grund.** Optionen und Zeitstempel stehen im Screenshot; der Messplan verlangt genau eine
Person C und eine Person D, unabhängig und an keinem Protokoll beteiligt. Eine
Doppelbesetzung würde die IRR unbrauchbar machen ([[Rollenvote 15-11]]).

**Verworfen.** Weiter „Rollen nicht dokumentiert“ schreiben (widerspricht dem Poll); C raten
(verletzt die Belegpflicht); Screenshot mit Telefonnummern in den Vault kopieren
(Kontaktdaten Dritter).

**Grenze.** Der Poll ist eine Abstimmung, keine formale Zuweisung. Die Gruppe muss C vor
10:00 bestätigen.

## 2026-11-22 — BA-Kurzvorstellung ohne exakte Kennzahlen

**Entscheidung.** Die Sprechfassungen der Bachelorarbeit-Kurzvorstellung nennen keine
exakten Kennzahlen (MAPE, RMSE, p-Wert, Stichprobengröße). Sie beschreiben die Verbesserung
qualitativ („deutlich genauer“, „auf einen Bruchteil“) und benennen die Schwachstellen sowie
konkrete Verbesserungen. Die Belegzahlen bleiben am Ende der Notiz nur für Rückfragen.

**Grund.** Für die mündliche Vorstellung zählt die Größenordnung, nicht die
Nachkommastelle; die exakten Werte lenken vom Argument ab, und die synthetischen Daten
tragen keine Marktaussage. Die Schwachstellen müssen genannt werden, damit die Einordnung
ehrlich bleibt.

**Verworfen.** Die bisherige Fassung mit exakten Kennzahlen im Sprechtext (zu technisch,
suggeriert eine Präzision, die die Daten nicht hergeben); nur die Zahlen zu streichen, ohne
die Schwachstellen zu ergänzen (wäre eine unvollständige Einordnung).

## 2026-11-22 — Rollen C/D und Conceptboard geklärt

**Entscheidung.** A = Simon, B = Tianshu, **C = Trung** (1. Bewertung), **D = Dominik**
(2. Bewertung); **Katarina** übernimmt die Eingabe ins Conceptboard und bewertet nicht.
Im Transkript erscheinen „Trang“ und „Katharina“; gemeint sind Trung und Katarina.

**Grund.** Die Gruppe hat die Doppelbesetzung von C aufgelöst. Trung bewertet Bewertungsbogen 1,
Dominik bleibt D; Katarina übernimmt die Dateneingabe. Damit sind C und D unabhängig, und
die Rohdatenzeile kann mit `b1 = Trung`, `b2 = Dominik` gefüllt werden.

**Verworfen.** C = Katarina (alte V2-Annahme; würde Trung aus der Bewertung nehmen und die
Rollen mit der Conceptboard-Eingabe vermischen); C offen lassen (blockiert IRR und 3.2).

## 2026-11-22 — Breiter Plan, Zusatzvariable und dokumentierte Limitation

**Entscheidung.** Der Projektplan bleibt breit und anpassbar statt starrer Wochenplanung;
bei Verzögerungen wird er angepasst und die Dokumentation laufend verbessert. Arbeitszeiten,
Erholung und Work-Life-Balance werden berücksichtigt. **Zufriedenheit** bleibt vierte
Variable und soll über eine Ratingskala erhoben werden; Stimmung/äußere Faktoren werden als
Kontext mitgedacht. **Lesbarkeit und Struktur** gelten als wichtige blinde Flecken, auch
wenn die drei Pflichtmaße sie nicht systematisch erfassen. Fehlende BA-Fragen werden nicht
nachgeholt, sondern als Limitation des Vergleichs dokumentiert.

**Grund.** Ein starrer Wochenplan passt nicht zu den realen Arbeitszeiten; die Gruppe will
bei Verzögerungen handlungsfähig bleiben. Die Zusatzvariable braucht eine einfache,
nachvollziehbare Skala. Die Messgrenzen müssen in 3.1/3.2 ehrlich benannt werden; eine
zweite Gesprächsrunde würde die Bedingungen des einen Meetings verändern.

**Verworfen.** Jede Aufgabe starr pro Woche planen (zu unrealistisch); Zufriedenheit ganz
weglassen (verliert die vierte Variable); Lesbarkeit/Struktur als neue Pflichtmessgröße
einführen (widerspricht dem Messplan); BA-Fragen nachträglich nachholen (verändert das
Vergleichsmaterial).

## 2026-11-22 — Otter.ai als Werkzeug, Zustimmung aller sechs

**Entscheidung.** Die KI-gestützte Dokumentation nutzt **Otter.ai**. Alle sechs
Gruppenmitglieder haben der Aufzeichnung zugestimmt (Gruppenangabe 22.11.2026).

**Grund.** Damit ist das Werkzeug für Person B festgelegt; die Einwilligung aller sechs ist
Voraussetzung für Aufnahme und Transkription. Version, Art und Prompt werden vor der Aufnahme
ergänzt und getestet.

**Verworfen.** Ein anderes Werkzeug ohne Gruppenentscheidung; Aufzeichnung ohne Einwilligung
aller Teilnehmenden.

## 2026-11-22 — Werkzeugdetails und Durchführung: Otter.ai Pro Lite + Gemini Neon High

**Feststellung.** Die KI-Dokumentation wurde mit **Otter.ai (Pro Lite)** aufgenommen und
mit **Google Gemini Neon High** verarbeitet; das Werkzeug ist **kommerziell**. Die
Einrichtung dauerte **30 Min**, die Verarbeitung inkl. Wartezeit **10 Min**, die
Nachbearbeitung **20 Min**. Der verwendete Prompt ist im [[Aufnahme Auto Tianshu|KI-Protokoll]]
dokumentiert. Am Meeting nahmen **6 Personen** teil; es dauerte von **10:14 bis 10:55 Uhr**
(41 Min.), damit gilt **N = 23** und `bewertende_unabhaengig = ja`.

**Beleg.** `Aufnahme_Auto_Tianshu.docx` und `manuelles Protokoll.docx`; Details in
[[Aufnahme Auto Tianshu]], [[Manuelles Protokoll 22-11]] und [[Protokollvergleich 22-11]].

**Grund.** Damit sind Werkzeug, Art, Version/Modell, Prompt, Teilnehmerzahl und die
automatischen Zeitwerte für die Rohdaten belegt. Die manuelle Nachbearbeitungszeit und die
acht Prozentwerte bleiben offen, bis C und D unabhängig bewertet haben.

**Verworfen.** Die offenen Parameter weiter als Annahme führen; die Zahl der Teilnehmenden
aus der Gruppengröße statt aus der Teilnehmerliste ableiten.

## 2026-11-22 — Schablone A: Auswertung im DOCX, Dateiname vereinheitlicht

**Entscheidung.** Die A-Bewertung von C bleibt inhaltlich unverändert: **18/23** manuell,
**20/23** automatisch. Im DOCX werden nur die Auswertungszeilen `Erfasste Inhalte:` und
`Vollständigkeit in Prozent` ergänzt. Die Dateien heißen jetzt
`Schablone_A_Vollstaendigkeit_PDA_WiSe26-27_Trung.docx` und `.md`.

**Grund.** Dominiks A-Fassung enthält die Auswertung direkt in der Tabelle; die
Namenskonvention soll Person und Veranstaltung eindeutig zuordnen. Die Punkte und
`x`/`—`-Einträge bleiben unverändert.

**Verworfen.** Die Bewertung neu berechnen (keine neue Grundlage); den bisherigen Namen
`Schablone_A_Vollstaendigkeit_C_Trung` behalten (weicht von Dominiks Muster ab).

## 2026-11-22 — Zufriedenheitsskala 1–5 bestätigt; 45 %/70 % bleibt offen

**Entscheidung.** Die Zufriedenheit wird als **1–5 (Likert)** geführt; Item 5 bleibt bei
**1/1**. Die Frage nach **45 % oder 70 %** bleibt ohne Antwort offen und wird nicht
geschätzt.

**Grund.** Die Gruppe verweist für die Skala auf ihre schriftlichen Abgaben; für 45 %/70 %
liegt keine Antwort vor.

**Verworfen.** Eine 0–10-Skala annehmen (widerspricht den schriftlichen Abgaben); 45 %/70 %
raten oder als geklärt markieren (keine Quelle).

## 2026-11-22 — Schablone B (DOCX und MD) nach Dominiks Muster benannt

**Entscheidung.** DOCX und Lesefassung von Schablone B heißen jetzt
`Schablone_B_Genauigkeit_PDA_WiSe26-27_Trung.docx` und `.md`. Die Inhalte und Punkte
bleiben unverändert.

**Grund.** Einheitliche Namen für Abgabe und Vergleich mit Dominiks Fassung; die
Namenskonvention von Schablone A wird übernommen.

**Verworfen.** Den bisherigen Namen `Schablone_B_Genauigkeit_C_Trung` behalten (weicht
von der vereinbarten Konvention ab).

## 2026-11-22 — Projektordner versioniert, Repository privat

**Entscheidung.** Der gesamte Projektordner (Kursmaterial, wöchentliche Abgaben, Vault)
liegt im Repository `dotrung1998/JLU_Projektplannung`, Branch `main`. Das Repository ist
**privat**. Das Schwesterprojekt `JLU Spezializierungsmodul/` bleibt außen vor: es hat ein
eigenes Repository (`Trung_Do_Spezializierungsmodul`) und steht in `.gitignore`.

**Grund.** Der Vault enthält Matrikelnummern (12 Dateien: Abgaben, `(Quelle)`-Notizen,
`Anhänge/Abgaben/*.tex`) und Namen sowie Screenshots von Gruppenmitgliedern. Die harte
Regel dieses Projekts verlangt, dass diese Kopien lokal bleiben; ein öffentliches
Repository würde sie veröffentlichen.

**Verworfen.** Öffentliches Repository beibehalten und die betroffenen Dateien
ausschließen (unvollständiger Stand, Regeln zu Anonymisierung und Anhängen greifen nicht);
alle Dateien öffentlich pushen (Widerspruch zur Projektregel).

## 2026-11-22 — n8n ersetzt die launchd-Automatik nicht

**Entscheidung.** Die tägliche Automatik bleibt bei `daily_guard.sh` → `daily.sh` unter
launchd (08:00, Login, alle 30 Minuten). n8n **2.48.7** wurde selbst gehostet in Docker
getestet: Der Workflow `Projektplanung Tagesbericht (Test)` (Schedule-Trigger `0 8 * * *`,
zusätzlich Webhook-Test, Code-Node liest `Neu seit letztem Lauf.md`, HTTP-Request an den
Discord-Webhook) lief end-to-end. Genau eine Nachricht wurde gesendet (message id
`1574154033030107167`) an `#jlu_projektplannung` (`channel_id 1574148268345008128`, Guild
Work and JLU). Der Schedule-Trigger wurde separat belegt (20-Sekunden-Testworkflow, zwei
Läufe: `20:07:00Z`, `20:07:20Z`). Danach wurden Container, Temp-Dateien und Image entfernt.

**Grund.** (1) Der Container kann die vorhandenen Skripte nicht ausführen: kein `python3`,
`pdftotext` oder `pandoc`, und n8n 2.x hat den Node `Execute Command` entfernt — die
Ablauflogik müsste neu geschrieben werden. (2) Docker Desktop teilt `/Applications` nicht,
der Vault war im Container nicht lesbar (Test nur mit Kopie in `/tmp`). (3) n8n braucht
weiterhin launchd oder pm2, um dauerhaft zu laufen, und holt verpasste Läufe nicht nach;
der Guard leistet das bereits. (4) Zusätzlicher Bedarf (Image 2,18 GB, RAM, Web-UI mit
Anmeldung) ohne Gewinn an Zuverlässigkeit.

**Verworfen.** n8n als alleinigen Scheduler einsetzen (doppelte Discord-Berichte, zwei
Zuständigkeiten); n8n auf dem Host per `npx` statt Docker (gleiche fehlende Nachhol-Logik,
zusätzliche Node-Abhängigkeit).

## 2026-11-22 — Tailscale Personal als kostenloser Fernzugriff

**Entscheidung.** Für den Zugriff von außen auf den Mac zu Hause wird **Tailscale Personal**
(0 USD) verwendet. Die App ist installiert (1.104.7) und angemeldet als `dotrung1998@`;
Tailnet `tail8ab714.ts.net`, Gerät `macbook-air-von-the` (`100.94.206.97`), derzeit 0 Peers.
Tailscale ist ein Mesh-VPN für eigene Geräte, kein Internet-Exit.

**Grund.** Kein öffentlicher Port und keine öffentliche IP nötig, funktioniert hinter
CGNAT; Subnet-Router und Exit-Node sind im Free-Plan enthalten; keine Kosten. Grenze: der
Mac muss eingeschaltet und wach sein, und Tailscale muss laufen.

**Verworfen.** Cloudflare Tunnel (kostenlos, aber eigene Domain und öffentliche
Erreichbarkeit nötig; `cloudflared` nicht installiert); WireGuard selbst (kostenlos, aber
Portfreigabe, öffentliche IP und Admin-Rechte); kommerzielle VPN-Abos.

## 2026-11-22 — Nur ein Scheduler sendet den Tagesbericht

**Entscheidung.** Es gibt genau **einen geplanten Absender** für den Discord-Bericht.
Entweder launchd (08:00 auf dem Mac) **oder** GitHub Actions (Cron), nie beide am selben
Tag. Für den aktuellen Stand: launchd bleibt der einzige geplante Lauf; der
Actions-Workflow `.github/workflows/tageslauf.yml` bleibt als manueller Notfallweg
(`workflow_dispatch`) für Tage, an denen der Mac aus ist. Der Cron-Eintrag wird entfernt,
sobald der Workflow gepusht wird — die Umsetzung ist noch offen.

**Grund.** Beide Läufe schreiben dieselben Dateien (`daily.log`, `abdeckung.json`,
Status-/Board-Blöcke) und senden unabhängig voneinander: zwei Läufe um 08:00 ergeben zwei
Discord-Nachrichten und konkurrierende Commits. Ein gemeinsamer Zustand fehlt — der Mac
pusht seine Läufe nicht automatisch, und Actions sieht lokale Änderungen nicht. Eine
Deduplizierung über `daily.log` wäre nur eine Race mit Rebase-Konflikten, kein Lock.

**Verworfen.** Beide Zeitpläne parallel (doppelte Berichte, divergierende Commits);
Dedupe über `daily.log` mit `git pull` auf beiden Seiten (Race zwischen 08:00 und
GitHub-Verzögerung, Append-Konflikte in `daily.log`); Actions als primärer Scheduler bei
aktivem launchd (dann müsste `StartCalendarInterval` aus dem plist entfernt werden).

## 2026-11-22 — GitHub Actions ist der einzige Scheduler; launchd ruht

**Entscheidung.** Der geplante Tageslauf läuft ab jetzt ausschließlich auf GitHub Actions
(`.github/workflows/tageslauf.yml`, Cron 08:00 `Europe/Berlin`). Der lokale LaunchAgent
`com.projektplanung.pda.daily` wird gestoppt und aus `~/Library/LaunchAgents` entfernt
(Sicherung als `.plist.disabled`); die Dateien im Vault bleiben unverändert. Ein manueller
Start per `workflow_dispatch` bleibt möglich.

**Grund.** Der Nutzer will den Lauf in der Cloud. Zwei Scheduler am selben Tag erzeugen
zwei Discord-Berichte und konkurrierende Commits (siehe „Nur ein Scheduler sendet den
Tagesbericht“). Das Repository-Secret `DISCORD_WEBHOOK` ist gesetzt, und der Workflow
schreibt die Ergebnisse ins Repository zurück.

**Verworfen.** launchd parallel weiterlaufen lassen (doppelte Berichte, divergierende
Commits); Actions nur manuell (kein 08:00-Lauf, wenn der Mac aus ist).

## 2026-11-22 — Nachtrag: Actions ist blockiert, launchd bleibt vorerst aktiv

**Entscheidung.** Der LaunchAgent bleibt aktiv, bis GitHub Actions auf dem privaten
Repository nachweislich läuft. Der erste Testlauf (`run 45067125802`) wurde von GitHub
**vor dem Start** abgebrochen: „The job was not started because recent account payments
have failed or your spending limit needs to be increased.“ Das ist eine Billing-Sperre des
Kontos, kein Fehler im Workflow.

**Grund.** Ohne laufenden Cloud-Job darf die lokale Automatik nicht abgeschaltet werden,
sonst fällt der Tagesbericht aus.

**Verworfen.** launchd trotz blockiertem Actions stoppen (Ausfall des Berichts); das
Repository öffentlich machen (Matrikelnummern und Namen, verstößt gegen die Projektregel).

## 2026-11-22 — Öffentliches Repository, Actions läuft, Ruleset auf main

**Entscheidung.** Das Repository ist öffentlich; damit läuft GitHub Actions ohne
Billing-Sperre. Testlauf `45067710806`: **success**, `Discord: gesendet (HTTP 204)`,
Commit `825ba6d` vom Workflow zurückgeschrieben. Das Ruleset
`main: Schutz vor Loeschen und Force-Push` (id `27857534`) verbietet Löschen und
Force-Push auf `main`; Bypass hat nur die Repository-Admin-Rolle. Der Workflow committet
unter `Trung Do <dotrung1998@gmail.com>`.

**Grund.** Kostenloser Cloud-Lauf ohne Zahlungsdaten; `main` bleibt gegen versehentliches
Löschen und Force-Push geschützt. Die Autorenidentität der Commits aus diesem Rechner und
aus dem Workflow ist dieselbe.

**Verworfen.** `Restrict updates` mit Bypass für die GitHub-Actions-App (GitHub lehnt das
für benutzereigene Repositories ab: „Actor GitHub Actions integration must be part of the
ruleset source or owner organization“); Push-Ruleset mit Autor-E-Mail-Muster (nur für
Organisationen und private/interne Repositories verfügbar).

**Hinweis.** Öffentlich bedeutet: die im Vault kopierten Abgaben enthalten Matrikelnummern
und Gruppennamen und sind jetzt öffentlich einsehbar; der frühere Grund für „privat“
bleibt fachlich gültig und wird hier bewusst zurückgestellt.

## 2026-11-22 — Actions verifiziert; launchd gestoppt

**Entscheidung.** Zwei Testläufe auf GitHub Actions sind erfolgreich: `45067710806` und
`45067933400` (jeweils success, `Discord: gesendet (HTTP 204)`, Commits `825ba6d` und
`58ebc0e` zurückgeschrieben; der zweite Commit läuft unter `Trung Do
<dotrung1998@gmail.com>`). Der LaunchAgent `com.projektplanung.pda.daily` wurde gestoppt
(`launchctl bootout`) und die installierte Plist als
`com.projektplanung.pda.daily.plist.disabled` gesichert; die Plist im Vault bleibt
unverändert. Ab jetzt ist GitHub Actions der einzige Scheduler.

**Grund.** Keine doppelten Discord-Berichte und keine konkurrierenden Commits mehr.

**Verworfen.** launchd parallel weiterlaufen lassen (doppelte Berichte).

**Hinweis.** Reaktivieren: `cp ~/Library/LaunchAgents/com.projektplanung.pda.daily.plist.disabled
~/Library/LaunchAgents/com.projektplanung.pda.daily.plist` und
`launchctl bootstrap gui/$(id -u) ~/Library/LaunchAgents/com.projektplanung.pda.daily.plist`.

## 2026-11-22 — Autor-Guard und strikte main-Regeln

**Entscheidung.** `main` ist jetzt ohne Bypass geschützt (Ruleset `27857534`: `deletion`,
`non_fast_forward`); Force-Push und Löschen werden auch für den Admin abgelehnt. Commits
prüft `Wissen/_tools/author_guard.py`: erlaubt ist nur `Trung Do
<dotrung1998@gmail.com>`, verboten sind `Co-authored-by`, Bot-Adressen und Tool-Trailer.
Die Prüfung läuft lokal (`.githooks/pre-commit`, `commit-msg`, `pre-push`, aktiv über
`core.hooksPath=.githooks`) und in GitHub Actions (`author-guard.yml` sowie vor dem Push
im Tageslauf).

**Grenze.** GitHub kann auf benutzereigenen Repositories keinen Ruleset-Check auf
Commit-Autoren anwenden; der CI-Guard macht Verstöße sichtbar, verhindert aber keinen
direkten Push. Historische Commits (z. B. `825ba6d` als „Projektplanung“) bleiben
unverändert.

## 2026-11-22 — Nod als Scheduler verworfen

**Entscheidung.** GitHub Actions bleibt der einzige Scheduler für den Tageslauf. Nod
(n8n Labs, Commit `940c88a`, Apache-2.0, Research Preview) wird nicht als Ersatz
eingesetzt; es bleibt höchstens ein optionaler lokaler Assistent.

**Testaufbau.** Node 24.21.0 portabel (System-Node 24.19 unverändert), Docker 29.6.2,
24 GB RAM, Nod aus dem Quellbaum, vier Container (Postgres, Workspace, Browser,
Workspace-Netz), Ollama auf Port 11435 mit `qwen2.5-coder:14b`; kein bezahlter
Model-Key, Onboarding ohne E-Mail.

**Messwerte und Befunde.**
- Erster Start 476 s (Docker-Build und Images), danach 16 s, 52 s und 10 s.
- `llama-server` belegt 14,6 GB RSS; Modell-Load 43,9 s; Generierung 5,14 Token/s.
- Modellkontext 32.768 Token, Nod verlangt mindestens 65.536; Ollama meldet
  „requested context size too large for model“ und begrenzt auf 32.768.
- Nod-Modelcheck: 885-Token-Prompt, nach 46,26 s abgebrochen; UI:
  „The selected model is unavailable. Task: check. Model: compatible/qwen2.5-coder:14b.“
- Schedule für 21:30:02Z: Nod war aus, also kein Lauf und keine Datei; nach Neustart
  21:30:55Z holte Nod den Lauf 53 s verspätet nach. Der Turn endete 21:33:25Z als
  `succeeded`, aber `/workspace/nod-proof.txt` fehlte; die Antwort war nur eine
  allgemeine Onboarding-Empfehlung. Also Erfolg ohne Ausführung.
- Workspace: `/workspace` leer, Python 3.11.2, git 2.39.5, `pdftotext`, kein `pandoc`;
  `git ls-remote` auf das öffentliche Repo funktioniert. Kein Discord-Connector;
  der Webhook liegt bewusst außerhalb des Repos.
- GitHub Actions zum Vergleich: Run `45068450441` success, genau eine Discord-Zeile
  im Ausführungsstep, Commit unter `Trung Do`.

**Grund.** Der Tageslauf ist ein deterministischer Shell-/Git-Job; Nod ist ein
modellgetriebener Agent mit Approval, braucht einen laufenden Host und lieferte im
Test einen falschen Erfolg. GitHub Actions läuft dagegen um 8:00 auch bei geschlafenem
Mac, kostenlos im öffentlichen Repo, mit reproduzierbarem Ergebnis.

**Verworfen.** Nod als alleiniger Scheduler; Nod als primärer Discord-Kanal (kein
Connector, Secret müsste in den Prompt); bezahlter Model-Key nur für diesen Test.

**Bedingungen für eine spätere Nutzung als Nebenkanal.** Immer eingeschalteter Host
(Mac mini/VPS), Modell mit mindestens 64k Kontext und zuverlässigen Tool-Calls (oder
bezahlte API), Repo-Mount/Clone, sichere Übergabe des Discord-Webhooks, akzeptierte
Approvals und keine kritischen Commits/Pushes über Nod.

**Aufräumen.** Container, Volumes, `postgres:17-alpine`, Nod-Images und 8,486 GB
Build-Cache entfernt; Docker wieder 32 Images/20,15 GB, Build-Cache 0 B. Keine
Nod-Prozesse, Ports 4310/11435 frei; Arbeitsbaum sauber, keine Testdateien im Repo.

## 2026-11-22 — Eigene 3.1 als LaTeX-Datei und PDF gesetzt

**Entscheidung.** Übungszettel 3.1 liegt als
`05_Woche-Portfolioabgabe/PDA_Do_Trung_WS26-27_Sitzung05.tex` und `.pdf` vor: eine Seite,
Fragen 1–4 auf dem Stand der Gruppendiskussion, Frage 5 als eigener Individualteil.

**Grund.** Die Abgabe muss die eigene Leistung sein; der DOCX-Entwurf von Sebastian
enthält Frage 5 nicht. Der Zettel empfiehlt eine Seite (Obergrenze zwei); die Fassung
bleibt bei einer Seite und passt damit in das Portfolio.

**Umsetzung.** `tectonic` mit XeTeX und `fontspec` (Latin Modern Sans,
`lmsans10-*.otf`); `inputenc`/`fontenc` entfallen. Inhaltlich: `N = 11 + 2 × 6 = 23`,
keine dritte bewertende Person, in Frage 4 nur blinde Flecken und keine
Verbesserungsvorschläge (Rückmeldungen 21./22.11.), Individualteil als Person C mit
Schablonen A und B und `b1`.

**Verworfen.** Sebastians DOCX unverändert einreichen (fehlender Individualteil); die
T1-Einstellung der früheren Dateien beibehalten (ß wurde als „SS“ gesetzt).

## 2026-11-22 — 3.1 auf die pdfLaTeX-Struktur der früheren Abgaben umgestellt

**Entscheidung.** `PDA_Do_Trung_WS26-27_Sitzung05.tex` folgt jetzt dem Aufbau von
`01_Woche-Portfolioabgabe/…Sitzung01.tex`: 9pt, `inputenc`/`fontenc` T1, `geometry`
1,2 cm, `enumitem`, `titlesec`, Titelzeile mit Trennlinien. Die XeTeX-Fassung mit
`fontspec` entfällt. Inhaltlich bleibt der Zettel gleich; für eine Seite wurden einzelne
Sätze gestrafft und `\parskip` sowie das Leading leicht reduziert.

**Grund.** Die Datei muss wie die früheren Zettel auf texpage.com kompilierbar sein.
Lokal ist nur `tectonic` (XeTeX) installiert, das mit `inputenc`/`fontenc` ß als „SS“
setzt; auf texpage läuft pdfLaTeX und die T1-Einstellung ist dort korrekt.

**Einschränkung.** Die PDF im Ordner ist mit XeTeX und metric-kompatiblen Latin-Modern-
Fonts erzeugt, weil lokal kein pdfLaTeX vorhanden ist; Seitenzahl und Umbrüche stimmen.
Wer die PDF direkt aus der Datei erzeugen will, kompiliert sie auf texpage.

## 2026-11-22 — Rohdaten: die Zeile von Katarina gilt unverändert

**Entscheidung.** Für Gruppe 11 gilt Zeile 11 im Conceptboard so, wie Katarina sie
eingetragen hat: `meeting_min` = 37, `zeit_auto_einrichtung` = 25,
`zeit_man_mitschreiben` = 35 und die acht Prozentwerte mit `b1` = Trung und `b2` =
Dominik. Die Gruppe übernimmt diese Werte und das Ergebnis; es wird nichts angeglichen.

**Grund.** Die Tabelle auf dem Conceptboard ist die gemeinsame Datengrundlage für Sitzung 7
und Übungszettel 3.2. Eine nachträgliche Korrektur würde die Zeile von der Absprache der
Gruppe lösen, ohne dass ein Beleg den anderen Wert erzwingt.

**Dokumentiert, nicht korrigiert.** Die Protokolle nennen 41 Minuten Meetingdauer
(10:14–10:55) und 30 Minuten Einrichtung; beides bleibt in [[Messung 22-11]] und
[[Rohdaten]] als Beleg stehen.

## 2026-11-22 — IRR: keine κ-Werte aus den acht Prozentwerten geschätzt

**Entscheidung.** Die vier κ-Werte für Übungszettel 3.2 bleiben offen, bis **Ds
Einzelurteile** (Schablone A und B je Inhalt) vorliegen. Statt einer Schätzung hält
`06_Woche-Portfolioabgabe/IRR_Kappa_Notiz_3.2.md` fest, was aus den acht Prozentwerten
arithmetisch folgt: die Rückrechnung auf Zähler, die κ-Spannen bei unbekannter
Überlappung und der Rechenweg.

**Grund.** κ hängt an der gemeinsamen 2×2- bzw. 3×3-Tabelle, nicht an den Randverteilungen:
Beim manuellen Protokoll liegen je nach Überlappung κ = −0,25 bis 0,50, beim automatischen
−0,05 bis 1,00. Eine einzelne Zahl wäre erfunden. Die Board-Zeile bleibt unverändert
(Gruppenentscheidung).

**Verworfen.** κ aus den Prozentwerten „überschlagen“ (etwa der Mittelwert als Po);
Po = 1 annehmen, weil beide Protokolle ähnlich abschneiden; die Zeile neu berechnen.

**Nebenbefund (nur Beschriftung).** Die `b2`-Spalte der Board-Zeile enthält exakt die Werte
von C (78,3 / 87,0 / 91,7 / 97,5, [[Bewertung C - Begründungen]]), also Trung und nicht D.
`b1` ist damit D; die Absprache „b1 = Trung, b2 = Dominik“ ist in der Zeile vertauscht.
Außerdem ist die zweite Spalte nur mit N = 21 konsistent, C rechnet mit N = 23.

## 2026-11-22 — κ aus den Einzelurteilen berechnet, N = 23 als gemeinsame Basis

**Entscheidung.** Die vier IRR-Werte werden auf der Basis **N = 23** berichtet (Messplan:
11 + 2 × 6; ein nicht besprochener Inhalt gilt in beiden Protokollen als nicht erfasst).
Ds Schablonen A und B sind als Vault-Notizen übernommen; seine leeren Items 22–23 zählen
nach dieser Regel als 0. Ergebnis: Vollständigkeit manuell κ = 0,21 (Po 65,2 %, N = 23),
automatisch κ = 1,00 (Po 100 %, N = 23); Genauigkeit manuell κw = 0,06 (Po 58,3 %,
Schnittmenge 12), automatisch κw = −0,07 (Po 92,5 %, Schnittmenge 20).

**Grund.** κ braucht die gemeinsame Tabelle der Einzelurteile. Auf Ds Basis N = 21 ergäbe
die Vollständigkeit manuell κ = 0,00, auf der Messplan-Basis 0,21; beide Zahlen werden
offengelegt, statt eine zu wählen, die zur Vorgabe nicht passt. Der zweite Wert ist der
berichtete, der erste steht als Sensitivität daneben.

**Verworfen.** Ds N = 21 unkommentiert übernehmen; κ aus den Prozentwerten der Rohdatenzeile
„überschlagen“; Items 22–23 aus beiden Schablonen streichen (sie sind Teil des Pflichtrasters).

**Offen.** Ds Zustimmung zur Basis N = 23; warum seine Schablone B Item 8 automatisch mit 1
bewertet, Schablone A es aber als nicht erfasst markiert (ändert κ nicht, Item 8 liegt
nicht in der Schnittmenge).

## 2026-11-23 — Fristen tragen einen Erledigt-Zustand

**Entscheidung.** `Wissen/_tools/fristen.json` erlaubt je Eintrag ein Feld
`"erledigt": "YYYY-MM-DD"`. Ist es gesetzt, zeigt der Statusblock `erledigt TT.MM.JJJJ`
statt „überfällig"/„heute"/„morgen", und `discord_notify.py` lässt den Eintrag aus der
Liste „Fällig (bis 4 Tage)" weg. Das Gruppenmeeting vom 22.11. ist mit
`erledigt: 2026-11-22` eingetragen.

**Grund.** Der Discord-Bericht vom 23.11. 01:45 führte das gelaufene Meeting weiter als
„überfällig seit 1 T.", weil die Liste nur das Datum kannte. Erledigte Termine sollen aus
dem Bericht verschwinden, offene und überfällige sichtbar bleiben.

**Verworfen.** Erledigte Einträge aus `fristen.json` löschen (die History ginge verloren,
und der Termin fehlte im Statusblock); den Erledigt-Zustand aus den Board-Karten ableiten
(dann hinge die Frist an einer zweiten Datei und an Karten, die es nicht für jede Frist
gibt).

**Grenze.** `erledigt` wird von Hand gesetzt; die Automatik erkennt es nicht selbst.
