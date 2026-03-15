---
name: dashboard
description: Generates a self-contained HTML dashboard that visualizes project progress, artifact status, hypotheses, evidence, personas, and decisions. Reads all project markdown files, parses frontmatter, and bakes everything into a single interactive HTML file with ThreeJS background and editorial UI.
---

# Project Progress Dashboard Skill

## When to Use

Use this skill when:
- You want to see an overview of your project's progress across all phases
- You need to review artifact content and copy text for other tools (Notion, Google Docs, etc.)
- You want to check hypothesis status, evidence coverage, or persona completeness at a glance
- You want a visual snapshot of the project state to share or reference

## What It Does

Generates a single self-contained `dashboard.html` file in the project root that:
- Shows project metadata, phase progress, and artifact status
- Renders hypothesis tracking with color-coded status
- Summarizes evidence by source type and confidence
- Displays persona cards (for multi-persona projects)
- Shows a decision timeline
- Lets you click any artifact to view its content and copy as markdown or plain text
- Features a ThreeJS 3D background, glass morphism cards, and staggered animations

The file overwrites any previous `dashboard.html` each time you run this skill.

## Prerequisites

- A project folder with at least an `AGENTS.md` or some markdown files in `research/`, `docs/`, `iterations/`, or `prototypes/`
- The dashboard works best when the project has been scaffolded with the `scaffold` skill

---

## Process

### Step 1: Scan and Extract Project Data

Scan the project for markdown files and extract structured data. Build a `PROJECT_DATA` JSON object.

#### 1a. Project Metadata (from AGENTS.md)

Read `AGENTS.md` in the project root. Extract:

```json
{
  "projectName": "from Project Overview > Project name",
  "projectType": "new product | new feature | redesign | optimization",
  "description": "from Project Overview > One-line description",
  "userComplexity": "from Project Classification > User complexity",
  "stakeholderLandscape": "from Project Classification > Stakeholder landscape",
  "currentPhase": "from Project Overview > Project phase",
  "generatedAt": "ISO 8601 timestamp of generation"
}
```

If `AGENTS.md` does not exist, use sensible defaults (`"Unknown Project"`, etc.) and note missing metadata.

#### 1b. Discovery Phase Progress

Map file existence and frontmatter status to discovery steps:

| Step | Label | Output Files |
|------|-------|-------------|
| 0 | Intake | `AGENTS.md` (has project classification filled) |
| 1 | Frame | `research/hypothesis-sheet.md` |
| 2 | Research | `research/competitor-teardown.md`, `research/market-research.md` |
| 3 | Plan | `research/research-plan.md` |
| 4 | Synthesize | `research/evidence-log.md`, `research/research-synthesis.md` |
| 5 | Decide | `research/jtbd-canvas.md`, `research/prototype-brief.md` |
| 6 | Align | `research/stakeholder-brief.md` |

For each step, determine status:
- **complete**: All output files exist AND their frontmatter `status` is `complete`
- **in-progress**: At least one output file exists, but not all are `complete`
- **not-started**: No output files exist for this step

```json
{
  "steps": [
    {"id": 0, "label": "Intake", "status": "complete"},
    {"id": 1, "label": "Frame", "status": "in-progress"},
    ...
  ]
}
```

#### 1c. Artifacts

For every `.md` file found in `research/`, `docs/`, `iterations/`, `prototypes/`, and the project root (`AGENTS.md`, `CLAUDE.md`), extract:

```json
{
  "artifacts": [
    {
      "filename": "hypothesis-sheet.md",
      "path": "research/hypothesis-sheet.md",
      "status": "draft | in-progress | complete (from frontmatter, default 'unknown')",
      "phase": "discovery | definition | prototyping | iteration | project (from frontmatter or inferred from directory)",
      "template": "from frontmatter template field, if present",
      "date": "from frontmatter date field",
      "content": "full raw markdown content of the file"
    }
  ]
}
```

#### 1d. Hypotheses (from hypothesis-sheet.md)

If `research/hypothesis-sheet.md` exists, parse each hypothesis block. Look for the pattern:
- `**ID:** H[N]`
- `**Status:**` followed by one of: untested, testing, validated, invalidated, inconclusive
- `**Persona linkage:**` followed by persona info
- `**We believe**` line for the summary

Also parse the Summary Tracker table at the bottom for a quick overview.

```json
{
  "hypotheses": [
    {
      "id": "H1",
      "summary": "one-line summary from Summary Tracker or first line of 'We believe'",
      "status": "untested | testing | validated | invalidated | inconclusive",
      "personaLinkage": "persona name(s) or 'All'",
      "evidenceCount": 0
    }
  ]
}
```

Cross-reference with the evidence log to count evidence per hypothesis.

#### 1e. Evidence (from evidence-log.md)

If `research/evidence-log.md` exists, parse the Evidence Table. Count:
- Total evidence entries (rows with non-empty ID)
- Breakdown by Source Type column
- Breakdown by Confidence column

Also parse the "Evidence by Source Type" summary table if filled.

```json
{
  "evidence": {
    "total": 15,
    "bySourceType": {
      "Interview": 6,
      "Survey": 4,
      "Desk Research": 3,
      "Analytics": 2
    },
    "byConfidence": {
      "High": 5,
      "Med": 7,
      "Low": 3
    }
  }
}
```

#### 1f. Personas (from user-persona files)

Find all files matching `research/user-persona*.md`. For each, extract:
- Persona name (from first `#` heading or frontmatter)
- Role/description
- Key goals (first 3 bullet points under a Goals section, if present)

