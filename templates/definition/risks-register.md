---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
---

# Risk Register

> Track known risks, their likelihood and impact, and the plan to mitigate each one. Review this document at least once per sprint. A risk without a mitigation strategy is just worrying -- make it actionable.

---

## How to Use This Register

1. **Add risks early.** The best time to identify a risk is before it becomes a problem.
2. **Be specific.** "Something might go wrong" is not a risk. "The third-party API has a 99.5% SLA, which means ~3.6 hours of downtime per month" is a risk.
3. **Assign an owner.** Every risk must have one person responsible for monitoring and mitigating it.
4. **Review regularly.** Update the Status and Last Reviewed columns at each sprint review or project checkpoint.
5. **Close resolved risks.** When a risk is no longer relevant, mark it as Closed and note why.

### Category Definitions

| Category | Description |
|----------|-------------|
| **Technical** | Risks related to technology, architecture, performance, or implementation |
| **Market** | Risks related to user adoption, competition, or market timing |
| **Team** | Risks related to capacity, skills, availability, or communication |
| **Legal** | Risks related to compliance, privacy, contracts, or intellectual property |

### Likelihood and Impact Scale

| Level | Likelihood Meaning | Impact Meaning |
|-------|-------------------|----------------|
| **High** | Very likely to occur (>70% probability) | Would block the project or cause major rework |
| **Medium** | Possible (30-70% probability) | Would cause delays or reduced quality |
| **Low** | Unlikely (<30% probability) | Minor inconvenience, easily absorbed |

---

## Risk Register

| ID | Risk Description | Category | Likelihood | Impact | Mitigation Strategy | Owner | Status | Last Reviewed |
|----|-----------------|----------|------------|--------|---------------------|-------|--------|---------------|
| R-001 | [e.g., "Third-party data integration API changes their rate limits or authentication method during development, requiring rework of our connection flow."] | Technical | Medium | High | [e.g., "Abstract the integration behind an adapter layer so we can swap implementations. Monitor the API's changelog weekly. Have a manual CSV upload fallback ready."] | [e.g., "Alex (Engineering)"] | Open | [YYYY-MM-DD] |
| R-002 | [e.g., "Users find the pre-populated sample data confusing or untrustworthy, reducing engagement instead of increasing it."] | Market | Medium | High | [e.g., "Run a 5-person usability test with sample data before launch. Prepare 3 industry-specific data sets. Add clear 'This is sample data' labeling with a one-click path to use real data."] | [e.g., "Jordan (Design)"] | Open | [YYYY-MM-DD] |
| R-003 | [e.g., "Lead front-end engineer is on parental leave during weeks 3-6 of the project, reducing capacity by 30%."] | Team | High | Medium | [e.g., "Front-load the most complex UI work into weeks 1-2 while the engineer is available. Pair another engineer on the onboarding codebase during week 1 for knowledge transfer. Adjust timeline expectations with stakeholders."] | [e.g., "Sam (PM)"] | Open | [YYYY-MM-DD] |
| R-004 | [Risk description] | [Technical / Market / Team / Legal] | [High / Med / Low] | [High / Med / Low] | [Mitigation strategy] | [Owner] | Open | [YYYY-MM-DD] |
| R-005 | [Risk description] | [Technical / Market / Team / Legal] | [High / Med / Low] | [High / Med / Low] | [Mitigation strategy] | [Owner] | Open | [YYYY-MM-DD] |

---

## Adding a New Risk

_Copy the row template below and add it to the table above._

```
| R-[NNN] | [Describe the risk specifically. What could go wrong and what is the consequence?] | [Technical / Market / Team / Legal] | [High / Med / Low] | [High / Med / Low] | [What will we do to prevent or reduce this risk? Be actionable.] | [Name (Role)] | Open | [YYYY-MM-DD] |
```

---

## Risk Status Definitions

| Status | Meaning |
|--------|---------|
| **Open** | Risk is active and being monitored |
| **Mitigating** | Mitigation actions are underway |
| **Occurred** | The risk materialized. Document what happened and the response in the notes below. |
| **Closed** | Risk is no longer relevant (either mitigated, avoided, or accepted) |

---

## Risk Notes and History

_When a risk changes status or something notable happens, log it here._

### R-001: [Risk title]
- **[YYYY-MM-DD]:** [e.g., "Identified during technical planning. Added adapter layer to sprint 1 backlog."]
- **[YYYY-MM-DD]:** [e.g., "API provider announced deprecation of v2 endpoint. Our adapter layer means we only need to update one file. Risk mitigation validated."]

### R-002: [Risk title]
- **[YYYY-MM-DD]:** [e.g., "Identified during design review. Usability test scheduled for next week."]

### R-003: [Risk title]
- **[YYYY-MM-DD]:** [e.g., "Confirmed parental leave dates. Knowledge transfer pairing session completed."]

---

## Review Schedule

| Review Type | Frequency | Next Review Date | Facilitator |
|-------------|-----------|-----------------|-------------|
| [e.g., "Full register review"] | [e.g., "Bi-weekly (sprint review)"] | [YYYY-MM-DD] | [Name] |
| [e.g., "High-impact risk check"] | [e.g., "Weekly standup mention"] | [YYYY-MM-DD] | [Name] |
| [e.g., "Stakeholder risk update"] | [e.g., "Monthly"] | [YYYY-MM-DD] | [Name] |
