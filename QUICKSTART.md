# Quickstart

Welcome. This gets you from zero to a working second brain in about 15 minutes. Read the first page before you install anything; it's the part that makes the rest make sense.

---

## What this actually is (read this first)

You're about to start working with an AI the way you'd work with a teammate, not the way you chat with ChatGPT. Four ideas are the whole system:

1. **You and the AI edit the same files.** Your notes live in plain files on your computer. You see them in Obsidian; the AI reads and writes the exact same files in the terminal. When you change one, it shows up in the other. That shared workspace is the difference between *asking a chatbot* and *working with a teammate who remembers everything*.

2. **You describe; it files. You confirm.** You don't pick folders, document types, or commands. You just say what happened ("I had a meeting with Ana about pricing") and the system offers to save it in the right place. You say yes. That propose-and-confirm loop is the entire interface.

3. **The vault is just a folder.** A "vault" is one folder on your computer. Obsidian renders it nicely; the AI reads it as plain text. Same files, two windows. That's all it is.

4. **Nothing is lost.** At the end of a session you say `closeout` and it captures anything unfinished. Next time you open it, it tells you exactly where you left off. You never re-explain yourself.

> The one-line version: you have a conversation, and the kit quietly turns it into organized notes and projects and remembers where you stopped.

Unlike ChatGPT, you don't have a great conversation and then close the tab and lose it. It persists, on your machine, as files you own.

---

## Before you install (clear these once)

These are the things that trip everyone up. Two minutes here saves an hour later.

- **You need Claude Code, not Claude Desktop.** They're different products. Claude Code runs in your terminal. Install it: https://claude.com/claude-code
- **Make sure `claude` runs from anywhere.** After installing, open a new terminal and type `claude`. If you get "command not found," the program isn't on your PATH yet:
  - The program usually lives at `~/.local/bin/claude`.
  - **zsh** (default on modern macOS): add `export PATH="$HOME/.local/bin:$PATH"` to `~/.zshrc`.
  - **bash on macOS:** add that same line to `~/.bash_profile` (not `~/.bashrc`, macOS login shells read `.bash_profile`).
  - Open a brand-new terminal window and type `claude` again to confirm it sticks.
- **Heads-up on usage.** First-time setup does a lot of work and uses more tokens than a normal chat. On the $20 Pro plan you might bump the limit mid-setup; if you do, wait for the reset or use a higher tier for the first session.
- **You'll want Obsidian** to see your vault. Free: https://obsidian.md

---

## Install (three commands, in Claude Code)

Open Claude Code in a terminal, then type these at the prompt (they're Claude Code commands, not shell commands, type them where you'd type a message):

1. Add the kit's marketplace:
   ```
   /plugin marketplace add hgreene624/workflow-kit-core
   ```
2. Install the Core:
   ```
   /plugin install wfk-core@workflow-kit
   ```
3. Load it:
   ```
   /reload-plugins
   ```

That's the install. No cloning, no copying files, no PATH edits for the kit itself.

---

## Set up your vault (one command)

Run the setup skill:

```
/wfk-core:setup
```

It will ask you a couple of plain questions (where to put the vault, your name, your language), then it scaffolds a fresh vault, turns the kit on for that vault only, and makes a first commit so your history is safe from minute one. Confirm the location when it asks.

When it finishes, **open Obsidian → "Open folder as vault" → pick the folder it created.** Now you can see everything it files.

---

## Now just talk

That's it. You don't run commands from here. Try it:

- "I'm working on a new project for the spring catalog."
- "I had a meeting with Ana this morning about the deposit terms."
- "What should I work on?"

It will offer to save things. Say yes. When you're done for the day, type `closeout`.

Keep [CHEATSHEET.md](CHEATSHEET.md) open for your first week, it's the short list of things you can just say. For a guided first session, do the [walkthrough](WALKTHROUGH.md).

---

## If something's off

- **`claude` says command not found** → see the PATH note above.
- **The kit doesn't seem on** → run `/plugin` and confirm `wfk-core` is installed and enabled; then `/reload-plugins`.
- **It's not offering to save things** → just say "save this," or describe what you want more directly ("save this as a note"). The ambient offers are best-effort; "save this" always works.
- **You hit a usage limit during setup** → that's the token-heavy first run; wait for the reset or use a higher plan for day one.
