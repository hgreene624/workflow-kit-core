# Onboarding Playbook (for the person doing the onboarding)

This is **not** for the new user. It's for you, the person bringing someone onto the Workflow Kit. The new user only ever sees **[START-HERE.md](START-HERE.md)**.

The whole strategy: get the person to the point where Claude is running, then let Claude do the rest. Everything before that point is the only place a beginner can get stuck, so your job is to get them through five small steps and then teach concepts (see the bottom).

---

## The shape of it

A new user does exactly five things. Claude does everything else.

1. Make a paid Claude account (browser).
2. Open the Terminal.
3. Paste one install line.
4. Launch Claude with `--dangerously-skip-permissions`.
5. Paste the **bootstrap prompt** (see [BOOTSTRAP-PROMPT.md](BOOTSTRAP-PROMPT.md)).

If they get past step 4 (Claude is running and signed in), you've basically won. Steps 1 through 4 are where all the friction is.

---

## Before you send anything

Confirm the person has:

- **A computer they can install software on** (admin rights). A locked-down work laptop may block the install.
- **About 30 minutes** of uninterrupted time for the first run.
- **A way onto a paid plan.** Claude Code does not run on a free account. Either they subscribe (recommend **Max**, because the first setup is token-heavy and **Pro can hit its limit mid-setup**), or you give them a seat / account. Decide this before they start so they don't stall at Stage 1.

---

## What to send

Send them **START-HERE.md** (as a PDF, a doc, a shared page, or pasted into a message, whatever they can open). That file contains the bootstrap prompt inside it, so it's self-sufficient. If you'd rather send the prompt separately, BOOTSTRAP-PROMPT.md is the prompt on its own.

Do **not** send them a GitHub link and expect them to read it there. They don't know GitHub. Hand them the content directly.

---

## The five stuck-points and the one-line fix for each

You'll get most of these as a screenshot. Tell them up front: **"If anything looks stuck, take a screenshot of the Terminal and send it to me."** A screenshot solves almost everything.

| What they report | The fix to send back |
|---|---|
| "It says `command not found: claude`" | "Close the Terminal completely, open a brand-new window, try again." If it persists, the program isn't on their PATH; have them paste `claude --version` and send the result. |
| "No browser opened to sign in" | "Look in the Terminal for a link or a key to press (often **c**) to copy the sign-in link. Paste it into a browser and sign in." |
| "It mentioned a limit / usage" | "That's the heavy first setup hitting your plan ceiling. Wait for the reset, or move to Max, then paste the magic prompt again, it resumes." |
| "Nothing happened after I pasted the big prompt" | "Did you press Return/Enter after pasting? Press it once." |
| "I don't know if it worked" | "Type `are you set up?` and send me what it says." |

---

## After setup: teach the concepts (the part that actually matters)

Installing the kit is the boring half. The person won't get value until they understand **what the kit is for in the language of their own work.** A generic "projects" demo doesn't land for a personal trainer, a property manager, or a recruiter.

Run a concept session with them (Claude can do this, see the concept-onboarding skill / `discover`). The one idea to make sure lands:

> **The kit organizes whatever unit of work matters to *you*, the way *you* need it, and Claude's knowledge of those things compounds over time.**

Examples to use when you frame it for them:

- A **personal trainer** tracks **clients**, not "projects." Each client is organized how he needs (goals, injuries, programs, progress). Claude gains instant knowledge of every client, and that knowledge keeps building every session.
- A **property manager** tracks **properties** (and owners, tenants, maintenance).
- A **recruiter** tracks **candidates** and **roles**.
- A **lawyer** tracks **matters / cases**.

The pitch isn't "use this notes app." It's "you describe your work once, in your own words, and from then on you have a teammate who already knows all of it and never forgets."

---

## Success definition

The person is onboarded when:

1. They completed the one restart and Claude resumed where they left off ("nothing is lost" proved live).
2. They can describe a real piece of their work and Claude offers to save it in their terms.
3. They understand, in their own domain's language, what they're tracking and why it compounds.

---

## Known rough edges (alpha)

- `claude plugin install` may leave the plugin **enabled globally** rather than per-vault. Not harmful for a single-vault new user; only matters if they later run other vaults. (Tracked in the rebuild PIC.)
- The GitHub-sourced marketplace add (`hgreene624/workflow-kit-core`) is the path the bootstrap uses; if a person hits an error there, fall back to telling Claude to add the marketplace from the public repo URL.
- This whole flow assumes the public repo stays reachable and the alpha plumbing holds. Watch the first few real runs closely and feed problems back into START-HERE.
