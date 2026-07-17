# Claude Kontext — Clowdex

Dieses Projekt nutzt Clowdex, ein umfassendes Workflow-System für Claude Code.
Lies immer zuerst `.claude/memory.md` bevor du handelst.

## Schnellstart
- `/start` — Arbeit beginnen
- `/sync` — Zwischendurch Kontext auffrischen
- `/end-day` — Arbeitstag beenden
- `/audit` — Qualität der letzten Arbeit prüfen
- `/flush` — Kontext sicher leeren und frisch fortfahren
- `/unstick` — Wenn du feststeckst
- `/retro` — Sprint-Retrospektive
- `/system-audit` — Tiefenprüfung der Infrastruktur

## Wichtige Dateien
- Memory: `.claude/memory.md` (aktueller Kontext — zuerst lesen)
- Wissensdatenbank: `.claude/knowledge-base.md` (systemweite Regeln — vor jeder Aufgabe lesen)
- Aufgabenboard: `Task Board.md`
- Notizblock: `Scratchpad.md` (schnelle Notizen, verarbeitet bei /sync, geleert bei /end-day)
- Tagesnotizen: `Daily Notes/` (automatisch erstellt durch /start)
- Wissensvorschläge: `.claude/knowledge-nominations.md` (Lernkandidaten — Sentinel prüft)
- Befehlsindex: `.claude/command-index.md` (alle Befehle mit Auslösern und Tools)

## Systemarchitektur
- **Agenten** (`.claude/agents/`): Spezialisierte Sub-Agenten mit persistentem Memory
  - `sentinel` — Qualitätskontrolle. Prüft Arbeit, befördert Wissen, schlägt SOP-Änderungen vor
  - `pathfinder` — Hilft bei Blockaden. Ursachenanalyse und frische Lösungsansätze
  - `decoder` — Übersetzt kryptische Fehlermeldungen in konkrete Fixes. Mustererkennung über Sessions hinweg
  - `mirror` — Bringt dich dazu, das eigentliche Problem zu formulieren. Sokratisches Debugging
  - `scribe` — Schreibt PR-Beschreibungen, Commit-Messages und Changelogs aus Diffs
  - `compass` — Erkennt Scope-Creep. „Du wolltest X machen, aber jetzt machst du Y"
  - `ledger` — Verfolgt technische Schulden. Katalogisiert Abkürzungen, empfiehlt Rückzahlung
  - `scout` — Lernt neue Codebases schnell. Architektur-Maps, Identifikation wichtiger Dateien
  - `historian` — Gräbt aus, warum Code existiert. Git Blame + Kontextrekonstruktion
- **Befehle** (`.claude/commands/`): Workflow-Rituale und Werkzeuge
- **Hooks** (`.claude/hooks/`): Deterministische Sicherheitsmaßnahmen (Logging, Validierung)
- **Logs** (`.claude/logs/`): Prüfprotokoll + Vorfallslog — automatisch durch Hooks befüllt
- **Skills** (`.claude/skills/`): Fachwissen, bei Bedarf geladen

## Memory-Architektur (6 Stufen)
1. **memory.md** — Aktiver Session-Kontext (was du gerade machst)
2. **Agent Memory** (`.claude/agent-memory/`) — Persistentes Wissen pro Agent über Sessions hinweg
3. **Wissensdatenbank** (`.claude/knowledge-base.md`) — Systemweite Regeln (durch Sentinel geprüft)
4. **Wissensvorschläge** (`.claude/knowledge-nominations.md`) — Pipeline für Lernkandidaten
5. **MCP Knowledge Graph** — Strukturierte Entitäten und Relationen (falls Memory-MCP aktiviert)
6. **Tagesnotizen** — Chronologische Session-Historie und Übergabeprotokolle

## Befehlsnutzung

Alle Agenten können Systembefehle aufrufen. Lies `.claude/command-index.md` für den vollständigen Katalog.

- **Selbst ausführen**: Wenn du die nötigen Tools hast, lies `.claude/commands/{name}.md` und folge der Anleitung direkt.
- **Empfehlen**: Wenn dir Tools fehlen, gib `RECOMMEND: /command [args] — [reason]` an den Orchestrator aus.
- Agenten sollten Befehle proaktiv aufrufen, wenn die Auslösebedingungen zutreffen.

## Schnellzugriff — Wo du was findest

| Du brauchst... | Prüfe zuerst | Dann |
|---|---|---|
| Was mache ich gerade? | `memory.md` → Now | Task Board → Today |
| Wie geht ein Verfahren? | `.claude/commands/` oder `.claude/skills/` | CLAUDE.md |
| Eine Regel oder Erkenntnis | `knowledge-base.md` | Agent Memory |
| Was an einem bestimmten Tag passiert ist | `Daily Notes/MMDDYY.md` | Prüfprotokoll |
| Was früher schiefgelaufen ist | `knowledge-base.md` → Hard Rules | Agent Memory → Known Patterns |
| Welche Befehle es gibt | `.claude/command-index.md` | `.claude/commands/{name}.md` |

## Session-Zustand

Sessions haben begrenzten Kontext. Aufwendige Operationen verbrauchen ihn schnell.

**Automatisches Sicherheitsnetz (Hooks):**
- `PreCompact`-Hook sichert den Zustand vor der Auto-Komprimierung
- `SessionStart(compact)`-Hook stellt den Kontext nach der Komprimierung wieder her
- `SessionStart(user)`-Hook setzt veraltete Gate-Dateien bei jeder neuen Session zurück

**Validierungschecks (PreToolUse Write|Edit — harte Blockaden):**
- **knowledge-base.md**: Jeder Eintrag braucht `[Source:]`-Herkunft, max 200 Zeilen, kein TBD/TODO
- **memory.md**: Max 100 Zeilen (nur Write)
- **settings.json**: Muss valides JSON sein (defektes JSON bricht alle Hooks)
- **Agent-Definitionen** (`.claude/agents/*.md`): Kein TBD/TODO — Anweisungen müssen definitiv sein
- **Ohne Gate** (iterativ): Daily Notes, Scratchpad, Templates, Logs, Commands, Skills

**Selbstüberwachung (weiche Signale — Claudes Verantwortung):**
- Nach ~30+ Tool-Aufrufen oder 3+ großen Datei-Lesevorgängen: `/flush` proaktiv ausführen
- Bei „compacting conversation"-Warnung: `/flush` sofort ausführen
- Bei Qualitätsverlust (Wiederholungen, übersehene Details): `/flush` ausführen
- Nach Abschluss einer mehrstufigen Aufgabe: `/flush` vor der nächsten unzusammenhängenden Aufgabe erwägen
- Beim Wechsel zwischen Aufgabenbereichen: Grenze anerkennen, `/flush` bei großen Wechseln bevorzugen

**So funktioniert /flush:** Destilliert den Session-Zustand in memory.md + Tagesnotiz-Übergabe und bewahrt Suchpfade. Setzt dann automatisch fort, indem der komprimierte Kontext neu geladen und die nächste Aktion ausgeführt wird. Nahtlos für den Nutzer.

## Wartung
- memory.md kompakt halten (<100 Zeilen)
- Veraltete Einträge konsequent entfernen
- Done-Liste freitags leeren
- Vorfallslog bei /sync und /end-day prüfen
- Sentinel schlägt SOP-Änderungen vor — Nutzer genehmigt vor Übernahme
