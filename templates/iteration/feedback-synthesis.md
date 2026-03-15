---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
---

# Feedback Synthesis

## Feedback Sources

_List all sources of feedback included in this synthesis. Every theme must trace back to at least 2 sources._

| Source | Type | Date Range | Sample Size | Notes |
|--------|------|------------|-------------|-------|
| [e.g., "Usability test round 3"] | Interview / Observation | [e.g., 2026-02-24 to 2026-02-28] | [e.g., 6 participants] | [e.g., "Moderated, think-aloud protocol"] |
| [e.g., "Hotjar session recordings"] | Analytics | [e.g., 2026-02-01 to 2026-02-28] | [e.g., 230 sessions] | [e.g., "Filtered to checkout flow"] |
| [e.g., "Zendesk support tickets"] | Support tickets | [e.g., 2026-01-01 to 2026-02-28] | [e.g., 47 tickets tagged 'checkout'"] | [e.g., "Filtered by category"] |
| [e.g., "Post-purchase NPS survey"] | Survey | [e.g., 2026-02-01 to 2026-02-28] | [e.g., 312 responses] | [e.g., "NPS: 34, response rate: 12%"] |
| [e.g., "Sales team feedback"] | Internal stakeholder | [e.g., 2026-02-15] | [e.g., 3 reps interviewed] | [e.g., "Common customer complaints relayed"] |

---

## Theme Clusters

_Group feedback into themes. Each theme must be supported by evidence from 2+ sources (see Traceability Check below)._

| # | Theme | Frequency | Severity | Example Quotes | Sources |
|---|-------|-----------|----------|----------------|---------|
| T1 | [e.g., "Checkout feels too long"] | [e.g., "Mentioned by 5/6 test participants, 12 support tickets"] | Critical / High / Medium / Low | [e.g., "'Why are there so many steps?' (P3)", "'I almost gave up at the address page' (P5)"] | [e.g., "Usability test, Support tickets, NPS survey"] |
| T2 | [e.g., "Coupon field is hard to find"] | [e.g., "4/6 test participants, 8 support tickets"] | High | [e.g., "'Where do I put my promo code?' (P1)", "'Couldn't apply discount' (Ticket #4421)"] | [e.g., "Usability test, Support tickets"] |
| T3 | [e.g., "Users trust the product quality"] | [e.g., "Consistent across NPS comments and interviews"] | Positive | [e.g., "'The photos look professional' (P2)", "NPS promoters cite quality"] | [e.g., "NPS survey, Usability test"] |
| T4 | [e.g., "Shipping cost surprise at checkout"] | [e.g., "9 support tickets, 3 NPS detractor comments"] | High | [e.g., "'Didn't expect $12 shipping' (NPS)", "'Price changed at checkout' (Ticket #4438)"] | [e.g., "Support tickets, NPS survey, Analytics (cart abandonment spike)"] |

> **Severity definitions:**
> - **Critical** = Blocks core user task, affects majority of users
> - **High** = Significant pain point, frequent occurrence
> - **Medium** = Noticeable friction, moderate frequency
> - **Low** = Minor annoyance, infrequent

---

## Sentiment Summary

_High-level snapshot of user sentiment across all feedback sources._

### Overall Sentiment

- **Positive:** [e.g., "40% - Users appreciate product quality, visual design, and brand trust"]
- **Neutral:** [e.g., "25% - Users can complete tasks but find them unremarkable"]
- **Negative:** [e.g., "35% - Frustrations center on checkout length and unexpected costs"]

### Sentiment by Area

| Area | Sentiment | Key Signal |
|------|-----------|------------|
| [e.g., "Product browsing"] | Positive | [e.g., "Users find products easily, enjoy the visual layout"] |
| [e.g., "Checkout flow"] | Negative | [e.g., "Too many steps, surprise shipping costs"] |
| [e.g., "Account management"] | Neutral | [e.g., "Functional but not memorable"] |
| [e.g., "Customer support"] | Positive | [e.g., "Fast responses, helpful agents"] |

### Sentiment Trend (if applicable)

- [e.g., "NPS improved from 28 to 34 since last iteration"]
- [e.g., "Checkout-related support tickets down 15% after flow simplification"]
- [e.g., "Session recording rage clicks in cart area increased 20% (new issue)"]

---

## Priority Issues

| # | Issue | Impact | Effort | Recommendation |
|---|-------|--------|--------|----------------|
| 1 | [e.g., "Checkout too many steps"] | High (blocks conversions) | Medium (redesign + dev) | [e.g., "Consolidate to 2 steps: info + payment/review"] |
| 2 | [e.g., "Shipping cost surprise"] | High (drives abandonment) | Low (display change) | [e.g., "Show estimated shipping on product page and cart"] |
| 3 | [e.g., "Coupon field hidden"] | Medium (support burden) | Low (layout change) | [e.g., "Move above order summary, add visual emphasis"] |
| 4 | [e.g., "No order progress indicator"] | Medium (user uncertainty) | Low (UI addition) | [e.g., "Add step indicator to checkout header"] |
| 5 | [e.g., "Mobile form fields too small"] | Medium (mobile conversion) | Low (CSS change) | [e.g., "Increase tap targets to 44px minimum"] |

> **Impact/Effort scale:**
> - **Impact:** High = affects revenue/core task, Medium = affects experience, Low = affects polish
> - **Effort:** High = weeks of work, Medium = days, Low = hours

---

## Patterns

_Consistent behaviors or statements observed across multiple participants/sources._

### What Users Consistently Do

- [e.g., "Users scroll past the coupon field and look for it at the bottom of the page"]
- [e.g., "Users check the order total multiple times before submitting"]
- [e.g., "Users try to click product images to zoom, even when no zoom is available"]
- [e.g., "Mobile users swipe on product images expecting a carousel"]

### What Users Consistently Say

- [e.g., "'How many more steps?' - asked during checkout by 4/6 participants"]
- [e.g., "'I wish I could see the total earlier' - mentioned in 3 interviews and 5 survey comments"]
- [e.g., "'The design looks clean/professional' - unsolicited positive comment from 5/6 participants"]

### Behavioral Patterns in Analytics

- [e.g., "72% of cart abandonment occurs on the shipping information page"]
- [e.g., "Average session includes 3.2 product views before add-to-cart"]
- [e.g., "Mobile users spend 40% longer on checkout than desktop users"]

---

## Contradictions

_Where feedback conflicts. These are important -- they reveal complexity and prevent oversimplification._

| Contradiction | Source A Says | Source B Says | Possible Explanation |
|---------------|--------------|---------------|---------------------|
| [e.g., "Checkout length"] | [e.g., "Usability test: users want fewer steps"] | [e.g., "Support tickets: users want more review before submitting"] | [e.g., "Users want fewer steps but more confidence. Solution may be progressive disclosure, not fewer screens."] |
| [e.g., "Product recommendations"] | [e.g., "NPS comments: 'I like the suggestions'"] | [e.g., "Session recordings: most users ignore recommendation section"] | [e.g., "Users like the idea but placement/timing may be wrong. Test different positions."] |
| [e.g., "Account creation requirement"] | [e.g., "Test participants: 'I prefer guest checkout'"] | [e.g., "Returning customers: 'I love having my info saved'"] | [e.g., "Segment-dependent. Offer both: guest checkout + optional account creation post-purchase."] |

> Contradictions are not problems to resolve -- they are signals to investigate further. Resist the urge to pick a side without more data.

---

## Traceability Check

_Every theme must link to at least 2 independent sources. This prevents over-indexing on a single data point._

| Theme | Source 1 | Source 2 | Source 3+ | Traceable? |
|-------|----------|----------|-----------|------------|
| [T1: e.g., "Checkout feels too long"] | [e.g., "Usability test (5/6 participants)"] | [e.g., "Support tickets (12 mentions)"] | [e.g., "NPS survey (7 comments)"] | Yes |
| [T2: e.g., "Coupon field hard to find"] | [e.g., "Usability test (4/6 participants)"] | [e.g., "Support tickets (8 mentions)"] | -- | Yes |
| [T3: e.g., "Users trust product quality"] | [e.g., "NPS survey (promoter comments)"] | [e.g., "Usability test (unsolicited praise)"] | -- | Yes |
| [T4: e.g., "Shipping cost surprise"] | [e.g., "Support tickets (9 mentions)"] | [e.g., "NPS survey (3 detractor comments)"] | [e.g., "Analytics (cart abandonment spike)"] | Yes |

> If a theme only has 1 source, either find corroborating evidence or downgrade it to an "observation" rather than a "finding."

---

## Recommended Actions

_Top 3 actions with the strongest evidence. Each must be directly tied to findings above._

### Action 1: [e.g., "Consolidate checkout to 2 steps"]

- **Linked themes:** [e.g., T1 (checkout too long), T4 (shipping cost surprise)]
- **Evidence strength:** [e.g., "Consistent across usability tests, support tickets, and NPS"]
- **Expected outcome:** [e.g., "Reduce checkout abandonment by 20-30%"]
- **Effort estimate:** [e.g., "Medium - 1 week design, 1 week dev"]
- **Risk if we don't act:** [e.g., "Continued high abandonment rate; competitor advantage"]

### Action 2: [e.g., "Display shipping estimate earlier in the funnel"]

- **Linked themes:** [e.g., T4 (shipping cost surprise)]
- **Evidence strength:** [e.g., "9 support tickets, 3 NPS comments, analytics correlation"]
- **Expected outcome:** [e.g., "Reduce cart-stage abandonment, fewer support tickets"]
- **Effort estimate:** [e.g., "Low - content/layout change, API already available"]
- **Risk if we don't act:** [e.g., "Users continue to feel deceived by late cost reveal"]

### Action 3: [e.g., "Reposition coupon field above order summary"]

- **Linked themes:** [e.g., T2 (coupon field hard to find)]
- **Evidence strength:** [e.g., "4/6 test participants, 8 support tickets"]
- **Expected outcome:** [e.g., "Reduce coupon-related support tickets by 50%"]
- **Effort estimate:** [e.g., "Low - layout change only"]
- **Risk if we don't act:** [e.g., "Continued support burden; users with coupons have bad experience"]

---

## Disconfirming Feedback

_Things that challenge our assumptions. These are especially valuable -- pay attention to them._

| Assumption | Disconfirming Evidence | Implication |
|------------|----------------------|-------------|
| [e.g., "Users want a faster checkout"] | [e.g., "2/6 participants said they wanted MORE information before submitting, not less"] | [e.g., "Speed alone isn't the goal; confidence is. Consider adding a review step."] |
| [e.g., "Social proof drives conversions"] | [e.g., "No participant mentioned reviews as a factor; analytics show low engagement with review section"] | [e.g., "Reviews may matter less than assumed. Test removing or repositioning them."] |
| [e.g., "Users prefer visual over text-based navigation"] | [e.g., "3/6 participants used the text-based category list instead of visual cards"] | [e.g., "Don't remove text navigation in favor of visual-only. Support both patterns."] |

> Disconfirming evidence is not noise -- it is a signal that our model of the user may be incomplete. Document it even if you don't act on it immediately.
