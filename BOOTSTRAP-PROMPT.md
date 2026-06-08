# The Bootstrap Prompt

This is the single message a brand-new person pastes into Claude Code **once it's running** (after installing Claude Code and launching it with `claude --dangerously-skip-permissions`). It hands the entire kit setup to Claude.

It's also embedded in **[START-HERE.md](START-HERE.md)** (Stage 5). This file is just the prompt on its own, so it's easy to copy or share by itself.

> Copy everything inside the block.

```
I'm brand new to all of this. Please set up the Workflow Kit for me from scratch and handle everything yourself, explaining each step in plain language as you go. I don't know what GitHub, plugins, terminals, or vaults are, so don't make me run technical commands.

Do all of this for me:

1. Install the Workflow Kit Core plugin. Run the install yourself in the terminal: add the marketplace "hgreene624/workflow-kit-core", then install the plugin "wfk-core@workflow-kit". Use the `claude plugin` commands directly, since the plugin's own commands won't be available until you restart. Don't make me type any plugin commands.

2. The plugin's setup instructions are in its "setup" skill (a file named SKILL.md inside the installed plugin). The setup skill is NOT loaded yet because the plugin only activates after a restart, so don't try to run it as a /command. Instead, find that setup skill file, read it, and perform that setup procedure for me right now: create a fresh vault folder in a sensible default location, scaffold it, turn the plugin on for that vault only, and make a first save so my history is safe from minute one. Ask me only for my first name and what language I want to work in.

3. When you're finished, give me the exact lines to copy and paste to (a) close you and (b) reopen you inside my new vault folder so the kit turns on. Tell me the exact words to type first when it reopens.

4. Finally, tell me in simple steps how to install the free Obsidian app and open my new vault folder in it, so I can see my notes in a nice window. Offer to wait while I do it.

Don't ask me to approve each step. Just do it and keep me posted in plain words.
```

## Why this works

- **The person never sees GitHub, a slash command, or a plugin name.** Those details live inside the prompt; Claude reads them, the human doesn't.
- **Claude installs its own plugin.** The `claude plugin marketplace add` / `claude plugin install` commands run from the CLI, so Claude can run them itself via the terminal. (Verified working.)
- **Step 2 dodges the chicken-and-egg.** A freshly installed plugin's skills don't load until the next launch, so the prompt tells Claude *not* to try `/wfk-core:setup` yet, and instead to read the `setup` skill file and perform it by hand in this first session.
- **`--dangerously-skip-permissions` is what makes "hand off everything" possible.** Without it, Claude would stop and ask the person to approve every install command and file write. With it, Claude just does the setup. It's a setup-only tool; normal day-to-day use doesn't need it.
- **The one restart is unavoidable but invisible to the user.** Plugins + hooks only activate on a fresh launch, so Step 3 has Claude print the exact copy-paste lines to restart into the vault. The person never has to know how to navigate folders.
