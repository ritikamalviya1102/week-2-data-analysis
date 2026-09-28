# Week 2 - Data Analysis Internship Assignment

## Overview

This project contains my Week 2 Data Analysis internship assignment covering:

- SQL for Data Analysis
- Python for Data Analysis

The project demonstrates basic data querying, data aggregation, data cleaning, grouping, sorting, and correlation analysis using a sales dataset.

---

## Dataset

The dataset contains 200 sales records.

### Main Columns

- order_id
- customer_name
- order_date
- category
- sub_category
- product_name
- quantity
- unit_price
- total_price
- region

---

# Part 1: SQL for Data Analysis

The SQL section covers:

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- SUM
- AVG
- COUNT
- CASE statements
- Subqueries
- JOIN operations
- Customer analysis
- Regional sales analysis
- Monthly revenue analysis
- Product performance analysis

## SQL Files

| File | Description |
|---|---|
| `01_basic_queries.sql` | Basic SELECT, WHERE and ORDER BY queries |
| `02_aggregations.sql` | SUM, AVG, COUNT and GROUP BY analysis |
| `03_case_subquery_join.sql` | CASE, subqueries and JOIN |
| `04_sales_analysis.sql` | Additional sales analysis and KPIs |

---

# Part 2: Python for Data Analysis

Python analysis was performed using Pandas, NumPy, Matplotlib and Seaborn.

### Tasks Completed

1. Loaded the CSV dataset using Pandas.
2. Displayed basic dataset information.
3. Checked and handled missing values.
4. Checked and removed duplicate rows.
5. Calculated total revenue by category.
6. Sorted data using multiple columns.
7. Created a correlation matrix for numerical variables.
8. Created a heatmap visualization of the correlation matrix.

---

## Python Files

| File | Description |
|---|---|
| `python_analysis.py` | Complete Python data analysis |
| `requirements.txt` | Required Python libraries |

---

## Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- SQL
- MySQL / phpMyAdmin
- GitHub

---

## Project Structure

```text
week-2-data-analysis/
│
├── Program/
│   ├── python_analysis.py
│   ├── requirements.txt
│   └── SQL_Sales_Dataset_200_Rows.xlsx - Sheet1.csv
│
├── SQL/
│   ├── 01_basic_queries.sql
│   ├── 02_aggregations.sql
│   ├── 03_case_subquery_join.sql
│   └── 04_sales_analysis.sql
│
├── screenshots/
│
└── README.md