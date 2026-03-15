---
name: scaffold
description: Creates a new product project structure with templates, AGENTS.md, and Claude config. Adapts structure based on project classification (type, user complexity, stakeholders). Sets up your AI-native product design workflow.
---

# Project Scaffold Skill

## When to Use

Use this skill when:
- Starting any product design project (new product, new feature, redesign, or optimization)
- Setting up a new repo that should follow the AI-native product design workflow
- You want the right folder structure and templates ready to go

## What It Does

Creates a project structure with:
- `research/` folder for discovery artifacts
- `docs/` folder for product definition and architecture
- `AGENTS.md` with your workflow philosophy
- `CLAUDE.md` with project-specific Claude Code config
- Selected templates pre-populated and ready for use
- Structure adapted to project complexity (multi-persona, multi-stakeholder)

## Process

### Step 1: Gather Project Context

Ask the user these questions (one at a time):

1. "What's the project name?"
2. "In one sentence, what problem does this solve and for whom?"
3. **Project type**: "What type of project is this?"
   - New product (greenfield)
   - New feature for an existing product
   - Redesign of an existing area
   - Optimization of an existing area
4. **User complexity**: "How many user types are involved?"
   - Single user type
   - Multiple personas with shared flows
   - Multiple personas with separate flows
5. **Stakeholder landscape**: "Who's involved in decisions?"
   - Solo designer
   - Single stakeholder
   - Multiple stakeholders with aligned goals
   - Multiple stakeholders with competing priorities
6. "What tech stack are you using (or planning to use)?"
7. "Which phases do you need templates for?"
   - Discovery (research, hypotheses, research planning)
   - Definition (PRD, metrics, risks, decisions)
   - Prototyping (prototype brief, design tokens, test plan)
   - Iteration (iteration briefs, feedback synthesis)
   - All of the above

### Step 2: Create Directory Structure

Based on the selected phases and project complexity, create:

```bash
# Always created:
mkdir -p research
mkdir -p docs/decisions

# If Discovery selected:
# (research/ folder already exists)

# If Definition selected:
mkdir -p docs/prd

# If Prototyping selected:
mkdir -p prototypes

# If Iteration selected:
mkdir -p iterations
```

### Step 3: Copy and Customize Templates

For each selected phase, copy the relevant templates from the workflow system repo.

**Important**: The templates are in the workflow system repo. To find them:
1. Check if the skill was installed via symlink — if so, follow the symlink to find the source repo
2. Common locations: `~/Documents/GitHub/product-design-process/templates/`, `~/Code Projects/product-design-process/templates/`
3. If the templates cannot be found, ask the user: "Where is your product-design-process repo located?"

For each template:
1. Copy from templates directory to the project
2. Replace `[Project Name]` with the actual project name
3. Replace `[Your Name]` with the user's name (ask once)
4. Set the date to today

**For multi-persona projects**, additionally create:
- Placeholder persona files: `research/user-persona-[role].md` (one per known persona, or a single `research/user-persona.md` to be expanded during discovery)
- `research/system-flow-map.md` — cross-persona flow map (to be filled during Step 4)

**For multi-stakeholder projects**, additionally create:
- `research/stakeholder-raci.md` — stakeholder decision framework (to be filled during Step 5)

**For non-greenfield projects**, additionally create:
- `research/impact-analysis.md` — existing system impact analysis (to be filled during Step 1)

### Step 4: Generate AGENTS.md

Copy `templates/project/AGENTS.md` to the project root and customize:
- Fill in project name and description
- Fill in project type, user complexity, and stakeholder landscape
- Fill in tech stack
- Adjust workflow principles if the user has specific preferences
- Add project-specific conventions

### Step 5: Generate CLAUDE.md

Copy `templates/project/CLAUDE.md` to the project root and customize:
- Fill in project description
- Fill in project type and current state
- Fill in tech stack
- Set up build/test/deploy commands based on the stack
- Add project-specific "Do Not" rules

### Step 6: Confirm

Show the user what was created:
- List all files created
- Show the AGENTS.md content for review
- Highlight any project-complexity-specific files that were added
- Ask: "Anything you'd like to change before we start?"

## File Mapping

| Phase | Template Source | Destination |
|-------|---------------|-------------|
| Discovery | `templates/discovery/research-plan.md` | `research/research-plan.md` |
| Discovery | `templates/discovery/hypothesis-sheet.md` | `research/hypothesis-sheet.md` |
| Discovery | `templates/discovery/evidence-log.md` | `research/evidence-log.md` |
| Discovery | `templates/discovery/interview-guide.md` | `research/interview-guide.md` |
| Discovery | `templates/discovery/interview-notes.md` | `research/interview-notes.md` |
| Discovery | `templates/discovery/competitor-teardown.md` | `research/competitor-teardown.md` |
| Discovery | `templates/discovery/market-research.md` | `research/market-research.md` |
| Discovery | `templates/discovery/jtbd-canvas.md` | `research/jtbd-canvas.md` |
| Discovery | `templates/discovery/user-persona.md` | `research/user-persona.md` |
| Discovery | `templates/discovery/research-synthesis.md` | `research/research-synthesis.md` |
| Definition | `templates/definition/prd.md` | `docs/prd/PRD.md` |
| Definition | `templates/definition/metrics-plan.md` | `docs/prd/metrics-plan.md` |
| Definition | `templates/definition/risks-register.md` | `docs/prd/risks-register.md` |
| Definition | `templates/definition/decision-log.md` | `docs/decisions/decision-log.md` |
| Prototyping | `templates/prototyping/prototype-brief.md` | `research/prototype-brief.md` |
| Prototyping | `templates/prototyping/design-tokens.md` | `prototypes/design-tokens.md` |
| Prototyping | `templates/prototyping/test-plan.md` | `research/test-plan.md` |
| Iteration | `templates/iteration/iteration-brief.md` | `iterations/iteration-001.md` |
| Iteration | `templates/iteration/feedback-synthesis.md` | `iterations/feedback-synthesis.md` |
| Project | `templates/project/AGENTS.md` | `AGENTS.md` |
| Project | `templates/project/CLAUDE.md` | `CLAUDE.md` |
| Project | `templates/project/stakeholder-brief.md` | `research/stakeholder-brief.md` |

### Additional files for complex projects

_These templates are only copied when the project classification requires them._

| Condition | Template Source | Destination |
|-----------|---------------|-------------|
| Multi-persona | `templates/discovery/system-flow-map.md` | `research/system-flow-map.md` |
| Multi-stakeholder | `templates/discovery/stakeholder-raci.md` | `research/stakeholder-raci.md` |
| Non-greenfield | `templates/discovery/impact-analysis.md` | `research/impact-analysis.md` |

## After Scaffolding

Suggest to the user:
- "Your project is set up. Want to run the **discovery** skill to start researching?"
- Or: "If you already have research, you can jump to any step."
- Remind them: "The discovery skill will start with an intake classification to calibrate depth for your project."
