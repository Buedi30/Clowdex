---
name: risk-register
description: Create a risk register with structured process, quality checks, and system integration
---

# Risk Register

## Purpose

Create a comprehensive risk register that delivers actionable, measurable results. This skill provides a structured process with quality validation, ensuring professional-grade output every time.

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
- Review any existing risk register documents in the project
- Check knowledge-base.md for relevant learned rules or constraints
- Check memory.md for current project context and priorities
- Identify key stakeholders and their requirements
- Select the most appropriate framework: ISO 31000, ISO 27005, NIST SP 800-39

### Step 2: Analysis & Framework Application
- Apply the selected framework to structure the risk register
- Identify gaps, opportunities, and risks
- Define success metrics: Total Open Risks, Risk Age (Days Open), Risk Treatment Status Distribution, Top 10 Risks by Score
- Document assumptions and dependencies
- Validate approach against industry best practices

### Step 3: Build the Deliverable
- Structure the risk register using the output format below
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
- [ ] Follows best practice: Assign a named owner for every risk — unowned risks never get mitigated

## Output Format

```markdown
# Risk Register

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
- ISO 31000
- ISO 27005
- NIST SP 800-39
- FAIR
- COSO ERM Framework

## Key Metrics
- Total Open Risks
- Risk Age (Days Open)
- Risk Treatment Status Distribution
- Top 10 Risks by Score
- Risk Trend (New vs. Closed per Quarter)
- Overdue Treatment Actions

## Best Practices
- Assign a named owner for every risk — unowned risks never get mitigated
- Review the register quarterly with risk owners present
- Track risk treatment decisions explicitly: Accept, Mitigate, Transfer, Avoid
- Include residual risk scores after controls — not just inherent risk
- Integrate with the enterprise risk management process

## After Completion

- Update `memory.md` if this deliverable changes project context or priorities
- Add any reusable learnings to `knowledge-nominations.md`
- If follow-up actions were identified, add them to `Task Board.md`
- Recommend related skills if additional work is needed
