# Design Phase: Gap Analysis & Missing Disciplines

This document identifies disciplines that are absent or underrepresented in the current product design process, explains why they matter even in an AI-assisted workflow, and describes what each discipline should cover.

---

## Why These Gaps Matter in an AI-Assisted Workflow

AI accelerates execution — it does not eliminate the need for structural thinking. An AI agent can generate a prototype in minutes, but if nobody defined the navigation model, the content hierarchy, or the accessibility requirements first, the agent is building on sand. Speed without structure produces incoherent products faster.

The current process is exceptionally strong on **research** (discovery) and **validation** (testing, iteration). What it underserves is the **structural and craft design work** that sits between "we know what to build" and "let's build a testable thing." These disciplines are not waterfall relics — they are the foundation that makes AI-generated prototypes coherent.

---

## Gap Summary

| Discipline | Current Coverage | Gap Severity |
|---|---|---|
| Information Architecture | Passing mention only | **High** |
| Interaction Design | Scattered across templates, no dedicated step | **Medium-High** |
| Visual Design Direction | Design tokens exist, but no direction-setting | **High** |
| Content Design / UX Writing | Completely absent | **Critical** |
| Accessibility | Explicitly deferred to production | **High** |
| Design QA / Handoff | Engineering-centric, no design specs | **Medium** |
| Technical Feasibility Review | Scattered across discovery and PRD | **Medium** |
| Design Critique / Review | AI blind-spot checks only, no peer review | **Medium** |

---

## 1. Information Architecture

### What's Missing

The process has no dedicated step or artifact for defining the structural organization of information. Card sorting and tree testing are listed as optional research methods in discovery, and wireframes are mentioned as a fidelity option in the prototype brief, but there is no structured IA artifact anywhere in the workflow.

The system-flow-map template (multi-persona only) maps functional handoffs between user types — it does not address how information is organized, navigated, or found.

### Why It Matters (Even with AI)

AI can generate screens, but it cannot decide whether a feature belongs in the main navigation or a settings submenu. It cannot determine whether users think in terms of "projects" or "tasks" or "clients." IA decisions ripple through every screen, every flow, and every piece of content. Getting them wrong means reworking the entire prototype, not just one screen.

### What This Phase Should Cover

**Sitemap / Navigation Structure**
- Top-level navigation model (flat, hierarchical, hub-and-spoke, dashboard-first)
- Primary, secondary, and utility navigation items
- Navigation depth limits and rationale
- Mobile navigation pattern (tab bar, hamburger, bottom sheet)
- Cross-linking strategy — how do users move laterally between sections

**Content Model**
- Core objects/entities in the system (e.g., Project, Task, User, Invoice)
- Relationships between objects (one-to-many, many-to-many)
- Object attributes visible to users vs. internal-only
- How objects map to screens and URLs

**Taxonomy & Labeling**
- Category naming conventions validated against user mental models (via card sort results if available)
- Label glossary — what each navigation item and section header means, in user language
- Search vs. browse strategy — when do users search, when do they navigate

**Page-Level Structure**
- Key page types (list, detail, form, dashboard, settings)
- Content priority per page type — what appears above the fold, what is secondary
- Shared layout patterns across page types

**IA Validation**
- Tree test results (if conducted during discovery)
- First-click test plan for key tasks
- Expected findability benchmarks

### Where It Fits in the Process

Between **Definition** and **Prototyping**. Once the PRD defines *what* exists in the product, IA defines *how it is organized*. Prototyping then builds on a coherent structural foundation instead of improvising navigation per-screen.

---

## 2. Interaction Design

### What's Missing

User flows exist in the prototype brief (core flows section) and behavior is observed during testing, but there is no structured artifact for detailed interaction specifications. The process documents *what* users do (task flows) but not *how* the interface behaves in response (states, transitions, edge cases).

### Why It Matters (Even with AI)

AI generates the happy path well. It struggles with: What happens when the user is offline? What does the empty state look like before any data exists? What happens when a form submission fails? What is the loading sequence? How does the interface respond to rapid repeated taps? These micro-decisions define whether a product feels polished or broken. Without specifying them, every AI-generated prototype will have gaps that surface during testing — or worse, in production.

### What This Phase Should Cover

