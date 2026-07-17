---
name: secure-design-spec
description: Create a secure design specification with structured process, quality checks, and system integration
---

# Secure Design Specification

## Purpose

Create a comprehensive secure design specification that delivers actionable, measurable results. This skill provides a structured process with quality validation, ensuring professional-grade output every time.

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
- Review any existing secure design specification documents in the project
- Check knowledge-base.md for relevant learned rules or constraints
- Check memory.md for current project context and priorities
- Identify key stakeholders and their requirements
- Select the most appropriate framework: OWASP Secure Design Principles, Microsoft SDL, NIST SSDF (SP 800-218)

### Step 2: Analysis & Framework Application
- Apply the selected framework to structure the secure design specification
- Identify gaps, opportunities, and risks
- Define success metrics: Security Requirements Coverage, Threat Mitigation Coverage, Design Review Findings, Crypto Standard Compliance
- Document assumptions and dependencies
- Validate approach against industry best practices

### Step 3: Build the Deliverable
- Structure the secure design specification using the output format below
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
- [ ] Follows best practice: Define security requirements before functional requirements

## Output Format

```markdown
# Secure Design Specification

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
- OWASP Secure Design Principles
- Microsoft SDL
- NIST SSDF (SP 800-218)
- BSIMM
- Security by Design (ENISA)

## Key Metrics
- Security Requirements Coverage
- Threat Mitigation Coverage
- Design Review Findings
- Crypto Standard Compliance
- Authentication Mechanism Strength
- Data Protection Control Count

## Best Practices
- Define security requirements before functional requirements
- Specify authentication, authorization, and encryption at the design phase
- Apply least privilege and defense in depth as architectural constraints
- Document all trust assumptions explicitly — they become attack vectors when wrong
- Include data flow diagrams with classification labels for every data store

## After Completion

- Update `memory.md` if this deliverable changes project context or priorities
- Add any reusable learnings to `knowledge-nominations.md`
- If follow-up actions were identified, add them to `Task Board.md`
- Recommend related skills if additional work is needed
