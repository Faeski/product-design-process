---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
phase: discovery
template: research-synthesis
---

# Research Synthesis

> This document summarizes all discovery findings into actionable insights and recommendations.
> It is the culmination of interviews, surveys, desk research, and competitive analysis.
> Every insight must trace back to evidence. Every recommendation must follow from insights.
> For multi-persona projects, generate a cross-persona system flow map alongside this synthesis (see [system-flow-map.md](system-flow-map.md)).

---

## Executive Summary

> Maximum 3 sentences. A busy stakeholder should be able to read this and understand the conclusion.

[Sentence 1: What we set out to learn.]
[Sentence 2: What we found.]
[Sentence 3: What we recommend and why.]

> **Example:**
> We investigated whether mid-market procurement teams need dedicated vendor management software. Our research (10 interviews, 68 survey responses, competitive analysis) confirms that teams managing 20+ vendor relationships face acute pain with manual tracking, but significant switching barriers exist around migration and team adoption. We recommend proceeding to solution validation with a narrow focus on renewal tracking for B2B SaaS companies with 50-200 employees, while explicitly testing willingness to pay and migration anxiety.

---

## Key Insights

> Insights are not observations -- they are interpretations of patterns across multiple pieces of evidence.
> An observation: "P03 spends 6 hours/week on spreadsheets." An insight: "Manual vendor tracking consumes 5-10 hours/week across our target segment, and this time is invisible to leadership, creating both a pain point and a value-demonstration problem."