**Detailed User Flows**
- Step-by-step flows for each core task (not just the happy path)
- Decision points — where the flow branches based on user choice or system state
- Error paths — what happens at each step if something goes wrong
- Edge cases — first-time use, empty data, expired sessions, permission denied, concurrent edits

**State Inventory**
- For each key screen or component: default, loading, empty, populated, error, disabled, hover, focus, active, selected states
- Skeleton/placeholder patterns during loading
- Progressive disclosure — what is visible immediately vs. on interaction

**Micro-Interactions**
- Transition types between screens (push, modal, slide, fade)
- Feedback patterns (optimistic updates, loading spinners, progress bars, success confirmations)
- Destructive action confirmations (delete, cancel, discard)
- Undo patterns where applicable

**Form Behavior**
- Inline validation vs. submit-time validation
- Field dependencies (show/hide based on selections)
- Autosave vs. explicit save
- Multi-step form progression and back-navigation

**Responsive Behavior**
- How layouts adapt across breakpoints (not just "it's responsive" — which elements reflow, collapse, or disappear)
- Touch target sizes on mobile
- Gesture support (swipe, long-press, pull-to-refresh)

### Where It Fits in the Process

Alongside **Information Architecture**, after Definition and before Prototyping. IA defines the structure; interaction design defines the behavior within that structure. Together they give the prototyping phase a complete blueprint.

---

## 3. Visual Design Direction

### What's Missing

The design-tokens template is thorough — colors, typography, spacing, shadows, breakpoints, dark mode, component tokens. But tokens are *implementation*. The process has no step for *establishing* visual direction. There is no mood board, style tile, brand alignment check, or visual rationale artifact. The workflow assumes a design system already exists or that the designer will intuit the right visual language.

### Why It Matters (Even with AI)

AI generates visually competent interfaces. It does not generate visually *coherent* ones without direction. If you ask an AI to build a dashboard for a fintech product and a dashboard for a children's education app, the visual language should be radically different — but the tokens template looks the same for both. Visual direction is the strategic layer that tells the AI (and the team) *what this product should feel like* before anyone picks a hex code.

### What This Phase Should Cover

**Visual Direction Brief**
- Brand personality attributes (e.g., "professional but approachable", "playful but trustworthy")
- Reference products and interfaces that capture the intended feel (with annotations explaining *what* about each reference is relevant)
- Anti-references — interfaces that represent what this product should *not* look like
- Target audience aesthetic expectations (enterprise users expect density; consumer users expect whitespace)

**Mood Board / Style Tile**
- Color palette exploration with rationale tied to brand attributes
- Typography pairings with reading context (long-form content vs. dashboard labels vs. marketing headlines)
- Imagery and illustration style (photography, illustration, icons, abstract shapes)
- Density and whitespace strategy — compact (data-heavy) vs. spacious (content-focused)
- Motion and animation tone (subtle and functional vs. expressive and delightful)

**Brand Alignment Check**
- How the visual direction maps to existing brand guidelines (if any)
- Where the product intentionally diverges from brand guidelines and why
- Stakeholder sign-off on visual direction before token finalization

**Design Token Rationale**
- Why specific values were chosen (not just what they are)
- Which tokens are locked (brand colors) vs. flexible (component-specific)
- How the token system scales to new components and features

### Where It Fits in the Process

After **Definition**, before or parallel to **Information Architecture**. Visual direction is a strategic decision that should be made early and validated with stakeholders before detailed design work begins. Design tokens are then the *implementation* of that direction.

---

## 4. Content Design / UX Writing

### What's Missing

This discipline is completely absent from the process. Zero templates, zero mentions in skills, zero structured artifacts. The workflow researches user needs (JTBD, personas, interviews) and defines product requirements (PRD, acceptance criteria) but never addresses *what the product says to users*.

### Why It Matters (Even with AI)

AI generates plausible copy. Plausible is not the same as effective. A "Submit" button, a "Let's go" button, and a "Place order" button are all plausible — but only one matches the user's mental model and the product's voice. Error messages, empty states, onboarding flows, tooltips, confirmation dialogs, email notifications — all of these are design decisions that shape the user experience as much as layout or color. Without a content strategy, every AI-generated screen will have inconsistent, generic copy that undermines the research-driven design around it.

### What This Phase Should Cover

