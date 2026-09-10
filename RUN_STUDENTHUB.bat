@echo off
cd /d "%~dp0frontend"
if not exist node_modules (
  echo Installing frontend dependencies...
  npm install
)
echo Starting StudentHub at http://localhost:5173
npm run dev
pause
