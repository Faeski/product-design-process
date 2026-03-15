---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
---

# Metrics Plan

> Define how we measure success before we start building. This document answers: "How will we know this worked?" Every metric must have a baseline, a target, and a plan for how to measure it.

---

## North Star Metric

_The single most important metric for this project. If you could only look at one number, this is it._

| Field | Value |
|-------|-------|
| **Metric** | [e.g., "Onboarding completion rate"] |
| **Definition** | [e.g., "Percentage of users who complete all required onboarding steps within 7 days of account creation. A 'completed' user has: (1) connected at least one data source, (2) viewed the dashboard, and (3) performed at least one key action."] |
| **Current Baseline** | [e.g., "57% (measured over the last 90 days, n=3,600 signups)"] |
| **Target** | [e.g., "75%"] |
| **Timeframe** | [e.g., "Achieve within 8 weeks of full rollout"] |
| **Data Source** | [e.g., "Mixpanel event: `onboarding_completed` / `account_created`"] |

> Why this metric? [e.g., "Onboarding completion is the strongest leading indicator of 30-day retention (r=0.72). Improving this metric directly impacts our top-line growth."]

---

## Input Metrics

_Metrics that drive the North Star. Improving these should move the North Star. List 2-3._

### Input Metric 1: [e.g., "Time to first key action"]

| Field | Value |
|-------|-------|
| **Definition** | [e.g., "Median time (in hours) between account creation and the user's first key action (connecting a data source, creating a report, or sharing a dashboard)."] |
| **Current Baseline** | [e.g., "4.2 days (100.8 hours)"] |
| **Target** | [e.g., "< 24 hours"] |
| **Hypothesis** | [e.g., "By showing a pre-populated workspace, users will understand the product's value faster and take their first action sooner."] |
| **Data Source** | [e.g., "Mixpanel: time between `account_created` and first occurrence of `key_action_performed`"] |

### Input Metric 2: [e.g., "Step 3 drop-off rate"]

| Field | Value |
|-------|-------|
| **Definition** | [e.g., "Percentage of users who reach onboarding step 3 but do not proceed to step 4."] |
| **Current Baseline** | [e.g., "43%"] |
| **Target** | [e.g., "< 20%"] |
| **Hypothesis** | [e.g., "Step 3 (data source connection) is where most users get stuck. Providing a skip option with sample data will reduce this drop-off."] |
| **Data Source** | [e.g., "Mixpanel funnel: `onboarding_step_3_viewed` --> `onboarding_step_4_viewed`"] |

### Input Metric 3 (optional): [Metric name]

| Field | Value |
|-------|-------|
| **Definition** | [Definition] |
| **Current Baseline** | [Baseline] |
| **Target** | [Target] |
| **Hypothesis** | [Hypothesis] |
| **Data Source** | [Data source] |

---

## Guardrail Metrics

_Metrics that should NOT get worse as a result of this project. These protect against unintended negative effects. List 1-2._

### Guardrail 1: [e.g., "Support ticket volume (onboarding-related)"]

| Field | Value |
|-------|-------|
| **Definition** | [e.g., "Weekly count of support tickets tagged with 'onboarding' or 'setup'."] |
| **Current Baseline** | [e.g., "45 tickets per week"] |
| **Acceptable Range** | [e.g., "Must stay at or below 45/week. An increase of 20%+ triggers review."] |
| **Why This Matters** | [e.g., "If the new onboarding creates confusion, it will surface as support tickets. A spike means we introduced new problems while solving old ones."] |
| **Data Source** | [e.g., "Zendesk: tickets with tag `onboarding` created in the last 7 days"] |

### Guardrail 2: [e.g., "Page load time (onboarding flow)"]

| Field | Value |
|-------|-------|
| **Definition** | [e.g., "P95 page load time for onboarding screens."] |
| **Current Baseline** | [e.g., "1.8 seconds"] |
| **Acceptable Range** | [e.g., "Must stay under 3 seconds. Pre-populated workspace with sample data must not significantly degrade performance."] |
| **Why This Matters** | [e.g., "Loading sample data could slow down the initial experience. If the page is slow, users may leave before seeing the value."] |
| **Data Source** | [e.g., "Datadog RUM: p95 load time for `/onboarding/*` routes"] |

---

