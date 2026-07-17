---
name: encryption-standard
description: Create a encryption & key management standard with structured process, quality checks, and system integration
---

# Encryption & Key Management Standard

## Purpose

Create a comprehensive encryption & key management standard that delivers actionable, measurable results. This skill provides a structured process with quality validation, ensuring professional-grade output every time.

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
- Review any existing encryption & key management standard documents in the project
- Check knowledge-base.md for relevant learned rules or constraints
- Check memory.md for current project context and priorities
- Identify key stakeholders and their requirements
- Select the most appropriate framework: NIST SP 800-57, NIST SP 800-175B, FIPS 140-3

### Step 2: Analysis & Framework Application
- Apply the selected framework to structure the encryption & key management standard
- Identify gaps, opportunities, and risks
- Define success metrics: Algorithm Compliance Rate, Key Rotation Frequency, Certificate Inventory Completeness, TLS Configuration Score
- Document assumptions and dependencies
- Validate approach against industry best practices

### Step 3: Build the Deliverable
- Structure the encryption & key management standard using the output format below
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
- [ ] Follows best practice: Mandate AES-256 for data at rest and TLS 1.3 for data in transit as minimums

## Output Format

```markdown
# Encryption & Key Management Standard

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
- NIST SP 800-57 (Key Management)
- NIST SP 800-175B (Cryptographic Standards)
- FIPS 140-3
- PCI DSS Req. 3-4
- ENISA Crypto Recommendations

## Key Metrics
- Algorithm Compliance Rate
- Key Rotation Frequency
- Certificate Inventory Completeness
- TLS Configuration Score
- Crypto Agility Readiness
- Deprecated Algorithm Usage Count

## Best Practices
- Mandate AES-256 for data at rest and TLS 1.3 for data in transit as minimums
- Rotate encryption keys annually and immediately after suspected compromise
- Maintain a complete certificate inventory with automated expiry monitoring
- Plan for post-quantum cryptography migration (NIST PQC standards)
- Disable deprecated algorithms (DES, 3DES, RC4, MD5, SHA-1) with no exceptions

## After Completion

- Update `memory.md` if this deliverable changes project context or priorities
- Add any reusable learnings to `knowledge-nominations.md`
- If follow-up actions were identified, add them to `Task Board.md`
- Recommend related skills if additional work is needed
