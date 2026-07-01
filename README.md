# 🏙️ The Satyug Collective — Open Real Estate AI Estate

**The world's first open-source self-sufficient city blueprint.**

A 5,000-acre city in India structured as a **Multi-State Cooperative Society** (like Amul, but for an entire city) where **every member owns the whole city** — homes, solar farm, GPU compute campus, farms, factories, hospital, school, Olympic zone, and every rupee the city earns.

No monthly bills. No landlords. No external utilities. Owned by its people, powered by the sun, guided by AI.

[![License: AGPL-3.0](https://img.shields.io/badge/Software-AGPL--3.0-blue)](https://www.gnu.org/licenses/agpl-3.0)
[![License: CC BY-SA 4.0](https://img.shields.io/badge/Docs-CC%20BY--SA%204.0-green)](https://creativecommons.org/licenses/by-sa/4.0/)
[![License: CERN-OHL-S](https://img.shields.io/badge/Hardware-CERN--OHL--S%20v2-orange)](https://ohwr.org/cern_ohl_s_v2.txt)
[![Open Source](https://img.shields.io/badge/Open%20Source-Yes-brightgreen)]()

---

## What Is The Satyug Collective?

The Satyug Collective is not a real estate project. It is a **civilizational prototype** — a working proof that a city can be:

- **Built once** (₹15,250 Crore total, debt-free)
- **Endowed forever** (₹770 Cr/year from GPU compute + commercial rents)
- **Owned by its residents** (10,000 Class-A shareblocks, no external landlord)
- **Free for life** (electricity · food · water · internet · health · education · transport)
- **Governed by its people** (one share = one vote)
- **Open source** (fork it, build your own)

### The 30-Year Comparison

| | Standard Indian City | The Satyug Collective Shareholder |
|---|---|---|
| Initial cost | ₹1.2 Cr flat (only a flat) | **₹1.6 Cr shareblock** (whole city) |
| Electricity (30 yrs) | ₹36 Lakhs | **₹0** (200 MW solar) |
| Food (30 yrs) | ₹1.08 Cr | **₹0** (community farms) |
| Education (30 yrs) | ₹90 Lakhs | **₹0** (full university on campus) |
| Healthcare (30 yrs) | ₹60 Lakhs | **₹0** (500-bed hospital) |
| Dividends received | ₹0 (you're a customer) | **+₹90–120 Lakhs** (GPU + rent revenue) |
| **30-year total** | **₹4.32 Cr paid out** | **₹1.6 Cr in · ₹0 bills · dividends out** |

---

## The City — 11 Zones, 5,000 Acres

| Zone | Acres | Purpose |
|---|---|---|
| 🏠 Residential Zones | 1,000 | 10,000 eco-built 3BHK homes |
| 🌾 Community + Vertical Farms | 1,500 | Organic food for all residents, 100% vegetarian |
| ☀️ Solar Farm + Battery (200 MW) | 800 | Powers everything, zero fossil fuel |
| 🖥️ GPU Compute Campus | 100 | 2,048+ AI GPUs leased globally — main revenue |
| 🏭 Industrial Park (Satyug Works) | 200 | Clothes, soap, furniture, food processing |
| 🏢 Commercial Rental Zone | 150 | Grade-A offices (Gurgaon model) — rent = revenue |
| 🎓 School + University + AI Labs | 150 | K-12 + full university, free for all shareholders |
| 🏥 Medical + R&D Campus | 100 | 500-bed hospital, free healthcare for life |
| 🏅 Olympic + Sports Zone | 100 | Olympic-grade facilities, free for all residents |
| 🌳 Ecological Buffers + Sacred Groves | 600 | Rewilded forests, animal sanctuary |
| 🏗️ Civic Infrastructure | 300 | Water, roads, rainwater harvesting, STP |
| **Total** | **5,000** | |

---

## The Economics

```
Total capital needed:   ₹15,250 Crore
10,000 Class-A shares:  ₹1.6 Crore each = ₹16,000 Crore raised

Annual revenues:
  GPU compute (2,048 GPUs @ $1.50/hr, 85% util): ₹220 Crore/yr
  Commercial rents (5M sq ft @ ₹50/sqft):        ₹300 Crore/yr
  Farm exports + IP licensing + tourism:          ₹250 Crore/yr
  Total:                                          ₹770 Crore/yr

Annual city running cost:    ₹250 Crore/yr
Surplus:                     ₹520 Crore/yr
  → 30% reinvestment reserve
  → 70% shareholder dividends = ₹3–4 Lakhs per family per year
```

---

## The Constitution (Built Into Company Law)

1. **Pure Vegetarian** — No meat, fish, eggs within city limits. Ever.
2. **Ahimsa (No Violence)** — Physical violence = share forfeiture (bought back at 70%, person vacates in 60 days)
3. **No Animal Killing** — 600-acre ecological buffer, animals protected by charter
4. **Sanatan Values** — Live and let live. Truth. Non-harm. Cleanliness. Contentment.
5. **Glass Treasury** — Every rupee on a public ledger every shareholder can read
6. **Democratic Governance** — 11-member Panchayat Council, smart-contract voting on all decisions
7. **Non-Speculative** — Resale price capped at inflation + improvements. Right of First Refusal.
8. **Open Source** — The entire blueprint is published. Fork it. Build your own.

---

## Site Map

| File | What it is |
|---|---|
| `index.html` | Landing page — the full layman-understandable vision |
| `share-structure.html` | How the Pvt. Ltd. + shareblock model works |
| `prospectus.html` | Full detailed 18-section prospectus document |
| `founding-charter.html` | The animated 10-article founding charter |
| `township-3d.html` | Interactive 3D city model (Three.js) |
| `brochure.html` | Print source for the PDF prospectus |
| `Satyug-Nagari-Prospectus.pdf` | Downloadable 24-page PDF |
| `shots/z-*.jpeg` | Zone renders used across the site |

---

## Run Locally (No Build Step)

```bash
git clone https://github.com/originaonxi/Satyug-nagari-railway
cd Satyug-nagari-railway
python3 -m http.server 8742
# Open: http://localhost:8742/
```

No npm. No dependencies. Fonts and Three.js load from CDNs.

---

## Deploy on Railway

This repo is configured for Railway static deployment:
- `Dockerfile` — nginx:alpine serving static HTML
- `nginx.conf` — binds to Railway's `$PORT` env var

Click **Deploy** on Railway and it works out of the box.

---

## Open Source Licenses

| Asset Type | License |
|---|---|
| Software, scripts, AI systems | [AGPL-3.0](https://www.gnu.org/licenses/agpl-3.0.html) |
| Documents, charters, manuals, legal templates | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) |
| Engineering plans, urban layouts, hardware designs | [CERN-OHL-S v2](https://ohwr.org/cern_ohl_s_v2.txt) |

### Fork This Blueprint

```
# Clone the blueprint
git clone https://github.com/originaonxi/Satyug-nagari-railway my-city-blueprint

# Adapt for your location (change: climate zone, land laws, language, cultural constitution)
# Build your own city
# Apply for "Official The Satyug Collective Estate" certification (free community audit)
```

---

## Contributing

This project belongs to humanity. We welcome:
- Legal template improvements for different jurisdictions
- Urban planning variations (climate, culture, scale)
- Engineering improvements (energy, water, agriculture)
- Translations of all documents
- Software for city governance, health monitoring, farm automation

See `CONTRIBUTING.md` (coming soon). Open an issue or PR.

---

## The Vision

> *"Sunlight in. Intelligence out. Time returned."*

Gurgaon was built by a developer who got rich. The Satyug Collective is built by 10,000 families who own it. The developer model has failed billions of people — it makes housing a speculative asset instead of a foundation for life.

This is the alternative. Not just for India. For the world.

**Fork it. Build it. Make it yours.**

---

*Designed by Anmol · Built with Claude, Codex & Gemini · June 2026*  
*All figures are indicative pre-DPR estimates. Not a registered securities offering.*
