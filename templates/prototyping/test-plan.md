---
project: [Project Name]
date: YYYY-MM-DD
author: [Your Name]
status: draft | in-progress | complete
---

# User Test Plan

## Research Questions

_What do we want to learn? Each question should connect to a hypothesis._

| # | Research Question | Linked Hypothesis | Priority |
|---|-------------------|-------------------|----------|
| RQ1 | [e.g., "Can users complete checkout without assistance?"] | [e.g., "Simplifying checkout to 2 steps will reduce abandonment by 30%"] | High |
| RQ2 | [e.g., "Do users understand what the pricing tiers include?"] | [e.g., "Comparison table format will improve plan comprehension"] | High |
| RQ3 | [e.g., "Where do users get confused in the onboarding flow?"] | [e.g., "Users drop off at step 3 due to unclear form labels"] | Medium |

> Tip: Limit to 3-5 research questions per test session to keep sessions focused.

---

## Participants

- **Number of participants:** [e.g., 5-8]
- **Rationale for sample size:** [e.g., "5 participants will uncover ~85% of usability issues (Nielsen/Landauer)"]

### Inclusion Criteria

- [e.g., "Has purchased a product online in the last 30 days"]
- [e.g., "Ages 25-55"]
- [e.g., "Not a designer, developer, or UX professional"]
- [e.g., "Uses [product category] at least once per week"]

### Exclusion Criteria

- [e.g., "Current or former employees of the company"]
- [e.g., "Has participated in a test in the last 6 months"]

### Recruitment

- **Method:** [e.g., "UserTesting.com panel / customer email list / Slack community"]
- **Screening survey:** [Link to screener or include key questions below]
- **Incentive:** [e.g., "$50 gift card / product credit"]
- **Timeline for recruitment:** [e.g., "3 business days"]

---

## Test Tasks

_Each task should be scenario-based and avoid leading language. Do not name UI elements in the task description._

### Task 1: [Task Name]

- **Scenario:** [e.g., "You want to buy a birthday gift for a friend. You've heard about this website and want to browse their selection."]
- **Starting point:** [e.g., "Homepage"]
- **Success criteria:**
  - [e.g., "User adds an item to cart within 3 minutes"]
  - [e.g., "User does not require prompting"]
- **What we're observing:** [e.g., "Navigation strategy, category comprehension"]

### Task 2: [Task Name]

- **Scenario:** [e.g., "You've decided on a product and want to complete your purchase."]
- **Starting point:** [e.g., "Product detail page with item in cart"]
- **Success criteria:**
  - [e.g., "User reaches order confirmation page"]
  - [e.g., "User completes checkout in under 2 minutes"]
- **What we're observing:** [e.g., "Checkout flow comprehension, trust signals"]

### Task 3: [Task Name]

- **Scenario:** [e.g., "You received the item but it's the wrong size. You want to initiate a return."]
- **Starting point:** [e.g., "Order history page"]
- **Success criteria:**
  - [e.g., "User locates and starts the return process"]
  - [e.g., "User can describe the next steps after starting the return"]
- **What we're observing:** [e.g., "Findability of returns, clarity of return policy"]

> Add more tasks as needed. Aim for 3-5 tasks per session (30-45 min total).

---

## Metrics to Capture

### Quantitative Metrics

| Metric | How Measured | Target | Notes |
|--------|-------------|--------|-------|
| Task completion rate | Binary: completed / not completed per task | >= 80% | Primary metric |
| Time on task | Stopwatch from task start to completion | Varies per task | Record even for incomplete tasks |
| Error rate | Count of wrong paths, misclicks, backtracks | < 2 per task | Define what counts as an "error" |
| Assists needed | Count of facilitator interventions | 0 per task | Track type of assist given |

### Qualitative Metrics

| Metric | How Measured | Notes |
|--------|-------------|-------|
| Task difficulty (self-reported) | Post-task SEQ (Single Ease Question, 1-7 scale) | Ask immediately after each task |
| Overall satisfaction | Post-test SUS (System Usability Scale) | Administer at the end of all tasks |
| Verbal feedback | Think-aloud protocol during tasks | Note emotional reactions |
| Confidence level | [e.g., "How confident are you that you completed the task correctly?" 1-5] | Post-task |

---

## Test Script

### Introduction (5 minutes)

> "Thank you for participating today. My name is [Name] and I'll be guiding you through this session.
>
> We're testing a [prototype/website/app], not testing you. There are no wrong answers. If something is confusing, that's valuable feedback for us.
>
> I'll ask you to complete a few tasks. As you work through them, please think aloud -- tell me what you're looking at, what you're thinking, and what you expect to happen. If you get stuck, that's okay.
>
> This session will take about [30/45/60] minutes. [If recording:] With your permission, we'll record the screen and audio for our team to review. Do you consent to being recorded?"

