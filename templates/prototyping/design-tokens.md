---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
---

# Design Tokens

> **Note:** These tokens should be machine-readable so AI coding agents can use them directly. Use CSS custom properties format. When implementing, copy the token blocks directly into your stylesheet or configuration file.

---

## Colors

### Primary

```css
:root {
  --color-primary-50: #eff6ff;   /* Lightest tint */
  --color-primary-100: #dbeafe;
  --color-primary-200: #bfdbfe;
  --color-primary-300: #93c5fd;
  --color-primary-400: #60a5fa;
  --color-primary-500: #3b82f6;  /* Base primary */
  --color-primary-600: #2563eb;
  --color-primary-700: #1d4ed8;
  --color-primary-800: #1e40af;
  --color-primary-900: #1e3a8a;  /* Darkest shade */
}
```

### Secondary

```css
:root {
  --color-secondary-50: #f5f3ff;
  --color-secondary-100: #ede9fe;
  --color-secondary-200: #ddd6fe;
  --color-secondary-300: #c4b5fd;
  --color-secondary-400: #a78bfa;
  --color-secondary-500: #8b5cf6;  /* Base secondary */
  --color-secondary-600: #7c3aed;
  --color-secondary-700: #6d28d9;
  --color-secondary-800: #5b21b6;
  --color-secondary-900: #4c1d95;
}
```

### Neutral

```css
:root {
  --color-neutral-0: #ffffff;    /* White */
  --color-neutral-50: #f9fafb;
  --color-neutral-100: #f3f4f6;
  --color-neutral-200: #e5e7eb;
  --color-neutral-300: #d1d5db;
  --color-neutral-400: #9ca3af;
  --color-neutral-500: #6b7280;
  --color-neutral-600: #4b5563;
  --color-neutral-700: #374151;
  --color-neutral-800: #1f2937;
  --color-neutral-900: #111827;
  --color-neutral-950: #030712;  /* Near black */
}
```

### Semantic

```css
:root {
  /* Success */
  --color-success-light: #dcfce7;
  --color-success-base: #22c55e;
  --color-success-dark: #15803d;
  --color-success-text: #14532d;

  /* Warning */
  --color-warning-light: #fef9c3;
  --color-warning-base: #eab308;
  --color-warning-dark: #a16207;
  --color-warning-text: #713f12;

  /* Error */
  --color-error-light: #fee2e2;
  --color-error-base: #ef4444;
  --color-error-dark: #b91c1c;
  --color-error-text: #7f1d1d;

  /* Info */
  --color-info-light: #dbeafe;
  --color-info-base: #3b82f6;
  --color-info-dark: #1d4ed8;
  --color-info-text: #1e3a8a;
}
```

---

## Typography

```css
:root {
  /* Font Families */
  --font-family-sans: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
  --font-family-mono: 'JetBrains Mono', 'Fira Code', 'Consolas', monospace;
  --font-family-serif: 'Georgia', 'Times New Roman', serif;  /* If needed */

  /* Font Sizes (modular scale: 1.25 ratio) */
  --font-size-xs: 0.75rem;     /* 12px */
  --font-size-sm: 0.875rem;    /* 14px */
  --font-size-base: 1rem;      /* 16px */
  --font-size-md: 1.125rem;    /* 18px */
  --font-size-lg: 1.25rem;     /* 20px */
  --font-size-xl: 1.5rem;      /* 24px */
  --font-size-2xl: 1.875rem;   /* 30px */
  --font-size-3xl: 2.25rem;    /* 36px */
  --font-size-4xl: 3rem;       /* 48px */

  /* Font Weights */
  --font-weight-regular: 400;
  --font-weight-medium: 500;
  --font-weight-semibold: 600;
  --font-weight-bold: 700;

  /* Line Heights */
  --line-height-tight: 1.25;    /* Headings */
  --line-height-normal: 1.5;    /* Body text */
  --line-height-relaxed: 1.75;  /* Long-form content */

  /* Letter Spacing */
  --letter-spacing-tight: -0.025em;   /* Large headings */
  --letter-spacing-normal: 0em;       /* Body text */
  --letter-spacing-wide: 0.025em;     /* Small text, labels */
  --letter-spacing-wider: 0.05em;     /* All-caps text */
}
```

### Type Scale Reference

