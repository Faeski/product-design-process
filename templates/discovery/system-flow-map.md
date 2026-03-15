---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
phase: discovery
template: system-flow-map
---

# System Flow Map

> This document maps the end-to-end flow across all personas in the system.
> It reveals handoffs, dependencies, shared touchpoints, and conflict points that are invisible when you look at one persona at a time.
> Use this map to design for the system, not just the individual user.
>
> Every flow step and handoff must trace back to evidence. If you are guessing how personas interact, you need more research.

---

## Overview

> What system or feature does this map cover? Which personas are involved? What is the scope boundary?

**System / Feature:** [e.g., Vendor onboarding process from request to first invoice payment]

**Personas Involved:**

| Persona | Role in This System |
|---------|---------------------|
| [e.g., Requesting Manager] | [e.g., Initiates vendor request, provides business justification] |
| [e.g., Procurement Manager] | [e.g., Evaluates vendors, negotiates terms, manages contracts] |
| [e.g., Finance Approver] | [e.g., Approves budget, processes payments] |
| [ ] | [ ] |

**Scope Boundary:** [e.g., This map covers from initial vendor request through first invoice payment. It does NOT cover ongoing vendor management or renewal.]

**Evidence Base:** [e.g., Derived from interviews P01-P10, workflow walkthroughs with 6 participants, support ticket analysis]

---

## Persona Summary

> Quick reference for each persona's role in the system and their primary flow path.

