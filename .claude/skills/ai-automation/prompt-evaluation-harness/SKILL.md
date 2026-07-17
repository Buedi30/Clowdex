---
name: prompt-evaluation-harness
description: Create a prompt evaluation harness with structured process, quality checks, and system integration
---

# Prompt Evaluation Harness

## Purpose

Create a comprehensive prompt evaluation harness that delivers actionable, measurable results. This skill provides a structured process with quality validation, ensuring professional-grade output every time.

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
- Review any existing prompt evaluation harness documents in the project
- Check knowledge-base.md for relevant learned rules or constraints
- Check memory.md for current project context and priorities
- Identify key stakeholders and their requirements
- Select the most appropriate framework: DeepEval (50+ metrics), RAGAS, HELM (Stanford)

### Step 2: Analysis & Framework Application
- Apply the selected framework to structure the prompt evaluation harness
- Identify gaps, opportunities, and risks
- Define success metrics: Faithfulness Score, Answer Relevancy, Hallucination Rate, Contextual Precision/Recall
- Document assumptions and dependencies
- Validate approach against industry best practices

### Step 3: Build the Deliverable
- Structure the prompt evaluation harness using the output format below
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
- [ ] Follows best practice: Treat prompt evaluation like unit testing — use pytest-style test suites in CI/CD

## Output Format

```markdown
# Prompt Evaluation Harness

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
- DeepEval (50+ metrics)
- RAGAS (RAG-specific evaluation)
- HELM (Stanford curated benchmarks)
- BIG-bench
- Custom Evals (model-generated, human-verified)

## Key Metrics
- Faithfulness Score
- Answer Relevancy
- Hallucination Rate
- Contextual Precision/Recall
- Regression Rate Across Prompt Versions
- Human-AI Agreement Score

## Best Practices
- Treat prompt evaluation like unit testing — use pytest-style test suites in CI/CD
- Evaluate at both component and end-to-end levels using LLM tracing
- Use LLM-as-judge with research-backed metrics (G-Eval), not vibes
- Run regression testing across prompt versions
- Combine automated and human evaluation — human for high-stakes, automated for continuous

## After Completion

- Update `memory.md` if this deliverable changes project context or priorities
- Add any reusable learnings to `knowledge-nominations.md`
- If follow-up actions were identified, add them to `Task Board.md`
- Recommend related skills if additional work is needed
