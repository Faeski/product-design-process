---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
phase: discovery
template: stakeholder-raci
---

# Stakeholder RACI & Decision Framework

> This document defines who is involved in which decisions, how conflicts are resolved, and how stakeholders are kept informed.
> Ambiguity about decision rights is one of the top causes of project delays and rework.
> Define this early, review it regularly, and refer to it when disagreements arise.
>
> R = Responsible (does the work). A = Accountable (has final call). C = Consulted (provides input before decision). I = Informed (notified after decision).
> Every decision area must have exactly ONE "A." If two people think they have final call, you do not have a decision framework -- you have a conflict waiting to happen.

---

## Stakeholder Map

> Who has a stake in this project? What do they care about? How do they want to be engaged?

| Name / Role | Area of Interest | Level of Influence | Key Priorities | Potential Concerns | Communication Preference |
|-------------|------------------|-------------------|----------------|--------------------| ------------------------|
| [e.g., Jordan -- Head of Product] | [e.g., Scope, roadmap fit, user experience] | High | [e.g., Ship on time, align with Q3 OKRs, measurable user impact] | [e.g., Scope creep, resource conflicts with other initiatives] | [e.g., Weekly 1:1, async Slack updates] |
| [e.g., Alex -- Engineering Lead] | [e.g., Technical feasibility, architecture, timeline] | High | [e.g., Clean architecture, manageable scope, realistic deadlines] | [e.g., Design decisions that create tech debt, late requirement changes] | [e.g., In sprint planning, async in PR reviews] |
| [e.g., Sam -- Design Lead] | [e.g., User experience, design quality, research findings] | High | [e.g., Evidence-based decisions, design consistency, user testing before launch] | [e.g., Shipping without user validation, design-by-committee] | [e.g., Design reviews, async Figma comments] |
| [e.g., Casey -- VP of Engineering] | [e.g., Resource allocation, technical risk, cross-team dependencies] | Med | [e.g., No surprises, predictable delivery, team capacity] | [e.g., Unplanned scope increases, blocked dependencies] | [e.g., Bi-weekly brief, escalation as needed] |
| [e.g., Morgan -- Customer Success Lead] | [e.g., Customer impact, migration, support readiness] | Med | [e.g., Smooth transition for existing customers, support documentation ready] | [e.g., Breaking changes without migration path, insufficient notice] | [e.g., Milestone updates, pre-launch review] |
| [e.g., Taylor -- Executive Sponsor] | [e.g., Business impact, strategic alignment, ROI] | High | [e.g., Revenue impact, competitive positioning, strategic narrative] | [e.g., Investment without clear returns, misalignment with company strategy] | [e.g., Monthly exec summary, escalation only] |
| [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |

---

## RACI Matrix

> For each decision area, define who is R, A, C, and I. Fill in stakeholder names or roles in each cell.
> Remember: exactly ONE "A" per row. If you cannot agree on who is "A," escalate that specific ambiguity now.

| Decision Area | [e.g., Product Lead] | [e.g., Engineering Lead] | [e.g., Design Lead] | [e.g., VP Engineering] | [e.g., Customer Success] | [e.g., Executive Sponsor] |
|---------------|----------------------|--------------------------|---------------------|------------------------|--------------------------|---------------------------|
| **UX decisions** (interaction patterns, user flows, information architecture) | C | C | A | I | C | I |
| **Visual design decisions** (look and feel, brand alignment) | C | I | A | I | I | I |
| **Scope decisions** (what is in/out of this release) | A | C | C | I | C | I |
| **Technical architecture decisions** (how it is built, tech stack, infrastructure) | C | A | I | C | I | I |
| **Timeline decisions** (ship dates, milestone dates) | A | C | C | C | I | I |
| **Budget / resource decisions** (team allocation, external spend) | C | C | I | A | I | C |
| **Launch decisions** (when and how to release to users) | A | C | C | C | C | I |
| **Prioritization decisions** (what to build first within scope) | A | C | C | I | C | I |
| **Research decisions** (what to research, when, methodology) | C | I | A | I | C | I |
| **Data / metrics decisions** (what to measure, success criteria) | A | C | C | I | C | I |
| [Additional decision area] | | | | | | |
| [Additional decision area] | | | | | | |

---

## Conflict Resolution Framework

> When stakeholders disagree, how is it resolved? Define this before conflicts arise, not during them.

### Resolution Principles

1. **Evidence wins over opinion.** If one side has user research, analytics, or data and the other has a hunch, evidence takes priority.
2. **The "A" has final call.** After input is gathered, the accountable person decides. Others commit to the decision even if they disagree.
3. **Escalation is not failure.** If the "A" and key stakeholders cannot align, escalate promptly. Delayed escalation is more costly than the escalation itself.
4. **Decisions are logged.** Every resolved conflict becomes an entry in the [Decision Log](../docs/decisions/decision-log.md).

### Escalation Path

| Level | Who | When to Escalate | Resolution Timeframe |
|-------|-----|-------------------|---------------------|
| 1 | [e.g., Working team (R + A for that area)] | [e.g., First attempt -- discuss in next sync or async thread] | [e.g., 1-2 business days] |
| 2 | [e.g., Product Lead + relevant "A" stakeholder] | [e.g., Working team cannot align after discussion] | [e.g., 2-3 business days] |
| 3 | [e.g., VP Engineering / Executive Sponsor] | [e.g., Product-level stakeholders cannot align, or decision has significant resource/timeline implications] | [e.g., 3-5 business days] |

### Common Conflict Areas

| Conflict Area | Who Has Final Call | Resolution Criteria | Example |
|---------------|--------------------|--------------------|---------|
| [e.g., Scope vs. timeline] | [e.g., Product Lead (with Engineering input on feasibility)] | [e.g., Can we cut scope to meet timeline? If not, what is the minimum viable scope?] | [e.g., "We cannot ship all 5 features by launch. Product Lead decides which 3 ship now and which 2 are fast-follows."] |
| [e.g., User experience vs. technical constraints] | [e.g., Design Lead and Engineering Lead jointly, Product Lead breaks ties] | [e.g., Is there a design alternative that achieves the UX goal within constraints? If not, which constraint can we relax?] | [e.g., "Ideal design requires a new API. Can we approximate the UX with existing APIs? If not, is the API work justified?"] |
| [e.g., New feature vs. existing customer impact] | [e.g., Product Lead with Customer Success input] | [e.g., What is the migration cost? Can we feature-flag? What is the customer communication plan?] | [e.g., "New design breaks existing workflow for 200 customers. Product Lead decides if the improvement justifies the migration cost."] |
| [ ] | [ ] | [ ] | [ ] |

---

## Communication Plan

> How and when each stakeholder is kept informed. Under-communication causes more problems than over-communication.

| Stakeholder | Update Frequency | Format | What They Need to Know | Who Delivers |
|-------------|-----------------|--------|------------------------|--------------|
| [e.g., Product Lead] | [e.g., Daily standup + weekly sync] | [e.g., Standup: async Slack. Weekly: 30-min meeting] | [e.g., Progress against milestones, blockers, decisions needed] | [e.g., Design Lead / Engineering Lead] |
| [e.g., Engineering Lead] | [e.g., Daily standup + as-needed] | [e.g., Standup: async Slack. Ad hoc: Slack DM or huddle] | [e.g., Design specs ready for review, scope changes, timeline risks] | [e.g., Design Lead / Product Lead] |
| [e.g., Design Lead] | [e.g., Daily standup + design reviews] | [e.g., Standup: async Slack. Reviews: Figma comments] | [e.g., Technical constraints, user feedback, scope changes] | [e.g., Engineering Lead / Product Lead] |
| [e.g., VP Engineering] | [e.g., Bi-weekly] | [e.g., 15-min brief or async written update] | [e.g., On track / at risk, resource needs, cross-team dependencies] | [e.g., Engineering Lead] |
| [e.g., Customer Success] | [e.g., At milestones] | [e.g., Async written brief with timeline] | [e.g., What is changing, when, customer impact, support prep needed] | [e.g., Product Lead] |
| [e.g., Executive Sponsor] | [e.g., Monthly or at major milestones] | [e.g., 1-page written summary] | [e.g., Strategic progress, risks, decisions that need exec input] | [e.g., Product Lead] |
| [ ] | [ ] | [ ] | [ ] | [ ] |

---

## Decision Log Reference

> All decisions made through this RACI framework are recorded in the project's Decision Log.

**Decision Log Location:** [Link to decision-log.md, e.g., `../docs/decisions/decision-log.md`]

**How to Log a Decision:**
1. When a decision is made, the "A" person (or their delegate) adds an entry to the Decision Log.
2. Include: what was decided, what options were considered, what evidence informed it, and when to revisit.
3. Share the decision entry with all "I" stakeholders as part of the communication plan.

---

## Review Cadence

> This RACI is a living document. Review it at key project milestones to ensure it still reflects reality.

| Review Trigger | What to Check | Who Reviews |
|----------------|---------------|-------------|
| [e.g., Project kickoff] | [e.g., All stakeholders identified? All decision areas covered? Everyone agrees on their role?] | [e.g., Full stakeholder group] |
| [e.g., End of discovery phase] | [e.g., Any new stakeholders? Any decision areas that proved ambiguous? Adjust based on lessons learned.] | [e.g., Product Lead + Design Lead] |
| [e.g., Mid-project checkpoint] | [e.g., Is the communication plan working? Are decisions being made at the right speed? Any escalation patterns?] | [e.g., Product Lead + Engineering Lead] |
| [e.g., Pre-launch] | [e.g., Launch decisions clear? Customer Success and Support properly included? Rollback authority defined?] | [e.g., Full stakeholder group] |
| [e.g., Post-launch retrospective] | [e.g., What worked? Where did RACI break down? Update for next project.] | [e.g., Full stakeholder group] |

---

## Open Questions

> Unresolved stakeholder questions or tensions that need to be addressed.

| # | Question | Why It Matters | Owner | Target Resolution Date |
|---|----------|----------------|-------|------------------------|
| OQ1 | [e.g., Who is the "A" for decisions that affect multiple product areas?] | [e.g., Cross-cutting decisions currently have no clear owner, causing delays] | [e.g., Product Lead to propose] | [YYYY-MM-DD] |
| OQ2 | [e.g., How do we handle stakeholder availability gaps (PTO, conflicting priorities)?] | [e.g., Decisions stall when the "A" person is unavailable] | [e.g., Product Lead] | [YYYY-MM-DD] |
| OQ3 | [e.g., Should Customer Success have "C" or "I" on scope decisions?] | [e.g., They have valuable customer context but adding more consulted parties slows decisions] | [e.g., Product Lead + CS Lead] | [YYYY-MM-DD] |
| OQ4 | [ ] | [ ] | [ ] | [ ] |
| OQ5 | [ ] | [ ] | [ ] | [ ] |