| # | Insight | Supporting Evidence | Confidence | Implication for Product/Strategy |
|---|---------|---------------------|------------|----------------------------------|
| I1 | [e.g., Manual vendor tracking consumes 5-10 hours/week and is invisible to leadership, creating both an efficiency problem and a value-demonstration problem.] | [E001, E003, E006, E012, E016, Survey Q7] | High | [e.g., Core value prop should address both efficiency AND visibility. Reporting is not a nice-to-have -- it is how users justify the tool.] |
| I2 | [e.g., Missed renewal deadlines are the #1 costly consequence, but they happen infrequently enough that the pain is episodic rather than constant.] | [E009, E014, Survey Q8] | High | [e.g., Renewal tracking is the hook, but daily value must come from something else (like centralized vendor info). Otherwise usage will be episodic.] |
| I3 | [e.g., Switching barriers are real: data migration anxiety and team adoption resistance are stronger than budget concerns.] | [E015, E018, E020, E022] | Med | [e.g., Frictionless onboarding (spreadsheet import, 5-minute setup) is a product requirement, not a nice-to-have. Must be designed for from day 1.] |
| I4 | [e.g., The decision maker (VP/CFO) cares about cost savings, but the daily user (procurement manager) cares about feeling in control and being seen as strategic.] | [E012, P03, P05, P08] | Med | [e.g., Positioning must speak to both: ROI for the buyer, daily sanity for the user. Two audiences, one product.] |
| I5 | [e.g., No existing competitor serves the mid-market well -- enterprise tools are too complex and expensive, and SMB tools lack critical features.] | [Competitor teardown, E003, E018, Survey Q12] | High | [e.g., There is a real gap. But "mid-market" is not a positioning -- we need to be specific about which 50-200 person companies.] |
| I6 | [ ] | | | |
| I7 | [ ] | | | |
| I8 | [ ] | | | |

---

## Per-Persona Synthesis

> For multi-persona projects, synthesize findings separately per persona. Each persona may experience different pain points, needs, and priorities even within the same problem space. Link each row back to evidence.

### Persona: [Persona A Name]

| Dimension | Finding | Key Evidence |
|-----------|---------|--------------|
| Top pain points | [e.g., "Spends 6+ hours/week compiling vendor reports for leadership"] | [E001, E012] |
| Core needs | [e.g., "Automated reporting, single source of truth for vendor data"] | [E003, E016] |
| Priorities | [e.g., "Speed and ease of use over feature depth"] | [E006, Survey Q7] |
| Workarounds | [e.g., "Master spreadsheet with manual updates"] | [E001, E003] |
| Willingness to change | [e.g., "High -- actively looking for alternatives"] | [E015, E020] |

### Persona: [Persona B Name]

| Dimension | Finding | Key Evidence |
|-----------|---------|--------------|
| Top pain points | [e.g., "Cannot get visibility into vendor spend without asking procurement team"] | [E012, E016] |
| Core needs | [e.g., "On-demand spend dashboards, renewal risk alerts"] | [E009, E014] |
| Priorities | [e.g., "Accuracy and trustworthiness of data over speed"] | [E012, Survey Q11] |
| Workarounds | [e.g., "Quarterly manual reports from procurement team"] | [E016] |
| Willingness to change | [e.g., "Medium -- will adopt if procurement team champions it"] | [E018, E022] |

> Add additional persona sections as needed. Each persona should map to a corresponding `user-persona-[name].md` file in the `research/` folder.

---

## Cross-Persona Conflicts

> Where persona needs conflict or create tension. These conflicts often reveal the most important design decisions. Resolving them well is what separates good products from mediocre ones.

| Conflict | Persona A Need | Persona B Need | Resolution / Trade-off |
|----------|---------------|---------------|------------------------|
| [e.g., "Automation vs. control"] | [e.g., "Procurement manager wants automated renewal alerts sent directly to vendors"] | [e.g., "VP/CFO wants to review and approve all vendor communications before they go out"] | [e.g., "Design for 'suggest + confirm' pattern: system drafts, human approves. Configurable per-org."] |
| [e.g., "Data granularity vs. simplicity"] | [e.g., "Procurement manager needs line-item detail for every vendor contract"] | [e.g., "VP/CFO needs a single dashboard with summary metrics only"] | [e.g., "Layered information architecture: summary view by default, drill-down available. Two entry points to the same data."] |
| [ ] | | | |

---

## Theme Map

> Group evidence into themes to reveal patterns. Not every piece of evidence is an insight, but themes help insights emerge.

### Pain Points

| Theme | Frequency (how many sources) | Severity (1-5) | Key Evidence |
|-------|------------------------------|-----------------|--------------|
| [e.g., Manual, error-prone vendor tracking] | [e.g., 8/10 interviews, 72% survey] | 5 | [E001, E003, E006, Survey Q7] |
| [e.g., No single source of truth for vendor data] | [e.g., 7/10 interviews] | 4 | [E003, E007, E011] |
| [e.g., Inability to demonstrate procurement value] | [e.g., 5/10 interviews] | 3 | [E012, E016] |
| [ ] | | | |

### Workarounds

| Workaround | How Common | Effectiveness | What It Reveals |
|------------|------------|---------------|-----------------|
| [e.g., Master spreadsheet with manual updates] | [e.g., Nearly universal] | [e.g., Functional but fragile] | [e.g., People will invest significant time in imperfect solutions -- the pain is real] |
| [e.g., Calendar reminders for renewal dates] | [e.g., Common] | [e.g., Works until someone misses one] | [e.g., The cost of failure is high enough to invest effort, but not high enough to buy a tool] |
| [ ] | | | |

### Unmet Needs

| Need | Evidence | Currently Solved By | Opportunity |
|------|----------|---------------------|-------------|
| [e.g., Automated renewal reminders with enough lead time to negotiate] | [E001, E009, E014] | [Calendar reminders -- unreliable] | High |
| [e.g., One-click spend reporting for leadership] | [E012, E016] | [Manual spreadsheet compilation -- takes days] | High |
| [ ] | | | |

### Surprises

> Findings that challenged our assumptions or revealed something we did not expect.

| Surprise | What We Expected | What We Found | Implication |
|----------|------------------|---------------|-------------|
| [e.g., Budget is not the main barrier] | [e.g., Price sensitivity would be the #1 objection] | [e.g., Migration anxiety and team adoption fear are bigger barriers than cost] | [e.g., Free trials and low pricing will not be enough -- we need frictionless onboarding] |
| [e.g., Social dimension is strong] | [e.g., This is a utilitarian efficiency problem] | [e.g., Users deeply care about being seen as strategic by leadership] | [e.g., Reporting and visibility features are emotionally important, not just nice-to-haves] |
| [ ] | | | |

### Contradictions

> Evidence that conflicts with other evidence. These often point to the most interesting opportunities.

| Contradiction | Evidence A | Evidence B | Possible Explanation |
|---------------|-----------|-----------|----------------------|
| [e.g., Users say they want automation but also want control] | [E003: "I want everything automated"] | [E018: "I need to review everything before it goes out"] | [e.g., They want automation with approval gates, not full autopilot. Design for "suggest + confirm" not "set and forget."] |
| [ ] | | | |

---

## Hypothesis Validation

| Hypothesis | Status | Key Evidence | Confidence | Persona(s) Affected | Notes |
|------------|--------|--------------|------------|----------------------|-------|
| **H1:** [One-line summary] | `validated` / `invalidated` / `inconclusive` | [e.g., E001, E003, E006, E009 -- 8/10 interviewees confirmed; Survey Q7 corroborates] | High / Med / Low | [e.g., Persona A, Persona B] | [e.g., Strong convergence. Proceed with confidence.] |
| **H2:** [One-line summary] | `validated` / `invalidated` / `inconclusive` | [Evidence IDs] | High / Med / Low | [e.g., Persona A only] | [ ] |
| **H3:** [One-line summary] | `validated` / `invalidated` / `inconclusive` | [Evidence IDs] | High / Med / Low | [e.g., All personas] | [ ] |
| **H4:** [One-line summary] | `validated` / `invalidated` / `inconclusive` | [Evidence IDs] | High / Med / Low | [ ] | [ ] |
| **H5:** [One-line summary] | `validated` / `invalidated` / `inconclusive` | [Evidence IDs] | High / Med / Low | [ ] | [ ] |

### Validation Summary

- **Validated:** [N] hypotheses -- [brief summary of what we now know]
- **Invalidated:** [N] hypotheses -- [brief summary of what we learned was wrong]
- **Inconclusive:** [N] hypotheses -- [what more we need to learn]

---

## Recommendations

### GO: Proceed with Confidence

> Areas where evidence is strong enough to move forward.

| Recommendation | Supporting Insights | Risk Level | Next Action |
|----------------|---------------------|------------|-------------|
| [e.g., Build an MVP focused on vendor tracking + renewal alerts for B2B SaaS companies with 50-200 employees] | [I1, I2, I5] | [e.g., Low -- strong evidence of pain and gap in market] | [e.g., Begin solution design sprint] |
| [e.g., Design for spreadsheet import as the primary onboarding path] | [I3] | [e.g., Low -- migration anxiety is the top barrier, this directly addresses it] | [e.g., Include in MVP scope] |
| [ ] | | | |

### PIVOT: Adjust Direction Based on Evidence

> Areas where our initial assumptions were wrong and we need to change course.

| Recommendation | What We Assumed | What Evidence Shows | Adjusted Direction |
|----------------|-----------------|---------------------|-------------------|
| [e.g., Reposition from "efficiency tool" to "visibility + efficiency tool"] | [e.g., Users buy for time savings] | [I4 -- social dimension is as important as functional] | [e.g., Lead with "never get caught off guard by your VP" not "save 6 hours/week"] |
| [ ] | | | |

### STOP: Do Not Pursue

> Areas where evidence says we should not invest (for now).

| Recommendation | Why We Should Stop | Evidence | Revisit Condition |
|----------------|-------------------|----------|-------------------|
| [e.g., Do not build for manufacturing vertical] | [e.g., Low accessibility, long sales cycles, different workflow] | [Market research segments, E021] | [e.g., Only if we exhaust B2B SaaS segment first] |
| [e.g., Do not build vendor risk scoring in v1] | [e.g., Different buyer, requires specialized data, not core to the JTBD we validated] | [I2, JTBD canvas non-goals] | [e.g., Revisit after PMF if compliance-heavy segments show demand] |
| [ ] | | | |

---

## Open Questions

> What do we still not know? What emerged during research that needs further investigation?

| # | Question | Why It Matters | Suggested Method to Answer |
|---|----------|----------------|---------------------------|
| OQ1 | [e.g., How much would our target segment actually pay? Survey showed wide range ($100-500/mo)] | [e.g., Pricing determines viability and positioning] | [e.g., Van Westendorp pricing study or landing page pricing test] |
| OQ2 | [e.g., Is the procurement manager the buyer or just the user? Who holds the budget?] | [e.g., Determines sales motion -- self-serve vs. sales-assisted] | [e.g., 3-5 interviews specifically with VP/CFO stakeholders] |
| OQ3 | [e.g., How quickly do teams outgrow a simple tool? What is the retention risk?] | [e.g., If teams outgrow us in 12 months, unit economics may not work] | [e.g., Interview companies at different stages, analyze competitor churn data] |
| OQ4 | [ ] | | |
| OQ5 | [ ] | | |

---

## Disconfirming Evidence Summary

> The evidence that challenges our direction. This section exists to keep us honest.

| What We Believe | Evidence Against | How We Are Addressing It |
|-----------------|------------------|--------------------------|
| [e.g., There is a real market for mid-market vendor management tools] | [e.g., 3 interviewees said "spreadsheets are fine" -- E004, E013, E017] | [e.g., These were companies with <15 vendors. Our refined ICP (20+ vendors) shows consistent pain. Narrowing ICP addresses this.] |
| [e.g., Self-serve can work for procurement tools] | [e.g., P04 said they chose Competitor 1 because of its dedicated onboarding specialist] | [e.g., Inconclusive -- need to test whether great UX and spreadsheet import can substitute for human onboarding. Include in solution validation.] |
| [e.g., Our target segment will pay $200-400/mo] | [e.g., Survey shows 40% would only pay <$100/mo] | [e.g., Survey sample includes companies outside our refined ICP. Need pricing-specific research with tighter segment targeting.] |
| [ ] | | |

---

## Next Steps

| # | Action | Owner | Deadline | Depends On |
|---|--------|-------|----------|------------|
| 1 | [e.g., Present synthesis to stakeholders and align on GO/PIVOT/STOP decisions] | [Name] | [Date] | -- |
| 2 | [e.g., Refine ICP based on validated segments] | [Name] | [Date] | Step 1 |
| 3 | [e.g., Begin solution design for core workflow (vendor tracking + renewals)] | [Name] | [Date] | Step 2 |
| 4 | [e.g., Design and run pricing study with refined ICP] | [Name] | [Date] | Step 2 |
| 5 | [e.g., Schedule 3 additional interviews to address open questions OQ1, OQ2] | [Name] | [Date] | Step 1 |
| 6 | [e.g., Generate cross-persona system flow map (see system-flow-map.md)] | [Name] | [Date] | Step 1 |
| 7 | [ ] | | | |

---

## Appendix: Document Links

| Document | Status | Last Updated |
|----------|--------|--------------|
| [Research Plan](research-plan.md) | [Complete] | [Date] |
| [Hypothesis Sheet](hypothesis-sheet.md) | [Complete] | [Date] |
| [Evidence Log](evidence-log.md) | [Complete] | [Date] |
| [Interview Guide](interview-guide.md) | [Complete] | [Date] |
| [Interview Notes](interview-notes.md) | [N sessions complete] | [Date] |
| [Competitor Teardown](competitor-teardown.md) | [Complete] | [Date] |
| [Market Research](market-research.md) | [Complete] | [Date] |
| [JTBD Canvas](jtbd-canvas.md) | [Complete] | [Date] |
| User Persona(s) (`user-persona-[name].md`) | [Complete] | [Date] |
| [System Flow Map](system-flow-map.md) | [Not started] | [Date] |
