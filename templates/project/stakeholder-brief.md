---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
---

# Stakeholder Brief

> A concise research brief designed for team alignment. This is not a full research report -- it is the minimum context a stakeholder needs to make an informed decision. Keep it under 2 pages. For the detailed decision framework and responsibility matrix, see [stakeholder-raci.md](stakeholder-raci.md).

---

## Problem Statement

_State the problem in 3 bullets or fewer. Each bullet must include evidence._

1. **[Problem aspect 1]** -- [Evidence: e.g., "43% of new users abandon onboarding before completing step 3 (Mixpanel, Jan 2025)."]
2. **[Problem aspect 2]** -- [Evidence: e.g., "NPS dropped from 42 to 31 in the segment of users who signed up in the last 90 days (quarterly survey)."]
3. **[Problem aspect 3]** -- [Evidence: e.g., "'I didn't know what to do next' was the #1 response in 12 of 15 churn interviews (research/interviews/churn-batch-3/)."]

> Rule: If you cannot attach evidence to a problem statement, it is an assumption, not a problem. Label it as such or go find the evidence.

---

## Key Insights

_The top 5 insights from research. Each must include exactly one supporting data point._

| # | Insight | Supporting Evidence |
|---|---------|---------------------|
| 1 | [e.g., "Users expect to see value within the first session, not after setup."] | [e.g., "9 of 12 interviewees mentioned 'instant value' as a key expectation (interview transcripts, Q3)."] |
| 2 | [e.g., "The current onboarding assumes technical knowledge that most users lack."] | [e.g., "Only 18% of users have prior experience with similar tools (signup survey, n=430)."] |
| 3 | [e.g., "Users trust the product more when they see real data, even if it is sample data."] | [e.g., "Prototype A (with sample data) scored 4.2/5 on trust vs. 2.8/5 for Prototype B (empty state)."] |
| 4 | [Insight] | [Evidence] |
| 5 | [Insight] | [Evidence] |

---

## Per-Persona Impact Summary

_For multi-persona projects, briefly summarize how the recommended direction affects each persona. This helps stakeholders understand the breadth of impact._

| Persona | Current Experience | Proposed Change | Expected Impact |
|---------|-------------------|----------------|-----------------|
| [e.g., "Procurement Manager"] | [e.g., "Spends 6+ hours/week on manual vendor tracking in spreadsheets"] | [e.g., "Automated vendor dashboard with renewal alerts"] | [e.g., "Estimated 70% reduction in manual tracking time; higher job satisfaction"] |
| [e.g., "VP/CFO"] | [e.g., "Relies on quarterly manual reports for vendor spend visibility"] | [e.g., "Real-time executive dashboard with automated spend summaries"] | [e.g., "On-demand visibility; faster decision-making on vendor renewals"] |
| [e.g., "IT Admin"] | [e.g., "No involvement in vendor management today"] | [e.g., "Manages SSO integration and user permissions"] | [e.g., "Small setup effort (~2 hours); ongoing maintenance is minimal"] |
| [ ] | | | |

---

## Recommended Direction

_What do you recommend we do, and why?_

**Recommendation:** [e.g., "Redesign the onboarding flow to front-load value demonstration. Show users a pre-populated workspace before asking them to configure anything."]

**Why this direction:**
- [e.g., "Aligns with Insight #1 and #3 -- users need to see value before investing effort."]
- [e.g., "Lowest technical risk of the options considered (see Alternatives below)."]
- [e.g., "Can be shipped incrementally -- Phase 1 is a 2-week effort."]

### Alternatives Considered

| Alternative | Why We Did Not Choose It |
|-------------|--------------------------|
| [e.g., "Simplify existing onboarding (reduce steps from 7 to 3)"] | [e.g., "User testing showed the problem is not step count but comprehension. Fewer steps did not improve completion (prototype test, n=8)."] |
| [e.g., "Add a guided tutorial overlay"] | [e.g., "Competitor analysis shows tutorial overlays have declining effectiveness. 3 of 5 competitors have moved away from this pattern."] |
| [e.g., "Do nothing and invest in documentation instead"] | [e.g., "Only 6% of users visit the help center before churning (analytics). This does not address the core problem."] |

---

## What We Are NOT Doing

_Explicit list of things we considered and deliberately chose not to pursue, with evidence for why._

- **Not redesigning the pricing page.** [e.g., "Pricing was not mentioned as a friction point in any of the 15 churn interviews. Conversion from pricing page to signup is 12%, which is above industry benchmark."]
- **Not building a mobile app.** [e.g., "Mobile usage is 4% of total sessions (analytics). The ROI does not justify the investment at this stage."]
- **[Other excluded direction]** [Evidence for exclusion]

> This section prevents scope creep. If someone suggests one of these, point them here.

---

## Success Criteria + Measurement Plan

