# Your first session (10 minutes)

Do this once, with Obsidian open next to your terminal, and the whole thing clicks. You'll watch the four ideas from the [Quickstart](QUICKSTART.md) actually happen.

Before you start: you've installed the kit and run `/wfk-core:setup`, and you've opened the new vault in Obsidian. If not, do the [Quickstart](QUICKSTART.md) first.

---

## 1. Start a project (watch the same-files idea)

At the Claude Code prompt, type, in plain words:

```
I'm starting a project to plan my mom's 60th birthday party.
```

It will propose creating a project and ask only what the goal is. Say what you want ("a fun dinner for about 30 people, under $2,000"). Confirm.

**Now look at Obsidian.** A new project folder appeared with one document in it — a goal, an empty steps list, and a log. You didn't pick a folder or a template. And notice: you didn't open Obsidian to make that file. The AI did, in the same vault you're looking at. That's the collaboration idea — one set of files, two windows.

---

## 2. Talk; it files (the propose-and-confirm loop)

Keep talking like you're briefing an assistant:

```
I called the taqueria — they can do 30 people for $900, need a deposit by the 15th.
```

It will offer to capture that (as a note or a log entry on the party project). Say yes.

```
Add steps: book the taqueria, send invites, order a cake.
```

Look at Obsidian again — the steps are now in your project doc, and the taqueria detail is saved. **You never chose a document type or a location.** You described things; it filed them. That's the entire interface.

---

## 3. Ask what's going on (it derives the answer, live)

```
What should I work on for the party?
```

It reads your project and tells you the next thing — pay the deposit before the 15th. It didn't read a stored to-do list; it worked it out from your project doc on the spot. (This is why you never maintain a master plan: it's always derived fresh, so it's never stale.)

---

## 4. End the day (nothing is lost)

```
closeout
```

It sweeps the session for anything that should have been saved, reads back what it understood ("I've got the party project with the deposit as the next step — right?"), and lets you correct it. Then it stops.

**The proof:** close the terminal completely. Open a new Claude Code session in the same vault and type:

```
where did I leave off?
```

It tells you about the party and the deposit deadline — without you re-explaining anything. That's "nothing is lost."

---

## That's the whole loop

You started a project, captured details by just talking, asked what mattered, and resumed cold the next session. Everything else in the kit is variations on those four moves.

From here, keep the [cheat sheet](CHEATSHEET.md) handy and work on something real. When you want it to handle a new *kind* of thing you save a lot, just tell it — it'll learn the new type and file it that way going forward.
