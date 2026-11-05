🚗 CAWA Services | Car Sales & Vehicle Analytics Dashboard
	An interactive Power BI dashboard designed to analyze vehicle inventory, sales performance, fuel types, transmission preferences, and car models using structured automotive datasets.

📌 Project Overview
	This project focuses on analyzing automotive data and presenting key business information through an interactive Power BI dashboard.
The dashboard provides an overview of total cars, total sales price, fuel types, models, and brands. It also explores the distribution of vehicles by fuel type, sales by year, transmission type, and car model.
The project combines multiple datasets using SQL to create a consolidated view of vehicle-related information.

🧠 My Thinking Process
	Instead of analyzing vehicle information in separate files, I wanted to bring different automotive datasets together and create a single business view.
	I focused on understanding:
		How many cars are available in the dataset?
		Which fuel types are most common?
How are sales distributed across different years?
What is the preference for manual versus automatic transmission?
Which car models have higher representation?
How can vehicle, insurance, owner, sales, and service information be combined?
The objective was to transform multiple datasets into a structured dashboard that makes automotive information easier to understand.

🎯 Business Problem
	Automotive businesses work with different types of information, including vehicle specifications, insurance details, ownership records, sales transactions, and service history.
When this information is maintained separately, it becomes difficult to get a consolidated view of vehicle operations.
This project demonstrates how multiple datasets can be connected using a common Car ID and presented through a Power BI dashboard for easier monitoring and analysis.

❓ Business Questions Answered
	What is the total number of cars in the dataset?
What is the total sales price?
How many different fuel types are available?
How many unique car models and brands are represented?
Which fuel type has the highest number of cars?
How are sales distributed across different years?
What is the distribution of manual and automatic transmission cars?
Which car models have the highest number of records?
How can insurance, owner, sales, and service information be combined with vehicle details?

📊 Key Dashboard Highlights
	The dashboard includes five major KPI cards:
🚘 Total Cars: 50.00K
💰 Total Sales Price: 1.30M
⛽ Total Fuel Types: 5
🚗 Total Models: 10
🏷️ Total Brands: 10
These values are displayed in the supplied dashboard screenshot.

📉 Dashboard Visualizations
	Car by Fuel Type: Compares the number of vehicles across Diesel, Electric, CNG, Hybrid, and Petrol.
Sales by Year: Shows the distribution of sales across 2022, 2023, and 2024.
Manual vs Automatic: Compares the number of vehicles by transmission type.
Count of Car by Model: Displays the vehicle count across different car models.

📂 Data Source
	The project contains five CSV datasets, each representing a different part of the automotive business.
Dataset
Description
Car_Data.csv
Vehicle details such as brand, model, year, fuel type, transmission, colour, mileage, and price
Insurance_data.csv
Insurance provider, policy number, expiry date, and policy status
Owners_data.csv
Owner name, contact, city, and purchase year
Sales_data.csv
Sale price, sale date, and buyer information
Service_History.csv
Service type, service date, service cost, and service centre
Dataset Structure
Dataset
Records
Columns
Car Data
50,000
10
Insurance Data
50,000
5
Owners Data
50,000
5
Sales Data
50,000
4
Service History
50,000
5
All five datasets contain Car_ID, which is used as the common identifier in the supplied SQL joins.

🛠️ Tools and Tech Stack
	Microsoft Power BI: Dashboard development and data visualization
Microsoft SQL Server: Database creation and data integration
SQL: Joining multiple datasets and creating a consolidated table
CSV: Structured source data
Power Query: Data preparation and transformation in Power BI

💡 Core Concepts Demonstrated
	Data integration from multiple CSV files
SQL database creation
INNER and LEFT JOIN concepts
Common identifiers and table relationships
Creating a consolidated dataset
Data visualization using Power BI
KPI development
Categorical data analysis
Vehicle sales analysis
Fuel type and transmission analysis
Dashboard design and reporting

🔄 Project Workflow
	Data Collection: Imported five automotive datasets containing vehicle, insurance, owner, sales, and service information.
Database Creation: Created a database named car using SQL.
Data Understanding: Reviewed the structure and columns of each dataset.
Data Integration: Used Car_ID to connect the different datasets.
SQL ETL: Created a query using LEFT JOIN operations to combine the five datasets into a consolidated table named MASTER_CAR_DATA.
Data Preparation: Prepared the consolidated information for dashboard development.
Dashboard Development: Created KPI cards, charts, and comparisons in Power BI.
Business Analysis: Used visualizations to understand fuel types, sales years, transmission preferences, and car models.

🧩 SQL Data Integration
	The project includes SQL queries for database creation and combining datasets.
The main ETL query uses LEFT JOIN operations to connect:
Car
Insurance
Owners
Sales
Service History
The common field used for joining these datasets is Car_ID.
The consolidated table is named MASTER_CAR_DATA.

📊 Dashboard Structure
	The Power BI dashboard includes:
Five KPI cards
Car count by fuel type
Sales distribution by year
Manual versus automatic transmission comparison
Car count by model
The dashboard provides a consolidated overview of the automotive dataset through simple charts and KPI cards.

📁 Project Files

CAWA-Services-Car-Analytics/
│
├── Car_Data.csv
├── Insurance_data.csv
├── Owners_data.csv
├── Sales_data.csv
├── Service_History.csv
│
├── SQL ETL Query.sql
├── SQLQuery.sql
│
├── Power BI.pbix
├── Dashboard.png
│
└── README.md

🚀 How to Reproduce
	Download or clone this repository.
Import the five CSV files into your SQL Server database.
Create the database using the provided SQLQuery.sql file.
Execute the SQL ETL query to combine the datasets.
Open Power BI.pbix using Microsoft Power BI Desktop.
If required, update the data source paths.
Refresh the data and review the dashboard visuals.

👨‍💻 Author

Siddhesh Desai

🎓 Final Year B.Tech Student | Aspiring Data Analyst

🔗 GitHub: siddesai2405

⭐ If you find this project useful, feel free to explore the repository and share your feedback.

Turning Automotive Data into Meaningful Business Insights! 📊🚗