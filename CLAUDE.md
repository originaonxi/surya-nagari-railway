# The Satyug Collective — project handoff (read me first)

This repo is **The Satyug Collective — Open Real Estate AI Estate**, a 5,000-acre open-source self-sufficient
city blueprint for India structured as a Multi-State Cooperative Society (like Amul but for a city).
It is a static website (plain HTML/CSS/JS, no build step) deployed on **Railway** via Docker/nginx.
Co-designed by Anmol with Claude, Codex & Gemini. This file is the full handoff so a fresh Claude
on any machine can continue exactly where we left off.

## Live URLs
- Site: https://Satyug-nagari-railway-production.up.railway.app/
- Share structure page: https://Satyug-nagari-railway-production.up.railway.app/share-structure.html
- 3D model: https://Satyug-nagari-railway-production.up.railway.app/township-3d.html
- PDF: https://Satyug-nagari-railway-production.up.railway.app/Satyug-Nagari-Prospectus.pdf
- Repo: https://github.com/originaonxi/Satyug-nagari-railway

## Git Setup (one remote, correct)
```
origin  https://github.com/originaonxi/Satyug-nagari-railway.git
```
Branch `main` → deploys automatically to Railway on every push.

## File map (edit DIRECTLY — no build step, no copy step)
- `index.html` — the **landing page** (primary, fully redesigned June 2026)
  Light cream theme, layman-friendly. Sections: hero → stats → problem comparison →
  share structure → 11 zones grid → economics → revenue → constitution → open source → waitlist.
- `share-structure.html` — **NEW** — Multi-State Cooperative structure explained simply.
  Class-A vs Class-B shares, what you get (12 items), rules, working FAQ accordion.
- `prospectus.html` — the **full detailed Phase 1 / SATYUG-1 document** (200-acre prototype).
  Has a Phase 1 banner at top linking back to the 5,000-acre landing page.
- `township-3d.html` — the **interactive 3D township** (Three.js 0.160 via jsDelivr importmap).
  Embedded as iframe in index.html. Has render fallback (cover.jpeg). Currently shows 200-acre
  Phase 1 layout — should eventually be updated to show full 5,000-acre 11-zone layout.
- `founding-charter.html` — the animated 10-article founding charter. Phase 1 banner added.
- `project-report.html` — legacy bank-style report (100 acres — oldest doc, needs update).
- `brochure.html` — **print source** for the PDF (A4, page-break-perfect, banner image per page).
- `Satyug-Nagari-Prospectus.pdf` — generated FROM brochure.html.
- `cover.jpeg` — hero aerial render.
- `shots/z-*.jpeg` — 12 zone renders used throughout.
- `README.md` — full open-source blueprint README with zone table, economics, fork instructions.
- `LICENSE` — AGPL-3.0 (software) + CC BY-SA 4.0 (docs) + CERN-OHL-S (hardware).
- `Dockerfile` — nginx:alpine, copies all files, reads $PORT from Railway env var.
- `nginx.conf` — uses ${PORT} only (NOT ${PORT:-8080} — envsubst does NOT support bash defaults).

## The Project Vision (5,000 Acres / Phase 2)
- Multi-State Cooperative Society — 10,000 Class-A Membership Shares
- Each share = 3BHK home (999-yr lease) + 1/10,000th of ALL city assets
- Free for life: electricity, food, water, internet, health, education
- Revenue: GPU compute (₹220 Cr/yr) + commercial rents (₹300 Cr/yr) + exports
- Dividends: ₹3–4 Lakhs/family/year
- Constitution: pure vegetarian, no violence (breach = share forfeited), no animal killing
- Sanatan values (live and let live), open books, open source

## Phase Structure
- **Phase 1 (SATYUG-1)**: 200 acres, 2,000 homes — prototype (prospectus.html, founding-charter.html)
- **Phase 2 (full)**: 5,000 acres, 10,000 homes — the full vision (index.html, share-structure.html)

## Railway Deployment
- Project: `resplendent-love` (Railway project name)
- Service: `Satyug-nagari-railway`
- Region: US West
- Every `git push origin main` auto-deploys via Railway's GitHub integration.
- Dockerfile uses nginx:alpine + envsubst templates. PORT is injected by Railway at runtime.

## Run Locally (No Build Step)
```bash
cd Satyug-nagari
node -e "const h=require('http'),f=require('fs'),p=require('path');h.createServer((q,r)=>{let file=p.join('.',q.url==='/'?'index.html':q.url);try{r.end(f.readFileSync(file))}catch{r.end(f.readFileSync('index.html'))}}).listen(8742,()=>console.log('ready at http://localhost:8742'))"
```
(No npm, no dependencies. Fonts and Three.js load from CDNs — internet needed.)

## Working Conventions (Anmol's)
- **Verify visually before claiming done** — run locally, check desktop (~1280px) AND mobile (440px).
- Keep numbers consistent: 5,000 acres · 10,000 homes · 200 MW · ₹770 Cr/yr revenue · ₹1.6 Cr/share.
- Phase 1 sub-pages (prospectus, charter) have a PHASE 1 banner — keep it when editing them.
- Cooperative language: "Multi-State Cooperative Society" not "Pvt. Ltd." (200-shareholder legal cap).
- Dark sections use #122216 (dark olive green) not pure black — Gemini review finding.
- FAQ accordion in share-structure.html is JS-toggled (answers hidden by default, click to open).

## Critical Bug History (Learn From These)
- nginx envsubst does NOT support ${PORT:-8080}. Use plain ${PORT} only. Railway always injects PORT.
  This caused 502 errors for 2 deploys until the fix.
- NEVER set ENV PORT=80 in Dockerfile — Railway overrides PORT at runtime, hardcoding kills it.
- Pvt. Ltd. in India is legally capped at 200 shareholders. Use Cooperative Society for 10,000+ members.
- zones.html does not exist — footer links to #zones anchor in index.html instead.
- brochure.html still references old anmolsam.github.io URL — needs update (low priority).

## Current State (June 2026)
Done: complete open-source rebrand, new index.html (layman-friendly), share-structure.html,
      LICENSE tri-license, README rewrite, Railway deployment fixed and live, Phase 1 banners,
      FAQ accordion, mobile responsive fixes, legal cooperative structure fix.
Next: photoreal images (needs image gen API key), zones.html standalone page,
      3D model updated to 5,000 acre / 11-zone layout, prospectus.html updated to Phase 2 scale.
