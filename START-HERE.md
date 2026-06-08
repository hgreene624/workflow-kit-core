# Start Here

This is for someone who has **never used a terminal**, doesn't know what GitHub is, and just wants the Workflow Kit working. You will do five small things. Claude does the rest.

The whole idea: you get an AI teammate running, then you hand it almost everything and it sets itself up while you watch. You do not need to understand any of the technical parts. You copy, you paste, you answer a couple of plain questions.

Set aside about **30 minutes**. Have a card ready (the AI needs a paid plan, explained below).

---

## The one thing to get right: install Claude *Code*

There are a few Claude products with similar names. You want exactly one:

- ✅ **Claude Code** — this is the one. It runs inside an app called the Terminal. That is what this guide installs.
- ❌ **Claude Desktop** — a different app. Do not install it for this.
- ❌ **The Claude website / "cowork"** — the chat at claude.ai is where you'll create your account, but it is *not* the thing that runs the kit. Don't try to do the setup there.

If you only remember one sentence: **the kit runs in the Terminal, through a tool called Claude Code.**

---

## Stage 1 — Get your Claude account (in a web browser, easy)

Claude Code needs a **paid** Claude plan. A free account will not work.

1. Go to **https://claude.ai** in any web browser.
2. Sign up (or log in if you already have an account).
3. Subscribe to a paid plan. **Recommended: the Max plan.** The very first setup does a lot of work and uses more than a normal chat, and the cheaper Pro plan can hit its limit partway through. Max avoids that. (If you were given an account or a plan by whoever sent you this, just use that and skip the subscribe step.)

That's the whole web part. The rest happens in the Terminal, and Claude will hold your hand through it.

---

## Stage 2 — Open the Terminal

The Terminal is just an app that's already on your computer. It looks like a plain window with text. That's normal. Nothing you paste here can break your computer.

**On a Mac:**
1. Press **Command (⌘) + Space** to open Spotlight search.
2. Type **Terminal** and press **Return**.
3. A window opens. Leave it open.

**On Windows:**
1. Click the **Start** menu (the Windows logo, bottom-left).
2. Type **PowerShell**.
3. Click **Windows PowerShell** when it appears.
4. A blue or black window opens. Leave it open.

---

## Stage 3 — Install Claude Code (one paste)

Click into the Terminal window so it's active, then copy the **one line** for your computer, paste it, and press **Return / Enter**.

> To paste in the Terminal: **Mac** is Command (⌘) + V. **Windows PowerShell** is Ctrl + V, or just right-click.

**On a Mac**, paste this and press Return:
```
curl -fsSL https://claude.ai/install.sh | bash
```

**On Windows (in PowerShell)**, paste this and press Enter:
```
irm https://claude.ai/install.ps1 | iex
```

Some text will scroll by for a minute. **When it stops scrolling and lets you type again, the install is done.** You can close this Terminal window and open a fresh one (same steps as Stage 2) so the new program is ready to go.

---

## Stage 4 — Start Claude and let it work

In the Terminal, type this exactly and press **Return / Enter**:

```
claude --dangerously-skip-permissions
```

