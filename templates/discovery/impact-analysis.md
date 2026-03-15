---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
phase: discovery
template: impact-analysis
---

# Impact Analysis

> This document is for non-greenfield projects: new features added to an existing system, redesigns of existing flows, or optimizations of current functionality.
> Before you design what is changing, you must understand what exists today, who relies on it, and what breaks if you get it wrong.
> Skipping this step is how teams ship "improvements" that create new problems worse than the ones they solved.
>
> Every impact assessment must trace back to evidence. If you are guessing at the blast radius, you need more research.

---

## Current State Overview

> What exists today? Describe the system, feature, or area being changed in enough detail that someone unfamiliar could understand it.

**System / Feature Area:** [e.g., Vendor dashboard -- the main screen procurement managers use to track vendor status, contracts, and spend]

**What It Does Today:** [e.g., Displays a table of all vendors with columns for name, contract status, annual spend, renewal date, and owner. Supports filtering by status and department. Links to individual vendor detail pages.]

**Who Uses It:**

| Persona | How They Use It | Frequency | Evidence |
|---------|----------------|-----------|----------|
| [e.g., Procurement Manager] | [e.g., Daily work hub -- checks vendor status, updates contracts, prepares reports] | [e.g., Daily, 30-60 min/day] | [e.g., P03, P05, analytics] |
| [e.g., Department Head] | [e.g., Checks status of their department's vendor requests] | [e.g., Weekly, 5-10 min] | [e.g., P02, P06] |
| [e.g., Finance Team] | [e.g., Reviews spend data for budget tracking] | [e.g., Monthly, during close] | [e.g., P04] |
| [ ] | [ ] | [ ] | [ ] |

**How Long It Has Existed:** [e.g., Launched 18 months ago, last significant update 6 months ago]

**Known History:** [e.g., Originally built as a simple list view. Filtering added in v2. Export-to-CSV added based on customer request. The detail page was redesigned once but the dashboard itself has not changed since launch.]

---

## Current Metrics

> What do we know about how this area performs today? Baseline metrics are essential for measuring whether the change is an improvement.

| Metric | Current Value | Trend (improving/stable/declining) | Data Source | Notes |
|--------|---------------|-------------------------------------|-------------|-------|
| [e.g., Daily active users on dashboard] | [e.g., 1,240] | [e.g., Stable] | [e.g., Product analytics] | [e.g., Consistent over last 90 days] |
| [e.g., Average time on dashboard per session] | [e.g., 4.2 min] | [e.g., Increasing] | [e.g., Product analytics] | [e.g., May indicate difficulty finding information] |
| [e.g., Filter usage rate] | [e.g., 23% of sessions] | [e.g., Stable] | [e.g., Product analytics] | [e.g., Low -- most users scroll instead of filter] |
| [e.g., CSV export usage] | [e.g., 89 exports/month] | [e.g., Increasing] | [e.g., Product analytics] | [e.g., Workaround signal -- users need data in a format the dashboard does not provide] |
| [e.g., Support tickets related to dashboard] | [e.g., 12/month] | [e.g., Stable] | [e.g., Zendesk] | [e.g., Most common: "How do I find X vendor?" and "Export is missing columns"] |
| [e.g., Task completion rate (find vendor renewal date)] | [e.g., 67% within 30 sec] | [e.g., Not previously measured] | [e.g., Usability test, n=8] | [e.g., Baseline established for this project] |
| [ ] | [ ] | [ ] | [ ] | [ ] |

---

## Current User Flows

> How do users currently interact with this area? Document the actual flow (not the intended flow) per persona.

### [Persona 1: e.g., Procurement Manager]

**Primary flow:** [e.g., Check vendor renewal dates for this quarter]

1. [e.g., Open dashboard, scroll to find vendors with upcoming renewals (no sort-by-renewal-date option)]
2. [e.g., Mentally note which renewals are coming up, or copy to a separate spreadsheet]
3. [e.g., Click into each vendor detail page to check contract terms]
4. [e.g., Return to dashboard and repeat for next vendor]

**Pain points in current flow:**
- [e.g., No way to sort or filter by renewal date -- must scan the entire list]
- [e.g., No bulk view of upcoming renewals -- must click into each vendor individually]
- [e.g., Renewal date column is hard to read (shows full date, no "days until" indicator)]

**Workarounds:**
- [e.g., Exports CSV weekly and uses spreadsheet pivot table to track renewals]
- [e.g., Sets manual calendar reminders for important renewals]

**Evidence:** [e.g., P03, P05, E001, E009]

### [Persona 2: e.g., Department Head]

**Primary flow:** [e.g., Check status of a vendor request they submitted]

1. [e.g., Open dashboard, use browser Ctrl+F to search for vendor name]
2. [e.g., Check status column -- often unclear what "In Progress" means]
3. [e.g., If unclear, Slack the Procurement Manager to ask for update]

**Pain points in current flow:**
- [e.g., No search functionality -- relies on browser find]
- [e.g., Status labels are vague ("In Progress" could mean evaluation, negotiation, or contract review)]
- [e.g., No notification when status changes -- must check manually]

**Workarounds:**
- [e.g., Asks Procurement Manager directly via Slack instead of using the dashboard]

**Evidence:** [e.g., P02, P06, E004]

### [Additional Persona]

_Copy the format above for each additional persona._

---

## Known Issues

> Documented problems with the current system. These are the reasons we are considering a change.

| # | Issue | Severity (Critical/High/Med/Low) | Frequency | Source | Status |
|---|-------|----------------------------------|-----------|--------|--------|
| KI1 | [e.g., No search or sort by renewal date -- users cannot find upcoming renewals efficiently] | High | [e.g., Daily for power users] | [e.g., User interviews P03, P05; 4 support tickets/month] | [e.g., Unresolved -- primary driver for this project] |
| KI2 | [e.g., Status labels are ambiguous -- "In Progress" means different things to different personas] | Med | [e.g., Weekly -- generates Slack questions] | [e.g., User interviews P02, P06; support tickets] | [e.g., Unresolved] |
| KI3 | [e.g., CSV export missing key columns (contract value, department)] | Med | [e.g., Monthly -- during reporting cycles] | [e.g., 3 support tickets/month, P03 interview] | [e.g., Unresolved] |
| KI4 | [e.g., Dashboard loads slowly with 500+ vendors (3-5 sec)] | Low | [e.g., Affects ~15% of accounts] | [e.g., Performance monitoring, 2 support tickets] | [e.g., Known, deprioritized] |
| KI5 | [ ] | [ ] | [ ] | [ ] | [ ] |

---

## What's Changing

> Summary of the proposed changes and the rationale behind them.

**Change Summary:** [e.g., Redesign the vendor dashboard to add search, sortable columns, renewal-focused views, and granular status labels. The goal is to reduce time-to-find-information and eliminate the CSV export workaround for renewal tracking.]

**Why Now:** [e.g., Renewal tracking was the #1 pain point in discovery research (8/10 interviewees). Support ticket volume for dashboard-related issues is growing. Competitor X launched a renewal-focused dashboard 3 months ago and is winning deals on this feature.]

**Change Type:** [New feature | Redesign | Optimization | Migration]

**Proposed Changes:**

| # | Change | Rationale | Evidence |
|---|--------|-----------|----------|
| 1 | [e.g., Add search bar to dashboard] | [e.g., Users currently use browser Ctrl+F -- need native search with smart matching] | [e.g., P02, P06, KI2] |
| 2 | [e.g., Add sortable columns including renewal date] | [e.g., #1 requested feature -- users need to see upcoming renewals at a glance] | [e.g., P03, P05, KI1] |
| 3 | [e.g., Replace generic status labels with granular workflow stages] | [e.g., "In Progress" is meaningless -- users need to know exactly where a vendor is in the process] | [e.g., P02, P06, KI2] |
| 4 | [e.g., Add "Upcoming Renewals" quick-filter view] | [e.g., Most common task -- should be one click, not a multi-step process] | [e.g., P03, E001, E009] |
| 5 | [ ] | [ ] | [ ] |

---

## Impact Assessment

> What existing features, flows, and integrations are affected by the proposed changes?

| # | Area / Feature | Type of Impact | Description | Affected Personas | Risk Level | Mitigation |
|---|----------------|---------------|-------------|-------------------|------------|------------|
| IA1 | [e.g., Dashboard table layout] | Breaking | [e.g., Column order and available columns are changing. Users who memorized column positions will need to relearn.] | [e.g., Procurement Manager, Department Head, Finance] | Med | [e.g., Maintain familiar column names. Add "Customize columns" option. Provide in-app tooltip on first visit.] |
| IA2 | [e.g., CSV export] | Modifying | [e.g., Export will include new columns and reflect new status labels. Any downstream spreadsheets or automations will break.] | [e.g., Procurement Manager, Finance] | High | [e.g., Announce column changes 2 weeks before launch. Offer "legacy export" format for 90 days.] |
| IA3 | [e.g., Status labels] | Breaking | [e.g., "In Progress" will be replaced with 4 granular statuses. Any integrations or reports keyed to old status values will break.] | [e.g., All personas, API consumers] | High | [e.g., Map old statuses to new ones. Update API documentation. Notify API consumers 30 days before change.] |
| IA4 | [e.g., Dashboard URL / bookmarks] | Extending | [e.g., New views will add URL parameters. Existing bookmarks to the dashboard will still work.] | [e.g., All personas] | Low | [e.g., No action needed -- backward compatible.] |
| IA5 | [e.g., Mobile responsive layout] | Modifying | [e.g., New columns and search bar will need mobile adaptation. Current mobile layout is minimal but functional.] | [e.g., Department Heads who check on mobile] | Med | [e.g., Design mobile-specific layout. Test on top 3 device sizes.] |
| IA6 | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |

---

## Dependencies

> Technical, organizational, and data dependencies that must be addressed for this change to succeed.

| # | Dependency | Type | Owner | Status | Risk if Not Addressed |
|---|-----------|------|-------|--------|----------------------|
| D1 | [e.g., Search indexing infrastructure for vendor data] | Technical | [e.g., Backend team] | [e.g., Not started -- needs scoping] | [e.g., Search feature cannot ship without this. Critical path.] |
| D2 | [e.g., Updated status values in the database schema] | Technical | [e.g., Backend team] | [e.g., RFC drafted] | [e.g., New statuses cannot display until schema migration is complete.] |
| D3 | [e.g., Customer Success team trained on new UI before launch] | Team | [e.g., CS Lead] | [e.g., Not started] | [e.g., Support tickets will spike if CS cannot guide customers through changes.] |
| D4 | [e.g., API consumers notified of status label changes] | Team | [e.g., Developer Relations] | [e.g., Not started] | [e.g., Breaking change for API consumers. Must notify 30+ days before launch.] |
| D5 | [e.g., Analytics events updated for new interactions] | Data | [e.g., Data team] | [e.g., Not started] | [e.g., Cannot measure success of the redesign without updated event tracking.] |
| D6 | [e.g., Design system components for search bar and sortable table headers] | Technical | [e.g., Design systems team] | [e.g., Components exist but need updates] | [e.g., Delays if custom components are needed.] |
| D7 | [ ] | [ ] | [ ] | [ ] | [ ] |

---

## Migration Considerations

> For changes that affect existing users, what transition path is needed?

**Migration Required:** [Yes / No / Partial]

**Migration Strategy:** [e.g., Feature flag rollout -- 10% of users first, then 50%, then 100% over 3 weeks]

| Consideration | Plan | Owner | Timeline |
|---------------|------|-------|----------|
| [e.g., Data migration (status label mapping)] | [e.g., Automated migration script: "In Progress" -> map to most appropriate new status based on workflow stage data] | [e.g., Backend team] | [e.g., Before feature flag activation] |
| [e.g., User communication] | [e.g., In-app banner 1 week before, changelog post, email to power users] | [e.g., Product Marketing] | [e.g., 1 week before rollout] |
| [e.g., Feature flagging] | [e.g., Ship behind flag, enable for internal users first, then beta group, then GA] | [e.g., Engineering Lead] | [e.g., 3-week rollout] |
| [e.g., Gradual rollout] | [e.g., 10% -> 50% -> 100% with monitoring at each stage] | [e.g., Engineering Lead + Product Lead] | [e.g., 3 weeks post-flag activation] |
| [e.g., Training / documentation] | [e.g., Update help center articles, create "What's New" guide, brief CS team] | [e.g., CS Lead + Technical Writer] | [e.g., Before 50% rollout] |
| [e.g., Legacy support period] | [e.g., Old CSV export format available for 90 days via "Export (legacy)" option] | [e.g., Engineering] | [e.g., 90 days post-launch] |
| [ ] | [ ] | [ ] | [ ] |

---

## Rollback Plan

> If the change causes problems, how do we revert? Define this before launch, not during an incident.

**Rollback Mechanism:** [e.g., Feature flag -- disable flag to revert all users to previous dashboard instantly]

**Rollback Trigger:** [e.g., Error rate exceeds 2%, support ticket volume doubles, or critical usability issue reported by 5+ users within 48 hours]

**Rollback Steps:**

1. [e.g., Disable feature flag (immediate -- all users revert to old dashboard)]
2. [e.g., Notify CS team that rollback has occurred]
3. [e.g., Post incident update in #product-updates Slack channel]
4. [e.g., Investigate root cause and create fix plan before re-enabling]

**Data Rollback:** [e.g., Status label migration is backward-compatible -- old labels are preserved in a legacy column for 90 days. Rollback does not lose data.]

**What Cannot Be Rolled Back:** [e.g., If users have already created vendors with new status labels, those labels will revert to "In Progress" on rollback. Acceptable for short rollback periods.]

---

## What We're NOT Changing

> Explicitly list what stays the same. This prevents scope creep and sets clear expectations.

- [e.g., Individual vendor detail pages -- not in scope for this project]
- [e.g., Vendor onboarding workflow -- separate initiative planned for Q4]
- [e.g., Permissions model -- who can see/edit what remains unchanged]
- [e.g., API endpoints other than status values -- existing integrations (except status) are unaffected]
- [e.g., Mobile app -- this redesign is web only. Mobile will follow in a separate project.]
- [ ]
- [ ]

---

## Documentation Sources

> Where does current system documentation live? Centralize references here so nothing is missed.

| Document | Location | Last Updated | Notes |
|----------|----------|--------------|-------|
| [e.g., Dashboard product spec] | [e.g., Notion -- link] | [e.g., 2025-06-15] | [e.g., Original spec, some details outdated] |
| [e.g., Dashboard Figma designs] | [e.g., Figma -- link] | [e.g., 2025-09-01] | [e.g., Current production designs] |
| [e.g., API documentation for vendor endpoints] | [e.g., docs.example.com/api/vendors] | [e.g., 2025-08-20] | [e.g., Includes status field values] |
| [e.g., Analytics dashboard for vendor feature usage] | [e.g., Amplitude -- link] | [e.g., Live] | [e.g., Event tracking for dashboard interactions] |
| [e.g., Support ticket analysis] | [e.g., Google Sheet -- link] | [e.g., 2025-10-01] | [e.g., Categorized tickets for last 6 months] |
| [ ] | [ ] | [ ] | [ ] |

---

## Evidence References

> Links to research, interviews, and analysis that informed this impact analysis.

| Source ID | Type | Description | Date |
|-----------|------|-------------|------|
| P01 | Interview | [Role, company context] | YYYY-MM-DD |
| P02 | Interview | [Role, company context] | YYYY-MM-DD |
| P03 | Interview | [Role, company context] | YYYY-MM-DD |
| E001 | Evidence Log | [Description] | YYYY-MM-DD |
| E009 | Evidence Log | [Description] | YYYY-MM-DD |
| [Analytics] | Analytics | [Description of data source] | YYYY-MM-DD |
| [Support] | Support Tickets | [Description of analysis] | YYYY-MM-DD |
| [Other] | [Type] | [Description] | YYYY-MM-DD |