## Measurement Plan

_How will we actually collect and compute each metric? Be specific about instrumentation._

### Events to Instrument

| Event Name | Trigger | Properties | Status |
|------------|---------|------------|--------|
| [e.g., `account_created`] | [e.g., "User completes signup form"] | [e.g., "user_id, signup_source, timestamp"] | [e.g., "Already exists"] |
| [e.g., `onboarding_step_viewed`] | [e.g., "User views an onboarding step"] | [e.g., "user_id, step_number, step_name, variant (A/B), timestamp"] | [e.g., "Needs update -- add variant property"] |
| [e.g., `onboarding_completed`] | [e.g., "User completes all onboarding steps"] | [e.g., "user_id, total_time_seconds, steps_completed, variant, timestamp"] | [e.g., "Needs to be created"] |
| [e.g., `key_action_performed`] | [e.g., "User performs first key action"] | [e.g., "user_id, action_type, time_since_signup_hours, timestamp"] | [e.g., "Already exists"] |
| [e.g., `sample_data_interacted`] | [e.g., "User clicks on a sample data element"] | [e.g., "user_id, element_type, timestamp"] | [e.g., "Needs to be created"] |

### A/B Test Setup (if applicable)

- **Test name:** [e.g., "onboarding-v2-test"]
- **Variants:** [e.g., "Control (current onboarding) vs. Treatment (pre-populated workspace)"]
- **Traffic split:** [e.g., "50/50"]
- **Assignment method:** [e.g., "User-level, sticky, via LaunchDarkly"]
- **Minimum sample size:** [e.g., "1,200 users per variant (for 10% MDE at 95% confidence)"]
- **Estimated duration:** [e.g., "2-3 weeks at current signup rate of ~120/day"]
- **Primary metric for significance:** [e.g., "Onboarding completion rate"]

### Dashboard

- **Location:** [e.g., "Mixpanel board: 'Onboarding V2 Experiment'"]
- **Owner:** [e.g., "Data team -- [Name]"]
- **Access:** [e.g., "Shared with product, design, and engineering leads"]

---

## Reporting Cadence

| What | Frequency | Owner | Audience |
|------|-----------|-------|----------|
| [e.g., "Metric snapshot (dashboard check)"] | [e.g., "Daily during experiment"] | [e.g., "Data Analyst"] | [e.g., "Project team (Slack channel)"] |
| [e.g., "Weekly metrics summary"] | [e.g., "Weekly"] | [e.g., "Product Manager"] | [e.g., "Stakeholders"] |
| [e.g., "Full analysis and recommendation"] | [e.g., "At experiment conclusion"] | [e.g., "Data Analyst + PM"] | [e.g., "Leadership"] |

---

## Review Triggers

_When should we stop, reassess, or escalate? Define these thresholds upfront._

| Trigger | Condition | Action |
|---------|-----------|--------|
| [e.g., "Early negative signal"] | [e.g., "Guardrail metric (support tickets) increases by 30%+ in the first week"] | [e.g., "Pause experiment. Investigate root cause. Decide whether to fix and continue or roll back."] |
| [e.g., "Insufficient data"] | [e.g., "After 3 weeks, primary metric has not reached statistical significance"] | [e.g., "Extend experiment by 2 weeks. If still inconclusive at 5 weeks, make a qualitative decision."] |
| [e.g., "Strong positive signal"] | [e.g., "Primary metric improves by 20%+ with 95% confidence before planned end date"] | [e.g., "Consider early rollout. Validate guardrail metrics are stable before proceeding."] |
| [e.g., "External disruption"] | [e.g., "Major product launch or marketing campaign starts during experiment"] | [e.g., "Flag potential data contamination. Extend experiment or segment analysis."] |

---

## Appendix: Metric Definitions Glossary

_For clarity, define any terms that could be ambiguous._

| Term | Definition |
|------|-----------|
| [e.g., "Key action"] | [e.g., "Any of: connecting a data source, creating a report, sharing a dashboard, or inviting a team member."] |
| [e.g., "Completed onboarding"] | [e.g., "User has reached the dashboard state with at least one data source connected. Viewing sample data alone does not count as completion."] |
| [e.g., "Active user"] | [e.g., "A user who has logged in and performed at least one action in the last 7 days."] |
