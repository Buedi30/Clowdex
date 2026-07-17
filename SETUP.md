# Clowdex — Schnellstart

In 3 Schritten zum vollständigen Claude Code Workflow-System.

---

## 1. Claude Code installieren

Falls Claude Code bereits installiert ist (`claude --version`), überspringe diesen Schritt.

```bash
# Mac / Linux / WSL
curl -fsSL https://claude.ai/install.sh | bash

# Windows PowerShell
irm https://claude.ai/install.ps1 | iex
```

Voraussetzung: Ein kostenpflichtiger Anthropic-Plan (Pro $20/Monat, Max $100–200/Monat, oder Teams/Enterprise).

> **Hinweis:** Wenn die Umgebungsvariable `ANTHROPIC_API_KEY` gesetzt ist, wird über dein API-Konto abgerechnet statt über dein Abo. Mit `unset ANTHROPIC_API_KEY` lässt sich das zurücksetzen.

> **Voraussetzung:** Die Sicherheits-Hooks benötigen `jq` (ein JSON-Prozessor für die Kommandozeile). Installiere es, falls noch nicht vorhanden:
> ```bash
> # Mac
> brew install jq
>
> # Ubuntu / Debian
> sudo apt-get install jq
>
> # Windows (via Chocolatey)
> choco install jq
> ```
> Prüfe mit `jq --version`. Ohne `jq` laufen die Hooks zwar, aber Sicherheitsprüfungen (Backup-Validierung, Vollständigkeitschecks, Blockierung gefährlicher Befehle) werden stillschweigend übersprungen.

## 2. Dateien ins Projekt kopieren

Entpacke alles und kopiere es in dein Projekt-Verzeichnis:

```bash
cd /path/to/your/project
cp -r /path/to/clowdex-download/* .
cp -r /path/to/clowdex-download/.claude .
```

Dadurch werden das `.claude/`-Systemverzeichnis, `CLAUDE.md`, `Task Board.md`, `Scratchpad.md` und `Daily Notes/` angelegt.

Falls du bereits ein `.claude/`-Verzeichnis hast, führe die Dateien manuell zusammen — überschreibe nicht deine bestehenden Einstellungen oder deinen Memory.

## 3. Claude Code starten und Onboarding durchführen

```bash
claude
```

Füge anschließend den folgenden Onboarding-Prompt ein. Claude scannt damit dein Projekt, übernimmt das Clowdex-System und richtet alles für dein Setup ein.

---

## Onboarding-Prompt (kopiere diesen Text in Claude Code)

```
Ich habe gerade Clowdex in dieses Projekt installiert. Die Systemdateien liegen in .claude/ und die Hauptanweisungen in CLAUDE.md.

Bitte führe folgendes aus:

1. Lies CLAUDE.md um die gesamte Systemarchitektur zu verstehen.
2. Lies .claude/memory.md und .claude/knowledge-base.md.
3. Lies .claude/command-index.md um alle verfügbaren Befehle kennenzulernen.
4. Scanne meine Projektstruktur (Dateien, Ordner, Sprache, Framework, Abhängigkeiten).
5. Zeige mir eine Zusammenfassung dessen, was du gefunden hast.
6. Stelle mir dann ein paar gezielte Fragen, um das System auf meine Bedürfnisse anzupassen:
   - Was sind meine Hauptziele mit diesem Projekt?
   - Wie sieht mein typischer Workflow aus?
   - Welche Aufgaben kosten mich die meiste Zeit (oder möchte ich automatisieren)?
   - Gibt es Tools, Plattformen oder Dienste, die ich regelmäßig nutze?
7. Aktualisiere auf Basis meiner Antworten und deines Scans die memory.md mit:
   - Projektname und Beschreibung
   - Sprache/Framework/Build-Tool
   - Wichtige Dateipfade
   - Erkannte Muster
   - Meine Ziele und Workflow-Präferenzen
8. Prüfe die Skills in .claude/skills/ — empfiehl die Kategorien und konkreten Skills, die für mein Projekt und meine Ziele am relevantesten sind.
9. Führe /start aus, um den täglichen Workflow zu initialisieren.

Scanne zuerst, stelle dann Fragen — warte nicht auf mich, bevor du den ersten Scan durchführst.
```

