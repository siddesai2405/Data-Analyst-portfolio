🏅 Decathlon Retail Performance Dashboard | Sales & Profitability Analysis
	An interactive Power BI dashboard designed to analyze Decathlon's retail sales, profitability, product performance, and regional contribution through business-focused KPIs and visualizations.

📌 Project Overview
	This project focuses on building an interactive Retail Performance Dashboard using Power BI. It helps retail managers monitor sales performance, understand profitability, compare current-year results with the previous year, and 	explore performance across sports, products, brands, and regions.
	The dashboard provides a consolidated view of important retail metrics, allowing users to investigate business performance through interactive filters.

🧠 My Thinking Process
	Instead of looking at sales numbers individually, I wanted to understand the overall retail business performance.
I focused on questions such as:
Are sales and gross profit improving compared with the previous year?
Which sports contribute the most to total sales?
Which product types generate strong sales and margins?
Which regions contribute the most revenue?
How are orders, units sold, and average order value changing?
The goal was to convert raw retail data into meaningful business insights that support better decision-making.

🎯 Business Problem
	Retail management needs a centralized dashboard to monitor sales, profitability, order activity, and product performance.
Without a consolidated view, it becomes difficult to compare performance across different periods, identify strong-performing segments, and investigate changes in business results.
This dashboard brings these metrics together in one interactive Power BI report.

❓ Business Questions Answered
	What are the current Year-to-Date (YTD) net sales and gross profit?
How do current sales compare with the Previous Year-to-Date (PYTD)?
Is gross margin improving compared with the previous year?
How have units sold and total orders changed?
What is the average order value?
Which months show sales growth or decline?
Which sports generate the highest net sales?
Which product types combine strong sales with good gross margins?
How much does each region contribute to total sales?
How does performance change when different filters are applied?

📊 Key Dashboard Highlights
	The dashboard includes six major KPI cards:
💰 Net Sales YTD: ₹55.3M
📈 Net Gross Profit YTD: ₹25.5M
📊 Gross Margin YTD: 46.1%
📦 Net Units Sold YTD: 46K
🛒 Net Orders YTD: 24K
💳 Net Average Order Value (AOV): ₹2.3K
These are the values displayed in the supplied dashboard screenshot, not independently recalculated figures.

Key Comparisons
	The dashboard compares YTD performance with the same period in the previous year (PYTD).
Net Sales increased by 24.3%.
Gross Profit increased by 25.1%.
Gross Margin improved by 0.3 percentage points.
Net Units Sold increased by 23.1%.
Net Orders increased by 23.0%.
Average Order Value increased by 1.1%.

📉 Dashboard Visualizations
	Monthly Net Sales: Compares current-year monthly sales with the equivalent previous-year period.
Net Sales YTD by Sport: Highlights sales contribution across different sports.
Product Type Performance: Uses a scatter chart to explore the relationship between net sales and gross margin.
Net Sales YTD by Region: Shows the sales contribution of different regions.
Sales Growth by Brand: Included as a business requirement for comparing brand-level sales growth.

📂 Data Source
	The project uses three Excel workbooks:
File
Description
sales.xlsx
Main transaction-level sales data
products.xlsx
Product details, sport, product type, brand, and colour
store.xlsx
Store information, state, and region
Dataset Structure
Sales: 84,000 data rows and 22 columns
Products: 240 data rows and 9 columns
Store: 30 data rows and 8 columns
The sales workbook contains transaction details such as Order ID, Purchase Date, Product ID, Store ID, Payment Method, Promotion, Quantity, Returns, Net Sales, Net COGS, and Gross Profit.

🛠️ Tools and Tech Stack
	Microsoft Power BI: Dashboard development and data visualization
Microsoft Excel: Data storage and preparation
Power Query: Data transformation and cleaning
DAX: KPI calculations and time-based comparisons
Data Modeling: Relationships between fact and dimension tables

💡 Core Concepts Demonstrated
	Data modeling using fact and dimension tables
Primary keys and foreign key relationships
Date table creation
Year-to-Date (YTD) and Previous Year-to-Date (PYTD) analysis
Year-over-Year (YoY) comparison
DAX measures and KPI calculations
Gross profit and gross margin analysis
Average Order Value (AOV)
Interactive slicers and report filtering
Sales performance analysis
Product and regional segmentation
Dashboard design and business reporting

🔄 Project Workflow
	Data Collection: Imported sales, products, and store datasets from Excel.
Data Understanding: Reviewed the structure, columns, and relationships between datasets.
Data Modeling: Identified the sales transaction table and product and store dimension tables.
Date Table Creation: Prepared a continuous calendar table for time-based analysis.
Data Transformation: Prepared the data for reporting and analysis.
DAX Calculations: Developed measures for sales, profit, margin, units, orders, AOV, and YTD/PYTD comparisons.
Dashboard Development: Created KPI cards, charts, slicers, and report interactions.
Validation: Defined reconciliation and filter-testing requirements to check the accuracy of the report.

📊 Dashboard Structure
	The dashboard contains:
A reporting-period header showing YTD through 15 September and comparison with the same period in 2025.
Six KPI cards for sales, profit, margin, units, orders, and AOV.
Monthly sales comparison chart.
Sport-wise sales analysis.
Product type performance scatter chart.
Region-wise sales contribution.
Interactive filter panel.
Reset Filters button.

🎛️ Available Filters
	State
Sport
Colour
Payment Method
Promotion
Users can apply filters to explore different business segments and investigate how the results change.

📁 Project Files

Decathlon-Sales-Dashboard/
│
├── Dashboard.png
├── Decathlon-Dashboard-Business-Requirements.docx
├── Knowledge.pptx
│
├── products.xlsx
├── sales.xlsx
├── store.xlsx
│
└── kpi-icons/
    ├── 01-net-sales.png
    ├── 02-gross-profit.png
    ├── 03-gross-margin.png
    ├── 04-total-orders.png
    ├── 05-units-sold.png
    ├── 06-average-order-value.png
    ├── filter.png
    ├── logo.png
    ├── reset-filters.png
    └── reset-filters-white.png

The Power BI .pbix file is maintained separately in the project repository.

🚀 How to Reproduce
	Download or clone this repository.
Open the Power BI project file (.pbix) using Microsoft Power BI Desktop.
If required, update the Excel source file paths.
Refresh the datasets.
Check the relationships between sales, products, stores, and the date table.
Review the DAX measures and dashboard visuals.
Use the available slicers to explore the report.

👨‍💻 Author
Siddhesh Desai
🎓 Final Year B.Tech Student | Aspiring Data Analyst

🔗 GitHub: siddesai2405

⭐ If you find this project useful, feel free to explore the repository and share your feedback.

Turning Retail Data into Meaningful Business Insights! 📊