```json
{
  "personas": [
    {
      "name": "Employee",
      "role": "Submits expense reports",
      "goals": ["Submit reports quickly", "Track reimbursement status", "Minimize manual entry"],
      "filename": "user-persona-employee.md",
      "content": "full raw markdown"
    }
  ]
}
```

#### 1g. Decisions (from decision-log.md)

If `docs/decisions/decision-log.md` exists, parse decision entries. Look for patterns like:
- Decision ID (D001, D002, etc. or ## headings)
- Title
- Date
- Status (proposed, accepted, superseded, deprecated)

```json
{
  "decisions": [
    {
      "id": "D001",
      "title": "Use React for the frontend",
      "date": "2026-03-10",
      "status": "accepted",
      "content": "full decision text"
    }
  ]
}
```

### Step 2: Generate the HTML Dashboard

Using the extracted `PROJECT_DATA`, generate a complete self-contained HTML file. The file structure is:

```
<!DOCTYPE html>
<html lang="en">
<head>
  - Meta tags (charset, viewport)
  - Google Fonts link (Instrument Serif, DM Sans, IBM Plex Mono)
  - ThreeJS from CDN
  - <style> block with all CSS
</head>
<body>
  - <canvas id="bg"> for ThreeJS
  - <div id="app"> for UI
  - <script>const PROJECT_DATA = {...}</script>  ← baked-in data
  - <script> block with all JS (ThreeJS scene + UI rendering)
</body>
</html>
```

Below is the **exact HTML to generate**. Inject the `PROJECT_DATA` JSON where indicated.

---

#### Complete HTML Template

Generate the following HTML file, replacing `__PROJECT_DATA_JSON__` with the actual JSON object from Step 1 and `__PROJECT_NAME__` with the project name:

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard — __PROJECT_NAME__</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600;0,9..40,700;1,9..40,400&family=IBM+Plex+Mono:wght@400;500&family=Instrument+Serif:ital@0;1&display=swap" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>
<style>
*, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }

:root {
  --bg: #0A0A0B;
  --surface: rgba(255,255,255,0.04);
  --surface-hover: rgba(255,255,255,0.07);
  --surface-border: rgba(255,255,255,0.06);
  --accent: #E8A838;
  --accent-dim: rgba(232,168,56,0.15);
  --text: #E8E4DF;
  --text-muted: #6B6560;
  --text-dim: #4B4540;
  --green: #4ADE80;
  --red: #F87171;
  --amber: #FBBF24;
  --neutral: #4B4540;
  --font-display: 'Instrument Serif', Georgia, serif;
  --font-body: 'DM Sans', system-ui, sans-serif;
  --font-mono: 'IBM Plex Mono', monospace;
}

html { background: var(--bg); color: var(--text); font-family: var(--font-body); }
body { min-height: 100vh; overflow-x: hidden; }

canvas#bg {
  position: fixed; top: 0; left: 0; width: 100vw; height: 100vh;
  z-index: 0; pointer-events: none; transition: opacity 0.6s;
}

#app {
  position: relative; z-index: 1;
  max-width: 1200px; margin: 0 auto; padding: 3rem 2rem 6rem;
}

/* Header */
.header {
  display: flex; justify-content: space-between; align-items: flex-start;
  margin-bottom: 3rem; opacity: 0; transform: translateY(20px);
  animation: fadeUp 0.6s ease forwards;
}
.header-left h1 {
  font-family: var(--font-display); font-size: 3rem; font-weight: 400;
  line-height: 1.1; letter-spacing: -0.02em; color: var(--text);
}
.header-left h1 em { font-style: italic; color: var(--accent); }
.header-meta { text-align: right; }
.badge {
  display: inline-block; padding: 0.25rem 0.75rem; border-radius: 100px;
  font-family: var(--font-mono); font-size: 0.7rem; font-weight: 500;
  text-transform: uppercase; letter-spacing: 0.08em;
  background: var(--accent-dim); color: var(--accent); margin-bottom: 0.5rem;
}
.meta-line {
  font-size: 0.8rem; color: var(--text-muted);
  font-family: var(--font-mono); line-height: 1.8;
}

/* Phase Tabs */
.phase-tabs {
  display: flex; gap: 0; margin-bottom: 2.5rem; border-bottom: 1px solid var(--surface-border);
  opacity: 0; transform: translateY(20px);
  animation: fadeUp 0.6s ease 0.15s forwards;
}
.phase-tab {
  padding: 0.75rem 1.5rem; cursor: pointer; font-family: var(--font-mono);
  font-size: 0.8rem; font-weight: 500; text-transform: uppercase;
  letter-spacing: 0.06em; color: var(--text-muted);
  border-bottom: 2px solid transparent; transition: all 0.3s;
  user-select: none; position: relative;
}
.phase-tab:hover { color: var(--text); }
.phase-tab.active { color: var(--accent); border-bottom-color: var(--accent); }
.phase-tab.disabled { color: var(--text-dim); cursor: default; }
.phase-tab .tab-badge {
  font-size: 0.6rem; color: var(--text-dim); display: block; margin-top: 2px;
  font-weight: 400; text-transform: none; letter-spacing: 0;
}

/* Phase Content */
.phase-content { display: none; }
.phase-content.active { display: block; }

/* Section Titles */
.section-title {
  font-family: var(--font-display); font-size: 1.6rem; font-weight: 400;
  margin-bottom: 1.25rem; color: var(--text);
}
.section-subtitle {
  font-family: var(--font-body); font-size: 0.85rem; color: var(--text-muted);
  margin-bottom: 1.5rem; margin-top: -0.75rem;
}

