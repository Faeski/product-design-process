---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
---

# Product Requirements Document

> This PRD defines what we are building, why, and how we will know it works. It is a living document -- update it as decisions are made. The prototype is the source of truth for "how it works"; this document is the source of truth for "why we are building it" and "what counts as done."

---

## Executive Summary

_In 3-5 sentences, explain what we are building, for whom, and why it matters now._

[e.g., "We are redesigning the onboarding experience for new users of Acme Dashboard. Currently, 43% of users abandon onboarding before completing step 3, and time-to-first-value averages 4.2 days. This redesign front-loads value demonstration by showing users a pre-populated workspace before asking them to configure anything. The goal is to increase onboarding completion from 57% to 75% and reduce time-to-first-value to under 1 day. This is our top priority for Q2 because onboarding drop-off is the #1 driver of churn in the first 30 days."]

---

## Goals and Non-Goals

### Goals

_What this project WILL accomplish. Be specific and measurable._

1. [e.g., "Increase onboarding completion rate from 57% to 75% within 8 weeks of launch."]
2. [e.g., "Reduce time-to-first-key-action from 4.2 days to less than 1 day."]
3. [e.g., "Improve 7-day retention from 32% to 45% within 12 weeks of launch."]

### Non-Goals (We Will NOT)

_Explicitly state what is out of scope. This prevents scope creep and misaligned expectations._

- **We will NOT** redesign the pricing page or signup flow. [Reason: e.g., "Signup conversion is healthy at 12%. The problem starts after signup."]
- **We will NOT** build native mobile onboarding. [Reason: e.g., "Mobile is 4% of sessions. Web-first."]
- **We will NOT** change the underlying data model or API. [Reason: e.g., "This is a front-end change only. API changes are a separate initiative."]
- **We will NOT** [other explicit exclusion]. [Reason]

---

## User Scenarios

_Describe 2-3 key user journeys. Focus on the most common and most critical paths. For multi-persona projects, define at least one scenario per persona._

### Scenario 1: [e.g., "First-time user discovers value"]

**Persona:** [e.g., "Procurement Manager (Persona A)" -- link to user-persona.md]
**User:** [e.g., "Sarah, a marketing manager who just signed up after seeing a demo."]
**Context:** [e.g., "She has 5 minutes before her next meeting and wants to see if the tool can replace her current spreadsheet workflow."]
**Journey:**
1. [e.g., "Sarah logs in for the first time and sees a pre-populated dashboard with sample campaign data."]
2. [e.g., "She recognizes the data layout matches her mental model and clicks on a campaign to explore."]
3. [e.g., "She sees a prompt: 'Want to see this with your own data?' and clicks to connect her ad platform."]
4. [e.g., "Her real data populates within 30 seconds. She bookmarks the dashboard."]

**Success looks like:** [e.g., "Sarah completes her first key action (connecting a data source) within 5 minutes of first login."]

### Scenario 2: [e.g., "Returning user who abandoned onboarding"]

**Persona:** [e.g., "VP/CFO (Persona B)" -- link to user-persona.md]
**User:** [e.g., "Tom, a user who signed up 3 days ago but never completed setup."]
**Context:** [e.g., "He received a re-engagement email and clicked through. He vaguely remembers signing up but not what the product does."]
**Journey:**
1. [e.g., "Tom lands on a personalized re-entry screen that shows what he missed."]
2. [e.g., "He sees a 30-second video walkthrough instead of the text-heavy setup he abandoned."]
3. [e.g., "He completes the remaining setup steps (2 of 5) and reaches the dashboard."]

**Success looks like:** [e.g., "Tom completes onboarding on his second visit and performs a key action within the same session."]

### Scenario 3: [e.g., "Team admin invites a colleague"]

**Persona:** [e.g., "Persona name" -- link to user-persona.md]
**User:** [Description]
**Context:** [Description]
**Journey:**
1. [Step]
2. [Step]
3. [Step]

**Success looks like:** [Description]

---

## Cross-Persona Interactions

_Scenarios where multiple personas interact within the same workflow. For example: one persona submits, another approves; one persona configures, another consumes. Skip this section for single-persona projects._

