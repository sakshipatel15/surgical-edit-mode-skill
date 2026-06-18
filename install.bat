@echo off
echo 🔪 Installing Surgical Edit Mode Skill...

set INSTALL_CURSOR=1
set INSTALL_CLAUDE=1

if "%~1"=="--cursor" set INSTALL_CLAUDE=0
if "%~1"=="--claude" set INSTALL_CURSOR=0

if "%INSTALL_CURSOR%"=="1" (
    set "CURSOR_DIR=%USERPROFILE%\.cursor\skills\surgical-edit-mode"
    if not exist "%CURSOR_DIR%" mkdir "%CURSOR_DIR%"
    copy /Y SKILL.md "%CURSOR_DIR%\SKILL.md" >nul
    echo [OK] Installed for Cursor
)

if "%INSTALL_CLAUDE%"=="1" (
    set "CLAUDE_DIR=%USERPROFILE%\.claude\skills\surgical-edit-mode"
    if not exist "%CLAUDE_DIR%" mkdir "%CLAUDE_DIR%"
    copy /Y SKILL.md "%CLAUDE_DIR%\SKILL.md" >nul
    echo [OK] Installed for Claude Code
)

echo.
echo 🎉 Installation complete!
echo To use it, restart your AI chat and type: /surgical-edit-mode
pause
