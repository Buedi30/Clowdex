# Knowledge Base

System-wide learned rules. Read by ALL agents and sessions at startup.
Written ONLY by the sentinel after confirming learnings.
Entries are mandatory constraints, not suggestions.

## Source Priority
Every entry MUST cite its source using one of:
- `[Source: user override MMDDYY]` — User explicitly corrected something
- `[Source: empirical MMDDYY]` — Verified through testing or data
- `[Source: agent inference MMDDYY]` — Pattern observed by an agent, confirmed by sentinel

## Hard Rules
- [071726] Guard regex patterns must match only the command verb and its direct arguments — never the full command string including commit messages, `-m` arguments, or redirect targets. [Source: empirical 071726 — force-push guard and write-outside-dir check both triggered on incidental text]
- [071726] Safety hooks must escalate to the user for explicit confirmation on destructive actions (e.g., force push). Never instruct the user to bypass the guard via shell escape or direct terminal invocation. [Source: empirical 071726 — BLOCK verdict at 12:04:09 for instructing bypass]

## Platform & Tool Rules
- [071726] Claude Code's Stop hook runs `prompt` and `command` sub-hooks independently — each receives the raw Stop event JSON. A command hook cannot assume it receives piped output from a prompt hook; it must call `claude -p` independently to query model output. [Source: empirical 071726 — stop hook produced unknown verdicts when relying on shared state]
- [071726] Any `claude -p` sub-session invoked from a Stop hook must: (1) redirect all stdout/stderr to /dev/null or log files, and (2) use a lock file to prevent recursive Stop hook invocations from the sub-session. [Source: empirical 071726 — "JSON validation failed" and infinite recursion both observed]
- [071726] Use `&&` (not pipe `|`) for compound guard checks in bash. A broken pipe chain silently short-circuits, causing the check to never fire. [Source: empirical 071726 — guard-bash.sh line 150 bug]

## Project Patterns
- [071726] guard-bash.sh "write outside project dir" warning (LOG tier) fires on `2>/dev/null` and other stderr redirects — these are false positives. The guard pattern `> /` matches any redirect including `2>/dev/null`. [Source: empirical 071726 — confirmed false positive in session]
- [071726] Commit messages containing shell patterns (e.g., "git push --force" in `-m` text) trigger guard hooks because regex runs against the full command string. Until the guard is scoped to command verbs only, avoid quoting blocked commands verbatim in commit messages. [Source: empirical 071726 — BLOCKED verdicts during commit with guard bypass instructions in message]

## Known Failure Modes
- [071726] tee, cp, and install commands bypass the write-outside-project-dir check in guard-bash.sh — the check only catches `> /path` redirects. Low severity but a known gap. [Source: agent inference 071726 — Sentinel T1 audit adjacent vulnerability scan]
