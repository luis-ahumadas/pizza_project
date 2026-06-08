# Pizza Sales Analysis Project 🍕

## 📌 Overview

This project provides a **data analysis of pizza sales** using **SQL** for data extraction/transformation, **Jupyter Notebook** (Python) for exploratory analysis or further processing, and **Power BI** for creating an interactive dashboard. It aims to extract business insights such as sales trends, best/worst selling pizzas, peak order times, and revenue metrics.

## 🧰 Tools & Technologies

- **SQL** – Querying and aggregating sales data  
- **Python (Jupyter Notebook)** – Data cleaning, manipulation, or preliminary analysis  
- **Power BI** – Interactive dashboard and data visualization  
- **CSV/Excel** – Raw data storage (in `data/` folder)

## 📁 Repository Structure
pizza_project/
├── data/                 # Raw data files (CSV, Excel, etc.)

├── notebooks/            # Jupyter notebooks for data exploration/analysis

├── Screenshots/          # Images of the Power BI dashboard or results

├── queries.sql           # SQL scripts for data extraction and analysis

├── pizza_project.pbix    # Power BI dashboard file

├── .gitignore

└── README.md

## 🔍 Key Questions Answered

- What are the **peak hours and days** for pizza orders?  
- Which **pizza types and sizes** generate the most revenue?  
- What are the **best-selling and worst-selling pizzas**?  
- How do **sales trends** vary by month or day of week?  
- What is the **average order value** and **total revenue**?

## 🚀 Getting Started

### Prerequisites

- **SQL** environment (e.g., MySQL, PostgreSQL, SQLite) to run `queries.sql`  
- **Python 3.x** with pandas, matplotlib, seaborn (to run the Jupyter notebooks)  
- **Power BI Desktop** (to open `pizza_project.pbix`)

### Setup

1. **Clone the repository**  
   ```bash
   git clone https://github.com/luis-ahumadas/pizza_project.git
   cd pizza_project
   ```
2. **Load the data** – Import the files from `data/` into your SQL database.

3. **Run the SQL queries** – Use `queries.sql` to generate result tables or views.

4. **Explore the notebook** – Open `notebooks/` in Jupyter Lab or VS Code.

5. **Open the dashboard** – Double-click `pizza_project.pbix` to see the interactive Power BI report.