| Name | Size | Weight | Line Height | Use Case |
|------|------|--------|-------------|----------|
| Display | 3rem (48px) | Bold | Tight | Hero headings |
| H1 | 2.25rem (36px) | Bold | Tight | Page titles |
| H2 | 1.875rem (30px) | Semibold | Tight | Section headings |
| H3 | 1.5rem (24px) | Semibold | Tight | Subsection headings |
| H4 | 1.25rem (20px) | Medium | Normal | Card titles |
| Body Large | 1.125rem (18px) | Regular | Relaxed | Intro paragraphs |
| Body | 1rem (16px) | Regular | Normal | Default body text |
| Body Small | 0.875rem (14px) | Regular | Normal | Secondary text |
| Caption | 0.75rem (12px) | Medium | Normal | Labels, metadata |

---

## Spacing

_Based on a 4px base unit._

```css
:root {
  --space-0: 0;
  --space-1: 0.25rem;   /* 4px */
  --space-2: 0.5rem;    /* 8px */
  --space-3: 0.75rem;   /* 12px */
  --space-4: 1rem;      /* 16px */
  --space-5: 1.25rem;   /* 20px */
  --space-6: 1.5rem;    /* 24px */
  --space-8: 2rem;      /* 32px */
  --space-10: 2.5rem;   /* 40px */
  --space-12: 3rem;     /* 48px */
  --space-16: 4rem;     /* 64px */
  --space-20: 5rem;     /* 80px */
  --space-24: 6rem;     /* 96px */
  --space-32: 8rem;     /* 128px */
}
```

### Spacing Usage Guide

| Context | Token | Example |
|---------|-------|---------|
| Inline element gap | `--space-1` to `--space-2` | Icon to label |
| Form field padding | `--space-2` to `--space-3` | Input inner padding |
| Card padding | `--space-4` to `--space-6` | Content inside cards |
| Section gap | `--space-8` to `--space-12` | Between page sections |
| Page margin | `--space-4` (mobile), `--space-8` (desktop) | Outer page padding |

---

## Border Radius

```css
:root {
  --radius-none: 0;
  --radius-sm: 0.25rem;    /* 4px - subtle rounding */
  --radius-md: 0.375rem;   /* 6px - default for inputs */
  --radius-lg: 0.5rem;     /* 8px - cards, containers */
  --radius-xl: 0.75rem;    /* 12px - modals, large cards */
  --radius-2xl: 1rem;      /* 16px - prominent elements */
  --radius-full: 9999px;   /* Pill shape / circles */
}
```

---

## Shadows

```css
:root {
  --shadow-xs: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
  --shadow-sm: 0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px -1px rgba(0, 0, 0, 0.1);
  --shadow-md: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -2px rgba(0, 0, 0, 0.1);
  --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -4px rgba(0, 0, 0, 0.1);
  --shadow-xl: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 8px 10px -6px rgba(0, 0, 0, 0.1);
  --shadow-inner: inset 0 2px 4px 0 rgba(0, 0, 0, 0.05);
  --shadow-none: 0 0 0 0 transparent;
}
```

### Shadow Usage Guide

| Context | Token |
|---------|-------|
| Subtle lift (buttons, inputs) | `--shadow-xs` or `--shadow-sm` |
| Cards, dropdowns | `--shadow-md` |
| Modals, popovers | `--shadow-lg` |
| Prominent overlays | `--shadow-xl` |
| Pressed / inset state | `--shadow-inner` |

---

## Breakpoints

```css
:root {
  --breakpoint-sm: 640px;    /* Small phones (landscape) */
  --breakpoint-md: 768px;    /* Tablets */
  --breakpoint-lg: 1024px;   /* Small desktops / tablets (landscape) */
  --breakpoint-xl: 1280px;   /* Standard desktops */
  --breakpoint-2xl: 1536px;  /* Large desktops */
}

/* Usage with media queries */
/* Mobile-first approach: base styles are mobile, then scale up */

/*
@media (min-width: 640px)  { ... }  -- sm: Small tablets
@media (min-width: 768px)  { ... }  -- md: Tablets
@media (min-width: 1024px) { ... }  -- lg: Desktops
@media (min-width: 1280px) { ... }  -- xl: Large desktops
@media (min-width: 1536px) { ... }  -- 2xl: Extra large screens
*/
```

### Breakpoint Reference

| Name | Width | Typical Device | Layout |
|------|-------|----------------|--------|
| Base (mobile) | < 640px | Phones | Single column |
| sm | >= 640px | Large phones / small tablets | Single column, wider |
| md (tablet) | >= 768px | Tablets | Two columns |
| lg (desktop) | >= 1024px | Laptops | Multi-column |
| xl | >= 1280px | Desktops | Full layout |
| 2xl | >= 1536px | Large monitors | Max-width container |

