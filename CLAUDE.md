# SŪRYA NAGARI — project handoff (read me first)

This repo is **Sūrya Nagari**, a vision/marketing site for a 200-acre "living-model" AI township
in India. It is a static website (plain HTML/CSS/JS, no build step) deployed on **GitHub Pages**.
Co-designed by Anmol with Claude. This file is the handoff so a fresh Claude on any machine can
continue exactly where we left off.

## Live URLs
- Site: https://anmolsam.github.io/surya-nagari/
- 3D model: https://anmolsam.github.io/surya-nagari/township-3d.html
- PDF: https://anmolsam.github.io/surya-nagari/Surya-Nagari-Prospectus.pdf
- Repo: https://github.com/anmolsam/surya-nagari

## File map (what each file is — edit these DIRECTLY, there is NO build step / no copy step)
- `index.html` — the **landing page** (primary). Clean, scannable, photo-driven: nav, hero,
  stats, alternating feature sections, embedded 3D, Glass Town, ownership cards, closing, footer.
- `prospectus.html` — the **full detailed document** (model card + ~18 deep sections: doctrine,
  the 8 SūryaOS models, cited 2026 evidence, sky/eVTOL, Deck & Diya machines, Glass Town,
  "Sized for a Thousand Years" capacity math, charter, operator's note, finance, sources).
- `township-3d.html` — the **interactive 3D township** (Three.js 0.160 via **jsDelivr** importmap).
  Embedded as an iframe in index.html (`?hud=min`) and standalone. Has a render fallback
  (shows `cover.jpeg` if the engine/WebGL fails) so it never blanks.
- `founding-charter.html` — the animated 10-article charter.
- `project-report.html` — the original bank-style report (legacy/early; still linkable).
- `brochure.html` — **print source** for the PDF (A4, page-break-perfect, banner image per page).
- `Surya-Nagari-Prospectus.pdf` — generated FROM brochure.html (see "Regenerate the PDF" below).
- `cover.jpeg` — hero/aerial render of the township (used by index hero + 3D fallback + PDF cover).
- `shots/z-*.jpeg` — 12 daytime renders of each zone (living, commons, still, olympic, labs, farms,
  solar, makers, animals, mart, water, hangar). Used across landing + PDF.
- `preview*.jpeg` — misc screenshots (README/preview only).

## Run locally
```bash
cd surya-nagari
python3 -m http.server 8742
# open http://localhost:8742/index.html  and  /township-3d.html
```
(No npm, no dependencies. Fonts + Three.js load from CDNs, so internet is needed for those.)

## Deploy (GitHub Pages, branch = main, path = /)
Just commit and push to `main`; Pages rebuilds in ~45s.
```bash
git add -A && git commit -m "..." && git push
# verify: curl -s -o /dev/null -w "%{http_code}" https://anmolsam.github.io/surya-nagari/
```
End commit messages with: `Co-Authored-By: Claude <noreply@anthropic.com>`

## The 3D model — how it works
- Three.js ESM via importmap (jsDelivr). One big `<script type="module">`.
- `?hud=min` = hero/embed mode (auto-pitch, no buttons). `?shot=1` = clean daytime capture mode
  (hides HUD, freezes sun at mid-morning) — used to take the `shots/` renders.
- Cinematic auto-PITCH on load (big stats fly in). `▶ tour` ambient fly-through. Fly-to view
  buttons. STEP-INSIDE interiors (server hall / clinic / kitchen / ramana / sabha at INT_X=2600).
- Day=inference / night=training 60s cycle; live vitals bar with pulsing heartbeat + ECG.
- The hero iframe src carries a version param (`?hud=min&v=NN`) — **bump NN on any model change**
  to bust the browser cache (this is why "I don't see the model" used to happen).
- `gotcha`: THREE.js `Mesh.position` is read-only — never `Object.assign` it.

## Regenerate the PDF (needs Google Chrome installed)
```bash
cd surya-nagari
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless=new --disable-gpu \
  --no-pdf-header-footer --virtual-time-budget=12000 --run-all-compositor-stages-before-draw \
  --print-to-pdf="$(pwd)/Surya-Nagari-Prospectus.pdf" "file://$(pwd)/brochure.html"
```
brochure.html has a script that puts a relevant banner image on every page from a `BAN[]` array.
Page-break rule: every `p,li,table,.card,.theme,.tour,.art` has `break-inside:avoid` — no paragraph
or card ever splits across pages. Verify by rendering pages with `pdftoppm -jpeg ...`.

## Working conventions (Anmol's, important)
- **Verify visually before claiming done.** Use a real browser (Playwright/Chrome) and screenshot
  at desktop (~1280) AND iPhone size (440×956); check the console for errors. Anmol is rightly
  frustrated by overlaps, stale/contradictory numbers, and things that "don't show".
- Keep all numbers internally consistent across the whole site (200 acres, 2,000 owners,
  22 MWp / 60 MWh, 1,024 GPUs, ₹4,000 Cr raise → ₹2,690 Cr build + ₹1,050 Cr endowment, no debt).
- Keep the essence language: living model · mandala · seekers · humanity-first · built with
  residents · glass treasury · open source · "sunlight in, intelligence out, time returned".
- Dark, premium aesthetic; gold (#e9b949) accent; Fraunces serif + Inter sans.

## Current state (June 2026)
Done: landing redesign; reliable 3D (jsDelivr + fallback); Glass Town + capacity sections;
24/25-page PDF with a photo on every page; cache-busting.
**Pending / next:** photoreal images. The renders are stylized (low-poly Three.js). To make
photoreal architectural visuals, an **image-generation API key** is required (OpenAI gpt-image-1,
Fal, Replicate, or Stability) — Codex/coding CLIs cannot generate images. When a key is provided,
generate ~8–10 photoreal images (aerial, a villa, clinic, Olympic pool, zen garden, lab dome,
farms, mart) and drop them into index.html + brochure.html in place of (or beside) the renders.