/* Progress Tracker */
.progress-tracker {
  display: flex; align-items: center; gap: 0;
  margin-bottom: 3rem; padding: 1.5rem 2rem;
  background: var(--surface); border: 1px solid var(--surface-border);
  border-radius: 16px; backdrop-filter: blur(20px);
  overflow-x: auto;
}
.step-node {
  display: flex; flex-direction: column; align-items: center;
  min-width: 80px; position: relative;
}
.step-dot {
  width: 32px; height: 32px; border-radius: 50%;
  border: 2px solid var(--text-dim); background: transparent;
  display: flex; align-items: center; justify-content: center;
  font-family: var(--font-mono); font-size: 0.7rem; color: var(--text-dim);
  transition: all 0.3s;
}
.step-node.complete .step-dot {
  background: var(--accent); border-color: var(--accent); color: var(--bg);
}
.step-node.in-progress .step-dot {
  border-color: var(--accent); color: var(--accent);
  animation: pulse 2s ease-in-out infinite;
}
.step-label {
  margin-top: 0.5rem; font-size: 0.7rem; color: var(--text-muted);
  font-family: var(--font-mono); text-transform: uppercase;
  letter-spacing: 0.04em; white-space: nowrap;
}
.step-connector {
  flex: 1; height: 2px; background: var(--text-dim);
  min-width: 20px; margin: 0 -4px; margin-bottom: 1.5rem;
}
.step-connector.complete { background: var(--accent); }

/* Card Grid */
.card-grid {
  display: grid; grid-template-columns: repeat(3, 1fr); gap: 1rem;
  margin-bottom: 3rem;
}
@media (max-width: 900px) { .card-grid { grid-template-columns: repeat(2, 1fr); } }
@media (max-width: 600px) { .card-grid { grid-template-columns: 1fr; } }

.card {
  background: var(--surface); border: 1px solid var(--surface-border);
  border-radius: 12px; padding: 1.25rem; backdrop-filter: blur(20px);
  cursor: pointer; transition: all 0.3s ease;
  opacity: 0; transform: translateY(12px);
}
.card:hover {
  background: var(--surface-hover); border-color: rgba(232,168,56,0.2);
  transform: translateY(-2px); box-shadow: 0 8px 32px rgba(232,168,56,0.08);
}
.card-filename {
  font-family: var(--font-mono); font-size: 0.75rem; color: var(--text-muted);
  margin-bottom: 0.5rem; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;
}
.card-status {
  display: inline-block; padding: 0.15rem 0.5rem; border-radius: 100px;
  font-family: var(--font-mono); font-size: 0.65rem; font-weight: 500;
  text-transform: uppercase; letter-spacing: 0.06em;
}
.card-status.complete { background: rgba(74,222,128,0.12); color: var(--green); }
.card-status.in-progress { background: rgba(251,191,36,0.12); color: var(--amber); }
.card-status.draft { background: rgba(107,101,96,0.2); color: var(--text-muted); }
.card-status.unknown { background: rgba(75,69,64,0.3); color: var(--text-dim); }
.card-phase {
  float: right; font-family: var(--font-mono); font-size: 0.6rem;
  color: var(--text-dim); text-transform: uppercase; letter-spacing: 0.04em;
  margin-top: 0.15rem;
}

/* Hypothesis Strip */
.hyp-strip {
  display: flex; gap: 1rem; overflow-x: auto; padding-bottom: 1rem;
  margin-bottom: 3rem; scroll-snap-type: x mandatory;
}
.hyp-strip::-webkit-scrollbar { height: 4px; }
.hyp-strip::-webkit-scrollbar-track { background: var(--surface); border-radius: 2px; }
.hyp-strip::-webkit-scrollbar-thumb { background: var(--text-dim); border-radius: 2px; }

.hyp-card {
  flex: 0 0 280px; scroll-snap-align: start;
  background: var(--surface); border: 1px solid var(--surface-border);
  border-radius: 12px; padding: 1.25rem; backdrop-filter: blur(20px);
  transition: all 0.3s;
}
.hyp-card:hover {
  border-color: rgba(232,168,56,0.2);
  box-shadow: 0 4px 20px rgba(232,168,56,0.06);
}
.hyp-id {
  font-family: var(--font-mono); font-size: 0.7rem; font-weight: 500;
  color: var(--accent); margin-bottom: 0.5rem;
}
.hyp-summary {
  font-size: 0.85rem; line-height: 1.5; color: var(--text);
  margin-bottom: 0.75rem; display: -webkit-box; -webkit-line-clamp: 3;
  -webkit-box-orient: vertical; overflow: hidden;
}
.hyp-meta { display: flex; justify-content: space-between; align-items: center; }
.hyp-status {
  padding: 0.15rem 0.5rem; border-radius: 100px;
  font-family: var(--font-mono); font-size: 0.6rem; font-weight: 500;
  text-transform: uppercase; letter-spacing: 0.06em;
}
.hyp-status.validated { background: rgba(74,222,128,0.12); color: var(--green); }
.hyp-status.invalidated { background: rgba(248,113,113,0.12); color: var(--red); }
.hyp-status.testing { background: rgba(251,191,36,0.12); color: var(--amber); }
.hyp-status.inconclusive { background: rgba(232,168,56,0.12); color: var(--accent); }
.hyp-status.untested { background: rgba(75,69,64,0.3); color: var(--text-dim); }
.hyp-persona {
  font-family: var(--font-mono); font-size: 0.6rem; color: var(--text-muted);
}
.hyp-evidence {
  font-family: var(--font-mono); font-size: 0.6rem; color: var(--text-dim);
  margin-top: 0.5rem;
}

