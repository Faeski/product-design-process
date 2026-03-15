---
project: Product Design Workflow Assistant
date: 2026-03-15
author: Sjoerd Faesen
status: design-complete
phase: planning
type: design-document
---

# Workflow Redesign: From Simple to Complex Product Design

## Executive Summary

The current product design workflow assistant supports a single scenario: a new product idea going through linear discovery. This redesign evolves it to handle the full spectrum of real-world product design work — new features on existing products, redesigns, optimizations — with support for multiple stakeholders, multiple user personas with intersecting flows, and diverse research methods.

---

## Decision Log

### Decision 1: Four Equal Entry Points

**Decided:** The system supports four project types equally:
- New product (greenfield)
- New feature for an existing product
- Redesign of an existing area
- Incremental optimization

**Why:** The original system was limited to "simple new product idea" (greenfield only). In reality, most product design work is on existing products — adding features, fixing areas that aren't working, or optimizing based on data. All four are equally important and equally common.

---

### Decision 2: Three-Layer Context Detection

**Decided:** Combine three approaches:
1. **Ask upfront** — Designer classifies the project (they know their context)
2. **Validate from artifacts** — System reads existing project files to confirm/enrich
3. **Progressive discovery** — System stays alert for emerging complexity throughout

**Why:** The designer knows their context best, so asking first makes sense. But validation catches inconsistencies (e.g., artifacts suggest more complexity than stated), and progressive discovery catches things the designer didn't anticipate (e.g., mentioning an "admin dashboard" reveals a second persona they hadn't considered).

---

### Decision 3: Classification Dimensions

**Decided:** Four dimensions:
- **Project type** — New product / New feature / Redesign / Optimization
- **User complexity** — Single user type / Multiple personas with shared flows / Multiple personas with separate flows
- **Stakeholder landscape** — Solo / Single stakeholder / Multiple aligned / Multiple competing
- **Input triggers** (multi-select) — Designer initiative / Business request / User feedback or data / Technical constraint or opportunity

**Why:** Originally had 5 dimensions (scope type + system context separately), but there was overlap — they were saying the same thing differently. Consolidated into "project type." Input triggers became multi-select because in practice triggers stack (e.g., a business request driven by user feedback data).

---

### Decision 4: Scale Depth, Never Skip Phases

**Decided:** All phases always run, but scale in depth based on classification. No phases are ever skipped entirely.

**Why:** Even a "simple" project might have hidden stakeholders the designer hasn't thought about. Skipping the stakeholder phase entirely would miss that. The system should prompt the designer to think, not skip things because classification said "simple." Example: a solo designer doing an optimization might not realize the data team cares about the metric they're changing. The system should surface this, even in lightweight form.

---

### Decision 5: Blind Spot Detection — Real-Time + End-of-Phase Checkpoints

**Decided:** Two layers combined:
- **Real-time detection** — System flags gaps in the moment as information comes in (e.g., "You mentioned an approval workflow — is there a manager persona?")
- **End-of-phase checkpoints** — Structured blind spot review at each phase boundary listing uncovered personas, unmentioned stakeholders, impacted flows, missing disconfirming evidence

**Why:** Real-time catches things naturally in conversation flow. But things can still slip through, so a structured checkpoint at phase boundaries acts as a safety net. Belt and suspenders. The system also learns from dismissals — won't re-raise a dismissed blind spot unless new evidence surfaces.

---

### Decision 6: Expand Step 1 for Existing System Analysis

**Decided:** "Understand the existing system" becomes part of an expanded Step 1 (Frame the Problem), not a separate new step.

**Why:** For non-greenfield projects, you can't frame the problem without understanding what exists. Making it part of Step 1 keeps framing holistic — "where are we now" flows naturally into "where do we want to go." A separate Step 0 would feel disconnected.

---

### Decision 7: Source-Agnostic Documentation Intake

**Decided:** The system accepts existing product documentation in any format: pasted text, markdown files, links to Notion, Google Docs, SharePoint, Figma, FigJam, or anything else. System fetches what it can, asks designer to paste if access is restricted. If nothing exists, the system interviews the designer to build understanding from scratch.

**Why:** Product knowledge lives everywhere — Slack threads, old Figma files, half-finished PRDs, Notion wikis. The system shouldn't care where knowledge lives; it should care that it has enough knowledge to proceed. This mirrors how real product designers actually work: piecing together context from scattered sources. It's the designer's responsibility to provide the right documentation; the system's job is to work with whatever it gets.

---

### Decision 8: Per-Persona Journey Maps + Cross-Persona System Flow Map

