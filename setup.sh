#!/bin/bash
# =============================================================================
# AI-Native Product Designer Workflow System — Setup Script
# =============================================================================
# This script symlinks your custom Claude Code skills to ~/.claude/skills/
# so they're available globally in any project.
#
# Usage:
#   chmod +x setup.sh && ./setup.sh
#
# To uninstall:
#   rm ~/.claude/skills/discovery ~/.claude/skills/scaffold ~/.claude/skills/dashboard
# =============================================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="$HOME/.claude/skills"

echo "Setting up AI-Native Product Designer workflow system..."
echo ""

# Create skills directory if it doesn't exist
mkdir -p "$SKILLS_DIR"

# Helper: safely create a symlink (removes existing directory if it conflicts)
link_skill() {
  local name="$1"
  local target="$SCRIPT_DIR/skills/$name"
  local link="$SKILLS_DIR/$name"

  if [ -d "$link" ] && [ ! -L "$link" ]; then
    echo "  Warning: $link is an existing directory, replacing with symlink"
    rm -rf "$link"
  fi

  ln -sfn "$target" "$link"
  echo "  Linked: $name"
}

# Symlink each skill
link_skill "discovery"
link_skill "scaffold"
link_skill "dashboard"

echo ""
echo "Done! Skills are now available globally in Claude Code."
echo ""
echo "Installed skills:"
echo "  /scaffold   — Create a new project structure with templates and config"
echo "  /discovery  — Run 6-step Discovery & Research workflow"
echo "  /dashboard  — Generate an interactive HTML progress dashboard"
echo ""
echo "Getting started:"
echo "  1. Open a new project folder in Claude Code"
echo "  2. Say: 'Help me scaffold a new product project'"
echo "  3. Follow the prompts to set up your project"
echo ""
echo "To uninstall:"
echo "  rm ~/.claude/skills/discovery ~/.claude/skills/scaffold ~/.claude/skills/dashboard"
