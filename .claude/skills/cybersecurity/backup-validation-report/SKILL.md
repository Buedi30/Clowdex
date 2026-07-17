---
name: backup-validation-report
description: Create a backup & recovery validation report with structured process, quality checks, and system integration
---

# Backup & Recovery Validation Report

## Purpose

Create a comprehensive backup & recovery validation report that delivers actionable, measurable results. This skill provides a structured process with quality validation, ensuring professional-grade output every time.

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
- Review any existing backup & recovery validation report documents in the project
- Check knowledge-base.md for relevant learned rules or constraints
- Check memory.md for current project context and priorities
- Identify key stakeholders and their requirements
- Select the most appropriate framework: NIST SP 800-34, ISO 27001 (A.8.13), CIS Controls v8.1 (Control 11)

### Step 2: Analysis & Framework Application
- Apply the selected framework to structure the backup & recovery validation report
- Identify gaps, opportunities, and risks
- Define success metrics: Backup Success Rate (%), Restore Test Pass Rate, RTO Achievement in Tests, RPO Achievement in Tests
- Document assumptions and dependencies
- Validate approach against industry best practices

### Step 3: Build the Deliverable
- Structure the backup & recovery validation report using the output format below
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
- [ ] Follows best practice: Test restore procedures monthly — untested backups are unverified assumptions

## Output Format

```markdown
# Backup & Recovery Validation Report

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
- NIST SP 800-34
- ISO 27001 (A.8.13)
- CIS Controls v8.1 (Control 11)
- 3-2-1 Backup Rule
- Veeam/Commvault Best Practices

## Key Metrics
- Backup Success Rate (%)
- Restore Test Pass Rate
- RTO Achievement in Tests
- RPO Achievement in Tests
- Backup Coverage (% of critical systems)
- Immutable Backup Percentage

## Best Practices
- Test restore procedures monthly — backups that have not been restored are unverified
- Follow the 3-2-1 rule: 3 copies, 2 different media, 1 offsite
- Include immutable backup copies for ransomware resilience
- Validate data integrity after restore — not just file presence
- Monitor backup job failures daily with automated alerting

## After Completion

- Update `memory.md` if this deliverable changes project context or priorities
- Add any reusable learnings to `knowledge-nominations.md`
- If follow-up actions were identified, add them to `Task Board.md`
- Recommend related skills if additional work is needed
