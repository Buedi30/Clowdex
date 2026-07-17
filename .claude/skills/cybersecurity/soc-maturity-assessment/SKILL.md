---
name: soc-maturity-assessment
description: Create a soc maturity assessment with structured process, quality checks, and system integration
---

# SOC Maturity Assessment

## Purpose

Create a comprehensive soc maturity assessment that delivers actionable, measurable results. This skill provides a structured process with quality validation, ensuring professional-grade output every time.

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
- Review any existing soc maturity assessment documents in the project
- Check knowledge-base.md for relevant learned rules or constraints
- Check memory.md for current project context and priorities
- Identify key stakeholders and their requirements
- Select the most appropriate framework: SOC-CMM (5 Domains, 5 Levels), MITRE ATT&CK Coverage Matrix, Carnegie Mellon SOC Assessment

### Step 2: Analysis & Framework Application
- Apply the selected framework to structure the soc maturity assessment
- Identify gaps, opportunities, and risks
- Define success metrics: Overall Maturity Level (1-5), Domain Scores, ATT&CK Detection Coverage %, Analyst-to-Alert Ratio
- Document assumptions and dependencies
- Validate approach against industry best practices

### Step 3: Build the Deliverable
- Structure the soc maturity assessment using the output format below
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
- [ ] Follows best practice: Assess all 5 SOC-CMM domains — technology alone does not make a mature SOC

## Output Format

```markdown
# SOC Maturity Assessment

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
- SOC-CMM (5 Domains, 5 Levels)
- MITRE ATT&CK Coverage Matrix
- Carnegie Mellon SOC Assessment
- NIST CSF Detect Function
- CIS Controls v8.1 (Controls 8, 13)

## Key Metrics
- Overall Maturity Level (1-5)
- Domain Scores (Business, People, Process, Technology, Services)
- ATT&CK Detection Coverage %
- Analyst-to-Alert Ratio
- Tool Utilization Rate
- Staff Retention Rate

## Best Practices
- Assess all 5 SOC-CMM domains — technology alone does not make a mature SOC
- Measure detection coverage against MITRE ATT&CK matrix visually
- Benchmark analyst-to-alert ratio — over 50 alerts/analyst/day indicates tuning problems
- Include staffing, training, and retention in the assessment scope
- Create a 12-month improvement roadmap with quarterly milestones

## After Completion

- Update `memory.md` if this deliverable changes project context or priorities
- Add any reusable learnings to `knowledge-nominations.md`
- If follow-up actions were identified, add them to `Task Board.md`
- Recommend related skills if additional work is needed
