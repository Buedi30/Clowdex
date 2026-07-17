---
name: runbook
description: Create a operational runbook with structured process, quality checks, and system integration
---

# Operational Runbook

## Purpose

Create a comprehensive operational runbook that delivers actionable, measurable results. This skill provides a structured process with quality validation, ensuring professional-grade output every time.

**Category**: Cybersecurity & Information Security

## Inputs

### Required
- **Objective**: What you want to achieve with this deliverable
- **Context**: Relevant background information (systems, scope, environment)

### Optional
- **Constraints**: Any limitations or requirements to consider
- **Existing Work**: Previous documents or data to build on

## System Context

Before starting:
- Read `memory.md` for current project context and priorities
- Check `knowledge-base.md` for relevant learned rules or constraints
- Review any existing related documents in the project
- Note any active tasks in `Task Board.md` that relate to this deliverable

## Process

### Step 1: Context & Research
- Review any existing operational runbook documents in the project
- Check knowledge-base.md for relevant learned rules or constraints
- Check memory.md for current project context and priorities
- Identify key stakeholders and their requirements
- Select the most appropriate framework: ITIL v4, SRE Practices (Google), NIST SP 800-137

### Step 2: Analysis & Framework Application
- Apply the selected framework to structure the operational runbook
- Identify gaps, opportunities, and risks
- Define success metrics: Runbook Execution Time, Error Rate During Execution, Automation Coverage %, Knowledge Transfer Success Rate
- Document assumptions and dependencies
- Validate approach against industry best practices

### Step 3: Build the Deliverable
- Structure the operational runbook using the output format below
- Include specific, actionable recommendations — not generic advice
- Add concrete numbers, timelines, and benchmarks where applicable
- Cross-reference with existing project documents for consistency
- Ensure every section adds value — remove filler

### Step 4: Quality Validation
- [ ] All required inputs have been addressed
- [ ] Recommendations are specific and actionable (not vague)
- [ ] Numbers and benchmarks are realistic and sourced
- [ ] Output format matches the specification below
- [ ] No contradictions with knowledge-base rules
- [ ] Follows best practice: Write runbooks as numbered steps with exact commands — assume the reader is unfamiliar

## Output Format

```markdown
# Operational Runbook

## Executive Summary
[2-3 sentence overview of the deliverable and key recommendations]

## Context & Objectives
- **Objective**: [What this achieves]
- **Audience**: [Who this is for]
- **Timeline**: [When this applies]

## Analysis
[Structured analysis using the selected framework]

## Recommendations
1. [Specific, actionable recommendation with expected impact]
2. [Specific, actionable recommendation with expected impact]
3. [Specific, actionable recommendation with expected impact]

## Implementation
| Action | Owner | Timeline | Priority |
|--------|-------|----------|----------|
| [Action item] | [Who] | [When] | [High/Medium/Low] |

## Success Metrics
| Metric | Current | Target | Measurement Method |
|--------|---------|--------|-------------------|
| [KPI] | [Baseline] | [Goal] | [How to measure] |

## Risks & Mitigations
| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|------------|
| [Risk] | [H/M/L] | [H/M/L] | [Action] |

## Next Steps
- [ ] [Immediate next action]
- [ ] [Follow-up action]
- [ ] [Review date]
```

## Applicable Frameworks
- ITIL v4 (Operational Management)
- SRE Practices (Google)
- NIST SP 800-137 (Continuous Monitoring)
- ISO 20000
- DevOps Automation Principles

## Key Metrics
- Runbook Execution Time
- Error Rate During Execution
- Automation Coverage %
- Knowledge Transfer Success Rate
- Runbook Currency (Last Updated)
- Step Completion Rate

## Best Practices
- Write runbooks as numbered steps with exact commands — assume the reader is unfamiliar
- Include prerequisite checks, expected outputs, and troubleshooting for each step
- Add rollback procedures for every change-making operation
- Mark manual steps as automation candidates with effort estimates
- Review and test runbooks quarterly — outdated runbooks cause more harm than no runbook

## After Completion

- Update `memory.md` if this deliverable changes project context or priorities
- Add any reusable learnings to `knowledge-nominations.md`
- If follow-up actions were identified, add them to `Task Board.md`
- Recommend related skills if additional work is needed