/* Evidence Summary */
.evidence-grid {
  display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 1rem; margin-bottom: 3rem;
}
.evidence-stat {
  background: var(--surface); border: 1px solid var(--surface-border);
  border-radius: 12px; padding: 1.25rem; backdrop-filter: blur(20px); text-align: center;
}
.evidence-stat .stat-value {
  font-family: var(--font-display); font-size: 2.5rem; color: var(--accent);
  line-height: 1;
}
.evidence-stat .stat-label {
  font-family: var(--font-mono); font-size: 0.7rem; color: var(--text-muted);
  text-transform: uppercase; letter-spacing: 0.06em; margin-top: 0.4rem;
}
.evidence-breakdown {
  display: flex; flex-wrap: wrap; gap: 0.5rem; justify-content: center;
  margin-top: 0.75rem;
}
.evidence-tag {
  padding: 0.15rem 0.5rem; border-radius: 100px;
  font-family: var(--font-mono); font-size: 0.6rem;
  background: var(--accent-dim); color: var(--accent);
}

/* Persona Cards */
.persona-grid {
  display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 1rem; margin-bottom: 3rem;
}
.persona-card {
  background: var(--surface); border: 1px solid var(--surface-border);
  border-radius: 12px; padding: 1.5rem; backdrop-filter: blur(20px);
  cursor: pointer; transition: all 0.3s;
}
.persona-card:hover {
  background: var(--surface-hover); border-color: rgba(232,168,56,0.2);
  transform: translateY(-2px); box-shadow: 0 8px 32px rgba(232,168,56,0.08);
}
.persona-name {
  font-family: var(--font-display); font-size: 1.3rem; color: var(--text);
  margin-bottom: 0.25rem;
}
.persona-role {
  font-size: 0.8rem; color: var(--text-muted); margin-bottom: 0.75rem;
}
.persona-goals { list-style: none; }
.persona-goals li {
  font-size: 0.8rem; color: var(--text-muted); padding: 0.2rem 0;
  padding-left: 1rem; position: relative;
}
.persona-goals li::before {
  content: ''; position: absolute; left: 0; top: 0.55rem;
  width: 4px; height: 4px; border-radius: 50%; background: var(--accent);
}

/* Decision Timeline */
.timeline { position: relative; margin-bottom: 3rem; padding-left: 2rem; }
.timeline::before {
  content: ''; position: absolute; left: 7px; top: 0; bottom: 0;
  width: 2px; background: var(--surface-border);
}
.timeline-entry {
  position: relative; margin-bottom: 1.5rem; padding-left: 1.5rem;
  cursor: pointer;
}
.timeline-entry::before {
  content: ''; position: absolute; left: -2rem; top: 0.4rem;
  width: 10px; height: 10px; border-radius: 50%;
  border: 2px solid var(--accent); background: var(--bg);
}
.timeline-entry.accepted::before { background: var(--accent); }
.timeline-date {
  font-family: var(--font-mono); font-size: 0.7rem; color: var(--text-dim);
  margin-bottom: 0.25rem;
}
.timeline-title {
  font-size: 0.95rem; color: var(--text); margin-bottom: 0.25rem;
}
.timeline-status {
  display: inline-block; padding: 0.1rem 0.4rem; border-radius: 100px;
  font-family: var(--font-mono); font-size: 0.6rem; font-weight: 500;
  text-transform: uppercase; letter-spacing: 0.06em;
  background: rgba(232,168,56,0.12); color: var(--accent);
}

/* Modal */
.modal-overlay {
  display: none; position: fixed; top: 0; left: 0; right: 0; bottom: 0;
  background: rgba(10,10,11,0.85); backdrop-filter: blur(8px);
  z-index: 100; justify-content: center; align-items: flex-start;
  padding: 4rem 2rem; overflow-y: auto;
}
.modal-overlay.open { display: flex; }
.modal {
  background: #141415; border: 1px solid var(--surface-border);
  border-radius: 16px; max-width: 800px; width: 100%;
  max-height: 80vh; overflow-y: auto; padding: 2rem;
  box-shadow: 0 24px 80px rgba(0,0,0,0.5);
  animation: fadeUp 0.3s ease;
}
.modal-header {
  display: flex; justify-content: space-between; align-items: flex-start;
  margin-bottom: 1.5rem; padding-bottom: 1rem;
  border-bottom: 1px solid var(--surface-border);
}
.modal-title {
  font-family: var(--font-display); font-size: 1.5rem; color: var(--text);
}
.modal-close {
  background: none; border: none; color: var(--text-muted); cursor: pointer;
  font-size: 1.5rem; padding: 0.25rem; line-height: 1; transition: color 0.2s;
}
.modal-close:hover { color: var(--text); }
.modal-actions {
  display: flex; gap: 0.5rem; margin-bottom: 1.5rem;
}
.btn {
  padding: 0.5rem 1rem; border-radius: 8px; border: 1px solid var(--surface-border);
  background: var(--surface); color: var(--text); cursor: pointer;
  font-family: var(--font-mono); font-size: 0.75rem; font-weight: 500;
  transition: all 0.2s; display: flex; align-items: center; gap: 0.4rem;
}
.btn:hover { background: var(--surface-hover); border-color: var(--accent); color: var(--accent); }
.btn.copied { background: rgba(74,222,128,0.12); border-color: var(--green); color: var(--green); }
.modal-content {
  font-size: 0.9rem; line-height: 1.7; color: var(--text);
}
.modal-content h1, .modal-content h2, .modal-content h3, .modal-content h4 {
  font-family: var(--font-display); font-weight: 400; color: var(--text);
  margin-top: 1.5rem; margin-bottom: 0.75rem;
}
.modal-content h1 { font-size: 1.6rem; }
.modal-content h2 { font-size: 1.3rem; border-bottom: 1px solid var(--surface-border); padding-bottom: 0.5rem; }
.modal-content h3 { font-size: 1.1rem; }
.modal-content p { margin-bottom: 0.75rem; }
.modal-content ul, .modal-content ol { margin-bottom: 0.75rem; padding-left: 1.5rem; }
.modal-content li { margin-bottom: 0.25rem; }
.modal-content code {
  font-family: var(--font-mono); font-size: 0.85em;
  background: rgba(255,255,255,0.06); padding: 0.15rem 0.4rem; border-radius: 4px;
}
.modal-content pre {
  background: rgba(255,255,255,0.04); border: 1px solid var(--surface-border);
  border-radius: 8px; padding: 1rem; overflow-x: auto; margin-bottom: 0.75rem;
}
.modal-content pre code { background: none; padding: 0; }
.modal-content blockquote {
  border-left: 3px solid var(--accent); padding-left: 1rem;
  color: var(--text-muted); margin-bottom: 0.75rem; font-style: italic;
}
.modal-content table {
  width: 100%; border-collapse: collapse; margin-bottom: 0.75rem;
  font-size: 0.8rem;
}
.modal-content th, .modal-content td {
  padding: 0.5rem 0.75rem; text-align: left;
  border-bottom: 1px solid var(--surface-border);
}
.modal-content th {
  font-family: var(--font-mono); font-weight: 500;
  text-transform: uppercase; font-size: 0.7rem;
  letter-spacing: 0.04em; color: var(--text-muted);
}
.modal-content strong { color: var(--text); font-weight: 600; }
.modal-content em { color: var(--accent); }
.modal-content hr {
  border: none; border-top: 1px solid var(--surface-border);
  margin: 1.5rem 0;
}