**Voice & Tone Framework**
- Product voice attributes (e.g., "confident, not arrogant"; "helpful, not patronizing")
- How tone shifts by context: onboarding (warm, encouraging), errors (calm, clear, actionable), success states (brief, affirming), settings (neutral, precise)
- Vocabulary principles — jargon policy, reading level target, inclusive language guidelines
- Examples of do/don't for each voice attribute

**Content Patterns**
- **Page titles and headings** — naming conventions, capitalization rules, length limits
- **Button and action labels** — verb-first convention, specificity rules ("Save draft" not "Save", "Delete project" not "Delete")
- **Form labels and help text** — when to use placeholder text, when to use persistent labels, when to add help text
- **Error messages** — structure: what happened + why + what to do next; tone: calm and specific, never blaming the user
- **Empty states** — structure: what this area is for + how to populate it + primary action; tone: inviting, not apologetic
- **Confirmation dialogs** — what requires confirmation, copy structure, destructive action language
- **Notifications and alerts** — severity levels mapped to language patterns (info, warning, error, success)
- **Onboarding and first-run** — progressive disclosure copy, tooltip sequences, welcome flows

**Content Inventory** (for redesigns / non-greenfield)
- Existing copy audit — what works, what confuses users (from research synthesis)
- Terminology inconsistencies to resolve
- Legacy labels that need migration paths

**Microcopy Specifications**
- Per-screen copy specs for key flows (aligned with interaction design flows)
- Character limits for UI elements (mobile constraints)
- Localization considerations if applicable (string length variation, cultural sensitivity, right-to-left support)

### Where It Fits in the Process

Parallel to **Information Architecture** and **Interaction Design**. Content and structure are inseparable — navigation labels are both IA and content design. Error messages are both interaction design and content design. These disciplines should inform each other, not run sequentially.

---

## 5. Accessibility

### What's Missing

The prototype brief template explicitly lists "accessibility compliance" as **out of scope**, deferring it to production. No other template or skill addresses accessibility. There is no WCAG checklist, no color contrast validation step, no keyboard navigation specification, no screen reader compatibility requirement.

### Why It Matters (Even with AI)

Deferring accessibility to production is the most expensive place to address it. Retrofitting accessibility into a built product requires reworking component hierarchies, interaction patterns, color systems, and content — all the things this process designs *before* production. Addressing accessibility during the design phase costs almost nothing extra; addressing it in production means redesigning what was already shipped.

AI agents building prototypes will not produce accessible output unless accessibility is part of the specification. Heading hierarchies, focus order, ARIA labels, color contrast ratios, touch target sizes — all need to be defined alongside the interaction design, not bolted on afterward.

### What This Phase Should Cover

**Accessibility Requirements**
- Target WCAG conformance level (2.1 AA is the standard baseline; AAA for specific criteria where feasible)
- Legal and compliance context (ADA, EAA, Section 508 — varies by market)

**Color and Contrast**
- All text/background combinations validated against WCAG AA contrast ratios (4.5:1 for normal text, 3:1 for large text)
- Non-text contrast for UI components and graphical objects (3:1)
- Color not used as the sole means of conveying information (always paired with icon, text, or pattern)
- Dark mode contrast validation (separate pass — dark mode often fails contrast checks that light mode passes)

**Keyboard and Focus**
- Full keyboard operability — every interactive element reachable and operable via keyboard
- Visible focus indicators — style, color, contrast
- Focus order matching visual reading order
- Skip navigation links for complex layouts
- Keyboard shortcuts (if any) documented and non-conflicting with assistive tech

**Screen Reader Compatibility**
- Semantic HTML structure — headings, landmarks, lists, tables used correctly
- ARIA labels for interactive elements without visible text
- Live regions for dynamic content updates (notifications, loading states, form validation)
- Image alt text strategy (decorative vs. informative vs. functional)
- Form field labels and error announcements

**Motor and Cognitive**
- Touch target minimum sizes (44x44px per WCAG 2.5.5)
- Adequate spacing between interactive elements
- No time limits without user control (or generous defaults)
- Clear error recovery paths — undo, back, confirm before destructive actions
- Reduced motion support (`prefers-reduced-motion` media query in design tokens)

**Accessibility Review Checkpoints**
- IA phase: heading hierarchy and landmark structure reviewed
- Interaction design phase: focus order and keyboard flows documented
- Visual design phase: contrast ratios validated
- Prototype phase: automated accessibility scan (axe, Lighthouse) run before user testing
- Iteration phase: accessibility findings tracked alongside usability findings

