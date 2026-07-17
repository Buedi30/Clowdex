#!/bin/bash
# Stop hook (async command) — queries claude -p for a quality verdict and logs it.
# The prompt hook controls allow/block; this hook handles structured logging only.
#
# Architecture note: prompt hook output is NOT piped here — both hooks receive
# the Stop event JSON independently. We call claude -p separately for the verdict.
#
# stdout is fully suppressed (redirected to /dev/null) so Claude Code never sees
# non-JSON output from this script — preventing "JSON validation failed" errors.
# All output goes to log files. A lock file prevents recursive invocation when
# claude -p itself triggers a Stop event.

exec >/dev/null 2>&1  # Suppress ALL stdout/stderr — log files only from here on

LOG_DIR="$CLAUDE_PROJECT_DIR/.claude/logs"
VERDICT_LOG="$LOG_DIR/verdicts.jsonl"
INCIDENT_LOG="$LOG_DIR/incident-log.md"
DEBUG_LOG="$LOG_DIR/stop-hook-debug.log"
NOMINATIONS="$CLAUDE_PROJECT_DIR/.claude/knowledge-nominations.md"
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
SESSION_DATE=$(date +"%m%d-%H")
BLOCK_FILE="$LOG_DIR/.session-blocks-$SESSION_DATE"
LOCK_FILE="$LOG_DIR/.stop-hook-running"

mkdir -p "$LOG_DIR"

# ── Recursion guard ──────────────────────────────────────────────────────────
# claude -p spawns its own session which triggers Stop hooks again.
# The lock file breaks that cycle.
if [ -f "$LOCK_FILE" ]; then
  echo "$TIMESTAMP [SKIP] Already running — recursive invocation from claude -p sub-session" >> "$DEBUG_LOG"
  exit 0
fi
touch "$LOCK_FILE"
trap 'rm -f "$LOCK_FILE"' EXIT

# ── Read Stop event ──────────────────────────────────────────────────────────
STOP_EVENT=$(cat)
LAST_MSG=$(echo "$STOP_EVENT" | jq -r '.last_assistant_message // empty' 2>/dev/null | head -c 2000)

echo "$TIMESTAMP [START] last_msg_len=${#LAST_MSG}" >> "$DEBUG_LOG"

# ── Defaults ─────────────────────────────────────────────────────────────────
DECISION="unknown"
LEARNING=""
TASK_TYPE="other"
REASON=""

# ── Call claude -p for verdict ───────────────────────────────────────────────
if command -v claude >/dev/null && [ -n "$LAST_MSG" ]; then
  VERDICT_PROMPT='You are a JSON-only response bot. Return ONLY a raw JSON object — no markdown, no code fences, no prose. Based on the last assistant message below, return:
{"decision":"allow","learning":null,"task_type":"other"}
decision: "allow" if task complete, "block" if clearly missed (add "reason").
learning: one-sentence root-cause lesson if an error was fixed, else null.
task_type: build|debug|refactor|test|docs|research|deploy|admin|setup|other

Last assistant message:
'"$LAST_MSG"

  # Redirect claude -p stderr explicitly (exec already suppressed fd1, but claude -p writes to its own fds)
  RAW=$(echo "$VERDICT_PROMPT" | claude -p 2>>"$DEBUG_LOG")
  echo "$TIMESTAMP [RAW] $(echo "$RAW" | head -c 300)" >> "$DEBUG_LOG"

  # Robust extraction: strip fences, collapse newlines, extract outermost {...}
  VERDICT=$(echo "$RAW" \
    | sed 's/^```[a-z]*//; s/^```//' \
    | tr -d '\n' \
    | grep -o '{[^{}]*}' \
    | head -1)

  # Fallback: try jq directly on raw (handles clean single-line JSON)
  if [ -z "$VERDICT" ]; then
    if echo "$RAW" | jq -e '.' >/dev/null 2>&1; then
      VERDICT=$(echo "$RAW" | tr -d '\n')
    fi
  fi

  echo "$TIMESTAMP [VERDICT] $VERDICT" >> "$DEBUG_LOG"

  if [ -n "$VERDICT" ]; then
    D=$(echo "$VERDICT" | jq -r '.decision // empty' 2>/dev/null)
    L=$(echo "$VERDICT" | jq -r '.learning // empty' 2>/dev/null)
    T=$(echo "$VERDICT" | jq -r '.task_type // empty' 2>/dev/null)
    R=$(echo "$VERDICT" | jq -r '.reason // empty' 2>/dev/null)
    [ -n "$D" ] && DECISION="$D"
    LEARNING="$L"
    [ -n "$T" ] && TASK_TYPE="$T"
    REASON="$R"
  fi
fi

echo "$TIMESTAMP [FINAL] decision=$DECISION task_type=$TASK_TYPE" >> "$DEBUG_LOG"

# ── Write JSONL verdict ───────────────────────────────────────────────────────
jq -n \
  --arg ts "$TIMESTAMP" \
  --arg decision "$DECISION" \
  --arg learning "$LEARNING" \
  --arg task_type "$TASK_TYPE" \
  --arg reason "$REASON" \
  '{timestamp: $ts, decision: $decision, learning: $learning, task_type: $task_type, reason: $reason}' \
  >> "$VERDICT_LOG"

# ── Block tracking ────────────────────────────────────────────────────────────
if [ "$DECISION" = "block" ]; then
  BLOCK_COUNT=1
  [ -f "$BLOCK_FILE" ] && BLOCK_COUNT=$(( $(cat "$BLOCK_FILE") + 1 ))
  echo "$BLOCK_COUNT" > "$BLOCK_FILE"
  echo "- \`$TIMESTAMP\` | VERDICT | BLOCK | $REASON" >> "$INCIDENT_LOG"
  if [ "$BLOCK_COUNT" -ge 2 ]; then
    touch "$LOG_DIR/.quality-gate-active"
    echo "- \`$TIMESTAMP\` | VERDICT | WARN | Quality gate activated — $BLOCK_COUNT blocks this session" >> "$INCIDENT_LOG"
  fi
fi

# ── Nominate learning ─────────────────────────────────────────────────────────
if [ -n "$LEARNING" ] && [ "$LEARNING" != "null" ]; then
  NOMINATION_DATE=$(date +"%m%d%y")
  echo "- [$NOMINATION_DATE] stop-hook: $LEARNING | Evidence: session verdict ($TASK_TYPE)" >> "$NOMINATIONS"
fi

exit 0
