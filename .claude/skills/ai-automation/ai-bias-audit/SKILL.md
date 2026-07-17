---
name: ai-bias-audit
description: Create a ai bias audit with structured process, quality checks, and system integration
---

# AI Bias Audit

## Purpose

Create a comprehensive ai bias audit that delivers actionable, measurable results. This skill provides a structured process with quality validation, ensuring professional-grade output every time.

**Category**: AI & Automation

## Inputs

### Required
- **Objective**: What you want to achieve with this deliverable
- **Context**: Relevant background information

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
- Review any existing ai bias audit documents in the project
- Check knowledge-base.md for relevant learned rules or constraints
- Check memory.md for current project context and priorities
- Identify key stakeholders and their requirements
- Select the most appropriate framework: NYC Local Law 144, Fairness Metrics Suite, Disparate Impact Analysis (4/5ths Rule)

### Step 2: Analysis & Framework Application
- Apply the selected framework to structure the ai bias audit
- Identify gaps, opportunities, and risks
- Define success metrics: Disparate Impact Ratio per Protected Class, Demographic Parity Difference, Equalized Odds Difference, Calibration Gap
- Document assumptions and dependencies
- Validate approach against industry best practices

### Step 3: Build the Deliverable
- Structure the ai bias audit using the output format below
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
- [ ] Follows best practice: Audit across all legally protected characteristics — regulations vary by jurisdiction

## Output Format

```markdown
# AI Bias Audit

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
- NYC Local Law 144 (AEDT Bias Audits)
- Fairness Metrics Suite (Demographic Parity, Equalized Odds, Calibration)
- Disparate Impact Analysis (4/5ths Rule)
- NIST AI 100-2e2023
- ISO/IEC TR 24027

## Key Metrics
- Disparate Impact Ratio per Protected Class
- Demographic Parity Difference
- Equalized Odds Difference
- Calibration Gap
- Bias Remediation Effectiveness
- Protected Class Coverage

## Best Practices
- Audit across all legally protected characteristics — regulations vary by jurisdiction
- Use multiple fairness metrics — they are mathematically incompatible
- Audit the full pipeline (data, features, model, deployment), not just the final model
- Publish audit results with methodology transparency
- Build remediation into the audit cycle with re-audit verification

## After Completion

- Update `memory.md` if this deliverable changes project context or priorities
- Add any reusable learnings to `knowledge-nominations.md`
- If follow-up actions were identified, add them to `Task Board.md`
- Recommend related skills if additional work is needed
