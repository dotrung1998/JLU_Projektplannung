---
titel: "Abgabe Sitzung 01"
quelle: "Lecture/01_Woche-Portfolioabgabe"
stand: 2026-11-21
hash: cfa8b0ae4c43
automatisch: true
---

> Automatisch eingelesen aus `Lecture/01_Woche-Portfolioabgabe` am 2026-11-21. Nicht bearbeiten —
> inhaltliche Arbeit gehört in die handgeschriebenen Notizen.

# Abgabe Sitzung 01 (Quelle)

Übungszettel 1.1, Abgabe 2026-10-27. Quelle: `01_Woche-Portfolioabgabe`

## Dateien

| Datei | Größe | Typ | Herkunft |
|---|---|---|---|
| `PDA_Do_Trung_WS26-27_Sitzung01.tex` | 5 KB | TEX | eigene Datei |

> Eigene Datei vorhanden.

## Inhalt

### PDA_Do_Trung_WS26-27_Sitzung01.tex

~~~~
\documentclass[a4paper,9pt]{article}

% Pakete
\usepackage[utf8]{inputenc}
\usepackage[ngerman]{babel}
\usepackage[T1]{fontenc}
\usepackage{geometry}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{enumitem}
\usepackage{xcolor}
\usepackage{csquotes}
\usepackage{float}

% Maximale Raumnutzung
\geometry{a4paper, left=1.2cm, right=1.2cm, top=1.2cm, bottom=1.2cm}

% Ultra-kompakte Abstände
\setlength{\parindent}{0pt}
\setlength{\parskip}{2pt}
\setlist[itemize]{nosep, leftmargin=*, topsep=0pt, parsep=0pt}
\setlist[enumerate]{nosep, leftmargin=*, topsep=0pt, parsep=0pt}

% Kompakte Überschriften
\usepackage{titlesec}
\titlespacing*{\section}{0pt}{4pt}{2pt}
\titlespacing*{\subsection}{0pt}{2pt}{1pt}
\titleformat{\section}{\normalfont\large\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\normalfont\normalsize\bfseries}{\thesubsection}{1em}{}

\hypersetup{colorlinks=true, linkcolor=blue, urlcolor=blue, citecolor=blue}

\begin{document}
\pagestyle{empty}

% Titelbereich
\begin{center}
\textbf{\large Projektplanung Data Analytics} \\
\small Übungszettel 1.1 -- \enquote{Was habe ich eigentlich gemacht?}, WiSe 2026/27 \\
\textbf{Trung Do} | Matrikelnummer: 8229831
\end{center}
\vspace{-3mm}
\noindent\rule{\textwidth}{0.3pt}

% Teil A
\section*{Teil A -- Zusammenfassung der Arbeit}

\textbf{Frage 1: Abstract}

Die Bachelorarbeit \enquote{Strategien zur Förderung des Elektrofahrzeugabsatzes bei Hyundai Capital Bank Europe GmbH} (HCBE) untersucht, wie sich die Restwerte von Elektrofahrzeugen (englisch Electric Vehicles, EV) in einem volatilen Markt zuverlässiger prognostizieren lassen. Dafür wurde eine dreistufige, additive Pipeline in Python entwickelt: Ein Kalman-Filter (Zustandsraummodell) liefert die zeitliche Basisprognose, eine Bayessche Inferenz mit Metropolis-Hastings-Sampling (ein Markov-Chain-Monte-Carlo-Verfahren, MCMC) quantifiziert die Unsicherheit der monatlichen Abwertungsrate, und CatBoost (Categorical Boosting, ein Gradient-Boosting-Verfahren) korrigiert die verbleibenden Residuen anhand EV-spezifischer Merkmale. Die Pipeline wurde mit synthetischen, an Marktdaten der Deutschen Automobil Treuhand (DAT) orientierten Hyundai-Daten gegen ein lineares Baseline-Modell getestet (400 Testfälle, gepaarter t-Test). Der hybride Ansatz senkte den mittleren absoluten prozentualen Fehler (Mean Absolute Percentage Error, MAPE) von 8,22\,\% auf 2,84\,\% und die Wurzel des mittleren quadratischen Fehlers (Root Mean Square Error, RMSE) von 2.560 Euro auf 883 Euro (Signifikanzwert $p<0{,}001$). Daraus leite ich ab, dass die Kombination der Verfahren methodisch tragfähig ist und HCBE bei der Leasingkalkulation und bei Risikopuffern unterstützen kann.

\textbf{Frage 2: Kernaussage in einem Satz}

Ich habe gezeigt, dass ein Computermodell den späteren Wert eines Elektroautos genauer vorhersagen kann als eine einfache Faustregel, sodass Leasingraten fairer und das Risiko für die Bank besser kalkulierbar werden.

\vspace{1mm}
\noindent\rule{\textwidth}{0.3pt}

% Teil B
\section*{Teil B -- Persönliche Reflexion}

\textbf{Frage 3: Das eigentliche Ergebnis heute}

Heute würde ich als eigentliches Ergebnis einen funktionierenden, nachvollziehbaren Prototyp bezeichnen, der das Zusammenspiel von Zustandsraummodell, Bayesscher Inferenz und Machine Learning (maschinelles Lernen) mathematisch sauber herleitet und reproduzierbar umsetzt. Im Fazit habe ich dagegen die Überlegenheit des Modells betont (MAPE 2,84\,\% gegenüber 8,22\,\%) und es als \enquote{uneingeschränkt geeignet} für den Einsatz bei der Hyundai Capital Bank Europe GmbH (HCBE) bezeichnet. Das deckt sich nur teilweise mit meiner heutigen Einschätzung: Da die Daten synthetisch erzeugt wurden, zeigt der Vergleich vor allem, dass die Pipeline in sich konsistent ist, nicht dass sie reale Marktpreise besser trifft. Außerdem passen einzelne Werte nicht ganz zusammen, etwa die Abwertungsrate des Kalman-Filters (772,83 Euro/Monat) und der Bayessche Posterior (317,85 Euro/Monat). Die Aussage \enquote{produktionsreif} war daher zu stark. Die Validierung mit realen Leasingrückläufern wäre der nötige nächste Schritt.

\textbf{Frage 4: Veränderung im Vorgehen}

Ja, mein Vorgehen hat sich bei der Rolle der Bayesschen Inferenz verändert. Ursprünglich war sie als dritter additiver Summand der Gesamtprognose gedacht (Gleichung: Zeitdynamik + Parameterrisiko + Faktor-Komplexität). Bei der Umsetzung wurde jedoch deutlich, dass die Posterior-Verteilung von $\beta$ (monatliche Wertminderungsrate) kein Euro-Betrag ist, der sich sinnvoll zum Restwert addieren lässt. Ich habe sie deshalb als Kalibrierungs- und Risikokomponente verwendet: Sie liefert den Startwert für die Abwertungsrate und das 95\,\%-Glaubwürdigkeitsintervall. Der Grund war, dass die Mathematik der Idee widersprach, nicht der Zeitplan. Ebenso musste ich auf synthetische Daten ausweichen, weil reale Restwertdaten nicht verfügbar waren. Dadurch verschob sich der Schwerpunkt von der Marktanalyse hin zur mathematischen Verifikation der Methode.

\end{document}
~~~~
