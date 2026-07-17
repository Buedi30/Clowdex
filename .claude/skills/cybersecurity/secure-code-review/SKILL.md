---
name: secure-code-review
description: Create a secure code review report with structured process, quality checks, and system integration
---

# Secure Code Review Report

## Purpose

Create a comprehensive secure code review report that delivers actionable, measurable results. This skill provides a structured process with quality validation, ensuring professional-grade output every time.

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
- Review any existing secure code review report documents in the project
- Check knowledge-base.md for relevant learned rules or constraints
- Check memory.md for current project context and priorities
- Identify key stakeholders and their requirements
- Select the most appropriate framework: OWASP Code Review Guide, OWASP ASVS v4.0, CWE Top 25

### Step 2: Analysis & Framework Application
- Apply the selected framework to structure the secure code review report
- Identify gaps, opportunities, and risks
- Define success metrics: Vulnerability Count by CWE Category, Severity Distribution, Lines of Code Reviewed, Finding Density
- Document assumptions and dependencies
- Validate approach against industry best practices

### Step 3: Build the Deliverable
- Structure the secure code review report using the output format below
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
- [ ] Follows best practice: Combine SAST tool results with manual review — neither alone is sufficient

## Output Format

```markdown
# Secure Code Review Report

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
- OWASP Code Review Guide
- OWASP ASVS v4.0
- CWE Top 25
- SANS Top 25
- NIST SSDF (SP 800-218)

## Key Metrics
- Vulnerability Count by CWE Category
- Severity Distribution (Critical/High/Medium/Low)
- Lines of Code Reviewed
- Finding Density (Findings per KLOC)
- Remediation Acceptance Rate
- Review Turnaround Time

## Best Practices
- Combine SAST tool results with manual review — neither alone is sufficient
- Focus manual review on authentication, authorization, cryptography, and input validation
- Classify findings using CWE identifiers for consistency and trending
- Provide remediation code examples, not just vulnerability descriptions
- Review within the development sprint — findings delivered after release have 10x lower fix rate

## After Completion

- Update `memory.md` if this deliverable changes project context or priorities
- Add any reusable learnings to `knowledge-nominations.md`
- If follow-up actions were identified, add them to `Task Board.md`
- Recommend related skills if additional work is needed