### Where It Fits in the Process

**Everywhere.** Accessibility is not a phase — it is a lens applied to every other phase. However, the primary specification work happens alongside Interaction Design (keyboard flows, focus order, ARIA) and Visual Design (contrast, color independence). The process should include accessibility checkpoints at each phase boundary rather than deferring everything to production.

---

## 6. Design QA / Handoff

### What's Missing

The PRD includes an "Agent-Ready Implementation Notes" section covering repo setup, build commands, key files, and feature flags. This is engineering handoff, not design handoff. There is no structured artifact for communicating *visual and interaction specifications* to the implementation layer — whether that implementation layer is a human developer or an AI coding agent.

### Why It Matters (Even with AI)

AI coding agents are literal. If the design spec says "card with shadow" but doesn't specify which shadow token, the agent picks one. If the spec shows a layout but doesn't specify responsive behavior, the agent guesses. The more precise the design handoff, the fewer iterations between "prototype" and "production-ready." Design QA is the discipline that catches the gap between intent and implementation before users do.

### What This Phase Should Cover

**Design Specification**
- Component inventory — every unique component in the prototype, mapped to design tokens
- Spacing and alignment specs — exact padding, margins, and grid usage per component
- Responsive behavior specs — layout changes at each breakpoint, not just "it's responsive"
- Interaction specs — hover states, transitions, animation durations (referenced from interaction design phase)

**Visual QA Checklist**
- Token compliance — every color, font, spacing, shadow, and radius uses a design token (no hardcoded values)
- Alignment and consistency — visual rhythm, consistent spacing patterns
- Cross-browser rendering — known browser-specific issues flagged
- Cross-device rendering — tested at key breakpoints with real content (not just placeholder)

**Design-to-Code Acceptance Criteria**
- Per-component acceptance criteria (visual, not just functional)
- Screenshot or reference comparison for key screens
- Allowed tolerance for pixel-level deviation (if any)

**Handoff Artifact**
- Annotated screen references with callouts for spacing, tokens, and interaction behavior
- Component variant matrix (default, hover, active, disabled, error — with exact token values)
- Design system integration notes — which existing components to use, which are new

### Where It Fits in the Process

After **Prototyping**, before or during **Iteration**. Once a prototype passes usability testing, the design QA phase ensures the spec is precise enough for production implementation. For AI-assisted workflows, this is the "prompt" for the coding agent — the more complete it is, the better the output.

---

## 7. Technical Feasibility Review

### What's Missing

Technical constraints are collected during discovery (intake questions) and documented in the PRD (dependencies, constraints sections) and risk register. But there is no structured touchpoint where engineering reviews the design *before* prototyping begins. The current process asks "are there constraints?" at intake and then proceeds to prototype without a formal feasibility check.

### Why It Matters (Even with AI)

AI can prototype anything — including things that cannot be built within the actual technical constraints. A real-time collaborative editor, a machine learning recommendation engine, and a simple CRUD form all look similar in a Figma prototype. The engineering cost is radically different. Without a feasibility review, the team may test and validate a prototype that cannot be shipped at the proposed scope, timeline, or cost.

### What This Phase Should Cover

**API and Data Review**
- Which data the design requires and whether it exists in current APIs/databases
- New API endpoints needed and estimated complexity
- Data latency expectations — what can be real-time vs. cached vs. batch
- Third-party API dependencies and their reliability/cost

**Performance Budget**
- Page load time targets (first contentful paint, time to interactive)
- Bundle size constraints
- Animation frame rate targets (60fps for transitions, acceptable degradation)
- Offline/low-connectivity behavior requirements

**Build vs. Buy Evaluation**
- For each major capability: build custom, use existing library, or integrate third-party service
- Cost, maintenance, and lock-in tradeoffs for each option

**Engineering Spike Outcomes** (if applicable)
- Proof-of-concept results for technically uncertain features
- Findings that affect design decisions (e.g., "real-time sync adds 200ms latency — design should account for optimistic updates")

**Feasibility Sign-Off**
- Engineering confirmation that the proposed design is buildable within stated constraints
- Flagged risks with severity and mitigation (fed back into risk register)

### Where It Fits in the Process

Between **Definition** and **Prototyping**, ideally concurrent with IA and Interaction Design. The feasibility review should happen early enough to influence design decisions — not after the prototype is built and tested.

