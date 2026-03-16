# Product Design Process Summary

## Process at a Glance

- **Discovery (4-8 hours)** — Frame the problem, research the landscape, synthesize evidence, and decide whether to proceed, pivot, or stop
- **Definition** — Translate validated insights into a PRD, metrics plan, risk register, and decision log
- **Design (1-3 days)** — Information architecture, interaction design, visual direction, content strategy, accessibility, and technical feasibility — with design critique checkpoints throughout
- **Prototyping (2-4 weeks)** — Build the cheapest testable artifact, define design tokens, and run rigorous usability tests
- **Design QA** — Validate that the prototype matches the design specification before testing
- **Iteration (continuous)** — Capture findings, update hypotheses, and feed learnings back into the next cycle

Key principles throughout: every insight must trace to a source, disconfirming evidence is mandatory, all phases always run (depth scales, not presence), designers decide while AI executes, and accessibility is a lens applied at every phase — not deferred to production.

> For a detailed gap analysis of disciplines that were previously missing and how they fit into the AI-assisted workflow, see [DESIGN-PHASE-GAPS.md](DESIGN-PHASE-GAPS.md).

---

## The Design Phase — In Depth

The design phase spans **Definition**, **Prototyping**, and **Iteration**. It begins once Discovery produces a validated problem frame and a go/pivot/stop decision, and it continues in tight loops until the product is ready to ship.

### Definition: From Insights to Specification

Definition runs in parallel with prototyping — it is a living document phase, not a waterfall gate.

#### Product Requirements Document (PRD)

The PRD is the central contract between research and implementation. It answers three questions: *what* are we building, *for whom*, and *how will we know it works*?

- **Executive summary** — 3-5 sentences covering what, for whom, and why now
- **Goals and non-goals** — Measurable objectives alongside explicit exclusions with reasoning, so scope stays sharp
- **User scenarios** — 2-3 key journeys per persona written as narrative flows with success criteria; for multi-persona projects, a dedicated section maps cross-persona interactions, handoffs, and shared touchpoints
- **Impact analysis** — For redesigns or new features on existing products: which flows change, what are the migration considerations, and where are the dependencies
- **Acceptance criteria** — Written in Given/When/Then format so they are directly testable by humans or automated suites
- **Agent-ready implementation notes** — Repo, branch strategy, build commands, key files, constraints, and feature flags; these let a coding agent pick up the PRD and start building without ambiguity
- **Evidence references** — Every claim links back to a research artifact (interview transcript, analytics screenshot, competitor teardown, decision log entry)
- **Open questions** — Tracked with an owner and a deadline so nothing falls through the cracks
- **Stakeholder sign-off** — Named approvers and dates, creating a clear audit trail

#### Metrics Plan

Success is defined *before* a single pixel is pushed. The metrics plan establishes:

- **North star metric** — The single number that best captures whether the product is delivering value
- **Input metrics** — 2-3 leading indicators that drive the north star (e.g., activation rate, time-to-first-value)
- **Guardrail metrics** — 1-2 numbers that must not get worse (e.g., page load time, existing feature engagement)
- **Measurement plan** — Specific events to instrument, A/B test setup if applicable, dashboard location, data owner, and access permissions
- **Reporting cadence** — Who reports what, to whom, and when
- **Review triggers** — Concrete thresholds that trigger a pause, reassessment, or escalation (e.g., "if task completion drops below 70%, halt rollout and reconvene")

#### Risk Register

Proactive risk management with accountability:

- Each risk has an ID, description, category (technical / market / team / legal), likelihood, impact, mitigation strategy, owner, status, and last-reviewed date
- Status flows through Open → Mitigating → Occurred → Closed
- Per-risk notes log every status change and key event
- A review schedule defines when different severity tiers are revisited and who facilitates

#### Decision Log

Structured Architecture Decision Records (ADRs) capture *why*, not just *what*:

- **Context** — What prompted this decision
- **Options considered** — Pros, cons, and tradeoffs of 2-3+ alternatives
- **Decision** — What was chosen and why
- **Tradeoffs accepted** — What we are explicitly giving up
- **Evidence** — Links to the research or data that informed the call
- **Review date** — When to revisit; decisions are living, not permanent
- Status types: Proposed → Accepted → Superseded or Deprecated

---

### Design: Structure, Behavior, and Craft

The design phase bridges the gap between "we know what to build" (Definition) and "let's build a testable thing" (Prototyping). These disciplines run in parallel, inform each other, and are reviewed via structured design critique before prototyping begins.

#### Information Architecture

Defines how information is organized, labeled, and navigated:

- **Sitemap and navigation structure** — Top-level navigation model, depth limits, mobile patterns, and cross-linking strategy
- **Content model** — Core objects/entities, their relationships, and how they map to screens
- **Taxonomy and labeling** — Category names validated against user mental models, label glossary, search vs. browse strategy
- **Page-level structure** — Key page types (list, detail, form, dashboard), content priority per type, shared layout patterns

#### Interaction Design

Defines how the interface behaves in response to user actions — not just the happy path:

- **Detailed user flows** — Step-by-step flows including decision points, error paths, and edge cases (first-time use, empty data, expired sessions, permission denied)
- **State inventory** — For each key screen: default, loading, empty, populated, error, disabled, hover, focus, active states
- **Micro-interactions** — Screen transitions, feedback patterns (optimistic updates, spinners, confirmations), destructive action confirmations, undo patterns
- **Form behavior** — Inline vs. submit-time validation, field dependencies, autosave strategy, multi-step progression
- **Responsive behavior** — Specific layout changes at each breakpoint, touch targets, gesture support

#### Visual Design Direction

Establishes what the product should *feel like* before design tokens are finalized:

- **Visual direction brief** — Brand personality attributes, reference and anti-reference products, audience aesthetic expectations
- **Mood board / style tile** — Color palette exploration, typography pairings, imagery style, density strategy, motion tone
- **Brand alignment check** — Mapping to existing brand guidelines, intentional divergences with rationale, stakeholder sign-off

#### Content Design

Defines what the product *says* to users:

- **Voice and tone framework** — Product voice attributes, tone shifts by context (onboarding, errors, success, settings), vocabulary principles
- **Content patterns** — Button labels, form help text, error messages (what happened + why + what to do), empty states, confirmation dialogs, notifications
- **Microcopy specifications** — Per-screen copy specs for key flows, character limits, localization considerations

#### Accessibility

Applied as a lens across all design disciplines, not deferred to production:

- **Color and contrast** — All combinations validated against WCAG AA ratios, color never used as sole information carrier
- **Keyboard and focus** — Full keyboard operability, visible focus indicators, logical focus order, skip navigation
- **Screen reader compatibility** — Semantic HTML structure, ARIA labels, live regions, image alt text strategy
- **Motor and cognitive** — Touch target minimums (44x44px), adequate spacing, no time limits without user control, reduced motion support

#### Technical Feasibility Review

Engineering validates that the design is buildable within actual constraints:

- **API and data review** — Required data availability, new endpoints needed, latency expectations
- **Performance budget** — Load time targets, bundle size constraints, animation frame rate targets
- **Build vs. buy** — For each major capability: custom, library, or third-party service

#### Design Critique Checkpoints

Structured peer review at phase boundaries — not just AI blind-spot detection:

- **IA review** — After sitemap and content model are drafted
- **Interaction review** — After flows and states are documented
- **Visual review** — After design direction is established
- **Pre-test review** — Before usability testing begins

---

### Prototyping: Build the Cheapest Testable Thing

Prototyping is hypothesis-driven. The goal is not to build a feature — it is to answer a question as cheaply as possible.

#### Prototype Brief

The brief defines the question the prototype exists to answer:

- **Objectives** — Primary and secondary research questions framed as hypotheses, not feature requests
- **Core flows** — 1-3 key user journeys per persona with explicit entry and exit points
- **Cross-persona touchpoints** — Where flows intersect, where handoffs happen, and where conflicts could arise
- **Fidelity decision** — Low (wireframes), Medium (clickable mockups), or High (pixel-perfect); chosen based on what the research question requires, not what looks impressive
- **Method** — Design-first (Figma to code), Code-first (code to Figma), or Figma Make; the choice depends on the team's strengths and the question being tested
- **Scope boundaries** — What is explicitly in scope and what is out, documented upfront to prevent creep
- **Fake data and placeholder plan** — What is real, what is mocked, and what is placeholder; participants need to know, and so does the team
- **Test participant profile** — Number of participants, target profile, screening criteria, recruitment method, and incentive
- **Success criteria** — Defined before testing begins so results are evaluated against pre-set thresholds, not post-hoc rationalizations
- **Timeline** — Brief finalization, build, internal review, user testing, synthesis

#### Design Tokens

A machine-readable design system expressed as CSS custom properties:

- **Color system** — Primary and secondary palettes on a 50-900 scale, neutrals on a 0-950 scale, and semantic tokens (success, warning, error, info)
- **Typography** — Font families, sizes from 0.75rem to 3rem, weights, line heights, letter spacing, and a named type scale (Display, H1-H4, Body variants, Caption)
- **Spacing** — A 4px base unit with tokens from 0 to 128px
- **Borders, shadows, breakpoints** — Radius tokens (none through full), shadow tokens (xs through xl plus inner), and responsive breakpoints from 640px to 1536px
- **Component tokens** — Pre-defined button, input, and card styling for consistency
- **Dark mode** — Full color inversions and adjustments activated via `data-theme="dark"`
- **Implementation notes** — How tokens map to Tailwind classes, rem usage, and notation conventions

Design tokens ensure that prototypes are visually consistent and that the system is readable by both humans and AI agents building the UI.

#### Test Plan

Rigorous usability testing with a scientific structure:

- **Research questions** — 3-5 questions linked directly to hypotheses from the prototype brief; scope is capped to prevent testing sprawl
- **Participants** — Typically 5-8 per round, with specific inclusion/exclusion criteria, recruitment channel, incentive, and scheduling timeline
- **Test tasks** — 3-5 scenario-based tasks written without leading language and without naming UI elements (e.g., "You want to find out how your last campaign performed" rather than "Click the Analytics tab")
- **Quantitative metrics** — Task completion rate, time on task, error rate, assists needed
- **Qualitative metrics** — Single Ease Question (SEQ) per task, System Usability Scale (SUS) overall, verbal feedback, and confidence ratings
- **Facilitation script** — A detailed guide covering introduction, warm-up, task blocks, and debrief with specific timing
- **Observer guide** — What to watch for (navigation patterns, language gaps, hesitations, emotional cues), a structured note-taking template, and observer rules (no helping, no leading)
- **Analysis plan** — Individual session review, cross-session synthesis, severity rating framework, and a prioritized findings report
- **Timeline** — From screener to readout, with buffer for recruitment delays

---

### Design QA: Validate Before Testing

Once a prototype is built, design QA ensures the spec was implemented correctly before putting it in front of users:

- **Token compliance** — Every color, font, spacing, shadow, and radius uses a design token (no hardcoded values)
- **Component inventory** — Every unique component mapped to design tokens and interaction specs
- **Responsive validation** — Layout tested at key breakpoints with real content, not just placeholder
- **Accessibility scan** — Automated check (axe, Lighthouse) run on the prototype before user testing
- **Content review** — All copy matches the content specs; no placeholder text left in testable flows

---

### Iteration: Learn, Update, Repeat

Each iteration cycle produces an **iteration brief** that captures what happened and feeds it forward.

#### Iteration Brief

- **What we tested** — Prototype or feature version, fidelity level, participant count, method, and links to the test plan and prototype
- **Key findings** — A table of finding number, description, supporting evidence, confidence level, and recommended action
- **Metrics update** — Before/after comparison for task completion, time on task, error rate, SUS, and SEQ scores
- **What worked and what didn't** — Patterns worth keeping and patterns to change, stated plainly
- **Scope changes** — What was added, removed, or modified since the last iteration, and why
- **Updated hypotheses** — Which were confirmed, refuted, or remain untested
- **Next iteration focus** — Primary and secondary focus areas, open questions, and estimated timeline
- **Updated references** — Links to the revised PRD sections, new ADRs, updated design specs, and backlog items

#### Feedback Synthesis

A structured roll-up of all feedback sources (usability tests, stakeholder reviews, analytics, support data) into actionable themes with severity ratings and ownership.

---

### How the Phases Connect

```
Discovery ──GO──► Definition
                     │
                     ├──► Information Architecture
                     ├──► Visual Design Direction
                     ├──► Content Strategy & Voice
                     ├──► Technical Feasibility Review
                     │         │
                     │    Design Critique ◄── (review checkpoint)
                     │         │
                     ▼         ▼
                  Interaction Design
                  (flows, states, content specs)
                     │
                Design Critique ◄── (review checkpoint)
                     │
                     ▼
               Prototyping ◄────────────────────┐
                     │                           │
                Design QA                        │
                     │                           │
                     ▼                           │
                 Testing                         │
                     │                           │
                     ▼                           │
                Iteration ──(update all artifacts)┘
                     │
                     ▼
              Ship or Next Cycle
```

Accessibility runs as a lens across IA, Interaction Design, Visual Design, Content Design, and Design QA — with checkpoints at each phase boundary.

Definition documents are updated continuously as prototyping and iteration reveal new information. The PRD is not a spec that gets written once — it is a living artifact that absorbs evidence from every test cycle. The decision log grows with each iteration. The risk register is reviewed at each checkpoint. Metrics are refined as real data replaces assumptions.

This tight loop — design, build, test, learn, update — continues until the team has enough confidence (backed by evidence, not opinion) to ship.
