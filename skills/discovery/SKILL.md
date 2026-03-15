---
name: discovery
description: Adaptive discovery & research workflow for product designers. Handles new products, new features, redesigns, and optimizations. Supports multiple personas, stakeholders, and research methods. Scales depth based on project complexity.
---

# Discovery & Research Skill

## When to Use

Use this skill when:
- Starting a new product or feature from scratch
- Adding a new feature to an existing product
- Redesigning an existing area that isn't performing
- Optimizing an existing flow based on data or feedback
- Validating a product idea before building
- Conducting market or user research for any product work
- Framing a problem before prototyping
- You need structured research to support a product decision

## Prerequisites

- A project folder exists (or will be created)
- Web search access is available for market research steps
- Templates are available in the workflow system repo (the skill will guide you if they're missing)

## Philosophy

**You decide, AI executes.** This skill generates options, does research legwork, and structures findings — but every strategic decision is yours. AI is your research analyst, not your product lead.

**Traceability is non-negotiable.** Every insight must link to a source. No source = opinion, not evidence. The skill actively enforces this.

**Disconfirming evidence is mandatory.** At every research step, the skill requires a section on what could prove you wrong. This combats the AI tendency toward overconfident summaries.

**Speed through compression, not elimination.** The full loop is 4-8 hours, not 4-8 weeks. We compress research through AI synthesis, not by skipping it.

**All phases always run, depth scales.** No phases are skipped — even "simple" projects pass through every step. The system adjusts how deep it goes based on project complexity. This ensures blind spots are surfaced even when the designer thinks the project is straightforward.

---

## Process Overview

```
Intake: Classify the Project             (15 min)  → project classification
Step 1: Frame the Problem                (30-60 min) → hypothesis-sheet.md
Step 2: Research the Landscape           (1-3 hrs) → competitor-teardown.md + market-research.md
Step 3: Prepare Research Plan            (1 hr)    → research-plan.md + per-method artifacts
Step 4: Synthesize Evidence              (1-2 hrs) → evidence-log.md + research-synthesis.md
Step 5: Decide                           (30 min)  → jtbd-canvas.md + prototype-brief.md
Step 6: Align Stakeholders               (30-60 min) → stakeholder-brief.md + stakeholder-raci.md
```

Total: 4-8 hours for a complete discovery cycle.

You can run individual steps or the full sequence. The skill tracks your progress.

---

## Intake: Classify the Project

**Goal**: Understand the project context to set appropriate depth for all phases.

**Time**: ~15 minutes

### What to do

Ask the following classification questions **one at a time**:

1. **Project type**: "What are you working on?"
   - New product (greenfield)
   - New feature for an existing product
   - Redesign of an existing area
   - Optimization of an existing area

2. **User complexity**: "Who are the users?"
   - Single user type
   - Multiple personas with shared flows
   - Multiple personas with separate flows

3. **Stakeholder landscape**: "Who's involved in decisions?"
   - Solo designer
   - Single stakeholder
   - Multiple stakeholders with aligned goals
   - Multiple stakeholders with competing priorities

4. **Input triggers** (multi-select): "What's driving this work?"
   - Designer initiative
   - Business request
   - User feedback or data
   - Technical constraint or opportunity

5. **Existing documentation**: "What documentation exists about the current product/area?"
   - Accept: pasted text, markdown files in repo, links (Notion, Google Docs, SharePoint, Figma, FigJam, or any other source)
   - For links: use web fetch to pull content. If access is restricted, ask the designer to paste the relevant content.
   - If nothing exists: note this — the system will interview the designer to build understanding in Step 1.

### After classification

- Set **depth levels** for each phase based on the answers (see Depth Scaling table below)
- **Validate against existing artifacts**: If the project has existing files (prior research, AGENTS.md, codebase), read them and check for inconsistencies with the classification. Flag anything that suggests more complexity than stated.
- Store the classification context — reference it throughout all steps.

### Depth Scaling Reference

| Scenario | Step 1 | Step 3 | Step 6 |
|---|---|---|---|
| New product, solo, single user | Hypotheses only | One method, one guide | Quick self-check |
| New feature, multiple personas, single stakeholder | Existing system analysis + per-persona hypotheses | Per-persona, multi-method | Focused stakeholder brief |
| Redesign, multiple personas, multiple stakeholders | Deep current-state mapping + pain analysis + per-persona hypotheses | Per-persona, multi-method with current-experience focus | Full RACI + conflict resolution |
| Optimization, solo, single user | Focused hypothesis on specific metric/flow | Analytics-focused methods | Lightweight self-check |

---

## Blind Spot Detection

Throughout the entire process, run two layers of blind spot detection:

### Real-Time Detection

As the designer provides information during any step, cross-reference what they say against the project classification and flag potential gaps immediately:
- "You mentioned an approval workflow — is there a manager persona we should account for?"
- "This feature touches billing — is there a finance stakeholder?"
- "You described two different user types — should we update the classification to multi-persona?"

### End-of-Phase Checkpoint

At the end of **every step**, run a structured review:

> **Blind spot check**: Based on everything so far, here are potential gaps:
> - [Uncovered personas or user types implied but not explored]
> - [Stakeholders who might be affected but haven't been mentioned]
> - [Flows or system areas that could be impacted]
> - [Missing disconfirming evidence]
>
> Any of these relevant, or can we move on?

The designer can dismiss or promote each item. **Learn from dismissals** — if a blind spot is dismissed, don't raise it again unless new evidence surfaces.

---

## Step 1: Frame the Problem

**Goal**: Define the problem space and generate testable hypotheses. For non-greenfield projects, first understand what exists.

**Time**: 30-60 minutes (longer for complex existing systems)

### What to do

#### For non-greenfield projects (new feature, redesign, optimization): Start with existing system analysis

1. **Gather existing context**: Use the documentation provided during intake. If no documentation exists, interview the designer:
   - "Walk me through the current experience for [area]. What happens step by step?"
   - "What's working well that we shouldn't break?"
   - "What are the known pain points or complaints?"
   - "What metrics exist for this area? What do they show?"
   - "Are there technical constraints or dependencies we need to know about?"

2. **Map the current state**:
   - Current user flows (per persona if multi-persona)
   - Known issues and pain points
   - Current metrics and performance
   - System dependencies and constraints
   - What's been tried before and what happened

3. **Identify what needs to change and why**: Bridge from current state to the problem framing.

#### For all project types: Problem framing and hypotheses

4. **Understand the problem**: Ask clarifying questions one at a time:
   - "Who experiences this problem most painfully?"
   - "What do they do today to solve it?"
   - "What would success look like for them?"
   - "What's the circumstance or trigger that makes this problem acute?"
   - "What constraints do we already know about?" (technical, market, team, time)

5. **Generate hypotheses**: Based on the answers, generate 3-5 falsifiable hypotheses. Each must follow this format:
   ```
   We believe [specific user group] struggles with [specific problem]
   in the context of [specific circumstance].
   We'll know this is true if [observable evidence].
   We'll know this is false if [disconfirming evidence].
   Cheapest test: [fastest way to validate — survey, analytics, 3 interviews, etc.]
   ```

   **For multi-persona projects**: Generate per-persona hypotheses, each linked to a specific user type. Some hypotheses may span personas (e.g., "handoff between [Persona A] and [Persona B] causes delays").

6. **Prioritize**: Ask the user to rank hypotheses by:
   - Risk (what's most uncertain?)
   - Impact (what matters most if true?)
   - Cost to test (what's cheapest to validate?)

7. **Define stop criteria**: For each priority hypothesis, ask: "What evidence would convince you to STOP pursuing this direction?"

### Output

Write the results to `research/hypothesis-sheet.md` using the template. The file should contain:
- Problem context (2-3 sentences)
- Current state summary (for non-greenfield projects)
- 3-5 ranked hypotheses in the format above (linked to personas if multi-persona)
- Prioritization rationale
- Stop criteria per hypothesis
- Date and status

### Quality checks
- [ ] Every hypothesis is falsifiable (has a "we'll know this is false if" clause)
- [ ] At least one "cheapest test" doesn't require building software
- [ ] Stop criteria are concrete and observable, not vague
- [ ] For non-greenfield: current state is documented before hypotheses
- [ ] For multi-persona: hypotheses are linked to specific user types

### End-of-phase checkpoint
Run the blind spot check (see Blind Spot Detection section).

---

## Step 2: Research the Landscape

**Goal**: Map competitors, market dynamics, existing solutions, and (for non-greenfield) internal data.

**Time**: 1-3 hours

### What to do

1. **Competitor research**: Using web search, find and analyze:
   - Direct competitors (solving the same problem)
   - Indirect competitors (different solution to the same job-to-be-done)
   - Adjacent solutions (solving related problems)

   For each competitor, document:
   - Name, URL, founding date
   - Target ICP (ideal customer profile)
   - Core features / value proposition
   - Pricing model
   - Strengths and weaknesses
   - Source + date of information
   - Confidence level: High / Medium / Low

2. **Market research**: Research and document:
   - Market size estimates (with sources)
   - Growth trends
   - Regulatory or compliance considerations
   - Technology trends relevant to the space
   - Key players and their positioning

3. **Internal research** (for non-greenfield projects): Gather and analyze:
   - Current product metrics and trends (conversion, retention, engagement)
   - Support tickets and common complaints related to the area
   - NPS/CSAT data if available
   - User feedback history (feature requests, surveys)
   - Previous attempts to address the problem and outcomes
   - Technical constraints or debt affecting the area

4. **Disconfirming evidence** (MANDATORY): Add a section titled "What Could Prove Us Wrong" that includes:
   - Evidence that the market is shrinking or saturated
   - Competitors who tried and failed (and why)
   - Reasons users might NOT switch from current solutions
   - Technical or regulatory barriers we might be underestimating
   - For non-greenfield: reasons the current solution might actually be fine

5. **Gap analysis**: Identify unmet needs — problems that existing solutions don't address well.

### Constraints for AI research
- Only use sources from the last 6 months unless something is fundamentally established
- For every claim: include source URL + date + confidence rating (High/Medium/Low)
- Mark any claim that couldn't be independently verified as "Unverified"
- Do NOT present summaries as facts — always attribute

### Output

Write results to:
- `research/competitor-teardown.md` — Competitor analysis
- `research/market-research.md` — Market dynamics + internal research (if applicable)

### Quality checks
- [ ] Every claim has a source + date + confidence
- [ ] "Disconfirming evidence" section exists and has at least 3 items
- [ ] At least 5 competitors analyzed (or documented why fewer exist)
- [ ] Gap analysis identifies at least 2 unmet needs
- [ ] For non-greenfield: internal data is included (or documented as unavailable)

### End-of-phase checkpoint
Run the blind spot check (see Blind Spot Detection section).

---

## Step 3: Prepare Research Plan

**Goal**: Design a research plan using appropriate methods, not just interviews. Create preparation artifacts for each chosen method.

**Time**: ~1 hour

### What to do

1. **Recommend research methods**: Based on the project classification, hypotheses, and what's already known, recommend 2-4 research methods from the full menu. Explain why each is appropriate.

   **Qualitative methods:**
   - User interviews — deep understanding of motivations, pain points, workflows
   - Contextual inquiry / observation — understanding real behavior in context
   - Diary studies — capturing experiences over time
   - Focus groups — exploring shared attitudes and social dynamics
   - Card sorting / tree testing — validating information architecture
   - Usability testing — testing existing product or prototype flows

   **Quantitative methods:**
   - Surveys / questionnaires — validating patterns at scale
   - Analytics review — understanding current behavior from data
   - A/B test results — evaluating prior or planned experiments
   - Support ticket / NPS / CSAT data analysis — understanding satisfaction patterns
   - Heatmaps / session recordings review — understanding interaction patterns

   **Secondary research:**
   - Competitor analysis — (already done in Step 2)
   - Market research — (already done in Step 2)
   - Academic / industry research — published studies and frameworks
   - Internal documentation review — (done during intake/Step 1)

   **Method recommendation guidance:**
   - Optimization projects → analytics review + usability testing for fastest signal
   - Redesign projects → interviews + analytics + usability testing on current experience
   - New features → interviews + surveys to validate need at scale
   - New products → interviews + competitor analysis + surveys
   - Always consider: what methods best test the specific hypotheses?

2. **Let the designer pick**: Present the recommendations and let the designer select which methods to use (multi-select). They may add methods you didn't recommend.

3. **Generate preparation artifacts per method**:

   **For interviews:**
   - Interview guide with 8 core questions organized by theme
   - 6 follow-up questions for deeper exploration
   - 3 "disconfirming" questions designed to challenge assumptions
   - Label each question with JTBD dimension (Functional/Social/Emotional), hypothesis it tests, and what a disconfirming answer looks like
   - Question design: ask about past behavior, not hypothetical futures; focus on circumstances; include "show me" questions; avoid leading questions
   - Per-interview notes template with participant info, key quotes, observations, signal tags, hypothesis mapping
   - For redesign/optimization: include current-experience questions ("Walk me through how you do X today")
   - Ethics checklist (consent, privacy, recruitment bias, compensation, data handling)

   **For surveys:**
   - Survey draft with question types (multiple choice, Likert scale, open-ended)
   - Screening criteria for respondents
   - Sample size recommendations
   - Distribution plan

   **For analytics review:**
   - Analytics brief: what metrics to pull, what funnels to examine, what segments to compare
   - Baseline measurements to capture
   - Anomaly indicators to look for

   **For usability testing:**
   - Test script with tasks and scenarios
   - Success criteria per task
   - Observation protocol (what to watch for)
   - Participant screening criteria

   **For other methods:** Generate an appropriate preparation artifact following the same pattern — what to do, what to look for, how to capture findings.

   **For multi-persona projects**: Generate per-persona versions of research artifacts where relevant (e.g., separate interview guides per persona, persona-specific survey questions, per-persona analytics segments).

4. **Create research plan hub**: Write `research/research-plan.md` listing:
   - Chosen methods and why each was selected
   - Which hypotheses each method tests
   - Timeline and sequence
   - Participant profiles per method (if applicable)
   - What "enough data" looks like for each method

### Output

Write results to:
- `research/research-plan.md` — Hub document listing all methods, rationale, timeline
- `research/interview-guide.md` — If interviews selected
- `research/interview-notes.md` — If interviews selected (template, copy per interview)
- `research/survey-draft.md` — If surveys selected
- `research/analytics-brief.md` — If analytics review selected
- `research/usability-test-script.md` — If usability testing selected
- Additional method-specific artifacts as needed

### Quality checks
- [ ] At least 2 research methods selected
- [ ] Every selected method links to at least one hypothesis it will test
- [ ] Research plan has clear "enough data" criteria
- [ ] For multi-persona: per-persona research artifacts where relevant
- [ ] For redesign/optimization: current-experience questions are included in relevant methods
- [ ] Ethics considerations addressed for methods involving participants

### End-of-phase checkpoint
Run the blind spot check. Specifically ask: "Any user types we're not planning to research?"

---

## Step 4: Synthesize Evidence

**Goal**: Find patterns across all research and methods. Enforce traceability. For multi-persona projects, create cross-persona system flow map.

**Time**: 1-2 hours

### What to do

1. **Gather inputs**: Ask the user to provide or reference:
   - Completed research artifacts (interview notes, survey results, analytics data, usability test findings)
   - Market research findings
   - Competitor analysis
   - Any other evidence (support tickets, session recordings, prior research)

2. **Theme extraction**: Analyze all evidence and identify:
   - Recurring pain points (mentioned by 3+ sources)
   - Common workarounds
   - Unmet needs
   - Surprising findings
   - Contradictions between sources or methods

3. **Traceability check** (MANDATORY): For every theme/insight:
   - Link to at least one specific source (quote, data point, observation)
   - If an insight has no traceable source, mark it as "OPINION — needs evidence"
   - Do NOT present AI-synthesized conclusions as evidence

4. **Hypothesis validation**: For each original hypothesis:
   - Evidence supporting it (with sources)
   - Evidence contradicting it (with sources)
   - Current confidence: Validated / Partially validated / Invalidated / Inconclusive
   - Recommendation: Continue / Pivot / Stop

5. **Key insights**: Distill to 5-7 key insights, each with:
   - The insight (one sentence)
   - Supporting evidence (2-3 bullet points with sources)
   - Confidence level
   - Implication for the product

6. **Per-persona synthesis** (for multi-persona projects):
   - Synthesize findings per persona: what did we learn about each user type?
   - Identify per-persona pain points, needs, and priorities
   - Generate/update individual persona files (`research/user-persona-[name].md`)
   - Generate per-persona journey maps with inline cross-references to other personas

7. **Cross-persona system flow map** (for multi-persona projects):
   - Create a system-level view showing end-to-end flow across all personas
   - Map handoffs, dependencies, shared touchpoints, data flow between roles
   - Highlight conflict points where persona needs may clash
   - Write to `research/system-flow-map.md`

### Output

Write results to:
- `research/evidence-log.md` — All evidence with sources and tags
- `research/research-synthesis.md` — Themes, insights, hypothesis validation, recommendations
- `research/user-persona-[name].md` — Per-persona files (for multi-persona projects)
- `research/system-flow-map.md` — Cross-persona flow map (for multi-persona projects)

### Quality checks
- [ ] Every insight links to at least one source
- [ ] No "OPINION" items are used as basis for decisions
- [ ] Each original hypothesis has a clear validation status
- [ ] Contradictions between sources are explicitly called out
- [ ] For multi-persona: per-persona synthesis completed and journey maps created
- [ ] For multi-persona: system flow map shows all handoffs and conflict points

### End-of-phase checkpoint
Run the blind spot check. Specifically ask: "Any personas or stakeholders we haven't heard from?"

---

## Step 5: Decide

**Goal**: Make a go/no-go/pivot decision based on evidence. For multi-stakeholder projects, establish decision framework.

**Time**: ~30 minutes

### What to do

1. **Present decision framework**: Summarize:
   - Original hypotheses and their validation status
   - Top 5-7 insights from synthesis
   - Key risks and unknowns that remain
   - What we'd need to learn next

2. **JTBD statement**: If proceeding, formulate the core Job-to-be-Done:
   ```
   When [circumstance/trigger],
   I want to [desired progress],
   so I can [expected outcome].

   Functional: [what they need to accomplish]
   Social: [how they want to be perceived]
   Emotional: [how they want to feel]
   ```

   **For multi-persona projects**: Formulate a JTBD statement per persona, or a shared JTBD with persona-specific dimensions.

3. **Success criteria**: Define measurable success:
   - North star metric
   - 2-3 input metrics
   - 1-2 guardrail metrics (things that should NOT get worse)

4. **Per-persona impact assessment** (for multi-persona projects):
   - How does the proposed direction affect each persona?
   - Are there trade-offs between personas? If so, which persona's needs take priority and why?

5. **Stakeholder decision framework** (for multi-stakeholder projects):
   - Create stakeholder map: each stakeholder's name/role, area of interest, level of influence, key priorities, potential concerns
   - Build RACI framework: for each key decision area, who is Responsible, Accountable, Consulted, Informed
   - Define conflict resolution paths: "If [Stakeholder A] and [Stakeholder B] disagree on X, escalation goes to Y"
   - Write to `research/stakeholder-raci.md`

6. **Prototype brief** (if go): Create a brief for the prototyping phase:
   - Core flow to prototype (1-2 key user journeys, per persona if multi-persona)
   - What to test in the prototype
   - What's explicitly OUT of scope
   - Success criteria for the prototype test

7. **Ask for the decision**: Present the evidence summary and ask:
   - "Based on this evidence, do you want to: GO (proceed to prototyping), PIVOT (reframe the problem), or STOP (this isn't worth pursuing)?"

### Output

Write results to:
- `research/jtbd-canvas.md` — Job statement, forces, success criteria
- `research/prototype-brief.md` — Brief for next phase (only if GO decision)
- `research/stakeholder-raci.md` — Stakeholder map + RACI + conflict resolution (for multi-stakeholder projects)

### Quality checks
- [ ] Decision is explicitly linked to evidence, not gut feeling
- [ ] JTBD statement includes all three dimensions (functional, social, emotional)
- [ ] Success criteria are measurable and have a timeframe
- [ ] Prototype scope is explicitly limited (non-goals listed)
- [ ] For multi-persona: per-persona impact is assessed
- [ ] For multi-stakeholder: RACI framework is documented with conflict resolution paths

### End-of-phase checkpoint
Run the blind spot check. Specifically ask: "Any decision-makers who haven't weighed in?"

---

## Step 6: Align Stakeholders

**Goal**: Communicate findings and ensure alignment before proceeding. Always runs — scaled in depth.

**Time**: 30-60 minutes

### What to do

**For solo designers:**
Run a lightweight self-check:
- "Have you considered how this affects other teams or products?"
- "Is there anyone who should know about this direction before you prototype?"
- "Any organizational constraints or dependencies you haven't accounted for?"
- Record the decision in the decision log.

**For single stakeholder:**
- Generate a focused research brief using the RACI from Step 5
- Present: problem + top 5 insights + recommendation + what we're NOT doing + success criteria
- Prepare 3-4 pre-answered FAQ
- Record the decision in the decision log

**For multiple stakeholders:**
1. **Generate research brief**: A concise (1-2 page) summary:
   - Problem statement + evidence (3 bullet points max)
   - Key insights (top 5, each with one supporting data point)
   - Recommended direction + alternatives considered
   - What we're NOT doing (and why — with evidence)
   - Per-persona impact summary
   - Success criteria + how we'll measure
   - Open questions that need team input
   - Estimated timeline for next phase

2. **Prepare FAQ**: Anticipate likely stakeholder questions:
   - "Why not [alternative approach]?"
   - "How confident are we in this data?"
   - "What's the risk of proceeding?"
   - "What's the cost of waiting?"
   - "How does this affect [their area of interest]?"
   - Pre-write answers backed by evidence from the research

3. **Tailor communication per stakeholder**: Using the RACI framework:
   - What each stakeholder needs to know (based on their role and interests)
   - Who needs to sign off vs. who just needs to be informed
   - Conflict resolution: if stakeholders disagree, reference the framework

4. **Decision log entry**: Record in the decision log:
   - Context: What prompted this investigation
   - Options considered
   - Decision made
   - Evidence supporting the decision
   - Risks accepted
   - Review date

### Output

Write results to:
- `research/stakeholder-brief.md` — Concise research brief + FAQ
- Update `docs/decisions/decision-log.md`

### Quality checks
- [ ] Brief is 1-2 pages max (concise, not comprehensive)
- [ ] Every recommendation links to evidence
- [ ] FAQ has at least 4 pre-answered questions
- [ ] Open questions are explicitly listed (don't pretend you have all answers)
- [ ] For multi-stakeholder: communication is tailored per stakeholder role
- [ ] Decision is recorded in the decision log

### End-of-phase checkpoint
Run the blind spot check. Specifically ask: "Any open questions or unresolved conflicts?"

---

## Running Individual Steps

You don't have to run all steps in sequence. Common patterns:

- **Quick validation**: Intake + Steps 1 + 2 (classify + frame + landscape)
- **Research prep**: Intake + Steps 1 + 3 (classify + frame + prepare research plan)
- **Post-research synthesis**: Steps 4 + 5 (synthesize + decide, when you already have data)
- **Full discovery**: Intake + all 6 steps in order

When the user invokes this skill, ask which step(s) they want to run. **Always start with intake** if it hasn't been done yet.

---

## File Structure

All outputs go to a `research/` folder in the current project:

```
research/
├── hypothesis-sheet.md         ← Step 1
├── competitor-teardown.md      ← Step 2
├── market-research.md          ← Step 2
├── research-plan.md            ← Step 3 (hub document)
├── interview-guide.md          ← Step 3 (if interviews selected)
├── interview-notes.md          ← Step 3 (template, copy per interview)
├── survey-draft.md             ← Step 3 (if surveys selected)
├── analytics-brief.md          ← Step 3 (if analytics selected)
├── usability-test-script.md    ← Step 3 (if usability testing selected)
├── evidence-log.md             ← Step 4
├── research-synthesis.md       ← Step 4
├── user-persona-[name].md      ← Step 4 (one per persona, if multi-persona)
├── system-flow-map.md          ← Step 4 (if multi-persona)
├── jtbd-canvas.md              ← Step 5
├── prototype-brief.md          ← Step 5
├── stakeholder-raci.md         ← Step 5 (if multi-stakeholder)
└── stakeholder-brief.md        ← Step 6

docs/decisions/
└── decision-log.md             ← Step 6 (append)
```

---

## Artifact Management

**Core principle: gather in conversation, persist at step boundaries.** During each step, hold all findings, insights, and decisions in conversation memory. Write to files at natural breakpoints — not after every input.

### Mode 1: Step-boundary batch write (primary)

Every step follows this rhythm:

1. **Work the step** — Ask questions, do research, run analysis. Keep everything in conversation context. Do NOT write files mid-step.
2. **Summarize before writing** — When the step is complete (including the blind spot checkpoint), present a single write summary:

   > **Step [N] complete. Here's what I'll document:**
   > - `research/[file].md` — [1-2 sentence summary of what goes in]
   > - `research/[file].md` — [1-2 sentence summary of what goes in]
   > - [any queued cross-artifact updates from prior steps]
   >
   > **Proceed with writing these files?**

3. **Write in one batch** — On confirmation, write all files for that step together. No individual confirmations per file.
4. **Confirm completion** — After writing, list the files written with a one-line status each.

### Mode 2: Milestone checkpoints (progress safety)

Longer steps have natural internal sub-tasks. At these boundaries, offer a lightweight checkpoint so the user doesn't lose progress if the conversation is interrupted:

> "Good progress so far. Want me to save a checkpoint before we continue?"

- **On "yes"**: Write current work as draft artifacts with `status: draft` in frontmatter. These get finalized at the step-boundary write.
- **On "no"**: Keep going.

**Checkpoint points by step:**

| Step | Checkpoint after... |
|------|-------------------|
| Step 1 | Existing system analysis complete (before hypothesis generation) |
| Step 2 | Competitor research complete (before market research) |
| Step 3 | Method selection complete (before generating per-method artifacts) |
| Step 4 | After evidence gathering; after theme extraction; after persona synthesis (3 checkpoints — longest step) |
| Steps 5-6 | No mid-step checkpoints needed (short enough to complete in one go) |

### Mode 3: Cross-artifact update queue

When work in one step implies changes to files written in a prior step, do NOT update those files immediately. Queue the update and include it in the next step-boundary write summary:

> **Queued updates from prior steps:**
> - `research/hypothesis-sheet.md` — Mark H2 as invalidated based on competitor evidence
>
> **New files for this step:**
> - `research/competitor-teardown.md` — [summary]

Write everything in one batch after a single confirmation.

### File handling rules

- **Append-only files** (`evidence-log.md`, `docs/decisions/decision-log.md`): Always append new entries. Never overwrite existing entries.
- **Draft checkpoints**: Written with `status: draft` in frontmatter. Finalized to `status: complete` at step boundary.
- **Template reads**: Only read a template file when about to fill and write it. Do NOT read all templates upfront.
- **All other files**: Replace the full file content with the updated version at the step boundary.

### What NOT to do

- Do NOT write files when the user provides input mid-step. Hold it in context.
- Do NOT write files when web research completes mid-step. Hold it in context.
- Do NOT write files when a blind spot surfaces. Note it, fold it into the step summary.
- Do NOT ask "should I update this file?" for individual files. The step-boundary summary is the single confirmation point.

### Progress tracking

At the start of each conversation:
1. Check which files exist in `research/` and `docs/decisions/`. Read only those relevant to the current step.
2. Summarize project state in 3-5 bullet points: what steps are done, what step is next, any pending queued updates.
3. Do NOT re-read all existing files. Only read a file if the current step requires its content as input.

---

## Principles to Follow Throughout

1. **Ask, don't assume**: When uncertain about context, user needs, or constraints, ask a clarifying question rather than making assumptions.

2. **One question at a time**: Don't overwhelm with multiple questions. Ask the most important one, get the answer, then proceed.

3. **Show your work**: When synthesizing research, show the sources and reasoning, not just conclusions.

4. **Flag uncertainty**: Use confidence levels (High/Medium/Low) and explicitly mark areas where evidence is thin.

5. **Respect the human's expertise**: The user is an experienced product designer. AI augments their judgment, doesn't replace it. Present options and trade-offs, let them decide.

6. **Time-box aggressively**: If research is taking longer than the suggested time, ask: "We've been at this for a while. Do you want to continue digging or move forward with what we have?"

7. **Build on existing work**: Always check if the user has prior research, evidence, or context to build on rather than starting from scratch.

8. **Surface blind spots proactively**: Don't wait for the checkpoint — if you notice a potential gap in real-time, flag it immediately.

9. **Accept any source format**: The designer may provide context as pasted text, markdown files, links to Notion/Google Docs/SharePoint/Figma/FigJam, or verbal descriptions. Work with whatever you get.

10. **Scale, don't skip**: Every phase runs regardless of project complexity. Adjust depth, not presence.

11. **Document at step boundaries**: Gather findings in conversation, persist to files at the end of each step. Offer milestone checkpoints in longer steps so progress isn't lost. One summary, one confirmation, one batch write. See the Artifact Management section for details.
