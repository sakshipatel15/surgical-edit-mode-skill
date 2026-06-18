# Surgical Edit Mode Skill 🔪

An Agent Skill that forces your AI (Cursor / Claude Code) to stop wasting tokens, stop scanning your entire codebase, and make precise, surgical edits.

## 🚀 How to Install

Open your terminal and run:

```bash
git clone https://github.com/YOUR_USERNAME/cursor-surgical-edit-mode.git
cd cursor-surgical-edit-mode
chmod +x install.sh
./install.sh
```

*(Optional flags: `./install.sh --cursor` or `./install.sh --claude`)*

## 🛠️ How to Use

1. Open a new Agent chat.
2. Type `/surgical-edit-mode` (or tag `@surgical-edit-mode`).
3. Give the AI your task.

**What it does:** The AI will instantly switch into a high-efficiency mode. It will only read the files it strictly needs, it will not output long explanations, and it will only rewrite the exact lines of code that need changing (saving you massive amounts of AI credits and time).
