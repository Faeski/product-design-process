# CLAUDE.md

This is the Claude Code configuration for the **product-design-process** repository itself — the workflow system that contains skills and templates for AI-native product design.

> **Not a product project.** This repo is a _tooling_ repo. It contains Claude Code skills, markdown templates, and documentation. There is no application code, no build step, no tests. If you're looking for the template that gets copied into product projects, see `templates/project/CLAUDE.md`.

---

## What This Repo Is

A set of Claude Code skills and project templates that encode a structured product design process. Product designers clone this repo, run `setup.sh` to install the skills globally, then use them in their own project folders.

**This repo contains:**
- `skills/` — Claude Code skill definitions (the core product)
- `templates/` — Markdown skeletons copied into projects by the scaffold skill
- `setup.sh` — Installer that creates symlinks to `~/.claude/skills/`

**This repo does NOT contain:**
- Application code
- Dependencies or package managers
- Build/test/deploy pipelines
- Any generated output (like `dashboard.html`)

---

## File Structure

```
product-design-process/
  README.md                    # User-facing documentation (primary audience: product designers)
  CLAUDE.md                    # This file (for Claude Code when working in this repo)
  setup.sh                     # Skill installer (symlinks to ~/.claude/skills/)
  .gitignore                   # Excludes generated files
  skills/
    discovery/SKILL.md         # 6-step discovery workflow skill
    scaffold/SKILL.md          # Project scaffolding skill
    dashboard/SKILL.md         # Dashboard generator skill
  templates/
    discovery/                 # 13 research artifact templates
    definition/                # 4 product definition templates
    prototyping/               # 3 prototyping templates
    iteration/                 # 2 iteration templates
    project/                   # AGENTS.md, CLAUDE.md, stakeholder-brief templates
```

---

## Conventions

### Skills

- Each skill lives in `skills/<name>/SKILL.md`
- Skills have YAML frontmatter with `name` and `description`
- Skill names are lowercase, single-word or hyphenated
- Skills are instruction documents (prose), not executable code
- When a skill references templates, it reads from `templates/` relative to the repo root

### Templates

- Each template lives in `templates/<phase>/<name>.md`
- Templates have YAML frontmatter: `project`, `date`, `author`, `status`, `phase`, `template`
- Placeholder values use `[brackets]` (e.g., `[Project Name]`) or pipe-separated options (e.g., `draft | in-progress | complete`)
- Templates define structure (headings, tables, sections) — skills fill them with content
- Do NOT add content to templates. They should remain skeletons.

### Documentation

- The README.md is the primary user-facing document. Keep it focused on "how to use" rather than "how it works internally."
- Inline code comments in skill files explain the _why_, not the _what_
- The `docs/` folder is local-only (gitignored) and contains private design decisions and blog drafts

### Git

- Commit messages: `feat:`, `fix:`, `docs:`, `refactor:` prefix
- Keep commits focused: one skill change per commit, or one template change per commit
- Never commit generated files (like `dashboard.html`)

---

## Do Not

- **Do not** add application code, build tools, or runtime dependencies to this repo
- **Do not** add content to template files — they must remain skeletons with placeholders
- **Do not** modify `setup.sh` without updating the uninstall instructions in README.md
- **Do not** commit `dashboard.html` or any generated project artifacts
- **Do not** change the `skills/<name>/SKILL.md` directory structure — the symlinks depend on it
- **Do not** add new top-level directories without discussing the reasoning first

---

## Common Tasks

### Adding a new skill

1. Create `skills/<name>/SKILL.md` with frontmatter (`name`, `description`)
2. Add the symlink line to `setup.sh`
3. Update the uninstall comment in `setup.sh`
4. Add the skill to the README's skills table
5. Document the design rationale (in the skill file or a local docs/ file)

### Modifying a template

1. Edit the template in `templates/<phase>/<name>.md`
2. Ensure it remains a skeleton (no filled-in content)
3. Check that any skill referencing this template still works with the new structure
4. Update the AGENTS.md template's Templates Reference table if you renamed or added a template

### Testing changes

There is no automated test suite. To verify changes:
1. Run `setup.sh` to ensure symlinks are created
2. Create a test project folder and run the modified skill
3. Check that the skill produces correct output
4. For dashboard changes: run `/dashboard` in a project with artifacts and verify the HTML renders correctly