---

## Was du gerade installiert hast

**Mehrstufiger Memory** — Claude merkt sich Kontext über Sessions hinweg, lernt aus Fehlern und wird mit der Zeit besser.

**9 spezialisierte Agenten** — Sentinel (Qualitätssicherung), Pathfinder, Decoder, Mirror, Scribe, Compass, Ledger, Scout, Historian. Sie werden automatisch über Befehle ausgelöst.

**21 Befehle** — `/start`, `/sync`, `/end-day`, `/flush`, `/audit`, `/onboard`, `/review`, `/retro`, `/launch`, `/report` und weitere. Einfach in Claude Code eintippen — der Rest läuft automatisch.

**1.792 Skills in 32 Kategorien** — Cybersecurity, Agriculture, AI Automation, Construction, Consulting, Content, Customer Success, Data, Design, Development, Ecommerce, Education, Email, Energy, Finance, Fitness & Wellness, Food & Beverage, Healthcare, HR, Legal, Marketing, Media, Nonprofit, Operations, Product, Productivity, Real Estate, Sales, SEO, Social Media, Startup, Travel.

**9 automatische Prüfungen** — Deterministische Sicherheitsnetze bei jedem Durchlauf: blockiert gefährliche Shell-Befehle, sichert Dateien vor dem Überschreiben, erkennt unvollständige Inhalte und protokolliert alles.

**Lernfähiges System** — Claude erkennt Muster, schlägt Erkenntnisse vor und der Sentinel befördert bestätigte Regeln ins Wissensarchiv. Das System wird schlauer, je mehr du es nutzt.

## Täglicher Workflow

| Wann | Was |
|------|-----|
| Morgens | `/start` → arbeiten → `/sync` (bei Aufgabenwechsel) |
| Nachmittags | arbeiten → `/flush` (bei hoher Kontextlast) → arbeiten |
| Abends | `/end-day` |

## Befehle

| Befehl | Einsatzzweck |
|--------|-------------|
| `/start` | Beginn einer Arbeitssitzung |
| `/sync` | Zwischendurch Kontext auffrischen |
| `/flush` | Zwischen unzusammenhängenden Aufgaben oder bei Qualitätsverlust |
| `/end-day` | Ende einer Arbeitssitzung |
| `/audit` | Nach Abschluss wichtiger Arbeiten |
| `/onboard` | Neues Projekt kennenlernen |
| `/unstick` | Wenn du feststeckst |
| `/review` | Code- oder Arbeits-Review |
| `/retro` | Sprint-Retrospektive |
| `/system-audit` | Tiefenprüfung der Systeminfrastruktur |

## FAQ

**Muss ich programmieren können?**
Nein. Alles funktioniert in natürlicher Sprache.

**Funktioniert das mit jedem Projekt?**
Ja — egal welche Sprache, welches Framework oder welche Struktur. Das Onboarding passt sich automatisch an.

**Wie bekomme ich Updates?**
Updates werden per E-Mail an die Adresse gesendet, mit der du gekauft hast.

## Tipps

1. **Nutze `/flush` zwischen verschiedenen Aufgaben.** Kontextverschmutzung ist der häufigste Grund für Qualitätsverlust.
2. **Halte memory.md unter 100 Zeilen.** Lösche regelmäßig Veraltetes.
3. **Lass die Wissensdatenbank natürlich wachsen.** Befülle sie nicht vorab — lass den Sentinel echte Erkenntnisse befördern.
4. **Vertraue den Hooks.** Sie fangen ab, was Anweisungen übersehen.
5. **Probiere `/unstick` wenn du blockiert bist.** Besser als im Kreis zu drehen.

---

**Hilfe nötig?** hello@rech.studio
