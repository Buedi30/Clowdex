---
name: compliance-gap-analysis
description: Create a compliance gap analysis with structured process, quality checks, and system integration
---

# Compliance Gap Analysis

## Purpose

Create a comprehensive compliance gap analysis that delivers actionable, measurable results. This skill provides a structured process with quality validation, ensuring professional-grade output every time.

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
- Review any existing compliance gap analysis documents in the project
- Check knowledge-base.md for relevant learned rules or constraints
- Check memory.md for current project context and priorities
- Identify key stakeholders and their requirements
- Select the most appropriate framework: NIST CSF 2.0, CIS Controls v8.1, ISO 27001:2022

### Step 2: Analysis & Framework Application
- Apply the selected framework to structure the compliance gap analysis
- Identify gaps, opportunities, and risks
- Define success metrics: Control Implementation Rate, Gap Count by Priority, Estimated Remediation Effort, Compliance Score (%)
- Document assumptions and dependencies
- Validate approach against industry best practices

### Step 3: Build the Deliverable
- Structure the compliance gap analysis using the output format below
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
- [ ] Follows best practice: Assess current state objectively — self-assessments tend to overrate maturity

## Output Format

```markdown
# Compliance Gap Analysis

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
- NIST CSF 2.0
- CIS Controls v8.1
- ISO 27001:2022
- PCI DSS 4.0
- Unified Compliance Framework (UCF)

## Key Metrics
- Control Implementation Rate (Implemented/Partial/Missing)
- Gap Count by Priority
- Estimated Remediation Effort (hours)
- Compliance Score (%)
- Time to Full Compliance
- Framework Coverage Overlap %

## Best Practices
- Assess current state objectively — self-assessments tend to overrate maturity
- Map controls to multiple frameworks simultaneously to reduce duplicate effort
- Prioritize gaps by risk impact, not alphabetical control order
- Include effort estimates (hours/FTEs) and cost projections for each remediation
- Conduct gap analysis before selecting a compliance target, not after

## After Completion

- Update `memory.md` if this deliverable changes project context or priorities
- Add any reusable learnings to `knowledge-nominations.md`
- If follow-up actions were identified, add them to `Task Board.md`
- Recommend related skills if additional work is needed
