---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
phase: discovery
template: evidence-log
---

# Evidence Log

> This is the central repository for all evidence collected during discovery.
> Every claim, insight, and finding should be logged here with its source and confidence level.
> If it is not in this log, it is not evidence -- it is opinion.

---

## How to Use This Log

1. **Log everything.** Every interview quote, data point, desk research finding, and survey result gets a row.
2. **Be honest about confidence.** High = multiple independent sources confirm. Med = one strong source or multiple weak ones. Low = single anecdotal source or inference.
3. **Tag for themes.** Tags make synthesis possible. Use consistent tags from the codebook below.
4. **Link to hypotheses.** Every piece of evidence should relate to at least one hypothesis. If it does not, consider whether you need a new hypothesis.
5. **Separate observation from interpretation.** The "Claim/Finding" column is what you observed. The "Notes" column is what you think it means.

---

## Tag Codebook

_Use these tags consistently. Add new tags as needed but document them here._

| Tag | Definition |
|-----|------------|
| `pain-point` | An explicit frustration or problem described by a participant |
| `workaround` | A manual or improvised solution to a problem |
| `desired-outcome` | What the participant wishes they could achieve |
| `switching-trigger` | What caused or would cause someone to change their current approach |
| `barrier` | What prevents someone from adopting a new solution |
| `unmet-need` | A need that no current solution addresses |
| `surprise` | Something unexpected that challenges our assumptions |
| `contradiction` | Evidence that conflicts with other evidence |
| `market-signal` | Data about market size, trends, or competitive landscape |
| `pricing-signal` | Evidence about willingness to pay or price sensitivity |
| [Add new tags here] | [Definition] |

---

## Evidence Table

| ID | Date | Source Type | Source Reference | Claim / Finding | Tags | Confidence | Hypothesis Linked | Notes |
|----|------|-------------|------------------|-----------------|------|------------|-------------------|-------|
| E001 | 2025-01-15 | Interview | P03 (Procurement Lead, Series B SaaS) | "I spend 6 hours every Monday just updating our vendor spreadsheet. It is the worst part of my week." | `pain-point`, `workaround` | High | H1 | Unprompted statement. Strong emotional signal. Third interviewee to mention spreadsheet-based tracking. |
| E002 | 2025-01-16 | Desk Research | Gartner Report 2024 "Vendor Management Trends" | Mid-market companies manage an average of 47 vendor relationships, up 32% from 2021. | `market-signal` | High | H1, H3 | Quantitative backing for problem scope. Note: Gartner's mid-market definition is 100-999 employees. |
| E003 | 2025-01-18 | Survey | Survey Q7 (n=68) | 41% of respondents rated "tracking contract renewals" as their #1 pain point. Next highest was "comparing vendor pricing" at 23%. | `pain-point`, `pricing-signal` | Med | H1, H2 | Survey sample skews toward tech companies. Need to check if this holds for other industries. |
| E004 | | | | | | | | |
| E005 | | | | | | | | |
| E006 | | | | | | | | |
| E007 | | | | | | | | |
| E008 | | | | | | | | |
| E009 | | | | | | | | |
| E010 | | | | | | | | |
| E011 | | | | | | | | |
| E012 | | | | | | | | |
| E013 | | | | | | | | |
| E014 | | | | | | | | |
| E015 | | | | | | | | |
| E016 | | | | | | | | |
| E017 | | | | | | | | |
| E018 | | | | | | | | |
| E019 | | | | | | | | |
| E020 | | | | | | | | |

---

## Evidence by Source Type

_Use this section to track coverage across source types. Strong research draws from multiple source types._

| Source Type | Count | % of Total | Notes |
|-------------|-------|------------|-------|
| Interviews | | | Target: 8-12 |
| Surveys | | | Target: 50+ responses |
| Desk Research | | | Target: 5+ sources |
| Analytics | | | If applicable |
| Other | | | |
| **Total** | | **100%** | |

---

## Evidence by Hypothesis

_Track how much evidence supports or challenges each hypothesis._

| Hypothesis | Confirming Evidence (IDs) | Disconfirming Evidence (IDs) | Neutral/Ambiguous (IDs) | Assessment |
|------------|---------------------------|------------------------------|--------------------------|------------|
| H1 | E001, E002, E003 | | | Trending toward validated |
| H2 | | | | Not yet tested |
| H3 | E002 | | | Insufficient evidence |
| H4 | | | | Not yet tested |
| H5 | | | | Not yet tested |

---

## Disconfirming Evidence Spotlight

> Disconfirming evidence is the most valuable kind. It protects you from building the wrong thing.
> Any evidence that challenges your hypotheses or assumptions gets highlighted here.

| ID | Finding | What It Challenges | Implication |
|----|---------|-------------------|-------------|
| | | | |
| | | | |
| | | | |

---

## Confidence Rating Guide

| Level | Definition | Example |
|-------|------------|---------|
| **High** | Multiple independent sources confirm. Consistent across interviews. Supported by quantitative data. | 7 out of 10 interviewees described the same pain point unprompted, and survey data confirms. |
| **Med** | One strong source, or multiple weaker sources that partially align. Some ambiguity remains. | 3 interviewees mentioned it, and a Gartner report references the trend, but survey data is unclear. |
| **Low** | Single anecdotal source. Inference rather than direct observation. May be biased or context-specific. | One interviewee mentioned it in passing. No other corroboration yet. |
