# 🚀 dbt Databricks Project

This project demonstrates an end-to-end data transformation workflow using **dbt (Data Build Tool)** on **Databricks Lakehouse**. It showcases how raw data can be transformed into analytics-ready datasets using modular, scalable, and production-grade practices.

---

## 📌 Project Overview

This repository contains a dbt project built on Databricks that follows modern data engineering principles:

- ELT pipeline design (Transform after load)
- Layered data modeling (Bronze → Silver → Gold)
- Reusable SQL transformations
- Data quality testing
- Version-controlled analytics engineering

dbt enables transforming data using SQL while following software engineering best practices like modularity, testing, and documentation. :contentReference[oaicite:0]{index=0}

---

## 🏗️ Architecture

Raw Data (Bronze)
↓
Cleaned Data (Silver)
↓
Business Models (Gold)
↓
Analytics / Reporting

---

## 📂 Project Structure
dbt_databricks/
│
├── models/
│ ├── bronze/ # Raw ingestion layer
│ ├── silver/ # Cleaned & transformed data
│ ├── gold/ # Business-level aggregations
│
├── tests/ # Data quality tests
├── macros/ # Reusable SQL logic
├── seeds/ # Static datasets (if any)
├── snapshots/ # Slowly changing dimensions
│
├── dbt_project.yml # Project configuration
├── profiles.yml # Databricks connection config (local)
└── README.md


---

## ⚙️ Tech Stack

- **dbt Core**  
- **Databricks Lakehouse**  
- **Delta Tables**  
- **SQL**  
- **Python (optional models)**  
- **GitHub (version control)**  

The project uses the `dbt-databricks` adapter, which enables dbt to run transformations directly on Databricks.

---

## 🔧 Setup Instructions

### 1. Clone Repository
```bash
git clone https://github.com/TEJAPOTLA/dbt_databricks.git
cd dbt_databricks
2. Create Virtual Environment
python -m venv venv
source venv/bin/activate   # Mac/Linux
venv\Scripts\activate      # Windows
3. Install Dependencies
pip install dbt-databricks
4. Configure profiles.yml
your_profile_name:
  target: dev
  outputs:
    dev:
      type: databricks
      host: <your-host>
      http_path: <your-http-path>
      schema: <your-schema>
      token: <your-token>
5. Validate Setup
dbt debug
6. Run Models
dbt run
7. Run Tests
dbt test

---
## 📊 Key Features

- **Modular SQL-based transformations using dbt**  
- **Layered data modeling (Bronze → Silver → Gold)**  
- **Scalable ELT pipeline on Databricks**  
- **Reusable and maintainable data models**  
- **Data quality testing using dbt tests**  
- **Version-controlled project using GitHub**  
- **Support for incremental model processing (if configured)**  
- **Organized project structure aligned with production practices**  

---

##🔄 Workflow
Raw data is ingested into Databricks (Bronze layer)
Data is cleaned and standardized in the Silver layer
Business-level transformations and aggregations are created in the Gold layer
dbt models are executed using dbt run
Data quality checks are performed using dbt test
Final transformed data is made available for analytics and reporting
📊 Example Models
bronze_* → Raw ingestion models
silver_* → Cleaned and transformed datasets
gold_* → Aggregated business insights