---

## Component Tokens

### Button

```css
:root {
  /* Primary Button */
  --button-primary-bg: var(--color-primary-500);
  --button-primary-text: #ffffff;
  --button-primary-hover-bg: var(--color-primary-600);
  --button-primary-active-bg: var(--color-primary-700);
  --button-primary-disabled-bg: var(--color-primary-300);

  /* Secondary Button */
  --button-secondary-bg: transparent;
  --button-secondary-text: var(--color-primary-500);
  --button-secondary-border: var(--color-primary-500);
  --button-secondary-hover-bg: var(--color-primary-50);

  /* Button Sizing */
  --button-padding-sm: var(--space-1) var(--space-3);
  --button-padding-md: var(--space-2) var(--space-4);
  --button-padding-lg: var(--space-3) var(--space-6);
  --button-font-size-sm: var(--font-size-sm);
  --button-font-size-md: var(--font-size-base);
  --button-font-size-lg: var(--font-size-md);
  --button-radius: var(--radius-md);
}
```

### Input

```css
:root {
  --input-bg: var(--color-neutral-0);
  --input-border: var(--color-neutral-300);
  --input-border-focus: var(--color-primary-500);
  --input-text: var(--color-neutral-900);
  --input-placeholder: var(--color-neutral-400);
  --input-padding: var(--space-2) var(--space-3);
  --input-radius: var(--radius-md);
  --input-font-size: var(--font-size-base);
  --input-error-border: var(--color-error-base);
  --input-error-text: var(--color-error-dark);
  --input-disabled-bg: var(--color-neutral-100);
  --input-disabled-text: var(--color-neutral-400);
}
```

### Card

```css
:root {
  --card-bg: var(--color-neutral-0);
  --card-border: var(--color-neutral-200);
  --card-radius: var(--radius-lg);
  --card-shadow: var(--shadow-sm);
  --card-shadow-hover: var(--shadow-md);
  --card-padding: var(--space-6);
  --card-header-font-size: var(--font-size-lg);
  --card-body-font-size: var(--font-size-base);
}
```

---

## Dark Mode Variants

```css
[data-theme="dark"],
.dark {
  /* Colors - Neutral (inverted) */
  --color-neutral-0: #111827;
  --color-neutral-50: #1f2937;
  --color-neutral-100: #374151;
  --color-neutral-200: #4b5563;
  --color-neutral-300: #6b7280;
  --color-neutral-400: #9ca3af;
  --color-neutral-500: #d1d5db;
  --color-neutral-600: #e5e7eb;
  --color-neutral-700: #f3f4f6;
  --color-neutral-800: #f9fafb;
  --color-neutral-900: #ffffff;
  --color-neutral-950: #ffffff;

  /* Colors - Primary (adjusted for dark backgrounds) */
  --color-primary-500: #60a5fa;
  --color-primary-600: #93c5fd;

  /* Semantic - adjusted for contrast on dark */
  --color-success-light: #064e3b;
  --color-success-base: #34d399;
  --color-warning-light: #78350f;
  --color-warning-base: #fbbf24;
  --color-error-light: #7f1d1d;
  --color-error-base: #f87171;
  --color-info-light: #1e3a8a;
  --color-info-base: #60a5fa;

  /* Shadows - more pronounced for dark mode */
  --shadow-sm: 0 1px 3px 0 rgba(0, 0, 0, 0.3), 0 1px 2px -1px rgba(0, 0, 0, 0.3);
  --shadow-md: 0 4px 6px -1px rgba(0, 0, 0, 0.3), 0 2px 4px -2px rgba(0, 0, 0, 0.3);
  --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.3), 0 4px 6px -4px rgba(0, 0, 0, 0.3);

  /* Component overrides */
  --card-border: var(--color-neutral-200);
  --input-bg: var(--color-neutral-50);
  --input-border: var(--color-neutral-200);
}
```

---

## Implementation Notes

- All values use `rem` units relative to a 16px root font size.
- The spacing scale follows a 4px base grid (`0.25rem`).
- Color scales use 50-900 notation, with 500 as the base.
- Dark mode is implemented via a `data-theme="dark"` attribute or `.dark` class on `<html>`.
- Component tokens reference primitive tokens, so changing a primitive updates all components.
- For Tailwind CSS projects, these tokens can be mapped to `tailwind.config.js` `theme.extend`.
