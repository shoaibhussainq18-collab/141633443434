@echo off
title Push TECHNO Store to GitHub
cd /d "%~dp0"
set GIT_EXE=C:\Users\User\.gemini\antigravity-ide\scratch\tools\mingit\cmd\git.exe

echo ============================================================
echo   TECHNO Store - GitHub Remote Push Utility
echo ============================================================
echo Remote URL: https://github.com/shoaibhussainq18-collab/141633443434.git
echo.
echo NOTE: GitHub requires a Personal Access Token (PAT) for HTTPS pushes.
echo You can generate one at: https://github.com/settings/tokens
echo.
set /p GITHUB_TOKEN="Enter your GitHub Personal Access Token (or press Enter to try default): "

if "%GITHUB_TOKEN%"=="" (
    echo Attempting default push...
    "%GIT_EXE%" push -u origin main
) else (
    echo Pushing with provided Personal Access Token...
    "%GIT_EXE%" push -u "https://%GITHUB_TOKEN%@github.com/shoaibhussainq18-collab/141633443434.git" main
)

echo.
pause
