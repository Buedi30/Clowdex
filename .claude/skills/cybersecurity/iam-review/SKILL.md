---
name: iam-review
description: Create a iam access review report with structured process, quality checks, and system integration
---

# IAM Access Review Report

## Purpose

Create a comprehensive iam access review report that delivers actionable, measurable results. This skill provides a structured process with quality validation, ensuring professional-grade output every time.

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
- Review any existing iam access review report documents in the project
- Check knowledge-base.md for relevant learned rules or constraints
- Check memory.md for current project context and priorities
- Identify key stakeholders and their requirements
- Select the most appropriate framework: NIST SP 800-63, ISO 27001 (A.5.15-18), CIS Controls v8.1 (Controls 5, 6)

### Step 2: Analysis & Framework Application
- Apply the selected framework to structure the iam access review report
- Identify gaps, opportunities, and risks
- Define success metrics: Orphaned Account Count, Excessive Permission Count, Segregation of Duties Violations, Access Review Completion Rate
- Document assumptions and dependencies
- Validate approach against industry best practices

### Step 3: Build the Deliverable
- Structure the iam access review report using the output format below
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
- [ ] Follows best practice: Review all privileged access quarterly and standard access semi-annually

## Output Format

```markdown
# IAM Access Review Report

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
- NIST SP 800-63 (Digital Identity)
- ISO 27001 (A.5.15-18)
- CIS Controls v8.1 (Controls 5, 6)
- SOX Section 404
- PCI DSS Req. 7-8

## Key Metrics
- Orphaned Account Count
- Excessive Permission Count
- Segregation of Duties Violations
- Access Review Completion Rate
- Mean Time to Revoke Terminated User Access
- Exception Count and Age

## Best Practices
- Review all privileged access quarterly and standard access semi-annually
- Revoke terminated employee access within 24 hours — automate via HR integration
- Identify and remediate orphaned accounts (active accounts with no owner)
- Validate segregation of duties — no single person should approve and execute
- Document every access exception with risk acceptance and expiration date

## After Completion

- Update `memory.md` if this deliverable changes project context or priorities
- Add any reusable learnings to `knowledge-nominations.md`
- If follow-up actions were identified, add them to `Task Board.md`
- Recommend related skills if additional work is needed
