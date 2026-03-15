# AI-Native Product Designer Workflow System

A workflow system for product designers who use [Claude Code](https://docs.anthropic.com/en/docs/claude-code) as their AI pair. It gives Claude a structured, evidence-based product design process — from discovery research through prototyping and iteration.

Instead of the traditional linear process (research → wireframes → mockups → prototype → test → handoff → QA), this system supports a tight, AI-augmented loop:

```
Hypothesis → Working Prototype → Test with Real Users → Iterate → Ship
```

---

## Why This Exists

Hi, I'm **Sjoerd Faesen**. Product design lead, 10+ years in the field, mostly in SaaS, Fintech, EdTech, and regulated industries.

I spent a lot of time studying how teams at Anthropic, OpenAI, and Perplexity actually ship product in 2026. And honestly, it looks nothing like the process most design teams still follow. The best teams have compressed months of traditional discovery into hours. Not by cutting corners, but by using AI to handle the research legwork while designers focus on the judgment calls that actually matter.

This system is my attempt to codify that approach. It combines what I learned from studying those workflows with what I've picked up from 10+ years of doing the work myself: building design systems with governance that sticks across squads, creating critique cultures that outlast any single person, and finding ways to bring non-design stakeholders into real decisions instead of just review meetings.

I use AI as a daily collaborator in research, documentation, prototyping, and development. I also have hands-on experience designing agentic and conversational AI in regulated environments, where responsible AI (trust signals, uncertainty expression, source transparency) is a design problem, not a compliance checkbox. That perspective shaped every part of this system, especially the emphasis on evidence traceability and disconfirming evidence.

**This is not a finished product.** It's an opinionated starting point. My take on what AI-native product discovery looks like right now. The field is moving fast, and I expect this system to evolve with it.

---

## Prerequisites

| Requirement | Why |
|---|---|
| **[Claude Code](https://docs.anthropic.com/en/docs/claude-code)** | The skills in this system are Claude Code skill files. They only work inside Claude Code. |
| **macOS, Linux, or WSL** | The setup script uses bash and `ln -s` for symlinks. Native Windows (without WSL) is not supported. |
| **Git** | To clone this repo. |

You do **not** need Node.js, Python, or any other runtime. The system is pure markdown + Claude Code skills.

---

## What Are Claude Code Skills?

If you're new to Claude Code: **skills** are instruction files (markdown) that teach Claude specialized workflows. When you reference a skill in conversation, Claude reads the file and follows its process.

Think of it like giving Claude a playbook. Instead of telling Claude "help me do user research" and hoping for the best, the `discovery` skill gives Claude a detailed 6-step process with quality checks, blind spot detection, and structured output formats.

Skills are stored in `~/.claude/skills/` and are available in every project you open with Claude Code.

---

## Quick Start

### 1. Clone and install

```bash
# Replace with your actual repo URL (or fork URL)
git clone https://github.com/<your-username>/product-design-process.git
cd product-design-process
chmod +x setup.sh
./setup.sh
```

This creates symlinks from `~/.claude/skills/` to the skills in this repo. Changes you make to the skill files are immediately available everywhere — no reinstall needed.

### 2. Create a new project

Open a **new, empty folder** in Claude Code (this is your product project, not this repo):

```bash
mkdir ~/my-product-project
cd ~/my-product-project
claude
```

Then tell Claude:

```
Help me scaffold a new product project
```

Claude will ask you a series of questions (project name, type, user complexity, stakeholders) and create the right folder structure, templates, and configuration files. You'll end up with:

```
my-product-project/
  AGENTS.md              ← Agent instructions (filled with your project context)
  CLAUDE.md              ← Claude Code config (filled with your tech stack)
  research/              ← Where all research artifacts live
    hypothesis-sheet.md
    evidence-log.md
    research-plan.md
    ...
  docs/
    decisions/           ← Decision records
    prd/                 ← Product requirements (if you chose the definition phase)
  prototypes/            ← Working prototypes (if you chose the prototyping phase)
  iterations/            ← Iteration briefs (if you chose the iteration phase)
```

### 3. Run discovery

In the same project, tell Claude:

```
Help me run discovery for this project
```

Claude follows the discovery skill's 6-step process. It asks you questions, does web research, generates hypotheses, and produces structured artifacts — all in the `research/` folder.

### 4. View progress (optional)

At any point, tell Claude:

```
/dashboard
```

Claude generates a `dashboard.html` file and opens it in your browser. It shows your project progress, artifact status, hypothesis tracking, evidence summaries, and more — all in a dark-themed editorial UI with a ThreeJS 3D background.

---

## Skills

Skills are installed globally by `setup.sh`. They work in any project folder you open with Claude Code.

### `/scaffold` — Set up a new project

Creates the folder structure, templates, `AGENTS.md`, and `CLAUDE.md` for a new product design project. Adapts to your project's complexity (single vs. multi-persona, solo vs. multi-stakeholder, greenfield vs. existing product).

**When to use**: At the start of any new product project.

**What it asks you**:
1. Project name
2. One-sentence problem statement
3. Project type (new product / new feature / redesign / optimization)
4. User complexity (single user type / multiple personas)
5. Stakeholder landscape (solo / single / multiple aligned / multiple competing)
6. Tech stack
7. Which phases you need templates for

**What it creates**: A complete project folder with all relevant templates pre-populated and ready for the discovery phase.

### `/discovery` — Run the research process

A structured 6-step discovery workflow that scales in depth based on your project's complexity.

**When to use**: After scaffolding, or whenever you need to do product research.

**The 6 steps**:

| Step | What Happens | Time | Output |
|------|-------------|------|--------|
| **0. Intake** | Classify your project (type, users, stakeholders, triggers) | ~15 min | Project classification in AGENTS.md |
| **1. Frame** | Define the problem, generate falsifiable hypotheses | 30-60 min | `research/hypothesis-sheet.md` |
| **2. Research** | Competitor analysis, market research, internal data | 1-3 hrs | `research/competitor-teardown.md`, `research/market-research.md` |
| **3. Plan** | Choose research methods, create guides/scripts | ~1 hr | `research/research-plan.md` + method-specific artifacts |
| **4. Synthesize** | Find patterns, validate hypotheses, build personas | 1-2 hrs | `research/evidence-log.md`, `research/research-synthesis.md`, persona files |
| **5. Decide** | GO / PIVOT / STOP decision based on evidence | ~30 min | `research/jtbd-canvas.md`, `research/prototype-brief.md` |
| **6. Align** | Communicate findings to stakeholders | 30-60 min | `research/stakeholder-brief.md`, decision log entry |

**You don't have to run all steps.** Common shortcuts:
- **Quick validation**: Steps 1 + 2 (frame the problem + research the landscape)
- **Research prep**: Steps 1 + 3 (frame + prepare research plan for real-world research)
- **Post-research synthesis**: Steps 4 + 5 (when you already gathered data and need to make sense of it)

**Blind spot detection**: The system checks for gaps throughout — missing personas, forgotten stakeholders, impacted flows you haven't considered. It flags them in real-time and at each step boundary.

**Research methods supported**: The system doesn't just default to interviews. Based on your project context, it recommends from:
- **Qualitative**: User interviews, contextual inquiry, diary studies, focus groups, card sorting/tree testing, usability testing
- **Quantitative**: Surveys, analytics review, A/B test results, support ticket/NPS/CSAT data, heatmaps/session recordings
- **Secondary**: Competitor analysis, market research, academic/industry research, internal documentation review

### `/dashboard` — Visualize project progress

Generates a self-contained HTML dashboard and opens it in your browser.

**When to use**: Anytime you want to see where your project stands, review artifact content, or copy text to paste into other tools (Notion, Google Docs, Figma, etc.).

**What it shows**:
- **Phase progress tracker** — visual step indicators for the discovery workflow
- **Artifact grid** — every research file with its status (draft / in-progress / complete). Click to view content, copy as markdown or plain text.
- **Hypothesis tracker** — color-coded hypothesis cards (validated / invalidated / testing / untested / inconclusive) with evidence counts
- **Evidence summary** — total evidence count, breakdown by source type and confidence level
- **Persona cards** — one per user type (for multi-persona projects)
- **Decision timeline** — chronological log of decisions made
- **Phase tabs** — Discovery, Definition, Prototyping, Iteration. Only populated phases show content; others show "Not started yet."

**How it works**: Claude reads all your project's markdown files, parses their frontmatter and content, builds a JSON data object, and injects it into a self-contained HTML file with inline CSS/JS. ThreeJS (loaded from CDN) renders a subtle 3D background. No build step, no dependencies, no server.

**Output**: `dashboard.html` in your project root. Overwrites previous version each time. Not committed to git (add to `.gitignore`).

---

## Templates

Templates are **lightweight skeletons** — they define the structure (headings, tables, frontmatter) but contain placeholder content. The skills fill them intelligently based on your project's complexity. Simple projects get concise artifacts; complex multi-persona projects get rich, cross-referenced content.

You never need to edit templates directly. The `scaffold` skill copies them into your project and the `discovery` skill fills them with real content.

| Phase | Templates | Purpose |
|-------|-----------|---------|
| **Discovery** | hypothesis-sheet, evidence-log, competitor-teardown, market-research, interview-guide, interview-notes, jtbd-canvas, user-persona, research-plan, research-synthesis | Structured research with enforced traceability |
| **Definition** | prd, metrics-plan, risks-register, decision-log | Product requirements with testable acceptance criteria |
| **Prototyping** | prototype-brief, design-tokens, test-plan | From concept to testable prototype |
| **Iteration** | iteration-brief, feedback-synthesis | Learn and iterate based on real signals |
| **Project** | AGENTS.md, CLAUDE.md, stakeholder-brief | Project setup and team alignment |
| **Cross-cutting** | system-flow-map, stakeholder-raci, impact-analysis | Multi-persona flows, stakeholder decisions, existing system impact |

### Conditional templates

Some templates are only created when your project classification requires them:

| Condition | Template | Why |
|-----------|----------|-----|
| Multiple user types | `system-flow-map.md` | Maps handoffs and dependencies between personas |
| Multiple stakeholders | `stakeholder-raci.md` | Clarifies who decides what, with conflict resolution |
| Non-greenfield project | `impact-analysis.md` | Documents existing system impact before making changes |

---

## Project Types and Complexity

The system adapts to four project types and multiple complexity dimensions:

### Project types

| Type | When to use | What changes |
|------|-------------|-------------|
| **New product** | Greenfield idea from scratch | Full hypothesis generation, no existing-state analysis |
| **New feature** | Adding capabilities to an existing product | Existing system analysis + impact assessment before hypotheses |
| **Redesign** | Reworking an area that isn't performing | Deep current-state mapping, pain analysis, change impact |
| **Optimization** | Data-driven improvements to existing flows | Focused on specific metrics, analytics-heavy research |

### User complexity

| Level | What it means | What changes |
|-------|--------------|-------------|
| **Single user type** | One persona | One hypothesis set, one journey map |
| **Multiple personas, shared flows** | Users share the same core flow | Per-persona hypotheses + cross-persona system flow map |
| **Multiple personas, separate flows** | Users have distinct journeys | Per-persona everything + handoff/dependency mapping |

### Stakeholder landscape

| Level | What it means | What changes |
|-------|--------------|-------------|
| **Solo** | Just you | Lightweight self-check in alignment step |
| **Single stakeholder** | One decision-maker | Focused research brief + FAQ |
| **Multiple aligned** | Several stakeholders, same goals | Research brief + tailored communication |
| **Multiple competing** | Stakeholders with different priorities | Full RACI framework + conflict resolution paths |

---

## Key Principles

These principles are encoded in the skills and enforced throughout the workflow:

- **Prototype IS the spec** — Build the cheapest real thing, test it with real people
- **Every insight needs a source** — No traceability = opinion, not evidence
- **Disconfirming evidence is mandatory** — What could prove you wrong?
- **You decide, AI executes** — AI generates options, does research legwork, structures findings. You make every strategic call.
- **Speed through compression, not elimination** — 4-8 hours for a full discovery cycle, not 4-8 weeks. We compress through AI synthesis, not by skipping research.
- **All phases always run** — Nothing is skipped. Depth scales to match complexity. Even "simple" projects pass through every step.
- **Blind spots are surfaced** — The system flags personas, stakeholders, and flows you might have missed

---

## File Structure (this repo)

```
product-design-process/
├── README.md                                  ← You are here
├── CLAUDE.md                                  ← Claude Code config for this repo
├── setup.sh                                   ← Installs skills globally via symlinks
├── .gitignore                                 ← Excludes generated files
│
├── skills/                                    ← Claude Code skills (source of truth)
│   ├── discovery/SKILL.md                     ← 6-step discovery & research workflow
│   ├── scaffold/SKILL.md                      ← Project scaffolding
│   └── dashboard/SKILL.md                     ← Project progress dashboard generator
│
├── templates/                                 ← Skeleton templates (copied into projects by scaffold)
│   ├── discovery/       (13 templates)        ← Research artifacts
│   ├── definition/      (4 templates)         ← Product requirements
│   ├── prototyping/     (3 templates)         ← Prototype specs
│   ├── iteration/       (2 templates)         ← Iteration tracking
│   └── project/         (3 templates)         ← AGENTS.md, CLAUDE.md, stakeholder-brief
│
├── docs/
│   └── decisions/                             ← Design decisions for this system
│       ├── 2026-03-15-workflow-redesign-design.md
│       └── 2026-03-15-dashboard-design.md
│
└── AI-Native-Product-Designer-Research.md     ← Research foundation document
```

**This repo is the source of truth for skills and templates.** Your product projects live in separate folders. The symlinks created by `setup.sh` point from `~/.claude/skills/` back to this repo, so any edits you make here take effect immediately.

---

## Updating Skills

Skills are regular markdown files. To modify a skill:

1. Edit the file in `skills/<name>/SKILL.md`
2. Save
3. The change is live immediately (symlinks point here)

No reinstall needed. If you push changes to a shared repo, anyone who has cloned and run `setup.sh` gets the update on their next `git pull`.

---

## Uninstalling

To remove all skills:

```bash
rm ~/.claude/skills/discovery ~/.claude/skills/scaffold ~/.claude/skills/dashboard
```

Or remove the entire skills directory:

```bash
rm -rf ~/.claude/skills
```

This only removes the symlinks. The skill files in this repo are untouched.

---

## Troubleshooting

### "Claude doesn't seem to know about the skills"

1. Make sure you ran `setup.sh` successfully
2. Check the symlinks exist: `ls -la ~/.claude/skills/`
3. Each should point back to this repo's `skills/` directory
4. If the symlinks are broken (you moved this repo), run `setup.sh` again

### "The scaffold skill can't find templates"

The scaffold skill follows the symlink to find the templates directory. If you moved this repo after running `setup.sh`, the symlinks break. Fix by running `setup.sh` again from the new location.

### "The dashboard doesn't open in my browser"

The dashboard skill runs `open dashboard.html` (macOS). On Linux, you may need to manually open the file or configure `xdg-open`. The file is in your project root as `dashboard.html`.

### "I see template placeholders instead of real content"

Template files contain `[Project Name]`, `YYYY-MM-DD`, and similar placeholders. These are filled in by the skills during the workflow. If you see placeholders, the skill hasn't processed that file yet — run the relevant step.

---

## Design Decisions

The reasoning behind this system's design is documented in:

- `docs/decisions/2026-03-15-workflow-redesign-design.md` — 13 key decisions about the workflow system architecture
- `docs/decisions/2026-03-15-dashboard-design.md` — 8 decisions about the dashboard feature

---

## Research Background

This system is based on research into how leading AI companies (Anthropic, OpenAI, Perplexity) actually build products, the evolving role of the product designer in 2026, and AI-native workflow patterns.

See `AI-Native-Product-Designer-Research.md` for the full research document.

---

## Contributing

This is an open-source project, and I'd genuinely love for other product designers to help shape it.

The way we design products with AI is changing fast. No single person has all the answers. This system gets better when it reflects the experience of designers working across different industries, team sizes, and problem spaces.

**Ways to contribute:**

- **Try it and share feedback.** Use the system on a real project and tell me what worked and what didn't. Open an issue with your experience.
- **Improve a skill.** If a discovery step feels off, a prompt could be better, or a blind spot check is missing something, submit a PR.
- **Add a new skill.** Have a workflow you've refined? A prototyping process, a definition phase, an iteration loop? Skills are just markdown files. See `CLAUDE.md` for the conventions.
- **Improve templates.** If a template is missing a section you always need, or has sections that never get used, propose a change.
- **Share your research.** If you've studied how AI-native teams work, or you have insights from your own practice, I'd love to hear it.

**All feedback and suggestions are welcome.** Whether it's a GitHub issue, a PR, or just a message. I'd much rather hear "this didn't work for me" than have someone quietly give up on it.

If you're not sure where to start, just open an issue describing what you'd like to change. We'll figure it out together.

---

## License

This project is licensed under **[Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/)**.

**What that means in plain language:** You're free to use, copy, modify, and share this system however you like, including for commercial projects. The only requirement is that you give credit. A link back to this repo or a mention of the original author is enough.

So if you take these skills and templates, adapt them for your own team, and share them internally or publicly, that's great. Just keep the attribution in there somewhere.

---

**Built by [Sjoerd Faesen](https://github.com/sjoerdfaesen)** · Product design lead, AI collaborator, and believer in evidence over opinion.

Got questions, ideas, or just want to chat about AI-native design? Connect with me on [LinkedIn](https://www.linkedin.com/in/faesensjoerd/) or find me on [X (@sjoerdfaesen)](https://x.com/sjoerdfaesen). DMs are open.