| Interaction | Persona A Role | Persona B Role | Trigger | Expected Outcome |
|-------------|---------------|---------------|---------|-----------------|
| [e.g., "Renewal approval"] | [e.g., "Procurement manager submits renewal request with vendor details and cost analysis"] | [e.g., "VP/CFO reviews request, sees spend impact, approves or requests changes"] | [e.g., "Procurement manager clicks 'Submit for Approval'"] | [e.g., "VP/CFO receives notification, reviews in approval queue, procurement manager gets notified of decision"] |
| [e.g., "Report sharing"] | [e.g., "Procurement manager generates vendor spend report"] | [e.g., "VP/CFO receives and views report in executive dashboard"] | [e.g., "Automated weekly report or manual share"] | [e.g., "VP/CFO can view report without needing to navigate the full tool"] |
| [ ] | | | | |

---

## Impact Analysis

_For non-greenfield projects: what existing features, flows, and systems are affected by this change? Skip this section for greenfield projects. For a detailed assessment, see [impact-analysis.md](impact-analysis.md)._

### Affected Features and Flows

| Existing Feature / Flow | What Changes | Impact Level | Migration Considerations |
|------------------------|-------------|-------------|-------------------------|
| [e.g., "Current onboarding wizard"] | [e.g., "Replaced entirely by new pre-populated workspace approach"] | High | [e.g., "Users mid-onboarding at launch need a transition path. Show 'new experience available' banner."] |
| [e.g., "Empty state screens"] | [e.g., "Replaced by sample data views"] | Medium | [e.g., "Update all empty state components. Verify no other features depend on empty state logic."] |
| [e.g., "Analytics tracking"] | [e.g., "New events needed for pre-populated workspace interactions"] | Low | [e.g., "Add new events alongside existing ones. Do not remove old events until migration is complete."] |
| [ ] | | | |

### Dependencies

- [e.g., "Requires sample data service to be deployed before feature flag is turned on."]
- [e.g., "Integration API team needs to support the new connection flow by [date]."]
- [e.g., "Design system update for new onboarding components must land first."]

> Full impact analysis with risk assessment and rollback plan: [impact-analysis.md](impact-analysis.md)

---

## Acceptance Criteria

_Define "done" using Given/When/Then format. These are testable statements._

### [Feature area 1: e.g., "Pre-populated workspace"]

- **Given** a new user who has just completed account creation
  **When** they log in for the first time
  **Then** they see a dashboard populated with realistic sample data (not an empty state)

- **Given** a new user viewing the sample workspace
  **When** they click on any data element
  **Then** they see a contextual prompt to connect their own data source

- **Given** a new user who connects their first data source
  **When** the connection is successful
  **Then** their real data replaces the sample data within 60 seconds

### [Feature area 2: e.g., "Re-engagement flow"]

- **Given** a user who started but did not complete onboarding
  **When** they return to the app (via email link or direct visit)
  **Then** they see a personalized re-entry screen showing their progress and next step

- **Given** [precondition]
  **When** [action]
  **Then** [expected outcome]

### [Feature area 3]

- **Given** [precondition]
  **When** [action]
  **Then** [expected outcome]

---

## Metrics Plan

_Summary of how we will measure success. See [metrics-plan.md](metrics-plan.md) for the full plan._

| Metric | Type | Baseline | Target |
|--------|------|----------|--------|
| [e.g., "Onboarding completion rate"] | North Star | [e.g., "57%"] | [e.g., "75%"] |
| [e.g., "Time to first key action"] | Input | [e.g., "4.2 days"] | [e.g., "< 1 day"] |
| [e.g., "7-day retention"] | Input | [e.g., "32%"] | [e.g., "45%"] |
| [e.g., "Support ticket volume (onboarding)"] | Guardrail | [e.g., "45/week"] | [e.g., "< 45/week"] |

> Full measurement plan, instrumentation details, and reporting cadence: [metrics-plan.md](metrics-plan.md)

---

## Risks and Mitigations

_Summary of key risks. See [risks-register.md](risks-register.md) for the full register._

