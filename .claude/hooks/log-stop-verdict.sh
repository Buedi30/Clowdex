#!/bin/bash
# Stop hook (async command) — independently queries haiku for quality verdict and logs it.
# The prompt hook controls allow/block; this hook handles structured logging.
#
# Root cause of prior bug: the prompt hook output is NOT piped to the command hook.
# Both hooks receive the Stop event JSON independently. This hook calls claude -p
# separately using last_assistant_message as context for the verdict.

LOG_DIR="$CLAUDE_PROJECT_DIR/.claude/logs"
VERDICT_LOG="$LOG_DIR/verdicts.jsonl"
INCIDENT_LOG="$LOG_DIR/incident-log.md"
NOMINATIONS="$CLAUDE_PROJECT_DIR/.claude/knowledge-nominations.md"
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
SESSION_DATE=$(date +"%m%d-%H")
BLOCK_FILE="$LOG_DIR/.session-blocks-$SESSION_DATE"

mkdir -p "$LOG_DIR"

# Read the Stop event JSON
STOP_EVENT=$(cat)
LAST_MSG=$(echo "$STOP_EVENT" | jq -r '.last_assistant_message // empty' 2>/dev/null | head -c 2000)

# Initialize defaults
DECISION="unknown"
LEARNING=""
TASK_TYPE="other"
REASON=""

# Call haiku via claude -p with last_assistant_message as context
if command -v claude >/dev/null 2>&1 && [ -n "$LAST_MSG" ]; then
  VERDICT_PROMPT="You are a JSON-only response bot. Based on the last assistant message below, return exactly one JSON object with no other text:
{\"decision\":\"allow\",\"learning\":null,\"task_type\":\"other\"}
decision: \"allow\" if the task appears complete, \"block\" if something was clearly missed (add \"reason\" field).
learning: one-sentence root-cause lesson if an error was fixed, otherwise null.
task_type: one of build, debug, refactor, test, docs, research, deploy, admin, setup, other.

Last assistant message:
$LAST_MSG"

  RAW_VERDICT=$(echo "$VERDICT_PROMPT" | claude -p 2>/dev/null | head -c 1000)

  if [ -n "$RAW_VERDICT" ]; then
    VERDICT=$(echo "$RAW_VERDICT" | sed '/^```/d' | tr -d '\n' | grep -o '{.*}')
    if [ -n "$VERDICT" ]; then
      PARSED_DECISION=$(echo "$VERDICT" | jq -r '.decision // empty' 2>/dev/null)
      [ -n "$PARSED_DECISION" ] && DECISION="$PARSED_DECISION"
      LEARNING=$(echo "$VERDICT" | jq -r '.learning // empty' 2>/dev/null)
      PARSED_TYPE=$(echo "$VERDICT" | jq -r '.task_type // empty' 2>/dev/null)
      [ -n "$PARSED_TYPE" ] && TASK_TYPE="$PARSED_TYPE"
      REASON=$(echo "$VERDICT" | jq -r '.reason // empty' 2>/dev/null)
    fi
  fi
fi

# Write JSONL verdict
jq -n \
  --arg ts "$TIMESTAMP" \
  --arg decision "$DECISION" \
  --arg learning "$LEARNING" \
  --arg task_type "$TASK_TYPE" \
  --arg reason "$REASON" \
  '{timestamp: $ts, decision: $decision, learning: $learning, task_type: $task_type, reason: $reason}' \
  >> "$VERDICT_LOG"

# Track blocks
if [ "$DECISION" = "block" ]; then
  BLOCK_COUNT=1
  if [ -f "$BLOCK_FILE" ]; then
    BLOCK_COUNT=$(( $(cat "$BLOCK_FILE") + 1 ))
  fi
  echo "$BLOCK_COUNT" > "$BLOCK_FILE"

  echo "- \`$TIMESTAMP\` | VERDICT | BLOCK | $REASON" >> "$INCIDENT_LOG"

  if [ "$BLOCK_COUNT" -ge 2 ]; then
    touch "$LOG_DIR/.quality-gate-active"
    echo "- \`$TIMESTAMP\` | VERDICT | WARN | Quality gate activated — $BLOCK_COUNT blocks this session" >> "$INCIDENT_LOG"
  fi
fi

# Nominate learning if present
if [ -n "$LEARNING" ] && [ "$LEARNING" != "null" ]; then
  NOMINATION_DATE=$(date +"%m%d%y")
  echo "- [$NOMINATION_DATE] stop-hook: $LEARNING | Evidence: session verdict ($TASK_TYPE)" >> "$NOMINATIONS"
fi

exit 0
