# Cloud-Agnostic Deployment Blueprint

This document details how to run this IIoT data bridge pipeline on any workstation or desktop without hardcoding fixed, computer-specific file paths.

---

## 🌐 1. Dynamic Cloud Data Management
All core sample data sets are hosted directly within this version-controlled repository. To change test variables without a local development environment:
1. Navigate to the `/sample data file/` directory on GitHub via your browser.
2. Select the target production log asset and click the edit pencil icon.
3. Commit your data revisions directly to the `main` branch.

---

## 📋 2. Universal Hardware Path Mapping (Any Workstation)

When deploying these Node-RED flows to a new laptop, desktop, or industrial edge gateway, use **Relative Paths** to keep the backend driver machine-independent.

### 📄 Track 1: Unstructured Text Pipeline
* **Node Target:** `Read machine_logs.txt`
* **Relative Path Syntax:** `./sample data file/machine_logs.txt`

### 📊 Track 2: Structured Production CSV Pipeline
* **Node Target:** `Read shift_production.csv`
* **Relative Path Syntax:** `./sample data file/shift_production.csv`

*By utilizing `./`, the engine dynamically anchors its file-system search to the repository root directory, bypassing windows username dependencies (`C:\Users\...`).*

---

## 💾 3. Local SQL Database Configuration
Because relational databases require a local port binding loop, the database connectivity remains bound to the local database layer:
* **Host Address:** `127.0.0.1` (Resolves locally on whichever computer runs the flow)
* **Target Port:** `3306` (Standard MySQL/XAMPP engine allocation)
* **Schema Import:** Run the `/database/database_setup.sql` tracking script inside the host's local phpMyAdmin panel to instantly initialize the pipeline target tables.