(Yes, it says "dangerously." All that flag does is let Claude do the setup **without stopping to ask your permission for every single step**. It's only for this one-time setup. You don't keep using it day to day. You're pasting a known, safe setup request in the next stage.)

**Two things will happen the first time. Here's exactly what to do with each:**

1. **A web browser window opens asking you to sign in.** Sign in with the same Claude account from Stage 1 and approve / "Authorize." Then come back to the Terminal.
   - *If no browser opens:* the Terminal will show a link. Follow the on-screen hint to open it (often by pressing the **c** key to copy it), paste it into a browser, and sign in.
2. **Back in the Terminal, it warns you about skipping approvals and asks you to confirm.** Choose the option that **accepts / says yes** (use the arrow keys and Return, or type the number it shows for "Yes, I accept").

When you see a prompt waiting for you to type a message, you're now talking to Claude. 🎉

---

## Stage 5 — Hand everything to Claude (the magic paste)

This is the part where you stop doing technical things. **Copy the entire block below, paste it into the Terminal, and press Return / Enter.** You do not need to understand it. Claude does.

> Copy everything between the lines.

```
I'm brand new to all of this. Please set up the Workflow Kit for me from scratch and handle everything yourself, explaining each step in plain language as you go. I don't know what GitHub, plugins, terminals, or vaults are, so don't make me run technical commands.

Do all of this for me:

1. Install the Workflow Kit Core plugin. Run the install yourself in the terminal: add the marketplace "hgreene624/workflow-kit-core", then install the plugin "wfk-core@workflow-kit". Use the `claude plugin` commands directly, since the plugin's own commands won't be available until you restart. Don't make me type any plugin commands.

2. The plugin's setup instructions are in its "setup" skill (a file named SKILL.md inside the installed plugin). The setup skill is NOT loaded yet because the plugin only activates after a restart, so don't try to run it as a /command. Instead, find that setup skill file, read it, and perform that setup procedure for me right now: create a fresh vault folder in a sensible default location, scaffold it, turn the plugin on for that vault only, and make a first save so my history is safe from minute one. Ask me only for my first name and what language I want to work in.

3. When you're finished, give me the exact lines to copy and paste to (a) close you and (b) reopen you inside my new vault folder so the kit turns on. Tell me the exact words to type first when it reopens.

4. Finally, tell me in simple steps how to install the free Obsidian app and open my new vault folder in it, so I can see my notes in a nice window. Offer to wait while I do it.

Don't ask me to approve each step. Just do it and keep me posted in plain words.
```

Now just **read what Claude says and answer its couple of plain questions** (your first name, your language). It will install the kit, build your vault, and tell you what's happening the whole way. This part can take a few minutes and use a chunk of your plan, that's expected for the one-time setup.

---

## Stage 6 — The one restart (Claude gives you the exact lines)

The kit fully "turns on" only after Claude restarts inside your new vault. **You don't have to know how to do that, Claude will print the exact lines for you to copy and paste.** It looks roughly like this (your folder name will be filled in):

1. Type what Claude tells you to close it (usually `/exit`) and press Return.
2. Paste the line Claude gives you that opens it back up inside your vault, and press Return.
3. Type: **`show me how this works`**

That last one starts a short, personalized tour where Claude teaches you the whole thing using *your own work* as the example. It's the part that makes everything click, do it. From there on you just talk to it.

---

## Stage 7 — See your notes (optional but recommended)

Your notes live as plain files in the vault folder. **Obsidian** is a free app that shows them in a nice window, side by side with Claude. Claude offered to walk you through this in Stage 5, but if you want the short version:

1. Download Obsidian (free) from **https://obsidian.md** and install it (open the downloaded file and follow the prompts).
2. Open Obsidian → **"Open folder as vault"** → pick the folder Claude created for you (Claude told you where it is).
3. Now when Claude saves something, you'll watch it appear here.

You do not need Obsidian for the kit to work, Claude reads and writes the same files either way. It just makes them nice to look at.

---

## You're done when...

- You can type something like *"I'm starting a project to plan a trip"* and Claude offers to save it.
- You closed and reopened Claude once (Stage 6) and it picked up where you left off.

If both are true, you're fully set up. Keep the **[Cheat Sheet](CHEATSHEET.md)** handy for your first week, and when you have 10 minutes do the guided **[Walkthrough](WALKTHROUGH.md)**. Want to understand *why* it works the way it does? Read the **[Quickstart](QUICKSTART.md)**.

---

## If something looks stuck

Almost everything has a one-line fix. Try these before worrying:

- **"command not found: claude"** → Close the Terminal completely and open a brand-new window, then try again. If it still says that, copy the message and send it to whoever set you up.
- **No browser opened when you ran `claude`** → Look in the Terminal for a link or a hint to press a key (often **c**) to copy a sign-in link. Paste it into a browser and sign in.
- **It stopped and mentioned a "limit" or "usage"** → That's the token-heavy first setup hitting your plan's ceiling. Wait for the reset (it tells you when) or move to the Max plan, then paste the magic prompt again, it picks up where it left off.
- **Nothing seems to be happening after you pasted the magic prompt** → Make sure you pressed Return / Enter after pasting. If the cursor is just blinking, press Return once.
- **You're not sure if it worked** → Type `are you set up?` and let Claude tell you the state.

When in doubt, **take a screenshot of the Terminal and send it to whoever sent you this guide.** A screenshot is almost always enough to unstick you.
