
# 🛒 Blinkit Sales Analysis using SQL & Python

This project analyzes sales data from Blinkit (a grocery delivery platform) using MySQL and Python (Pandas). It extracts insights like total revenue, item-level performance, and outlet-wise trends, while showcasing real-world data cleaning and analytics workflows.

---

## 📊 Project Overview

**Objective:**  
To clean, transform, and analyze Blinkit sales data to generate meaningful business insights using SQL and Python.

**Key Areas Covered:**
- Data Cleaning (Pandas + SQL)
- KPIs (Total Sales, Average Rating, etc.)
- Sales Breakdown (by Item Type, Fat Content, Outlet Type)
- Stored Procedures & Views for real-time analytics

---

## 🧰 Tech Stack

- **SQL (MySQL)** – Data querying, cleaning, KPI reporting  
- **Python (Pandas)** – Data preprocessing before import  
- **GitHub** – Version control and project sharing

---
## ⚙️ Setup Notes
> The initial schema was generated using MySQL's **Table Data Import Wizard** from CSV files.  
> After import, **data types were cleaned and adjusted**, and **null values were handled** by [null_fix.ipynb](./preprocessing/null_fix.ipynb) (located in the `preprocessing/` folder).  
> Additional data cleaning was performed via SQL script by [01_data_cleaning_sql](./preprocessing/01_data_cleaning_sql) (located in the `/scripts/` folder).

---
## 🗂 Project Structure

\`\`\`
blinkit-sales-analysis/
├── README.md                  # Project overview and setup guide
├── requirements.txt           # Project dependencies (e.g., pandas, numpy)

├── data/                      # Raw and cleaned datasets
│   ├── blinkit_data_sample.csv      # Raw (sample) dataset
│   └── blinkit_data_cleaned.csv     # Cleaned dataset after preprocessing

├── preprocessing/             # Python-based preprocessing scripts
│   └── null_fix.ipynb               # Jupyter notebook to clean missing values

├── scripts/                   # SQL scripts for data processing & analysis
│   ├── 01_data_cleaning.sql        # SQL cleanup after importing data
│   ├── 02_kpis.sql                 # KPI queries (e.g., revenue, AOV)
│   ├── 03_granular_analysis.sql    # Detailed breakdowns (by category, region, etc.)
│   └── 04_views.sql                # Reusable SQL views for analytics

├── visuals/                   # Power BI visuals & dashboard
│   ├── Blinkit_Sales_Dashboard.pbix # Main Power BI dashboard file
│   └── dashboard_preview.png       # Dashboard screenshot for quick view or README

└── output/                    # Final results and business insights
    └── insights_summary.md         # Summary of key findings and takeaways


\`\`\`

---

## 📈 Sample Insights

- 🧈 **Regular fat** items generate more sales than **low-fat**  
- 🏬 **Medium-sized outlets** outperform small and high-end ones  
- ⭐ **Dairy and snack foods** have the highest average ratings  
- 📍 **Urban locations** dominate overall sales share  

📄 [Click here to view the full insights summary](./output/insights_summary.md)

---

## 📊 Power BI Dashboard & Presentation

The sales insights were visualized using **Power BI** to create an interactive dashboard, highlighting trends across item types, outlet sizes, fat content, and urban vs rural sales distribution.

🖥️ **Dashboard Includes:**
- Total Sales, Ratings, and Volume KPIs  
- Sales comparison by Item Type & Fat Content  
- Outlet Type performance across regions  
- Location-wise sales breakdown

📸 *Preview:*  
![Dashboard Preview](./visuals/dashboard_preview.png)

🎤 **Presentation:**  
A walkthrough presentation explaining the insights, methodology, and business takeaways is available in the `visuals/` folder.  
> 📂 `visuals/Blinkit_Sales_Presentation.pptx`

---
