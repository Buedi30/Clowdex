---
name: access-control-matrix
description: Create a access control matrix with structured process, quality checks, and system integration
---

# Access Control Matrix

## Purpose

Create a comprehensive access control matrix that delivers actionable, measurable results. This skill provides a structured process with quality validation, ensuring professional-grade output every time.

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
- Review any existing access control matrix documents in the project
- Check knowledge-base.md for relevant learned rules or constraints
- Check memory.md for current project context and priorities
- Identify key stakeholders and their requirements
- Select the most appropriate framework: NIST SP 800-53 (AC-2, AC-3), RBAC, ABAC

### Step 2: Analysis & Framework Application
- Apply the selected framework to structure the access control matrix
- Identify gaps, opportunities, and risks
- Define success metrics: Role Count, Permission Count per Role, Least Privilege Score, Role Overlap %
- Document assumptions and dependencies
- Validate approach against industry best practices

### Step 3: Build the Deliverable
- Structure the access control matrix using the output format below
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
- [ ] Follows best practice: Define roles based on job functions — not individual permission sets

## Output Format

```markdown
# Access Control Matrix

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
- NIST SP 800-53 (AC-2, AC-3)
- RBAC (Role-Based Access Control)
- ABAC (Attribute-Based Access Control)
- ISO 27001 (A.5.15)
- Principle of Least Privilege

## Key Metrics
- Role Count
- Permission Count per Role
- Least Privilege Score
- Role Overlap %
- Access Exception Count
- Segregation of Duties Compliance

## Best Practices
- Define roles based on job functions — not individual permission sets
- Validate least privilege: Can this role function with fewer permissions?
- Document role-to-permission mapping for every system in scope
- Flag any role with more than 20 permissions for review
- Review the matrix when organizational structure changes

## After Completion

- Update `memory.md` if this deliverable changes project context or priorities
- Add any reusable learnings to `knowledge-nominations.md`
- If follow-up actions were identified, add them to `Task Board.md`
- Recommend related skills if additional work is needed
