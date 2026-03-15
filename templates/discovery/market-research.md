---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
phase: discovery
template: market-research
---

# Market Research

> Understand the market before you commit.
> This document maps the size, dynamics, players, and trends of the market you intend to enter.
> Be rigorous about sources. A market size number without a source is a guess.

---

## 1. Market Definition

**What market are we in?**

> [Define the market clearly. Be specific about boundaries. Example: "The vendor management software market for mid-market B2B companies (50-500 employees) in North America and Europe."]

**Market category:** [e.g., Vendor Management Software / Procurement Technology / SaaS Tools]

**Adjacent markets:** [e.g., Contract lifecycle management, spend analytics, procurement automation]

**How we define the boundary:**
> [Explain what is inside and outside your market definition. Example: "We include software tools for managing vendor relationships and contracts, but exclude full procurement suites (e.g., Coupa, Ariba) that serve enterprise buyers with $1M+ budgets."]

---

## 2. Market Size

> Use bottom-up estimates where possible. Top-down numbers from analyst reports are useful but often inflated.
> Always cite your sources. Always state your assumptions.

### TAM (Total Addressable Market)

**Definition:** The total revenue opportunity if you captured 100% of the market.

| Metric | Value | Source | Date | Confidence |
|--------|-------|--------|------|------------|
| Market size (revenue) | [e.g., $4.2B] | [e.g., Gartner 2024 report] | [YYYY] | High / Med / Low |
| Number of potential companies | [e.g., ~180,000 mid-market B2B companies in NA+EU] | [e.g., US Census + Eurostat] | [YYYY] | High / Med / Low |
| CAGR | [e.g., 12.3%] | [e.g., Grand View Research] | [YYYY] | High / Med / Low |

**Assumptions:**
- [e.g., Includes all B2B companies with 50-500 employees in NA and EU]
- [e.g., Based on current market definition, not future expansion]

### SAM (Serviceable Addressable Market)

**Definition:** The portion of TAM that your product can realistically serve given your focus.

| Metric | Value | Source | Confidence |
|--------|-------|--------|------------|
| Market size | [e.g., $680M] | [Calculated] | Med |
| Number of target companies | [e.g., ~28,000] | [Calculated] | Med |

**How we narrowed from TAM:**
- [e.g., Filtered to B2B SaaS and professional services companies only]
- [e.g., Filtered to companies managing 10+ vendor relationships]
- [e.g., Excluded companies already using enterprise procurement suites]

### SOM (Serviceable Obtainable Market)

**Definition:** The portion of SAM you can realistically capture in 3 years.

| Metric | Value | Assumption | Confidence |
|--------|-------|------------|------------|
| Revenue target (Year 3) | [e.g., $8.5M ARR] | [e.g., 1.25% of SAM] | Low |
| Target customers (Year 3) | [e.g., 350 companies] | [e.g., $24K average ACV] | Low |

**Bottom-up validation:**
- [e.g., If we close 8 customers/month at $2K/mo average by Year 2, we reach ~$1.5M ARR]
- [e.g., Comparable startups (X, Y, Z) reached $5-10M ARR in 3 years in similar markets]

---

## 3. Growth Trends

**Is this market growing, stable, or declining?**

| Trend | Direction | Evidence | Source |
|-------|-----------|----------|--------|
| [e.g., Vendor count per company] | Growing | [e.g., Average vendor count up 32% since 2021] | [Gartner 2024] |
| [e.g., SaaS procurement complexity] | Growing | [e.g., Average company uses 130+ SaaS tools] | [Productiv 2024] |
| [e.g., Regulatory pressure on vendor risk] | Growing | [e.g., SOC 2, GDPR driving vendor due diligence requirements] | [Industry analysis] |
| [e.g., Budget for procurement tools] | Stable | [e.g., IT budgets flat but shifting toward automation] | [Forrester 2024] |
| [e.g., Consolidation in procurement tech] | Growing | [e.g., 3 acquisitions in past 12 months] | [Crunchbase] |
| [ ] | | | |

**Tailwinds (forces in our favor):**
- [e.g., Increasing vendor sprawl creates more pain]
- [e.g., Remote work makes vendor management harder without tools]
- [ ]

**Headwinds (forces against us):**
- [e.g., Economic uncertainty reducing software budgets]
- [e.g., Platform consolidation -- companies want fewer tools, not more]
- [ ]

---

## 4. Key Players Map

> Map the landscape by positioning. Where do existing players focus?

### By Segment

| Segment | Key Players | Maturity |
|---------|-------------|----------|
| Enterprise ($1B+ revenue) | [e.g., Coupa, SAP Ariba, Jaggaer] | Mature |
| Upper mid-market (500-5000 employees) | [e.g., VendorHub, Precoro] | Growing |
| Lower mid-market (50-500 employees) | [e.g., Mostly spreadsheets and point tools] | Underserved |
| SMB (<50 employees) | [e.g., No dedicated tools] | Not viable |

### By Focus Area