**Decided:** Three-layer persona architecture:
1. Separate persona files (one per user type)
2. Per-persona journey maps with inline cross-references
3. Cross-persona system flow map (bird's eye view)

**Why:** Separate persona files with individual journey maps let you zoom into one persona's world when needed — this serves well for providing specific context when diving deeper into a particular user type. Cross-references between journey maps (e.g., "handoff to [Manager]") show where personas interact from each perspective. The system flow map provides the bird's eye view showing all handoffs, dependencies, and shared touchpoints. You need both lenses: per-persona for designing individual experiences, system-level for making sure the whole thing holds together. This also scales better — adding a sixth persona doesn't bloat a single document.

---

### Decision 9: Stakeholder Map + RACI Decision Framework

**Decided:** Focus on a stakeholder map with RACI-style decision framework and conflict resolution paths, rather than polished stakeholder briefs.

**Why:** In complex multi-stakeholder projects, knowing who decides what and how to resolve conflicts matters more than polished documents. The RACI framework helps the designer navigate the politics proactively rather than getting stuck later when stakeholders disagree. Briefs are nice-to-have; decision clarity is need-to-have.

---

### Decision 10: Lightweight Skeleton Templates, System Fills Intelligently

**Decided:** Templates stay as lightweight skeletons listing all possible sections as headings (the schema). The system dynamically generates the right depth and sections based on project context.

**Why:** Considered adaptive templates with conditional sections, but those become maintenance nightmares — conditions multiply as the system grows, templates become unreadable. Lightweight skeletons keep templates clean and readable. Intelligence lives in the skill, not the template — the discovery skill knows the classification and can fill appropriately. This also means if complexity emerges mid-project, the system can enrich an artifact without needing a different template. Templates list ALL possible sections as lightweight headings so the system knows the full menu of what it could fill. Templates as schema, skill as brain.

---

### Decision 11: Discovery Skill 6-Step Adaptation

**Decided:** Each step adapts for complexity rather than adding/removing steps:

- **Step 1 (Frame)** — Expanded to include existing system analysis for non-greenfield. Accepts docs in any format. Generates per-persona hypotheses when multiple user types involved.
- **Step 2 (Research)** — For existing products: adds internal research (current metrics, known issues, user feedback history, tech constraints). Blind spot check at end.
- **Step 3 (Prepare Research Plan)** — Renamed from "Prepare User Research." Per-persona research preparation. For redesign/optimization: includes current-experience questions.
- **Step 4 (Synthesize)** — Per-persona synthesis. Cross-persona system flow map generated here. Blind spot check for uncovered personas/stakeholders.
- **Step 5 (Decide)** — Stakeholder RACI surfaces here. Per-persona impact assessment. Conflict resolution if priorities clash.
- **Step 6 (Align)** — No longer optional, always runs (scaled in depth). Uses RACI from Step 5.

**Why:** Keeping the same 6 steps maintains familiarity. The steps are broad enough to accommodate all project types when their depth scales. Detail to be refined during implementation.

---

### Decision 12: Full Research Method Support

**Decided:** The system supports a broad range of research methods, not just interviews:

**Qualitative:** User interviews, contextual inquiry/observation, diary studies, focus groups, card sorting/tree testing, usability testing

**Quantitative:** Surveys/questionnaires, analytics review, A/B test results, support ticket/NPS/CSAT data, heatmaps/session recordings

**Secondary:** Competitor analysis, market research, academic/industry research, internal documentation review

**Why:** The original system was heavily biased toward interviews as the primary research method. Real product design uses a much broader toolkit. Different project types call for different methods — an optimization might need analytics review + usability testing, while a greenfield product might need interviews + surveys. The system shouldn't assume interviews are the default.

---

### Decision 13: Step 3 Becomes "Prepare Research Plan" with Method Recommendation

**Decided:** Step 3 evolves from "Prepare User Research" (interview-focused) to "Prepare Research Plan" where:
1. System recommends research methods based on project context
2. Designer picks which methods to use (multi-select)
3. System generates preparation artifacts per chosen method (interview guide, survey draft, analytics brief, observation protocol, etc.)
4. `research-plan.md` becomes the hub listing chosen methods, what each answers, which hypotheses each tests, timeline, participant profiles

**Why:** The system should think about what research methods best fit the questions being asked, rather than defaulting to interviews. Different questions need different methods. The system recommends, the designer decides.

---

## Design Specification

### 1. Project Intake & Classification

When a designer starts a project, the system runs an intake sequence before entering the discovery phases:

**1. Project type** — "What are you working on?"
- New product (greenfield)
- New feature for an existing product
- Redesign of an existing area
- Optimization of an existing area

**2. User complexity** — "Who are the users?"
- Single user type
- Multiple personas with shared flows
- Multiple personas with separate flows

**3. Stakeholder landscape** — "Who's involved in decisions?"
- Solo designer
- Single stakeholder
- Multiple stakeholders with aligned goals
- Multiple stakeholders with competing priorities

**4. Input triggers** (multi-select) — "What's driving this work?"
- Designer initiative
- Business request
- User feedback or data
- Technical constraint or opportunity

**5. Existing documentation** — "What documentation exists about the current product/area?"
- Accept: pasted text, markdown files, links (Notion, Google Docs, SharePoint, Figma, FigJam)
- System fetches what it can, asks designer to paste if access restricted
- If nothing exists: system interviews the designer to build understanding

The system uses these answers to set initial depth levels for each phase, then validates against any existing project artifacts it can read, and stays alert throughout for emerging complexity.

---

### 2. Adaptive Phase Depth & Blind Spot Detection

All projects run through the same phases — none are skipped. The system scales depth based on classification.

**Depth scaling examples:**

| Scenario | Step 1 (Frame) | Step 3 (Research Plan) | Step 6 (Align) |
|---|---|---|---|
| New product, solo, single user | Hypotheses only | One method, one guide | Quick self-check |
| New feature, 3 personas, 2 stakeholders | Existing system analysis + per-persona hypotheses | Per-persona, multi-method | Stakeholder RACI + tailored framing |
| Redesign, competing stakeholders | Deep current-state mapping + pain point analysis + per-persona hypotheses | Per-persona, multi-method with current-experience focus | Full RACI + conflict resolution + decision framework |

**Blind spot detection (two layers):**

1. **Real-time** — As the designer provides information, the system cross-references against the classification and flags gaps in the moment. E.g., "You mentioned an approval workflow — is there a manager persona we should account for?"

2. **End-of-phase checkpoint** — At each phase boundary, the system runs a structured review:
   - "Based on everything so far, here are potential blind spots:"
   - Uncovered personas or user types implied but not explored
   - Stakeholders who might be affected but haven't been mentioned
   - Flows or system areas that could be impacted
   - Missing disconfirming evidence
   - The designer can dismiss or promote each item

The system learns from dismissals within the session — if a blind spot is dismissed, it doesn't raise it again unless new evidence surfaces.

---

### 3. Multi-Persona Architecture

When the project involves multiple user types, the system generates a layered persona structure:

**Layer 1: Individual persona files**
- One `user-persona-[name].md` per user type
- Each contains: goals, needs, pain points, context, JTBD statement
- Depth scaled by classification — could be a brief sketch or a rich profile

**Layer 2: Per-persona journey maps**
- Each persona gets their own journey map for the feature/area being designed
- Maps the steps, touchpoints, emotions, pain points from that persona's perspective
- Inline cross-references where another persona's flow intersects: "Handoff to [Manager] for approval" or "Depends on [Admin] having configured X"

**Layer 3: Cross-persona system flow map**
- One artifact showing the full end-to-end flow across all personas
- Visualizes handoffs, dependencies, shared touchpoints, data flow between roles
- Highlights conflict points where persona needs may clash
- Generated during Step 4 (Synthesize Evidence) when enough is known

**How these get used downstream:**
- When designing for a specific persona, the system pulls in that persona's file + journey map for focused context
- When making architectural or system-level decisions, the system references the cross-persona flow map
- The hypothesis sheet links hypotheses to specific personas, so validation is tracked per user type

---

### 4. Stakeholder Management

When the project involves stakeholders beyond the designer, the system generates a stakeholder decision framework:

**Stakeholder map** — Created during intake or Step 1:
- Each stakeholder: name/role, area of interest, level of influence, key priorities, potential concerns
- The system infers potential stakeholders from project context (e.g., "This feature touches payments — is there a finance stakeholder?")

**RACI framework** — Created during Step 5 (Decide):
- For each key decision area: who is Responsible, Accountable, Consulted, Informed
- Explicit conflict resolution paths: "If [Stakeholder A] and [Stakeholder B] disagree on X, escalation goes to Y" or "Designer makes final call on UX, business lead makes final call on scope"

**How it's used throughout:**
- When the system reaches a decision point, it checks the RACI: "This is a scope decision — [Product Lead] is Accountable. Have they been consulted?"
- When blind spot detection surfaces a stakeholder concern, it references the map: "This change affects [area] — [Stakeholder C] listed this as a key priority"
- Step 6 (Align) uses the framework to determine what each stakeholder needs to know and who needs to sign off

---

### 5. Template Architecture

Templates are lightweight skeletons — they define the schema of what could be captured, not the depth. The system fills them intelligently based on project context.

**Template structure:**
- All possible sections listed as headings (the full menu)
- Brief description under each heading explaining its purpose
- No conditional logic, no "if complex include this" markers
- YAML frontmatter for metadata (project, date, phase, status)

**How the system fills them:**
- Reads the project classification and current context
- Decides which sections to fill and how deeply
- For simple projects: many sections get a single line or are left as "N/A — single user type"
- For complex projects: sections expand with rich content, sub-sections, cross-references
- If complexity emerges mid-project, the system can revisit and enrich previously light sections

**Template inventory changes:**
- **Unchanged:** `evidence-log.md`, `decision-log.md`, `design-tokens.md`, `test-plan.md`, `metrics-plan.md`, `risks-register.md`
- **Evolved (skeleton-ified):** `user-persona.md`, `hypothesis-sheet.md`, `interview-guide.md`, `research-synthesis.md`, `prototype-brief.md`, `stakeholder-brief.md`, `prd.md`
- **New:** `system-flow-map.md` (cross-persona flows), `stakeholder-raci.md` (decision framework), `impact-analysis.md` (for non-greenfield — what exists, what's affected, dependencies)

---

### 6. The Adapted Discovery Flow (End-to-End)

**Intake (before Step 1):**
1. System asks the four classification questions (project type, user complexity, stakeholders, triggers)
2. Asks what existing documentation is available — accepts any format
3. Fetches/reads what it can, asks designer to paste what it can't access
4. Sets depth levels for all phases
5. If existing product: builds initial understanding of current system from provided docs

**Step 1: Frame the Problem** (scaled)
- Greenfield: hypotheses + problem framing as today
- Existing product: current-state analysis first, then "what needs to change and why"
- Multi-persona: generates per-persona hypotheses, each linked to specific user type
- System flags potential blind spots in real-time as designer describes the problem
- **End-of-phase checkpoint**

**Step 2: Research the Landscape** (scaled)
- Always: competitors, market, gaps, mandatory disconfirming evidence
- Existing product: adds internal research — current metrics, known issues, support tickets, user feedback history
- **End-of-phase checkpoint**

**Step 3: Prepare Research Plan** (scaled, renamed)
- System recommends research methods based on project context and hypotheses
- Designer selects methods (multi-select from full qualitative/quantitative/secondary menu)
- System generates preparation artifacts per chosen method
- Single persona: one set of research artifacts
- Multi-persona: per-persona research preparation, questions tailored to each user type's context
- Redesign/optimization: adds current-experience questions
- `research-plan.md` serves as the hub
- **End-of-phase checkpoint:** "Any user types we're not planning to research?"

**Step 4: Synthesize Evidence** (scaled)
- Single persona: synthesis as today
- Multi-persona: per-persona synthesis + cross-persona system flow map generated here
- Highlights conflicts between persona needs
- **End-of-phase checkpoint:** "Personas or stakeholders not yet heard from?"

**Step 5: Decide** (scaled)
- Always: GO / PIVOT / STOP decision with evidence
- Multi-stakeholder: RACI framework surfaces, per-persona impact assessment
- Competing priorities: conflict resolution paths, explicit trade-off recommendations
- **End-of-phase checkpoint:** "Any decision-makers who haven't weighed in?"

**Step 6: Align Stakeholders** (always runs, scaled)
- Solo: lightweight self-check — "Have you considered X, Y, Z?"
- Single stakeholder: focused brief using RACI
- Multiple stakeholders: tailored communication per stakeholder role, using decision framework from Step 5
- **End-of-phase checkpoint:** "Open questions or unresolved conflicts?"

---

### 7. Research Methods

The system supports the full spectrum of product research methods and recommends appropriate methods based on project context:

**Qualitative methods:**
- User interviews
- Contextual inquiry / observation
- Diary studies
- Focus groups
- Card sorting / tree testing
- Usability testing (on existing product or prototype)

**Quantitative methods:**
- Surveys / questionnaires
- Analytics review (existing product data, funnels, drop-offs)
- A/B test results (prior or planned)
- Support ticket / NPS / CSAT data analysis
- Heatmaps / session recordings review

**Secondary research:**
- Competitor analysis
- Market research
- Academic / industry research
- Internal documentation review

**Per-method preparation artifacts:**
Each selected method gets its own preparation artifact generated by the system — interview guide, survey draft, analytics brief, observation protocol, diary study setup, card sort structure, usability test script, etc.

---

## Implementation Status

| # | Task | Status |
|---|------|--------|
| 1 | ~~Create an implementation plan from this design~~ | N/A — implementation completed directly |
| 2 | Update the discovery skill (`skills/discovery/SKILL.md`) | Done (2026-03-15) |
| 3 | Update existing templates to lightweight skeleton format | Done (2026-03-15) |
| 4 | Create new templates (`system-flow-map.md`, `stakeholder-raci.md`, `impact-analysis.md`) | Done (2026-03-15) |
| 5 | Update the scaffold skill to support the new intake flow | Done (2026-03-15) |
| 6 | Update `AGENTS.md` and `CLAUDE.md` templates to reflect new capabilities | Done (2026-03-15) |
| 7 | Update `README.md` to reflect full system capabilities | Done (2026-03-15) |
