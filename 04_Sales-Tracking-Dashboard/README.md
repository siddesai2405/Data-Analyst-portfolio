📊 Sales Tracking Dashboard

	> An end-to-end sales analytics project integrating Python, SQL, Excel, and Power BI to transform raw sales data into meaningful business insights.


👨‍💻 Project Overview

This project focuses on analyzing sales data through an integrated workflow involving Python, Excel, SQL, and Power BI.

The objective is to prepare raw sales data, perform data cleaning and feature engineering using Python, store the processed data in a MySQL database, and present sales information through an interactive Power BI dashboard.

The project demonstrates how multiple tools can work together in a connected data analytics workflow, from raw data preparation to business intelligence reporting.


🎯 Business Problem

Businesses need a structured way to understand sales performance, product contribution, regional performance, and profitability.

Raw sales data requires proper cleaning and transformation before it can be used for meaningful analysis and dashboard reporting.

This project prepares sales data for analysis and builds a foundation for exploring business performance.

Business Questions Addressed

- 💰 How much revenue is generated from sales?
- 📦 How do different products contribute to sales performance?
- 🌍 How does sales performance vary across regions?
- 📈 What is the profit generated from each order?
- 📅 How can sales performance be analyzed across different months and years?
- 🔍 How can raw sales data be cleaned and prepared for reporting?

📊 Data Processing & Findings

- Original Dataset: 520 sales records.
- Duplicate Removal: Removed 20 duplicate records.
- Date Cleaning: Identified and removed 18 records with invalid order dates after duplicate removal.
- Cleaned Dataset: 482 records.
- Feature Engineering: Created Profit, Year, and Month columns.
- Database Integration: Loaded the cleaned dataset into a MySQL database table named sales_data.

📂 Data Source

The project uses a sales dataset containing order, customer, product, regional, sales, and cost information.

Dataset Information

- Raw Records: 520
- Cleaned Records: 482
- Original Columns: 7
- Final Columns: 10

Dataset Features

- Order_ID — Unique order identifier
- Order_Date — Date of the order
- Customer — Customer name
- Region — Sales region
- Product — Product category/name
- Sales — Sales amount
- Cost — Product cost
- Profit — Calculated profit
- Year — Extracted order year
- Month — Extracted order month

🛠️ Tools and Tech Stack

| Tool | Purpose in this project |
|---|---|
| Python | Data cleaning and transformation |
| Pandas | Data manipulation and preprocessing |
| Excel | Raw sales data storage |
| MySQL | Database storage and integration |
| SQLAlchemy | Python-to-MySQL database connection |
| PyMySQL | MySQL database connectivity |
| Power BI | Sales dashboard and business reporting |
| Jupyter Notebook | Interactive Python development |

 🧠 Core Concepts Demonstrated

- Data Loading: Importing sales data from Excel using Pandas.
- Data Cleaning: Identifying and removing duplicate records.
- Date Handling: Converting order dates into proper datetime format and handling invalid dates.
- Feature Engineering:** Calculating profit and extracting year and month from order dates.
- CSV Export: Saving cleaned and transformed data for further analysis.
- Database Integration: Connecting Python with MySQL using SQLAlchemy and PyMySQL.
- Data Loading into SQL: Writing the processed dataset into a MySQL table.
- Business Intelligence: Preparing structured data for Power BI dashboard reporting.

🔄 Project Workflow

Step 1 — Excel Data Loading

Imported the raw sales dataset (sales_raw_500.xlsx) into Python using Pandas.

Step 2 — Python Data Cleaning

- Removed duplicate records.
- Converted Order_Date into datetime format.
- Identified invalid date values.
- Removed records with invalid order dates.
- Prepared the cleaned dataset for further processing.

Step 3 — Feature Engineering

Created additional analytical columns:

- Profit = Sales − Cost
- Year = Extracted from Order_Date
- Month = Extracted from Order_Date

Step 4 — Cleaned Data Export

Exported the processed dataset as sales_cleaned.csv for database integration and further analysis.

Step 5 — SQL Database Integration

- Connected Python to MySQL using SQLAlchemy and PyMySQL.
- Connected to the salesdb database.
- Loaded the cleaned dataset into the sales_data` table.
- Used the replace option to write the processed data into the table.

Step 6 — Power BI Dashboard

Included a Power BI dashboard file to present sales-related information through business intelligence reporting.

📈 Dashboard & Project Files

The project includes:

- 📊 Sales Tracking Dashboard (Python + SQL + Power BI + Excel).pbix — Power BI dashboard.
- 📓 Cleaning.ipynb — Python data cleaning and database integration notebook.
- 📁 sales_raw_500.xlsx — Original sales dataset.
- 📄 sales_cleaned.csv — Processed sales dataset.
- 🖼️ SQL_Commands — Supporting SQL screenshots.

⚙️ Sample Python: Data Cleaning

import pandas as pd

Load raw sales data
df = pd.read_excel("sales_raw_500.xlsx")

Remove duplicates
df = df.drop_duplicates()

Convert order date
df['Order_Date'] = pd.to_datetime(
    df['Order_Date'],
    errors='coerce'
)

Remove invalid dates
df = df.dropna(subset=['Order_Date'])

Feature engineering
df['Profit'] = df['Sales'] - df['Cost']
df['Year'] = df['Order_Date'].dt.year
df['Month'] = df['Order_Date'].dt.month

Export cleaned data
df.to_csv("sales_cleaned.csv", index=False)


🗄️ Sample Python: MySQL Integration

python
import pandas as pd
from sqlalchemy import create_engine

Load cleaned data
df = pd.read_csv("sales_cleaned.csv")

Create MySQL connection
engine = create_engine(
    "mysql+pymysql://USER:PASSWORD@localhost:3306/salesdb"
)

Load data into MySQL
df.to_sql(
    name="sales_data",
    con=engine,
    if_exists="replace",
    index=False
)

💼 Business Value

This project demonstrates how businesses can use structured sales data to support:

- 💰 Revenue and profitability analysis.
- 📦 Product-level sales evaluation.
- 🌍 Regional sales performance analysis.
- 📅 Monthly and yearly sales comparisons.
- 📊 Business intelligence reporting.
- 🎯 Data-driven sales and business decisions.

🚀 How to Reproduce This Project

1. Install Python and the required libraries.
2. Keep sales_raw_500.xlsx in the project directory.
3. Open Cleaning.ipynb in Jupyter Notebook.
4. Run the notebook cells to clean and transform the sales dataset.
5. Configure your local MySQL database and create the salesdb database.
6. Configure your database credentials securely in the notebook.
7. Execute the database integration cells to load data into sales_data.
8. Open the Power BI .pbix file in Power BI Desktop and configure the data connection if required.

Install Required Libraries

	pip install pandas openpyxl pymysql sqlalchemy jupyter


📁 Project Structure

04_Sales-Tracking-Dashboard/
│
├── Cleaning.ipynb
├── README.md
├── Sales Tracking Dashboard (Python + SQL + Power BI + Excel).pbix
├── sales_raw_500.xlsx
├── sales_cleaned.csv
│
└── SQL_Commands/
    ├── Screenshot 2026-09-11 112740.png
    └── Screenshot 2026-09-11 112757.png

👨‍💻 Author

Siddhesh Desai

📊 Aspiring Data Analyst | Python | SQL | Excel | Power BI

🐙 [GitHub Profile](https://github.com/siddesai2405)


📂 Raw Sales Data → Python Cleaning → Feature Engineering → MySQL → Power BI Dashboard 🚀