---

## 8. Design Critique / Review

### What's Missing

The discovery skill includes AI-driven blind-spot detection at each step boundary, and iteration briefs have retrospective "what worked / what didn't" sections. But there is no structured peer or team review during design phases. The process assumes either a solo designer or async feedback, with no template for synchronous critique sessions.

### Why It Matters (Even with AI)

AI blind-spot detection catches structural gaps (missing personas, unvalidated hypotheses). It does not catch taste-level design issues, strategic misalignment, or organizational politics. Design critique from peers, stakeholders, and engineers surfaces problems that no amount of automated checking will find: "this interaction pattern conflicts with our other product," "legal will never approve this flow," "this visual style doesn't match the brand pivot we announced last month."

### What This Phase Should Cover

**Design Review Sessions**
- Structured agenda: context (2 min), walkthrough (10 min), feedback (15 min), decisions (5 min)
- Facilitator role — keeps feedback constructive and on-topic
- Attendee roles — who is providing feedback on what (visual, interaction, content, feasibility, brand)
- Ground rules: critique the work not the designer, be specific, propose alternatives, distinguish preference from principle

**Feedback Capture**
- Per-screen or per-flow feedback log
- Categorized: visual, interaction, content, accessibility, technical, strategic
- Severity: blocker, important, nice-to-have, out-of-scope
- Owner and resolution status for each item

**Feedback-to-Decision Mapping**
- Which feedback was acted on and why
- Which feedback was not acted on and why (documented, not ignored)
- Links to decision log entries for significant design changes driven by critique

**Review Cadence**
- IA review — after sitemap and content model are drafted
- Interaction review — after detailed flows and states are documented
- Visual review — after design direction is established and key screens are designed
- Pre-test review — before usability testing begins (catch obvious issues internally first)
- Post-iteration review — after each test-and-iterate cycle, before the next one begins

### Where It Fits in the Process

Design critique is not a phase — it is a recurring checkpoint embedded in every phase after Discovery. Each design discipline (IA, interaction, visual, content) should have at least one structured review before the prototype is built, and one after testing results are in.

---

## Updated Process Flow

The complete process, with gaps filled, looks like this:

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
               Prototyping
               (informed by IA + IxD + visual + content + accessibility)
                     │
                Design QA ◄── (spec validation)
                     │
                     ▼
                  Testing
                     │
                     ▼
                Iteration ──(update all artifacts)──► Definition
                     │
                     ▼
              Ship or Next Cycle
```

Accessibility is not shown as a box because it runs as a lens across IA, Interaction Design, Visual Design, Content Design, and Design QA — with checkpoints at each phase boundary.

Design Critique is not a phase — it is a recurring gate that ensures structural, visual, content, and interaction decisions are reviewed before the next phase begins.

---

## What Changes for the AI-Assisted Designer

In a traditional process, these phases take weeks. In an AI-assisted workflow, they take hours — but they still happen. The difference:

| Discipline | Traditional | AI-Assisted |
|---|---|---|
| Information Architecture | 1-2 weeks of card sorts, tree tests, sitemap iterations | AI generates sitemap from PRD + personas; designer validates and adjusts; tree test is optional rapid validation |
| Interaction Design | Weeks of wireframing and flow documentation | AI generates flows and state inventories from IA + PRD; designer reviews edge cases and error paths |
| Visual Direction | Mood boards, style explorations, stakeholder presentations | AI generates style tile options from brand brief; designer selects and refines; stakeholder review is a single session |
| Content Design | Weeks of copy drafts, tone guides, content audits | AI generates voice framework from persona research; designer edits for brand fit; microcopy is drafted per-screen alongside interaction specs |
| Accessibility | Retrofitted audit after launch | Baked into IA (heading hierarchy), interaction design (focus order), visual design (contrast), and prototype (automated scan) |
| Design QA | Pixel-level spec handoff documents | AI generates component specs from design tokens + prototype; designer validates completeness |
| Technical Feasibility | Multi-week engineering spike | AI flags common feasibility concerns from PRD; engineer reviews and confirms in a single session |
| Design Critique | Scheduled weekly team critique sessions | Async AI pre-review (blind spots) + focused synchronous session for strategic and taste-level feedback |

The phases compress. They do not disappear.