- [ ] Get consent for recording
- [ ] Confirm they understand think-aloud protocol
- [ ] Ask if they have any questions before we begin

### Warm-Up Questions (3-5 minutes)

_Build rapport and gather context about the participant._

1. "Can you tell me a little about yourself and what you do?"
2. "How often do you [relevant activity, e.g., shop online]?"
3. "What tools/apps do you typically use for [relevant activity]?"
4. "What's your biggest frustration with [relevant activity] currently?"

### Task Block (20-35 minutes)

_Present each task one at a time. Read the scenario aloud and provide a printed/on-screen version._

For each task:
1. Read the scenario aloud
2. Start timer
3. Observe (do not intervene unless participant is completely stuck for 2+ minutes)
4. Note: hesitations, errors, verbal comments, emotional reactions
5. Stop timer when task is complete or participant gives up
6. Administer post-task questionnaire:
   - "On a scale of 1-7, how easy or difficult was that task?" (SEQ)
   - "How confident are you that you completed it correctly?"
   - "Was anything confusing or unexpected?"

### Debrief (5-10 minutes)

1. "Overall, how was that experience for you?"
2. "Was there anything that stood out as particularly easy or difficult?"
3. "If you could change one thing, what would it be?"
4. "How does this compare to [competitor / current solution]?"
5. "Is there anything else you'd like to share?"
6. Administer SUS questionnaire (if applicable)
7. Thank participant and provide incentive

---

## Observer Guide

_For team members watching the session. Distribute before testing begins._

### What to Watch For

- **Navigation patterns:** How do users orient themselves? Do they use search, menus, or browse?
- **Language gaps:** Do users understand the labels and terminology?
- **Hesitation points:** Where do users pause, re-read, or hover without clicking?
- **Error recovery:** When users make mistakes, can they recover? How?
- **Emotional cues:** Frustration, surprise, delight, confusion (verbal and non-verbal)
- **Expectations vs. reality:** What do users expect to happen vs. what actually happens?

### Observer Note-Taking Template

| Timestamp | Task # | Observation | Category | Severity |
|-----------|--------|-------------|----------|----------|
| [00:00] | [1] | [e.g., "User looked for search bar, couldn't find it"] | Navigation | High |
| [00:00] | [1] | [e.g., "User said 'Oh, I thought this was a filter'"] | Comprehension | Medium |

**Categories:** Navigation, Comprehension, Error, Positive, Emotional, Suggestion
**Severity:** High (task blocker), Medium (causes delay), Low (minor friction)

### Observer Rules

- Do NOT talk to the participant during the session
- Do NOT react visibly to participant actions (no gasping, laughing, or nodding)
- Save questions for the debrief or post-session discussion
- Focus on behavior, not interpretation (record what happened, not why you think it happened)

---

## Analysis Plan

### Synthesis Method

1. **Individual session review** (within 24 hours of each session)
   - Review notes and recordings
   - Update the observation log with timestamps
   - Flag critical findings

2. **Cross-session analysis** (after all sessions complete)
   - Aggregate quantitative metrics into a summary table
   - Cluster qualitative observations by theme
   - Identify patterns (issues seen by 3+ participants = pattern)

3. **Severity rating**
   - **Critical:** Prevents task completion, affects most users
   - **Major:** Causes significant delay or confusion, affects multiple users
   - **Minor:** Cosmetic or minor friction, affects few users

4. **Prioritized findings report**
   - Top 5 findings ranked by severity and frequency
   - Each finding includes: description, evidence, affected tasks, recommendation
   - Include positive findings (what worked well)

### Deliverables

| Deliverable | Format | Audience | Due |
|-------------|--------|----------|-----|
| Raw observation notes | Spreadsheet | Research team | Same day |
| Highlight reel | Video clips (2-3 min) | Stakeholders | +3 days |
| Findings report | Slide deck / document | Product team | +5 days |
| Updated backlog items | Tickets in [tool] | Engineering | +5 days |

---

## Timeline

| Phase | Dates | Owner | Status |
|-------|-------|-------|--------|
| Plan finalization | [Date] | [Name] | [ ] |
| Screener creation | [Date] | [Name] | [ ] |
| Recruitment | [Date range] | [Name] | [ ] |
| Pilot test (dry run) | [Date] | [Name] | [ ] |
| Test sessions | [Date range] | [Name] | [ ] |
| Individual session notes | [Date range] | [Name] | [ ] |
| Cross-session synthesis | [Date] | [Name] | [ ] |
| Findings readout | [Date] | [Name] | [ ] |

> Run a pilot test with 1 internal participant before real testing to catch issues with the script, tasks, or prototype.