/* Empty State */
.empty-state {
  text-align: center; padding: 4rem 2rem;
  color: var(--text-dim); font-size: 0.9rem;
}
.empty-state .empty-icon {
  font-size: 2rem; margin-bottom: 1rem; opacity: 0.3;
}

/* Animations */
@keyframes fadeUp {
  to { opacity: 1; transform: translateY(0); }
}
@keyframes pulse {
  0%, 100% { box-shadow: 0 0 0 0 rgba(232,168,56,0.3); }
  50% { box-shadow: 0 0 0 8px rgba(232,168,56,0); }
}

/* Noise Texture */
body::after {
  content: ''; position: fixed; top: 0; left: 0; width: 100%; height: 100%;
  background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noise'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noise)' opacity='0.03'/%3E%3C/svg%3E");
  pointer-events: none; z-index: 0; opacity: 0.4;
}
</style>
</head>
<body>
<canvas id="bg"></canvas>
<div id="app"></div>

<div class="modal-overlay" id="modal">
  <div class="modal">
    <div class="modal-header">
      <div class="modal-title" id="modal-title"></div>
      <button class="modal-close" id="modal-close">&times;</button>
    </div>
    <div class="modal-actions">
      <button class="btn" id="copy-md">
        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="9" y="9" width="13" height="13" rx="2"/><path d="M5 15H4a2 2 0 01-2-2V4a2 2 0 012-2h9a2 2 0 012 2v1"/></svg>
        Copy Markdown
      </button>
      <button class="btn" id="copy-txt">
        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="9" y="9" width="13" height="13" rx="2"/><path d="M5 15H4a2 2 0 01-2-2V4a2 2 0 012-2h9a2 2 0 012 2v1"/></svg>
        Copy Plain Text
      </button>
    </div>
    <div class="modal-content" id="modal-content"></div>
  </div>
</div>

<script>const PROJECT_DATA = __PROJECT_DATA_JSON__;</script>