_How will we know this worked? Define before building._

| Criteria | Metric | Current Baseline | Target | Timeframe |
|----------|--------|-----------------|--------|-----------|
| [e.g., "Users complete onboarding"] | [e.g., "Onboarding completion rate"] | [e.g., "57%"] | [e.g., "75%"] | [e.g., "8 weeks post-launch"] |
| [e.g., "Users find value quickly"] | [e.g., "Time to first key action"] | [e.g., "4.2 days"] | [e.g., "< 1 day"] | [e.g., "8 weeks post-launch"] |
| [e.g., "Retention improves"] | [e.g., "7-day retention"] | [e.g., "32%"] | [e.g., "45%"] | [e.g., "12 weeks post-launch"] |

**Measurement approach:** [e.g., "We will run this as an A/B test with 50/50 traffic split. Minimum detectable effect is 10% at 95% confidence, which requires ~2 weeks of data collection at current traffic levels."]

---

## Open Questions

_Things we still need input on. Tag the person or team who can answer._

1. [e.g., "Do we have engineering capacity to build the pre-populated workspace in Q2?"] -- **Ask:** [Engineering Lead]
2. [e.g., "Are there legal constraints on using sample data that resembles real customer data?"] -- **Ask:** [Legal]
3. [e.g., "Should we include the mobile web experience in Phase 1 or defer?"] -- **Ask:** [Product Lead]
4. [Open question] -- **Ask:** [Person/Team]

---

## FAQ

_Pre-answer the objections and questions you expect stakeholders to raise. Include both general and stakeholder-specific questions._

**Q: Why not just simplify the existing flow instead of redesigning it?**
A: [e.g., "We tested a simplified version with 8 users. Completion rate improved by only 5 percentage points (from 57% to 62%). The core issue is comprehension, not complexity. Users do not understand what the product does until they see it in action."]

**Q: How confident are we in this research? The sample size seems small.**
A: [e.g., "We conducted 15 interviews and ran 2 prototype tests (n=8 each). For qualitative research, this is standard practice -- saturation was reached by interview 10. The quantitative data (analytics, n=12,000 monthly signups) provides additional confidence."]

**Q: What happens if the new onboarding does not hit the targets?**
A: [e.g., "We have defined a review trigger at 4 weeks. If completion rate has not improved by at least 10 percentage points, we will pause and reassess. The A/B test infrastructure allows us to roll back instantly."]

**Q: How does this affect the roadmap for [other initiative]?**
A: [e.g., "Phase 1 requires 2 engineers for 2 weeks. This overlaps with the [other initiative] timeline by 1 week. We recommend shifting [other initiative] start date by 1 week. Full timeline impact analysis is in the Timeline section below."]

**Q: How does this affect [stakeholder's area, e.g., "engineering capacity / marketing messaging / support workflows"]?**
A: [e.g., "For engineering: Phase 1 requires 2 engineers for 2 weeks. For support: we expect a short-term increase in tickets as users encounter the new flow, followed by a decrease as onboarding improves. For marketing: messaging will need to be updated to reflect the new 'see value first' positioning."]

**Q: What is the impact on [specific team or department]?**
A: [e.g., "Tailor this answer to the specific stakeholder's area of responsibility. Reference the Per-Persona Impact Summary above for user-facing impacts, and provide operational impact details here."]

**Q: [Add your own anticipated question]**
A: [Answer with evidence]

---

## Timeline for Next Phase

| Phase | Dates | Owner | Key Deliverable |
|-------|-------|-------|-----------------|
| [e.g., "Stakeholder alignment"] | [e.g., "Mar 10-14"] | [e.g., "Product"] | [e.g., "Approved brief (this document)"] |
| [e.g., "Definition"] | [e.g., "Mar 17-21"] | [e.g., "Product + Design"] | [e.g., "PRD + prototype brief"] |
| [e.g., "Prototype build"] | [e.g., "Mar 24 - Apr 4"] | [e.g., "Design + Engineering"] | [e.g., "Clickable prototype"] |
| [e.g., "User testing"] | [e.g., "Apr 7-11"] | [e.g., "Research"] | [e.g., "Test results + recommendations"] |
| [e.g., "Build Phase 1"] | [e.g., "Apr 14 - May 2"] | [e.g., "Engineering"] | [e.g., "Shipped to 50% of traffic"] |
| [e.g., "Measure + decide"] | [e.g., "May 5-16"] | [e.g., "Product + Data"] | [e.g., "Go/no-go for full rollout"] |

---

## Appendix: Evidence Links

_Link to all source material referenced in this brief._

- [Interview transcripts - Churn Batch 3](link)
- [Mixpanel onboarding funnel dashboard](link)
- [Prototype test results - Round 1](link)
- [Quarterly NPS survey results](link)
- [Competitor analysis](link)
