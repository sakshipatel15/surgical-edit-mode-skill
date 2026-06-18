# 🔪 Surgical Edit Mode Skill

**An advanced Agent Skill for Cursor and Claude Code that forces your AI into a high-efficiency, token-saving "Expert Mode".**

Are you tired of your AI wasting tokens by scanning your entire codebase, rewriting entire files just to change one line, or making wild guesses when it doesn't understand your prompt? 

**Surgical Edit Mode** fixes this. By installing this skill, you force the AI to make precise, surgical patch edits, ask clarifying questions before guessing, and actively build a permanent "memory" of how your project works.

---

## ✨ Key Features & What It Does

When you tag this skill, the AI is forced to follow a strict set of expert engineering rules:

1. **🛑 No More Wild Guesses:** If your request is vague, the AI will refuse to guess. It will stop and ask you exactly what you need before touching any code.
2. **🧠 Permanent Project Memory:** Whenever you explain something to the AI, it will automatically save that knowledge into a `MEMORY.md` file in your project. It will read this file in future chats so it never forgets your architecture or business logic.
3. **✂️ Zero Unnecessary Scanning:** The AI is forbidden from running broad codebase searches. It will only read the exact files strictly required for the task.
4. **🎯 Patch-Style Edits:** It will never rewrite an entire file to change a single line. It modifies *only* affected sections, drastically reducing token consumption and preventing accidental bugs in unchanged code.
5. **⚡ Massive Token Savings:** By eliminating full-project scans, removing unnecessary reasoning output, and making micro-edits, this skill saves massive amounts of AI credits and speeds up response times.

---

## 🚀 How to Install

You can install this skill globally on any OS so it is available across all your projects. The script automatically detects your IDE and installs the skill for both **Cursor** and **Claude Code**.

### 🍎 Mac & 🐧 Linux

Open your terminal and run:

```bash
git clone https://github.com/sakshipatel15/cursor-surgical-edit-mode.git
cd cursor-surgical-edit-mode
chmod +x install.sh
./install.sh
```

*(Optional flags: Run `./install.sh --cursor` or `./install.sh --claude`)*

### 🪟 Windows

Open **Command Prompt** (cmd) and run:

```bat
git clone https://github.com/sakshipatel15/cursor-surgical-edit-mode.git
cd cursor-surgical-edit-mode
install.bat
```

*(Optional flags: Run `install.bat --cursor` or `install.bat --claude`)*

---

## 🛠️ How to Use

Using Surgical Edit Mode is incredibly simple.

1. Open your project in Cursor or Claude Code.
2. Start a new Agent chat.
3. Type `/surgical-edit-mode` (or tag `@surgical-edit-mode` in Cursor).
4. Give the AI your task.

### Example Workflow:

**You:** 
> `@surgical-edit-mode` There is a bug on the login page where the submit button doesn't disable while loading.

**AI (Surgical Mode):** 
> *Reads only the login page component.*
> *Locates the submit button.*
> *Replaces only the 2 lines required to add the disabled state.*
> *Stops.*

**Without Surgical Mode:** The AI might have searched 10 different files for "login", outputted a 5-paragraph explanation of reactive forms, and rewritten your entire 300-line HTML file just to add one attribute.

---

## 🗑️ How to Uninstall

If you ever need to remove the skill, simply delete the folder from your AI's global directory:

**Mac/Linux:**
```bash
rm -rf ~/.cursor/skills/surgical-edit-mode
rm -rf ~/.claude/skills/surgical-edit-mode
```

**Windows (Command Prompt):**
```bat
rmdir /S /Q "%USERPROFILE%\.cursor\skills\surgical-edit-mode"
rmdir /S /Q "%USERPROFILE%\.claude\skills\surgical-edit-mode"
```

---

*Built to make AI coding faster, cheaper, and strictly precise.*
