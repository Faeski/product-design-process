---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
---

# Iteration Brief

## Iteration Number + Date Range

- **Iteration:** [e.g., #3]
- **Date range:** [e.g., 2026-02-17 to 2026-03-03]
- **Previous iteration:** [Link to iteration #2 brief]
- **Sprint/cycle:** [e.g., "Sprint 7" or "Design Cycle 3"]

---

## What We Tested

_Summarize what was put in front of users or released during this iteration._

- **Prototype/feature tested:** [e.g., "Simplified checkout flow - 2-step version"]
- **Fidelity level:** [e.g., "High-fidelity Figma prototype" or "Code prototype deployed to staging"]
- **Number of participants/users:** [e.g., "6 user test sessions" or "Released to 10% of users (A/B test)"]
- **Test method:** [e.g., "Moderated usability test" or "Unmoderated remote test" or "A/B test in production"]
- **Link to test plan:** [Link]
- **Link to prototype:** [Link]

---

## Key Findings

| # | Finding | Evidence | Confidence | Action |
|---|---------|----------|------------|--------|
| 1 | [e.g., "Users struggle to find the 'Apply Coupon' field"] | [e.g., "4/6 participants missed it; avg time to find: 45s"] | High / Medium / Low | [e.g., "Move coupon field above order summary"] |
| 2 | [e.g., "Address autocomplete significantly reduces errors"] | [e.g., "0 address errors with autocomplete vs. 3 without"] | High | [e.g., "Keep autocomplete; prioritize integration"] |
| 3 | [e.g., "Trust badges had no noticeable effect on confidence"] | [e.g., "Only 1/6 mentioned them; no change in SUS scores"] | Medium | [e.g., "Deprioritize; revisit in quantitative A/B test"] |
| 4 | [e.g., "Users expect a progress indicator in multi-step flows"] | [e.g., "3/6 asked 'how many steps are left?'"] | High | [e.g., "Add step indicator to checkout header"] |

> **Confidence levels:**
> - **High** = Consistent across most participants/data sources, clear evidence
> - **Medium** = Seen in some participants, or evidence is indirect
> - **Low** = Anecdotal, single instance, or conflicting signals

---

## Metrics Update

_Before/after comparison. Use the same metrics defined in the test plan._

| Metric | Previous Iteration | This Iteration | Target | Delta | Status |
|--------|-------------------|----------------|--------|-------|--------|
| [e.g., Task completion rate] | [e.g., 60%] | [e.g., 83%] | [e.g., >= 80%] | [e.g., +23%] | On target / Improving / Declining |
| [e.g., Time to complete checkout] | [e.g., 4m 30s] | [e.g., 2m 15s] | [e.g., < 3 min] | [e.g., -2m 15s] | On target |
| [e.g., Error rate per task] | [e.g., 3.2] | [e.g., 1.8] | [e.g., < 2] | [e.g., -1.4] | On target |
| [e.g., SUS score] | [e.g., 62] | [e.g., 71] | [e.g., >= 68] | [e.g., +9] | On target |
| [e.g., SEQ avg (post-task ease)] | [e.g., 4.2/7] | [e.g., 5.5/7] | [e.g., >= 5/7] | [e.g., +1.3] | On target |

---

## What Worked (Keep Doing)

_Decisions, patterns, or approaches that had positive results this iteration._

- [e.g., "Simplified form labels -- users completed fields faster and with fewer errors"]
- [e.g., "Think-aloud protocol with prompts -- generated richer qualitative data than unprompted"]
- [e.g., "Code-first prototyping -- allowed real interaction patterns that Figma couldn't simulate"]

---

## What Didn't Work (Stop or Change)

_Decisions, patterns, or approaches that need to be stopped or rethought._

- [e.g., "Icon-only buttons for secondary actions -- users didn't recognize them as interactive"]
- [e.g., "Testing 5 tasks in a 30-minute session -- too rushed, participants fatigued by task 4"]
- [e.g., "Placeholder text as the only label -- users thought fields were pre-filled"]

---

## Scope Changes

_What was added, removed, or modified from the original scope, and why?_

| Change | Type | Reasoning | Impact |
|--------|------|-----------|--------|
| [e.g., "Add step progress indicator"] | Added | [e.g., "3/6 users asked for it; reduces uncertainty"] | [e.g., "Small dev effort, high UX impact"] |
| [e.g., "Remove social login option"] | Removed | [e.g., "0 users selected it in testing; adds complexity"] | [e.g., "Simplifies auth flow, reduces maintenance"] |
| [e.g., "Change coupon field placement"] | Modified | [e.g., "Users missed it below the fold"] | [e.g., "Layout restructure needed, medium effort"] |

---

## Updated Hypotheses

_Revisit your original hypotheses. Which were confirmed, refuted, or need more testing?_

| Hypothesis | Status | Evidence | Next Step |
|------------|--------|----------|-----------|
| [e.g., "2-step checkout reduces abandonment"] | Partially confirmed | [e.g., "Completion rate up 23%, but sample size small"] | [e.g., "Run A/B test with larger sample"] |
| [e.g., "Users prefer visual product comparison"] | Refuted | [e.g., "Users skipped comparison table; went straight to details"] | [e.g., "Replace with highlight badges on cards"] |
| [e.g., "Progress indicator improves completion confidence"] | Untested | [e.g., "Not in this iteration's prototype"] | [e.g., "Include in next iteration"] |

---

## Next Iteration Focus

_What will the next iteration prioritize?_

### Primary focus

- [e.g., "Implement and test step progress indicator in checkout"]
- [e.g., "Test coupon field in new position (above order summary)"]

### Secondary focus

- [e.g., "Explore address autocomplete integration"]
- [e.g., "Refine error state messaging"]

### Open questions to resolve

- [e.g., "Should we show order summary as a sticky sidebar or inline?"]
- [e.g., "Do we need a guest checkout option, or is account creation acceptable?"]

### Estimated timeline

| Activity | Dates | Owner |
|----------|-------|-------|
| Design updates | [Date range] | [Name] |
| Prototype rebuild | [Date range] | [Name] |
| Next round of testing | [Date range] | [Name] |

---

## Updated PRD/ADR References

_Link to any product or architecture documents that were updated based on this iteration._

- **PRD:** [Link to updated Product Requirements Document]
- **ADR:** [Link to relevant Architecture Decision Records]
- **Design spec:** [Link to updated Figma / design file]
- **Backlog updates:** [Link to new/modified tickets]
- **Previous iteration brief:** [Link to iteration #N-1]