| Focus | Key Players | Notes |
|-------|-------------|-------|
| [e.g., Full procurement suite] | [e.g., Coupa, SAP Ariba] | [e.g., $100K+ ACV, 6-month implementation] |
| [e.g., Vendor lifecycle management] | [e.g., VendorHub] | [e.g., Our closest competitor] |
| [e.g., Contract management] | [e.g., Ironclad, Juro] | [e.g., Adjacent, not direct competitor] |
| [e.g., Spend analytics] | [e.g., Spendesk, Ramp] | [e.g., Overlapping feature set] |

---

## 5. Technology Trends

| Trend | Relevance to Us | Timeframe | Implication |
|-------|-----------------|-----------|-------------|
| [e.g., AI-powered contract analysis] | High | Now | [e.g., Table stakes in 2 years -- build or integrate early] |
| [e.g., API-first architectures] | High | Now | [e.g., Integration capability is a differentiator] |
| [e.g., No-code/low-code workflows] | Medium | 1-2 years | [e.g., Users expect customization without engineering] |
| [e.g., Embedded fintech (payments)] | Low | 2-3 years | [e.g., Future monetization opportunity, not urgent] |
| [ ] | | | |

---

## 6. Regulatory & Compliance

| Regulation / Requirement | Relevance | Impact on Product | Timeline |
|--------------------------|-----------|-------------------|----------|
| [e.g., GDPR -- data processing of vendor data] | High | [e.g., Need EU data residency option] | Now |
| [e.g., SOC 2 Type II] | High | [e.g., Required by enterprise buyers, expected by mid-market] | Year 1 |
| [e.g., Industry-specific (HIPAA, PCI)] | Medium | [e.g., Needed for healthcare/fintech verticals] | Year 2+ |
| [e.g., ESG vendor reporting requirements] | Low | [e.g., Emerging trend, monitor] | 2+ years |
| [ ] | | | |

---

## 7. Customer Segments

| Segment | Est. Size (companies) | Pain Level (1-5) | Willingness to Pay | Accessibility | Priority |
|---------|-----------------------|-------------------|---------------------|---------------|----------|
| [e.g., B2B SaaS, 50-200 employees] | [e.g., ~12,000] | 4 | [e.g., $200-500/mo] | [e.g., High -- active on LinkedIn, attend SaaStr] | 1st |
| [e.g., Professional services, 100-500 employees] | [e.g., ~8,000] | 3 | [e.g., $300-800/mo] | [e.g., Med -- reachable via industry events] | 2nd |
| [e.g., E-commerce, 50-300 employees] | [e.g., ~6,000] | 3 | [e.g., $150-400/mo] | [e.g., Med -- active on Shopify ecosystem] | 3rd |
| [e.g., Manufacturing, 200-500 employees] | [e.g., ~15,000] | 5 | [e.g., $500-1500/mo] | [e.g., Low -- hard to reach digitally, long sales cycles] | Deprioritized |
| [ ] | | | | | |

**Segment selection rationale:**
> [Explain why you prioritized these segments. Consider: pain level x willingness to pay x accessibility. The best initial segment has high pain, reasonable willingness to pay, and is easy to reach.]

---

## 8. Disconfirming Evidence

> What evidence suggests this market might not be as attractive as we believe?

| Belief | Disconfirming Evidence | Source | Severity |
|--------|------------------------|--------|----------|
| [e.g., Mid-market needs dedicated vendor management tools] | [e.g., Many mid-market companies say "spreadsheets work fine"] | [e.g., 3 interviews] | High / Med / Low |
| [e.g., Market is growing fast enough to support new entrants] | [e.g., Recent VC pullback in procurement tech] | [e.g., Crunchbase data] | High / Med / Low |
| [e.g., Willingness to pay is $200+/mo] | [e.g., Survey data shows 40% would only pay <$100/mo] | [e.g., Survey Q12] | High / Med / Low |
| [ ] | | | |

---

## 9. Wedge Hypothesis

> Based on everything above, what is our best entry point into this market?

**Wedge statement:**
> [e.g., We will enter the vendor management market by targeting B2B SaaS companies with 50-200 employees who currently manage 10-50 vendor relationships using spreadsheets. We will win on setup speed (5 minutes) and simplicity, at a price point of $200-400/mo.]

**Why this wedge:**
- [e.g., Segment has high pain and is easy to reach]
- [e.g., No competitor serves this niche well]
- [e.g., Low switching cost from spreadsheets]

**Risks to this wedge:**
- [e.g., "Good enough" spreadsheet habit may be hard to break]
- [e.g., Competitors could launch a simpler tier]
- [e.g., Market segment may be too small to build a venture-scale business]

**Next steps to validate:**
- [ ] [e.g., Complete 8 more interviews with target segment]
- [ ] [e.g., Run a landing page test to measure demand signal]
- [ ] [e.g., Build pricing survey to validate willingness to pay]

---

## Sources & References

| # | Source | Type | URL / Citation | Date Accessed | Confidence |
|---|--------|------|----------------|---------------|------------|
| 1 | [e.g., Gartner "Vendor Management Market Guide"] | Analyst report | [URL] | YYYY-MM-DD | High |
| 2 | [e.g., US Census Bureau -- County Business Patterns] | Government data | [URL] | YYYY-MM-DD | High |
| 3 | [e.g., Crunchbase -- Procurement Tech Companies] | Funding database | [URL] | YYYY-MM-DD | Med |
| 4 | | | | | |
| 5 | | | | | |
