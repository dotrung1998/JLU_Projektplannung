---
titel: Schreibregeln für .tex-Abgaben
stand: 2026-11-22
---

# Schreibregeln für .tex-Abgaben

Gilt für alle eigenen Übungszettel (Trung). Belege: Vorgabe Trung vom 22.11.2026 sowie die
abgegebenen Dateien `01_Woche-Portfolioabgabe/…Sitzung01.tex` und
`02_Woche-Portfolioabgabe/…Sitzung02.tex`, die auf texpage.com kompiliert wurden.

## Zeichensetzung

- **Kein Semikolon** im Fließtext. Statt `;` entweder ein Punkt (neuer Satz) oder ein Komma.
- **Kein Gedankenstrich als Satzzeichen** (`-`, `–`, `—`) im Fließtext. Stattdessen Punkt
  oder Komma. Bindestriche in Komposita bleiben (`Likert-Skala`, `Meeting-Dokumentation`).
- `--` nur in Überschriften und in der Titelzeile, wie in den früheren Abgaben:
  `\section*{Teil A -- Operationalisierung und Messbarkeit}`.
- Aufzählungen als `itemize`. Keine Strichlisten im Fließtext.
- `\enquote{…}` statt `"…"`.

## Aufbau (pdfLaTeX, texpage.com)

Preamble und Titelblock wie `…Sitzung01.tex`:

```latex
\documentclass[a4paper,9pt]{article}
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
\geometry{a4paper, left=1.2cm, right=1.2cm, top=1.2cm, bottom=1.2cm}
\setlength{\parindent}{0pt}
\setlength{\parskip}{1pt}
\setlist[itemize]{nosep, leftmargin=*, topsep=0pt, parsep=0pt}
\usepackage{titlesec}
\titlespacing*{\section}{0pt}{3pt}{1pt}
\titleformat{\section}{\normalfont\normalsize\bfseries}{\thesection}{1em}{}
```

```latex
\begin{center}
\textbf{\large Projektplanung Data Analytics} \\
\small Übungszettel 3.1 -- \enquote{Titel}, WiSe 2026/27 \\
\textbf{Trung Do} | Matrikelnummer: 8229831
\end{center}
\vspace{-4mm}
\noindent\rule{\textwidth}{0.3pt}
```

Danach `\section*{Teil A -- …}` und je Frage `\textbf{Frage N: …}`.
**Kein `fontspec`** in der Abgabedatei.

## Länge und Layout

- Eine Seite ist das Ziel, zwei Seiten die Obergrenze.
- Wenn es nicht passt, in dieser Reihenfolge: Sätze straffen, `\parskip` senken,
  `\titlespacing` senken, zuletzt `\linespread{0.96}`.

## Kompilieren

- **Abgabe-PDF auf texpage.com** (pdfLaTeX). Lokal ist nur `tectonic` (XeTeX) installiert.
- Lokale Layout-Prüfung: Kopie mit `fontspec` und Latin Modern (`lmsans…`/`lmroman…`)
  kompilieren. Diese Kopie **nicht** als Abgabe verwenden, weil `T1` + `inputenc` unter
  XeTeX ß als „SS“ setzt.
- Prüfen: eine Seite, keine `Overfull`-Warnung, ß im Textlayer korrekt.

## Zahlen

- Keine Zahl ohne Quelle. `N = 11 + 2 × Zahl der Personen im Meeting`.
- Werte der Gruppe stehen in [[Rohdaten]]; Board:
  <https://whiteboard.academiccloud.de/collaboard/17183>.
