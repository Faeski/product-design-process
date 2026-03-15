---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
---

# Decision Log

> Record significant product and technical decisions using an ADR (Architecture Decision Record) style format. This log answers: "Why did we choose X over Y?" six months from now. Write decisions down when they are made, not after the fact.

---

## How to Use This Log

1. **Record decisions when they happen.** Do not wait until the end of a sprint. Capture the reasoning while it is fresh.
2. **Include options you rejected.** The "why not" is as valuable as the "why."
3. **Link to evidence.** Every decision should reference the research, data, or discussion that informed it.
4. **Revisit on schedule.** Each decision has a review date. When that date arrives, check whether the decision still holds.
5. **Supersede, don't delete.** If a decision changes, mark the old one as "Superseded by D-XXX" and create a new entry. Never delete a decision record.

### Decision Status Definitions

| Status | Meaning |
|--------|---------|
| **Proposed** | Under discussion. Not yet agreed upon. |
| **Accepted** | Agreed upon and in effect. This is the current policy. |
| **Superseded** | Replaced by a newer decision. Reference the new decision ID. |
| **Deprecated** | No longer relevant (e.g., feature was removed). |

---

## Decision Records

---

### D-001: [e.g., "Use pre-populated sample data instead of an empty state for new user onboarding"]

| Field | Value |
|-------|-------|
| **Date** | [e.g., 2025-03-12] |
| **Status** | Accepted |
| **Deciders** | [e.g., "Jordan (Design), Alex (Engineering), Sam (PM)"] |

**Context:**
[e.g., "New users see an empty dashboard after completing account setup. Analytics show 43% of users drop off at this point. User interviews reveal that users do not understand what the product does until they see it with data. We need to decide how to bridge the gap between signup and first value."]

**Options Considered:**

| Option | Pros | Cons |
|--------|------|------|
| [e.g., "A: Pre-populated sample data"] | [e.g., "Users see value immediately. Low engineering effort (static data). Validated in prototype tests (4.2/5 trust score)."] | [e.g., "Risk of confusing sample vs. real data. Need to maintain sample data sets per industry."] |
| [e.g., "B: Guided tutorial overlay"] | [e.g., "Common pattern, users may expect it. Can be built incrementally."] | [e.g., "Prototype test scored 2.8/5 on comprehension. Competitors are moving away from this pattern. Higher maintenance burden."] |
| [e.g., "C: Video walkthrough on first login"] | [e.g., "Can convey a lot of information quickly. Easy to A/B test."] | [e.g., "67% of users skip videos (industry benchmark). Does not solve the empty state problem. Requires video production resources."] |

**Decision:**
[e.g., "We chose Option A: Pre-populated sample data. New users will see a dashboard populated with realistic, industry-relevant sample data on first login. Clear labeling will distinguish sample data from real data, and a prominent CTA will guide users to connect their own data source."]

**Tradeoffs Accepted:**
- [e.g., "We accept the overhead of maintaining 3-5 industry-specific sample data sets."]
- [e.g., "We accept the risk that some users may be confused by sample data, which we will mitigate with clear labeling and a usability test before launch."]
- [e.g., "We accept that this approach does not help the ~15% of users who have data ready to connect immediately -- they will see sample data first regardless."]

**Evidence:**
- [e.g., "[Prototype test results](link) -- Option A scored 4.2/5 on trust vs. 2.8/5 for Option B"]
- [e.g., "[User interviews, Batch 3](link) -- 9 of 12 users mentioned 'instant value' as an expectation"]
- [e.g., "[Competitor analysis](link) -- 3 of 5 competitors use sample data for onboarding"]

**Review Date:** [e.g., 2025-05-12 -- Review after 8 weeks of A/B test data is available]

---

### D-002: [Decision title]

| Field | Value |
|-------|-------|
| **Date** | [YYYY-MM-DD] |
| **Status** | Proposed | Accepted | Superseded |
| **Deciders** | [Names and roles] |

**Context:**
[What situation or question prompted this decision?]

**Options Considered:**

| Option | Pros | Cons |
|--------|------|------|
| [Option A] | [Pros] | [Cons] |
| [Option B] | [Pros] | [Cons] |
| [Option C (optional)] | [Pros] | [Cons] |

**Decision:**
[What did we choose and why?]

**Tradeoffs Accepted:**
- [What are we giving up or accepting as a consequence?]
- [What risks remain?]

**Evidence:**
- [Link to supporting research, data, or discussion]

**Review Date:** [YYYY-MM-DD -- When should we revisit this decision?]

---

## Adding a New Decision

_Copy the template below and add it as a new section above this line._

```markdown
### D-[NNN]: [Short, descriptive title]

| Field | Value |
|-------|-------|
| **Date** | [YYYY-MM-DD] |
| **Status** | Proposed | Accepted | Superseded |
| **Deciders** | [Names and roles] |

**Context:**
[What situation or question prompted this decision?]

**Options Considered:**

| Option | Pros | Cons |
|--------|------|------|
| [Option A] | [Pros] | [Cons] |
| [Option B] | [Pros] | [Cons] |

**Decision:**
[What did we choose and why?]

**Tradeoffs Accepted:**
- [What are we giving up?]

**Evidence:**
- [Link to research or data]

**Review Date:** [YYYY-MM-DD]
```

---

## Decision Index

_Quick reference to all decisions. Update this table when adding a new record._

| ID | Title | Date | Status |
|----|-------|------|--------|
| D-001 | [e.g., "Use pre-populated sample data for onboarding"] | [e.g., 2025-03-12] | Accepted |
| D-002 | [Title] | [Date] | [Status] |
