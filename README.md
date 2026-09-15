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

---

## 🏗️ System Architecture
