# StudentHub Career Fix

## What was fixed
- Career Assessment progress now saves to browser `localStorage` in demo/browser mode.
- Assessment data is restored automatically after refresh or reopening the app in the same browser.
- If the API is configured but temporarily fails, assessment save falls back to the browser copy instead of showing a false data-loss state.
- Career Matches, Skill Analysis, Learning Roadmap and roadmap step progress have a complete browser-local fallback, so the Career module can run without Supabase or the backend.
- Fixed Career Detail response handling (`response.data.career`).
- Local Career data uses stable IDs and deterministic recommendations, so refreshes do not lose the selected career workflow.

## Run in browser
1. Install Node.js 18+.
2. Open this folder in a terminal.
3. Run `RUN_STUDENTHUB.bat` on Windows, or:
   - `cd frontend`
   - `npm install`
   - `npm run dev`
4. Open the Vite URL shown in the terminal, normally `http://localhost:5173`.

## Demo mode
Leave `frontend/.env` unset. The Career module automatically uses browser storage. No Supabase or backend is required for Career Assessment -> Results -> Skill Analysis -> Learning Roadmap.

## Important
Browser `localStorage` is persistent for the same browser/site until the browser data is cleared. For production multi-device persistence, configure Supabase using the existing project SQL/migrations and environment variables.
