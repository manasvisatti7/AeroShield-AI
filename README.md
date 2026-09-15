# 🌊 AeroShield AI

> **Sensorless Urban Flood Early Warning & Real-Time Inundation Mapping System**  
> Built for Smart India Hackathon 2026 | **Team SudoStorm**

[![Live Demo](https://img.shields.io/badge/Live%20Demo-Netlify-00C7B7?style=for-the-badge&logo=netlify)](https://aeroshieldd.netlify.app/)
[![Backend API](https://img.shields.io/badge/Backend%20API-Render-46E3B7?style=for-the-badge&logo=render)](https://aeroshield-backend.onrender.com/api/v1/inundation)
[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](LICENSE)

---

## 📌 Executive Summary

**AeroShield AI** is a zero-hardware-cost urban flood prediction platform designed to provide municipal disaster management teams with a **1 to 3-hour lead-time warning** before severe waterlogging occurs. 

By eliminating the need for expensive physical IoT water level sensors, AeroShield AI fuses real-time satellite precipitation telemetry with high-resolution Digital Elevation Models (DEM) to dynamically predict street-level inundation depth ($\text{cm}$).

* **Live Frontend GIS Dashboard**: [https://aeroshieldd.netlify.app/](https://aeroshieldd.netlify.app/)
* **Live FastAPI Backend**: `https://aeroshield-backend.onrender.com/api/v1/inundation`

---

## 🚀 Key Features & Value Proposition

* 💰 **₹0 Hardware Dependency**: Operates entirely on satellite & terrain remote sensing—zero procurement, maintenance, or storm damage costs.
* ⏱️ **3-Hour Predictive Horizon**: Shifts municipal disaster response from reactive ground sensing to proactive early dispatch.
* 🗺️ **Ward-Level Inundation Depth**: Calculates localized water accumulation ($\text{cm}$) based on micro-topography (elevation & slope).
* 🧠 **Explainable Risk Engine**: Tells emergency officers *why* specific underpasses flood by correlating precipitation rate ($\text{mm/hr}$) with terrain metrics.
* 🔊 **Browser-Based Emergency Siren**: Programmatic warning synthesized via Web Audio API upon critical risk threshold breaches.

* ## 🏗️ System Architecture
┌─────────────────────────────────────────┐
              │    ATMOSPHERIC & TERRAIN DATA FEEDS     │
              └────────────────────┬────────────────────┘
                                   │
        ┌──────────────────────────┴──────────────────────────┐
        ▼                                                     ▼
┌───────────────────────────────┐                     ┌───────────────────────────────┐
│   Open-Meteo Weather API      │                     │   ISRO Bhuvan / SRTM DEM      │
│  (Real-Time Rain Rate mm/hr)  │                     │  (30m Elevation & Slope Data) │
└───────────────┬───────────────┘                     └───────────────┬───────────────┘
│                                                     │
└──────────────────────────┬──────────────────────────┘
│
▼
┌─────────────────────────────────────────┐
│    ASYNCHRONOUS PYTHON FASTAPI CORE     │
│    (Backend Hosted Live on Render)      │
└────────────────────┬────────────────────┘
│
▼
┌─────────────────────────────────────────┐
│   HYDROLOGICAL RUNOFF PREDICTION ENGINE │
│   [ Depth (cm) = Rain × Runoff Coef ]   │
└────────────────────┬────────────────────┘
│
▼
┌─────────────────────────────────────────┐
│   SPATIAL GIS DASHBOARD (Leaflet.js)    │
│    (Frontend Hosted Live on Netlify)    │
└─────────────────────────────────────────┘


---

## 🛠️ Tech Stack & Tools

| Component | Technology / Platform |
| :--- | :--- |
| **Frontend GIS** | Leaflet.js, Esri Dark Canvas, HTML5/CSS3, JavaScript (ES6+) |
| **Audio Engine** | Web Audio API Synthesizer (Code-based Siren) |
| **Backend API** | Python 3.10+, FastAPI, AsyncIO, Uvicorn |
| **Geocoding** | Esri ArcGIS World Geocoding API |
| **Data Telemetry** | Open-Meteo Weather API, ISRO Bhuvan DEM / SRTM 30m |
| **Hosting** | Netlify (Frontend), Render (Backend API) |

---

## ⚡ Quickstart & Local Setup

### Prerequisites
* Python 3.10 or higher
* Node.js / Modern Browser (Chrome, Firefox, Edge)

### 1. Clone the Repository
```bash
git clone [https://github.com/manasvisatti7/AeroShield-AI.git](https://github.com/manasvisatti7/AeroShield-AI.git)
cd AeroShield-AI
# Navigate to backend directory
cd backend

# Create & activate virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Run the local server
uvicorn main:app --reload --port 8000
# Open frontend index.html directly in browser or serve via Live Server
open frontend/index.html
---
🔮 Scalability Roadmap
[x] Phase 1 (MVP): Live Open-Meteo & ISRO Bhuvan DEM hydrological runoff integration.

[ ] Phase 2 (Radar Nowcasting): PyTorch implementation of U-Net for cloud-motion radar prediction.

[ ] Phase 3 (ML Runoff Refinement): XGBoost integration trained on historical IMD & NASA GPM rainfall datasets.

[ ] Phase 4 (Enterprise GIS): Migration to PostGIS + Mapbox GL JS for sub-meter resolution spatial rendering.

📜 License
This project is licensed under the MIT License - see the LICENSE file for details.