| Persona | Role in System | Primary Flow | Key Goal | Key Frustration | Evidence |
|---------|----------------|--------------|----------|-----------------|----------|
| [e.g., Requesting Manager] | [e.g., Initiator -- creates the vendor request] | [e.g., Submit request -> Provide justification -> Wait for approval -> Receive vendor access] | [e.g., Get the vendor set up fast so work can proceed] | [e.g., "I submitted the request 3 weeks ago and still have no update"] | [e.g., P02, P06, E004] |
| [e.g., Procurement Manager] | [e.g., Coordinator -- evaluates, negotiates, and onboards] | [e.g., Receive request -> Evaluate vendor -> Negotiate terms -> Create contract -> Hand off to Finance] | [e.g., Ensure compliance and get good terms without bottlenecking the team] | [e.g., "I'm the bottleneck and everyone blames me for delays"] | [e.g., P03, P05, E008] |
| [e.g., Finance Approver] | [e.g., Gatekeeper -- approves budget and processes payment] | [e.g., Receive contract -> Validate budget -> Approve -> Process first payment] | [e.g., Ensure spend is within budget and properly categorized] | [e.g., "I get contracts with missing information and have to chase people down"] | [e.g., P04, E011] |
| [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |

---

## System Flow

> The end-to-end flow across all personas. Each step shows who does what, what triggers it, and what it produces.
> Read this as the story of how work moves through the system.

| Step | Persona | Action | Input / Trigger | Output / Result | Next Step | Evidence |
|------|---------|--------|-----------------|-----------------|-----------|----------|
| 1 | [e.g., Requesting Manager] | [e.g., Submits vendor request form with business justification] | [e.g., Business need identified -- team needs a new design tool] | [e.g., Vendor request created in system/email] | 2 | [e.g., P02, P06] |
| 2 | [e.g., Procurement Manager] | [e.g., Reviews request and checks against existing vendor list] | [e.g., New vendor request received] | [e.g., Decision: new evaluation needed OR existing vendor can fulfill] | 3 or 5 | [e.g., P03, E008] |
| 3 | [e.g., Procurement Manager] | [e.g., Contacts vendor, requests proposal, evaluates against criteria] | [e.g., Approved request for new vendor] | [e.g., Vendor evaluation complete, terms negotiated] | 4 | [e.g., P03, P05] |
| 4 | [e.g., Procurement Manager] | [e.g., Creates contract and sends to Finance for budget approval] | [e.g., Negotiated terms and signed vendor agreement] | [e.g., Contract package submitted to Finance] | 5 | [e.g., P03, E011] |
| 5 | [e.g., Finance Approver] | [e.g., Validates budget allocation and approves spend] | [e.g., Contract package from Procurement] | [e.g., Budget approved, payment authorized] | 6 | [e.g., P04, E011] |
| 6 | [e.g., Procurement Manager] | [e.g., Completes vendor setup and notifies Requesting Manager] | [e.g., Finance approval received] | [e.g., Vendor active, access credentials shared] | 7 | [e.g., P03] |
| 7 | [e.g., Requesting Manager] | [e.g., Begins using vendor service] | [e.g., Vendor access credentials received] | [e.g., Team operational with new vendor] | -- | [e.g., P02, P06] |
| | [ ] | [ ] | [ ] | [ ] | | [ ] |
| | [ ] | [ ] | [ ] | [ ] | | [ ] |
| | [ ] | [ ] | [ ] | [ ] | | [ ] |

---

## Handoff Points

> Every time work passes from one persona to another is a potential failure point.
> Document each handoff, what gets passed, and where friction exists.

| # | From Persona | To Persona | Handoff Trigger | Data Passed | Potential Friction | Evidence |
|---|--------------|------------|-----------------|-------------|--------------------| ---------|
| H1 | [e.g., Requesting Manager] | [e.g., Procurement Manager] | [e.g., Vendor request submitted] | [e.g., Business justification, vendor name, budget estimate, urgency] | [e.g., Requests often lack required info, forcing Procurement to chase details] | [e.g., P03: "Half the requests I get are missing the budget estimate"] |
| H2 | [e.g., Procurement Manager] | [e.g., Finance Approver] | [e.g., Contract ready for budget approval] | [e.g., Contract terms, annual cost, budget category, department] | [e.g., Finance needs budget category but Procurement doesn't always know which to use] | [e.g., P04, E011] |
| H3 | [e.g., Procurement Manager] | [e.g., Requesting Manager] | [e.g., Vendor setup complete] | [e.g., Access credentials, contract summary, support contact] | [e.g., Requester doesn't know the status until Procurement manually notifies them] | [e.g., P02: "I just wait and hope someone emails me"] |
| H4 | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |

---

## Shared Touchpoints

> Places where multiple personas interact with the same screen, feature, data, or process.
> These are where competing needs create design tension.

| Touchpoint | Personas Involved | Each Persona's Purpose | Potential Conflicts | Evidence |
|------------|-------------------|------------------------|---------------------|----------|
| [e.g., Vendor request form] | [e.g., Requesting Manager (fills it out), Procurement Manager (reviews it)] | [e.g., Requester: submit quickly with minimal effort. Procurement: get all required info to evaluate.] | [e.g., Requester wants a simple form; Procurement needs detailed fields. Simplicity vs. completeness.] | [e.g., P02, P03, E004, E008] |
| [e.g., Vendor status dashboard] | [e.g., Requesting Manager (checks status), Procurement Manager (updates status), Finance (views spend)] | [e.g., Requester: "Where is my request?" Procurement: manage pipeline. Finance: track spend.] | [e.g., Different information density needs. Requester wants simplicity; Finance wants detail.] | [e.g., P02, P03, P04] |
| [ ] | [ ] | [ ] | [ ] | [ ] |

---

## Dependency Map

> What does each persona depend on from other personas to do their work?

| Persona | Depends On | What They Need | What Happens If Missing | Evidence |
|---------|------------|----------------|-------------------------|----------|
| [e.g., Procurement Manager] | [e.g., Requesting Manager] | [e.g., Complete vendor request with business justification and budget estimate] | [e.g., Evaluation stalls -- Procurement has to chase information, adding 3-5 days to the process] | [e.g., P03, E008] |
| [e.g., Finance Approver] | [e.g., Procurement Manager] | [e.g., Contract with accurate cost breakdown and correct budget category] | [e.g., Finance rejects or delays approval, requesting corrections] | [e.g., P04, E011] |
| [e.g., Requesting Manager] | [e.g., Procurement Manager] | [e.g., Timely status updates and vendor access credentials] | [e.g., Requester works around procurement -- contacts vendor directly, creating compliance risk] | [e.g., P02, P06, E019] |
| [ ] | [ ] | [ ] | [ ] | [ ] |

---

## Conflict Points

> Where do persona needs directly clash? These are your hardest design problems and your biggest opportunities.

| # | Conflict | Persona A Need | Persona B Need | Current Resolution | Proposed Resolution | Evidence |
|---|----------|---------------|----------------|--------------------|--------------------|----------|
| C1 | [e.g., Speed vs. thoroughness in vendor evaluation] | [e.g., Requesting Manager: "I need this vendor set up this week"] | [e.g., Procurement Manager: "I need 2-3 weeks to properly evaluate and negotiate"] | [e.g., Requesters escalate to leadership, Procurement feels pressured to skip steps] | [e.g., Tiered evaluation: fast-track for low-risk/low-cost vendors, full evaluation for high-risk/high-cost] | [e.g., P02, P03, P05, E004, E008] |
| C2 | [e.g., Information detail level on shared dashboard] | [e.g., Requesting Manager: "I just want to know if it's approved yet"] | [e.g., Finance Approver: "I need full cost breakdown, budget category, and approval chain"] | [e.g., One-size-fits-all view that satisfies neither] | [e.g., Role-based views with appropriate detail level] | [e.g., P02, P04] |
| C3 | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |

---

## Data Flow

> How does data move between personas? What does each persona create, and what do they consume?

### Data Created by Each Persona

| Persona | Data They Create | Format | Where It Lives | Who Consumes It |
|---------|------------------|--------|----------------|-----------------|
| [e.g., Requesting Manager] | [e.g., Vendor request, business justification, urgency level] | [e.g., Form submission / email] | [e.g., Email inbox / shared drive] | [e.g., Procurement Manager] |
| [e.g., Procurement Manager] | [e.g., Vendor evaluation, negotiated terms, contract, status updates] | [e.g., Spreadsheet, email, PDF contracts] | [e.g., Google Drive, email] | [e.g., Finance Approver, Requesting Manager] |
| [e.g., Finance Approver] | [e.g., Budget approval, payment records, spend categorization] | [e.g., ERP system entries, email approval] | [e.g., NetSuite / QuickBooks] | [e.g., Procurement Manager, Leadership] |
| [ ] | [ ] | [ ] | [ ] | [ ] |

### Data Gaps

> Data that should flow between personas but currently does not, or gets lost in transit.

| Missing Data | From | To | Impact | Evidence |
|-------------|------|-----|--------|----------|
| [e.g., Real-time request status] | [e.g., Procurement Manager] | [e.g., Requesting Manager] | [e.g., Requesters have no visibility, leading to repeated status inquiries and workarounds] | [e.g., P02, P06] |
| [e.g., Budget category mapping] | [e.g., Finance Approver] | [e.g., Procurement Manager] | [e.g., Procurement guesses at budget categories, causing Finance rejections] | [e.g., P03, P04] |
| [ ] | [ ] | [ ] | [ ] | [ ] |

---

## Evidence Sources

> All research, interviews, analytics, and documents that informed this map.

| Source ID | Type | Description | Date |
|-----------|------|-------------|------|
| P01 | Interview | [Role, company context] | YYYY-MM-DD |
| P02 | Interview | [Role, company context] | YYYY-MM-DD |
| P03 | Interview | [Role, company context] | YYYY-MM-DD |
| P04 | Interview | [Role, company context] | YYYY-MM-DD |
| E001 | Evidence Log | [Description] | YYYY-MM-DD |
| [Analytics] | Analytics | [Description of data source] | YYYY-MM-DD |
| [Other] | [Type] | [Description] | YYYY-MM-DD |

---

## Open Questions

> Unresolved questions about the system flow that need further investigation.

| # | Question | Why It Matters | Suggested Method to Answer |
|---|----------|----------------|---------------------------|
| OQ1 | [e.g., Are there informal handoffs between personas that we have not captured?] | [e.g., Unmapped handoffs are where things break down] | [e.g., Shadow 2-3 end-to-end vendor onboarding processes] |
| OQ2 | [e.g., How does the flow change for urgent/emergency vendor requests?] | [e.g., Edge cases often reveal the most friction] | [e.g., Interview participants about their last urgent request] |
| OQ3 | [e.g., Are there personas we are missing? (e.g., IT security review, legal review)] | [e.g., Missing personas mean missing handoffs and unaccounted-for delays] | [e.g., Ask current personas who else is involved in the process] |
| OQ4 | [ ] | [ ] | [ ] |
| OQ5 | [ ] | [ ] | [ ] |
