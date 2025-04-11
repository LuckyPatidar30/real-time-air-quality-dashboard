# 🌍 Real-Time Air Quality & Health Risk Dashboard

A complete data analytics project that monitors, processes, and visualizes real-time air quality and health risk indicators across major cities in India using a full-stack data pipeline — from Python API integration to SQL storage and Power BI dashboards.

> 🛠️ Built to showcase real-world ETL automation, data modeling, and interactive storytelling using live environmental data.

---

## 🚀 Tech Stack

- **Python** – API integration & data transformation
- **Open-Meteo API** – Real-time air quality data source
- **MySQL** – Database for storing historical and live data
- **SQL Views** – Aggregated metrics, unsafe pollutant counts, and time-based summaries
- **Power BI** – Dynamic dashboards with multi-page visualizations

---

## 📊 Key Features & KPIs

- ✅ Daily ingestion of pollutant data for 12+ cities using scheduled ETL
- ✅ Monitoring of PM2.5, PM10, CO, NO₂, SO₂, O₃, Dust, UV, CO₂, and more
- ✅ KPIs like:
  - Current Value vs. Safe Threshold
  - % Above Threshold
  - City with Most Deterioration
  - Unsafe Pollutant Count by City
  - Time-Series of Pollutants by Day & City
- ✅ Dark-themed Power BI dashboard with slicers for cities, pollutants, and dates
- ✅ Fully automated pipeline — just schedule and monitor

---

## 🧠 Project Workflow

1. **Python ETL Script**  
   - Fetches hourly air quality data via Open-Meteo API  
   - Stores data in a normalized MySQL table

2. **SQL Data Modeling**  
   - SQL View aggregates daily average values  
   - Calculates unsafe pollutant counts based on WHO thresholds

3. **Power BI Dashboard**  
   - Connects to SQL view  
   - Provides clear, visual insights across multiple pages:
     - Page 1: City Pulse Overview
     - Page 2: Trend Analysis
     - Page 3 (optional): Forecast Insights

---



> `./screenshots/dashboard_preview.png`  
Add a few screenshots from Power BI dashboard, ETL terminal, or SQL view

---

## 🔗 Project Links

- [LinkedIn Post – Part 1: ETL Process](https://www.linkedin.com/in/yourprofile) *(Update once posted)*
- [Power BI Dashboard (Optional)](https://drive.google.com/your-dashboard-link) *(If hosted externally)*

---

## 📝 How to Run

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/real-time-air-quality-dashboard.git
