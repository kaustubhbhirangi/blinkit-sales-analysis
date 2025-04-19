
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
│
├── preprocessing/                    # Data preprocessing scripts
│   ├── null_fix.ipynb                # Jupyter notebook to clean missing values
│   └── requirements.txt              # Project dependencies (e.g., pandas)
│
├── data/                             # Datasets
│   ├── blinkit_data_sample.csv       # Raw (sample) dataset
│   └── blinkit_data_cleaned.csv      # Cleaned dataset after preprocessing
│
├── scripts/                          # SQL scripts for analysis
│   ├── 01_data_cleaning.sql          # SQL updates after importing data
│   ├── 02_kpis.sql                   # Key Performance Indicator queries
│   ├── 03_granular_analysis.sql      # Detailed sales breakdowns
│   └── 04_views.sql                  # Reusable views for analytics
│
├── visuals/                          # Power BI dashboards and visuals
│   ├── Blinkit_Sales_Dashboard.pbix  # Power BI dashboard file
│   └── dashboard_preview.png         # Screenshot of dashboard (for README)
│
└── output/                           # Final results & insights
    └── insights_summary.md           # Business insights & key takeaways


\`\`\`

---

## 📈 Sample Insights

- 🧈 **Regular fat** items generate more sales than **low-fat**
- 🏬 **Medium-sized outlets** outperform small and high-end ones
- ⭐ **Dairy and snack foods** have the highest average ratings
- 📍 **Urban locations** dominate overall sales share


📄 [Click here to view the full insights summary](./output/insights_summary.md)


---

## 📌 Future Improvements

- Add visualizations using **Power BI** or **Tableau**


## 📬 Contact

Made with 💻 by **[Your Name]**  
📧 your.email@example.com  
🔗 [LinkedIn](#) | [GitHub](#)
