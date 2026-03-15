---
title: Project Progress Dashboard Design
date: 2026-03-15
status: accepted
---

# Project Progress Dashboard Design

## Context

The product design workflow system generates many markdown artifacts across discovery (and later definition, prototyping, iteration phases). Users need a way to visualize project progress, review artifact content, and copy text for use in other tools (Notion, Google Docs, etc.).

## Decision

Build an on-demand HTML dashboard generated via a `/dashboard` skill command. The dashboard reads all project markdown files, parses their frontmatter and content, and produces a single self-contained HTML file.

## Key Design Decisions

### 1. On-demand generation, not live server

**Decision**: User runs `/dashboard`, system generates HTML, opens in browser.

**Why**: Tokens are only spent when the user wants the dashboard. No background process, no port conflicts, no server to manage.

**Alternative considered**: Live dev server with hot reload. Rejected because it adds complexity and running cost for something viewed occasionally.

### 2. Pre-baked data, not runtime fetch

**Decision**: All markdown content is parsed at generation time and injected as a JSON constant into the HTML.

**Why**: Zero runtime dependencies. The HTML file works offline, loads instantly, and has no CORS or fetch issues. The data is a snapshot — which is exactly what a dashboard should show.

### 3. Single self-contained HTML file

**Decision**: One file with inline CSS, inline JS, and CDN-loaded ThreeJS + fonts. Written to `dashboard.html` in project root, overwriting previous.

**Why**: No build step, no node_modules, no bundler. Easy to open, share, or archive. CDN dependencies (ThreeJS, Google Fonts) are acceptable since the dashboard is viewed in a browser with internet access.

### 4. Extensible phase tabs

**Decision**: Tab bar with Discovery, Definition, Prototyping, Iteration. Only populated phases show content; others show "Not started yet."

**Why**: The system supports all four phases. The dashboard should too, even before all phases have skills built. This makes it forward-compatible.

### 5. ThreeJS 3D background

**Decision**: Subtle icosahedron wireframe + particle field in warm amber. Reacts to mouse movement. Fades on scroll.

**Why**: Reinforces the "hype UI" aesthetic direction without being distracting. The fade-on-scroll ensures content readability takes priority. The wireframe is low-poly and lightweight.

### 6. Dark theme with editorial typography

**Decision**: Deep charcoal background, glass morphism cards, Instrument Serif for headings, DM Sans for body, IBM Plex Mono for data.

**Why**: The dashboard should feel like a design agency's internal tool — refined and intentional, not generic SaaS. The typography choices are distinctive without being impractical.

### 7. Content viewer with copy functionality

**Decision**: Click any artifact card to open a modal with rendered markdown. Two copy buttons: "Copy Markdown" (raw) and "Copy Plain Text" (stripped).

**Why**: The primary use case for viewing content is to copy it into another tool. Raw markdown preserves formatting for tools that support it. Plain text is for everything else.

### 8. HTML entity escaping before markdown rendering

**Decision**: The markdown-to-HTML converter escapes `&`, `<`, `>` before processing markdown syntax.

**Why**: Even though all content is from local project files, defense in depth prevents any accidental HTML injection. Uses event delegation instead of inline handlers to avoid attribute injection vectors.

## Consequences

- Dashboard is always a snapshot, not live — user must regenerate to see changes
- ThreeJS adds ~600KB CDN load (acceptable for a browser-viewed tool)
- The skill file is large (~500 lines) because it contains the full HTML template inline
- No build tooling needed — the skill generates the HTML directly