| Risk | Impact | Mitigation |
|------|--------|------------|
| [e.g., "Sample data feels fake and reduces trust"] | High | [e.g., "Use industry-specific sample data sets. Validate with 5 users before launch."] |
| [e.g., "Data source connection fails for common platforms"] | High | [e.g., "Pre-test top 5 integrations. Build graceful fallback (manual CSV upload)."] |
| [e.g., "A/B test does not reach significance in time"] | Medium | [e.g., "Run for minimum 3 weeks. If inconclusive, extend to 5 weeks before deciding."] |

> Full risk register with owners, statuses, and review dates: [risks-register.md](risks-register.md)

---

## Open Questions

_Unresolved questions that need answers before or during development._

| # | Question | Owner | Deadline | Status |
|---|----------|-------|----------|--------|
| 1 | [e.g., "Which 5 data integrations do we support in Phase 1?"] | [e.g., "Engineering"] | [e.g., "Mar 21"] | Open |
| 2 | [e.g., "Do we need legal review for the sample data sets?"] | [e.g., "Legal"] | [e.g., "Mar 18"] | Open |
| 3 | [e.g., "Can the existing A/B testing infrastructure handle this test?"] | [e.g., "Data Eng"] | [e.g., "Mar 14"] | Open |
| 4 | [Question] | [Owner] | [Deadline] | Open |

---

## Stakeholder Sign-off

_Track stakeholder alignment and approval. For the full decision framework and responsibility matrix, see [stakeholder-raci.md](stakeholder-raci.md)._

| Stakeholder | Role | Status | Date | Notes |
|-------------|------|--------|------|-------|
| [e.g., "VP Product"] | Approver | Pending | | |
| [e.g., "Engineering Lead"] | Reviewer | Pending | | |
| [e.g., "Design Lead"] | Contributor | Pending | | |
| [e.g., "Legal"] | Consulted | Pending | | |
| [ ] | | | | |

---

## Agent-Ready Implementation Notes

> This section provides the context an AI coding agent (or a new engineer) needs to start building. Fill this in before handing off to implementation.

### Repository and Setup

- **Repository:** [e.g., "https://github.com/acme/dashboard"]
- **Branch strategy:** [e.g., "Create feature branch from `main`. Name: `feature/onboarding-redesign`."]
- **Setup command:** [e.g., "`pnpm install && pnpm dev`"]

### Build and Test Commands

```bash
# Install dependencies
[e.g., pnpm install]

# Run development server
[e.g., pnpm dev]

# Run tests
[e.g., pnpm test]

# Run specific test suite
[e.g., pnpm test src/features/onboarding/]

# Type check
[e.g., pnpm typecheck]

# Lint
[e.g., pnpm lint]
```

### Key Files and Directories

_Where should the agent look and where should changes go?_

- [e.g., "`src/features/onboarding/` -- All onboarding code lives here. Create new files here."]
- [e.g., "`src/components/ui/` -- Shared components. Use these, do not duplicate them."]
- [e.g., "`prisma/schema.prisma` -- Database schema. DO NOT modify without explicit approval."]
- [e.g., "`src/lib/analytics.ts` -- Analytics helper. Use this for all tracking calls."]

### Constraints and Conventions

- [e.g., "Use server components by default. Only add 'use client' when interactivity is required."]
- [e.g., "All new components must have a corresponding test file."]
- [e.g., "Use the existing design tokens in `src/styles/tokens.ts`. Do not hardcode colors or spacing."]
- [e.g., "API calls go through `src/lib/api-client.ts`. Do not use `fetch` directly."]

### Feature Flags

- [e.g., "This feature is behind the `onboarding-v2` feature flag. See `src/lib/feature-flags.ts`."]
- [e.g., "Toggle in [LaunchDarkly / environment variable / config file]."]

---

## Evidence References

_Link to all research and data that informed this PRD._

- [Stakeholder brief](link) -- Summary of research findings
- [User interview transcripts](link) -- Raw interview data
- [Analytics dashboard](link) -- Onboarding funnel data
- [Prototype test results](link) -- Usability test findings
- [Competitor analysis](link) -- How competitors handle onboarding
- [Decision log](decision-log.md) -- Decisions made during definition

---

## Revision History

| Date | Author | Change |
|------|--------|--------|
| [YYYY-MM-DD] | [Name] | Initial draft |
| [YYYY-MM-DD] | [Name] | [Description of change] |