<script>
// Lightweight Markdown to HTML converter
// Note: All content is from local project files (trusted source)
function md(text) {
  if (!text) return '';
  var html = text
    .replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')
    .replace(/^---$/gm, '<hr>')
    .replace(/^#### (.+)$/gm, '<h4>$1</h4>')
    .replace(/^### (.+)$/gm, '<h3>$1</h3>')
    .replace(/^## (.+)$/gm, '<h2>$1</h2>')
    .replace(/^# (.+)$/gm, '<h1>$1</h1>')
    .replace(/^&gt; (.+)$/gm, '<blockquote>$1</blockquote>')
    .replace(/\*\*(.+?)\*\*/g, '<strong>$1</strong>')
    .replace(/\*(.+?)\*/g, '<em>$1</em>')
    .replace(/`([^`]+)`/g, '<code>$1</code>')
    .replace(/^\- (.+)$/gm, '<li>$1</li>')
    .replace(/^\d+\. (.+)$/gm, '<li>$1</li>')
    .replace(/\n{2,}/g, '</p><p>')
    .replace(/\|(.+)\|/g, function(match) {
      var cells = match.split('|').filter(function(c) { return c.trim(); });
      if (cells.every(function(c) { return /^[\s\-:]+$/.test(c); })) return '';
      return '<tr>' + cells.map(function(c) { return '<td>' + c.trim() + '</td>'; }).join('') + '</tr>';
    });
  html = html.replace(/(<li>[\s\S]*?<\/li>)/g, '<ul>$1</ul>').replace(/<\/ul>\s*<ul>/g, '');
  html = html.replace(/(<tr>[\s\S]*?<\/tr>)/g, '<table>$1</table>').replace(/<\/table>\s*<table>/g, '');
  return '<p>' + html + '</p>';
}

// State
var currentRawContent = '';

// Copy functionality
function copyContent(type) {
  var text = type === 'md' ? currentRawContent : currentRawContent.replace(/[#*`_>|\-]/g, '').replace(/\n{3,}/g, '\n\n');
  navigator.clipboard.writeText(text).then(function() {
    var btn = document.getElementById(type === 'md' ? 'copy-md' : 'copy-txt');
    btn.classList.add('copied');
    var orig = btn.textContent;
    btn.textContent = 'Copied!';
    setTimeout(function() { btn.classList.remove('copied'); btn.textContent = orig; }, 2000);
  });
}

document.getElementById('copy-md').addEventListener('click', function() { copyContent('md'); });
document.getElementById('copy-txt').addEventListener('click', function() { copyContent('txt'); });

function openModal(title, rawContent) {
  currentRawContent = rawContent;
  document.getElementById('modal-title').textContent = title;
  document.getElementById('modal-content').innerHTML = md(rawContent);
  document.getElementById('modal').classList.add('open');
  document.body.style.overflow = 'hidden';
}

function closeModal() {
  document.getElementById('modal').classList.remove('open');
  document.body.style.overflow = '';
}

document.getElementById('modal-close').addEventListener('click', closeModal);
document.getElementById('modal').addEventListener('click', function(e) { if (e.target.id === 'modal') closeModal(); });
document.addEventListener('keydown', function(e) { if (e.key === 'Escape') closeModal(); });

// Render Dashboard
var D = PROJECT_DATA;
var app = document.getElementById('app');

// Header
var headerHTML =
'<div class="header">' +
  '<div class="header-left">' +
    '<h1>' + (D.metadata.projectName || 'Project Dashboard') + '</h1>' +
  '</div>' +
  '<div class="header-meta">' +
    '<div class="badge">' + (D.metadata.projectType || 'project') + '</div>' +
    '<div class="meta-line">' + (D.metadata.userComplexity || '') + '</div>' +
    '<div class="meta-line">' + (D.metadata.stakeholderLandscape || '') + '</div>' +
    '<div class="meta-line" style="margin-top:0.5rem;font-size:0.7rem;color:var(--text-dim)">Generated ' + new Date(D.metadata.generatedAt).toLocaleString() + '</div>' +
  '</div>' +
'</div>';

// Phase tabs
var phases = [
  { id: 'discovery', label: 'Discovery' },
  { id: 'definition', label: 'Definition' },
  { id: 'prototyping', label: 'Prototyping' },
  { id: 'iteration', label: 'Iteration' }
];

function hasPhaseContent(phaseId) {
  if (phaseId === 'discovery') return D.steps && D.steps.length > 0;
  return D.artifacts && D.artifacts.some(function(a) { return a.phase === phaseId; });
}

var tabsHTML = '<div class="phase-tabs">' + phases.map(function(p) {
  var has = hasPhaseContent(p.id);
  return '<div class="phase-tab ' + (p.id === 'discovery' ? 'active' : '') + ' ' + (!has && p.id !== 'discovery' ? 'disabled' : '') + '" data-phase="' + p.id + '">' +
    p.label +
    (!has && p.id !== 'discovery' ? '<span class="tab-badge">Not started</span>' : '') +
  '</div>';
}).join('') + '</div>';

// Discovery content
function renderDiscovery() {
  var html = '<div class="phase-content active" id="phase-discovery">';

  // Progress tracker
  if (D.steps && D.steps.length) {
    html += '<div class="section-title">Progress</div>';
    html += '<div class="progress-tracker">';
    D.steps.forEach(function(step, i) {
      var checkmark = step.status === 'complete' ? '&#10003;' : step.id;
      html += '<div class="step-node ' + step.status + '">' +
        '<div class="step-dot">' + checkmark + '</div>' +
        '<div class="step-label">' + step.label + '</div>' +
      '</div>';
      if (i < D.steps.length - 1) {
        html += '<div class="step-connector ' + (step.status === 'complete' ? 'complete' : '') + '"></div>';
      }
    });
    html += '</div>';
  }

  // Artifacts
  var discoveryArtifacts = (D.artifacts || []).filter(function(a) { return a.phase === 'discovery' || a.phase === 'project'; });
  if (discoveryArtifacts.length) {
    html += '<div class="section-title">Artifacts</div>';
    html += '<div class="section-subtitle">Click any artifact to view content and copy</div>';
    html += '<div class="card-grid">';
    discoveryArtifacts.forEach(function(a, i) {
      var idx = D.artifacts.indexOf(a);
      html += '<div class="card" style="animation: fadeUp 0.4s ease ' + (0.3 + i * 0.05) + 's forwards" data-artifact-idx="' + idx + '">' +
        '<div class="card-filename">' + a.path + '</div>' +
        '<div><span class="card-status ' + a.status + '">' + a.status + '</span><span class="card-phase">' + a.phase + '</span></div>' +
      '</div>';
    });
    html += '</div>';
  }

  // Hypotheses
  if (D.hypotheses && D.hypotheses.length) {
    html += '<div class="section-title">Hypotheses</div>';
    html += '<div class="hyp-strip">';
    D.hypotheses.forEach(function(h) {
      html += '<div class="hyp-card">' +
        '<div class="hyp-id">' + h.id + '</div>' +
        '<div class="hyp-summary">' + (h.summary || 'No summary') + '</div>' +
        '<div class="hyp-meta">' +
          '<span class="hyp-status ' + h.status + '">' + h.status + '</span>' +
          '<span class="hyp-persona">' + (h.personaLinkage || '') + '</span>' +
        '</div>' +
        (h.evidenceCount ? '<div class="hyp-evidence">' + h.evidenceCount + ' evidence items</div>' : '') +
      '</div>';
    });
    html += '</div>';
  }

  // Evidence summary
  if (D.evidence && D.evidence.total > 0) {
    html += '<div class="section-title">Evidence</div>';
    html += '<div class="evidence-grid">';
    html += '<div class="evidence-stat">' +
      '<div class="stat-value">' + D.evidence.total + '</div>' +
      '<div class="stat-label">Total Evidence</div>' +
    '</div>';
    var types = D.evidence.bySourceType || {};
    if (Object.keys(types).length) {
      html += '<div class="evidence-stat">' +
        '<div class="stat-value">' + Object.keys(types).length + '</div>' +
        '<div class="stat-label">Source Types</div>' +
        '<div class="evidence-breakdown">' + Object.keys(types).map(function(k) { return '<span class="evidence-tag">' + k + ': ' + types[k] + '</span>'; }).join('') + '</div>' +
      '</div>';
    }
    var conf = D.evidence.byConfidence || {};
    if (Object.keys(conf).length) {
      html += '<div class="evidence-stat">' +
        '<div class="stat-label" style="margin-bottom:0.5rem">Confidence</div>' +
        '<div class="evidence-breakdown">' + Object.keys(conf).map(function(k) { return '<span class="evidence-tag">' + k + ': ' + conf[k] + '</span>'; }).join('') + '</div>' +
      '</div>';
    }
    html += '</div>';
  }

  // Personas
  if (D.personas && D.personas.length) {
    html += '<div class="section-title">Personas</div>';
    html += '<div class="persona-grid">';
    D.personas.forEach(function(p, pi) {
      html += '<div class="persona-card" data-persona-idx="' + pi + '">' +
        '<div class="persona-name">' + p.name + '</div>' +
        '<div class="persona-role">' + (p.role || '') + '</div>' +
        (p.goals && p.goals.length ? '<ul class="persona-goals">' + p.goals.map(function(g) { return '<li>' + g + '</li>'; }).join('') + '</ul>' : '') +
      '</div>';
    });
    html += '</div>';
  }

  // Decisions
  if (D.decisions && D.decisions.length) {
    html += '<div class="section-title">Decisions</div>';
    html += '<div class="timeline">';
    D.decisions.forEach(function(d, di) {
      html += '<div class="timeline-entry ' + (d.status || '') + '" data-decision-idx="' + di + '">' +
        '<div class="timeline-date">' + (d.date || 'No date') + '</div>' +
        '<div class="timeline-title">' + (d.title || d.id) + '</div>' +
        '<span class="timeline-status">' + (d.status || 'recorded') + '</span>' +
      '</div>';
    });
    html += '</div>';
  }

  // Empty state
  if ((!D.steps || !D.steps.length) && (!discoveryArtifacts.length)) {
    html += '<div class="empty-state"><div class="empty-icon">&#9744;</div>No discovery artifacts yet. Run the <strong>discovery</strong> skill to get started.</div>';
  }

  html += '</div>';
  return html;
}

// Other phase content
function renderPhase(phaseId) {
  var artifacts = (D.artifacts || []).filter(function(a) { return a.phase === phaseId; });
  var html = '<div class="phase-content" id="phase-' + phaseId + '">';
  if (artifacts.length) {
    html += '<div class="section-title">' + phaseId.charAt(0).toUpperCase() + phaseId.slice(1) + ' Artifacts</div>';
    html += '<div class="card-grid">';
    artifacts.forEach(function(a, i) {
      var idx = D.artifacts.indexOf(a);
      html += '<div class="card" style="animation: fadeUp 0.4s ease ' + (0.1 + i * 0.05) + 's forwards" data-artifact-idx="' + idx + '">' +
        '<div class="card-filename">' + a.path + '</div>' +
        '<div><span class="card-status ' + a.status + '">' + a.status + '</span></div>' +
      '</div>';
    });
    html += '</div>';
  } else {
    html += '<div class="empty-state"><div class="empty-icon">&#9744;</div>Not started yet.</div>';
  }
  html += '</div>';
  return html;
}

// Build page
app.innerHTML = headerHTML + tabsHTML + renderDiscovery() + renderPhase('definition') + renderPhase('prototyping') + renderPhase('iteration');

// Event delegation for cards, personas, decisions
app.addEventListener('click', function(e) {
  var card = e.target.closest('[data-artifact-idx]');
  if (card) {
    var idx = parseInt(card.getAttribute('data-artifact-idx'), 10);
    var a = D.artifacts[idx];
    if (a) openModal(a.filename, a.content);
    return;
  }
  var persona = e.target.closest('[data-persona-idx]');
  if (persona) {
    var pi = parseInt(persona.getAttribute('data-persona-idx'), 10);
    var p = D.personas[pi];
    if (p) openModal(p.name, p.content || '');
    return;
  }
  var decision = e.target.closest('[data-decision-idx]');
  if (decision) {
    var di = parseInt(decision.getAttribute('data-decision-idx'), 10);
    var d = D.decisions[di];
    if (d) openModal(d.title || d.id, d.content || '');
    return;
  }
});

// Tab switching
document.querySelectorAll('.phase-tab').forEach(function(tab) {
  tab.addEventListener('click', function() {
    if (tab.classList.contains('disabled') && !hasPhaseContent(tab.dataset.phase)) return;
    document.querySelectorAll('.phase-tab').forEach(function(t) { t.classList.remove('active'); });
    document.querySelectorAll('.phase-content').forEach(function(c) { c.classList.remove('active'); });
    tab.classList.add('active');
    document.getElementById('phase-' + tab.dataset.phase).classList.add('active');
  });
});

// ThreeJS Background
(function() {
  var canvas = document.getElementById('bg');
  var renderer = new THREE.WebGLRenderer({ canvas: canvas, alpha: true, antialias: true });
  renderer.setSize(window.innerWidth, window.innerHeight);
  renderer.setPixelRatio(Math.min(window.devicePixelRatio, 2));

  var scene = new THREE.Scene();
  var camera = new THREE.PerspectiveCamera(50, window.innerWidth / window.innerHeight, 0.1, 100);
  camera.position.z = 5;

  // Icosahedron wireframe
  var geo = new THREE.IcosahedronGeometry(2.5, 2);
  var mat = new THREE.MeshBasicMaterial({
    color: 0xE8A838, wireframe: true, transparent: true, opacity: 0.06
  });
  var mesh = new THREE.Mesh(geo, mat);
  scene.add(mesh);

  // Particles
  var particleCount = 80;
  var positions = new Float32Array(particleCount * 3);
  for (var i = 0; i < particleCount * 3; i++) {
    positions[i] = (Math.random() - 0.5) * 8;
  }
  var particleGeo = new THREE.BufferGeometry();
  particleGeo.setAttribute('position', new THREE.BufferAttribute(positions, 3));
  var particleMat = new THREE.PointsMaterial({
    color: 0xE8A838, size: 0.015, transparent: true, opacity: 0.3
  });
  var particles = new THREE.Points(particleGeo, particleMat);
  scene.add(particles);

  var mouseX = 0, mouseY = 0;
  document.addEventListener('mousemove', function(e) {
    mouseX = (e.clientX / window.innerWidth - 0.5) * 2;
    mouseY = (e.clientY / window.innerHeight - 0.5) * 2;
  });

  // Fade on scroll
  window.addEventListener('scroll', function() {
    var t = Math.min(window.scrollY / 600, 1);
    canvas.style.opacity = String(1 - t * 0.8);
  });

  window.addEventListener('resize', function() {
    camera.aspect = window.innerWidth / window.innerHeight;
    camera.updateProjectionMatrix();
    renderer.setSize(window.innerWidth, window.innerHeight);
  });

  function animate() {
    requestAnimationFrame(animate);
    mesh.rotation.x += 0.001;
    mesh.rotation.y += 0.0015;
    mesh.rotation.x += (mouseY * 0.1 - mesh.rotation.x) * 0.02;
    mesh.rotation.y += (mouseX * 0.1 - mesh.rotation.y) * 0.02;
    particles.rotation.y += 0.0003;
    renderer.render(scene, camera);
  }
  animate();
})();
</script>
</body>
</html>
```

### Step 3: Write and Open

1. Write the generated HTML to `dashboard.html` in the project root, overwriting any existing file.
2. Open it in the default browser:

```bash
open dashboard.html
```

On Linux, use `xdg-open dashboard.html`. On Windows, use `start dashboard.html`.

---

## Data Extraction Details

### Parsing YAML Frontmatter

All project markdown files use YAML frontmatter between `---` delimiters at the top. Extract fields:
- `project`, `date`, `author`, `status`, `phase`, `template`

Example:
```yaml
---
project: Onboarding Redesign
date: 2026-03-10
status: in-progress
phase: discovery
template: hypothesis-sheet
---
```

Parse by reading lines between the first `---` and the second `---`. Split on `:` for key-value pairs. Handle quoted values and pipe-separated values (take the first value as actual, treat `|`-separated as enum options in templates).

### Determining Artifact Phase

Priority:
1. Use `phase` from frontmatter if present
2. Infer from directory:
   - `research/` -> discovery
   - `docs/prd/` -> definition
   - `docs/decisions/` -> definition
   - `prototypes/` -> prototyping
   - `iterations/` -> iteration
   - Root files (`AGENTS.md`, `CLAUDE.md`) -> project

### Parsing Hypothesis Sheet

Look for repeated blocks with this structure:
```
## Hypothesis [N]
**ID:** H[N]
**Status:** `value`
**Persona linkage:** value
**We believe** ...
```

Also parse the Summary Tracker table at the bottom:
```
| ID | One-line Summary | Persona Linkage | Status | Key Evidence | Updated |
```

### Parsing Evidence Log

Parse the Evidence Table:
```
| ID | Date | Source Type | Source Reference | Claim / Finding | Tags | Confidence | Hypothesis Linked | Notes |
```

Count rows where the ID column is non-empty and at least the Claim/Finding column has content. Skip rows that are empty template placeholders.

### Parsing Decision Log

Look for decision entries. Common patterns:
- `## D001: Title` or `## Decision 1: Title`
- Tables with columns: ID, Title, Date, Status
- Or sequential `##` headings with date and status in body text

### Handling Missing Files

For any file that does not exist:
- Omit it from the data (do not include empty entries)
- The HTML template handles empty states gracefully with "Not started yet" messages
- If `AGENTS.md` is missing, use defaults for project metadata

### Handling Template Files vs. Filled Files

Template files contain placeholder values like `[Project Name]`, `YYYY-MM-DD`, empty table rows. These indicate unfilled content:
- If a frontmatter `status` contains a pipe (`|`), it is still a template — treat as `unknown`
- If all hypothesis entries are templates (no actual content), do not include them
- Only count evidence rows that have actual content (non-empty Claim/Finding)

---

## Important Notes

- **Overwrite each time**: Always write to `dashboard.html`, replacing any existing file
- **No committed dashboard**: The generated `dashboard.html` should generally not be committed to git (add it to `.gitignore` if desired)
- **Fail gracefully**: If the project has no artifacts at all, still generate the dashboard with empty states
- **Content escaping**: When injecting markdown content into JSON, escape special characters properly (backslashes, quotes, newlines as `\n`)
- **Security note**: All content rendered in the dashboard comes from local project files only. The markdown-to-HTML converter escapes HTML entities before processing markdown syntax to prevent any injection from file content.
- **Performance**: For large projects with many files, the HTML should still load quickly since it is pre-baked with no runtime parsing needed
