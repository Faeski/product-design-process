---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
---

# Prototype Brief

## Objective

_What are we testing? Focus on the question we want to answer, not the thing we want to build._

- **Primary question:** [e.g., "Can users complete the onboarding flow without external help?"]
- **Secondary question(s):**
  - [e.g., "Do users understand the value proposition before signing up?"]

> Tip: Frame objectives as hypotheses to test, not features to ship.

---

## Core Flow

_Identify key user journeys to prototype. Keep it focused. For multi-persona projects, define a separate flow per persona and note where flows intersect._

### Flow 1: [Flow Name]

- **Persona:** [e.g., "Procurement Manager (Persona A)"]

1. [Step 1 - e.g., "User lands on homepage"]
2. [Step 2 - e.g., "User clicks 'Get Started'"]
3. [Step 3 - e.g., "User completes profile setup"]
4. [Step 4 - e.g., "User reaches dashboard"]

**Entry point:** [Where does the user start?]
**Exit point:** [What does "done" look like?]

### Flow 2: [Flow Name]

- **Persona:** [e.g., "VP/CFO (Persona B)"]

1. [Step 1 - e.g., "User receives notification email"]
2. [Step 2 - e.g., "User clicks through to approval screen"]
3. [Step 3 - e.g., "User reviews summary and approves"]

**Entry point:** [Where does the user start?]
**Exit point:** [What does "done" look like?]

### Flow 3 (optional): [Flow Name]

- **Persona:** [e.g., "Persona C or shared flow"]

1. [Step 1]
2. [Step 2]
3. [Step 3]

**Entry point:** [Where does the user start?]
**Exit point:** [What does "done" look like?]

---

## Cross-Persona Touchpoints

_Where do different persona flows intersect in the prototype? Identify handoffs, shared screens, and moments where one persona's action triggers another persona's flow._

| Touchpoint | Persona A Action | Persona B Action | Shared Screen / Handoff | Notes |
|------------|-----------------|-----------------|------------------------|-------|
| [e.g., "Renewal approval"] | [e.g., "Procurement manager submits renewal request"] | [e.g., "VP/CFO receives and reviews approval request"] | [e.g., "Approval queue screen -- same screen, different permissions/views"] | [e.g., "Must prototype both the submission and the approval side"] |
| [e.g., "Vendor onboarding"] | [e.g., "Procurement manager adds new vendor"] | [e.g., "VP/CFO sees vendor appear in spend dashboard"] | [e.g., "Dashboard auto-updates when new vendor is added"] | [ ] |
| [ ] | | | | |

---

## Impact on Existing Flows

_For non-greenfield projects: what existing user flows are affected by this prototype? How do the proposed changes alter current behavior? Skip this section for greenfield projects._

| Existing Flow | What Changes | Risk / Consideration |
|---------------|-------------|---------------------|
| [e.g., "Current vendor list page"] | [e.g., "Navigation changes -- vendor list moves from sidebar to top nav"] | [e.g., "Existing users may have muscle memory for current location. Test with existing users specifically."] |
| [e.g., "Current reporting workflow"] | [e.g., "Reports are now generated automatically instead of manually triggered"] | [e.g., "Users who rely on manual report timing may need a scheduling option."] |
| [ ] | | |

---

## Prototype Fidelity

- **Fidelity level:** low | medium | high
- **Reasoning:** [e.g., "Medium fidelity because we need realistic interactions but visual polish is not being tested."]

| Fidelity | When to Use |
|----------|-------------|
| Low (wireframes, paper) | Early exploration, testing information architecture |
| Medium (clickable mockups) | Testing flows, interactions, and comprehension |
| High (pixel-perfect, real data) | Testing trust, desirability, and edge cases |

---

## Method

- [ ] **Design-first** (Figma --> code) - Start with Figma designs, then implement in code
- [ ] **Code-first** (Claude Code --> Figma) - Start with code prototype, refine in Figma
- [ ] **Figma Make** - Use Figma's built-in prototyping tools only

**Rationale:** [e.g., "Code-first because the interaction requires real-time data feedback that is hard to simulate in Figma."]

---

## What's In Scope

_Be explicit about what the prototype includes._

- [ ] [e.g., "Complete onboarding flow (3 screens)"]
- [ ] [e.g., "Error states for email validation"]
- [ ] [e.g., "Mobile-responsive layout"]

---

## What's Explicitly Out of Scope

_Equally important: what are we NOT prototyping?_

- [ ] [e.g., "Settings page"]
- [ ] [e.g., "Authentication / real login"]
- [ ] [e.g., "Accessibility compliance (will address in production)"]

> If someone asks "should we also add X?", this section is the answer.

---

## Fake Data / Placeholder Plan

_What's real, what's mocked, and what's completely placeholder?_

| Element | Treatment | Notes |
|---------|-----------|-------|
| [e.g., User names] | Placeholder | Use realistic fake names |
| [e.g., Product images] | Real | Pull from existing catalog |
| [e.g., Pricing data] | Mocked | Use representative price ranges |
| [e.g., API responses] | Hardcoded | Static JSON, no live calls |

---

## Test Participants

- **Number of participants:** [e.g., 5-8]
- **Target profile:** [e.g., "First-time users who have never used a project management tool"]
- **Screening criteria:**
  - [e.g., "Ages 25-45"]
  - [e.g., "Has used at least one competitor product"]
  - [e.g., "Not a designer or developer"]
- **Recruitment method:** [e.g., "UserTesting.com panel / internal Slack channel / customer list"]
- **Incentive:** [e.g., "$50 gift card"]

---

## Success Criteria for the Prototype Test

_How do we know if the prototype test was successful? Define before testing._

| Criteria | Target | Measurement |
|----------|--------|-------------|
| [e.g., Task completion rate] | [e.g., >= 80%] | [e.g., Unmoderated test observation] |
| [e.g., Time to complete onboarding] | [e.g., < 3 minutes] | [e.g., Screen recording timestamps] |
| [e.g., User comprehension of value prop] | [e.g., 4/5 can articulate it] | [e.g., Post-test interview] |
| [e.g., Error rate] | [e.g., < 2 errors per session] | [e.g., Observer notes] |

---

## Timeline

| Phase | Dates | Owner |
|-------|-------|-------|
| Brief finalization | [Date] | [Name] |
| Prototype build | [Date range] | [Name] |
| Internal review | [Date] | [Name] |
| User testing | [Date range] | [Name] |
| Synthesis & readout | [Date] | [Name] |

---

## Link to Research Evidence

_Why does this flow matter? Link to prior research that informed this prototype._

- [Research finding / insight document](link)
- [Analytics data showing drop-off](link)
- [Customer support ticket pattern](link)
- [Competitor analysis relevant to this flow](link)
