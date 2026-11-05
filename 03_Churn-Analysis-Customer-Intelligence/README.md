📉 Churn Analysis and Customer Intelligence

	> An end-to-end customer analytics project using Python, SQL, SQLite, and data visualization to identify customer churn patterns, subscription risks, and revenue impact.

👨‍💻 Project Overview

This project focuses on analyzing customer churn for a simulated OTT subscription business using customer demographics, subscription information, and customer support data.
The objective is to transform relational customer data into meaningful business insights by integrating SQL with Python, performing data cleaning, feature engineering, exploratory data analysis, and visualizing customer behavior.
The project explores three important business questions:

- 👤 Who are the customers churning?
- 🔍 Why are customers leaving?
- ⏰ When is churn risk highest?

🎯 Business Problem

In the competitive subscription-based business environment, customer retention plays an important role in maintaining recurring revenue.
The business needs to identify customers who have churned or are at risk of leaving, understand their subscription behavior, and investigate whether customer support experiences are associated with churn.
This analysis provides a structured approach to understanding customer retention, subscription performance, and revenue exposure.

Business Questions Answered

- 📉 What is the overall customer churn rate and retention rate?
- 💳 Which subscription plan has the highest churn rate?
- 📅 During which months does customer churn increase?
- 📍 Which states have higher customer churn?
- 💰 What is the Average Revenue Per User (ARPU)?
- ⏳ What is the average customer subscription tenure?
- 🚨 How much revenue is associated with churned customers?
- 🎧 Is there a relationship between support escalations and customer churn?
- 🎯 How can customers be categorized into low, medium, and high churn-risk groups?

📊 Key Findings

- Overall Churn Rate: 28.57% of customers have churned.
- Retention Rate: 71.43% of customers are retained.
- Basic Plan: Recorded the highest churn rate at 60%.
- Premium Plan: Recorded a churn rate of 14.29%.
- Standard Plan: Recorded a churn rate of 22.22%.
- Average Revenue Per User (ARPU): ₹18.85.
- Average Customer Tenure: 1,452 days.
- Revenue at Risk: ₹73.94K.
- Escalation Rate: 19.05%.
- Average Complaints Per User: 0.43.
- Escalation vs Churn Correlation: 0.77, indicating a positive relationship in the analyzed data.

📂 Data Source

The project uses a customer churn dataset containing three relational data tables representing customer demographics, subscription details, and customer support interactions.

Database Information

Database: customer_churn.db

| Table | Description |
|---|---|
| db_customer | Customer demographic information |
| db_subscription | Subscription plans, contracts, charges, and churn information |
| db_support | Customer complaints, escalations, and satisfaction scores |

Important Features

Customer Table
- Customer ID
- Name
- Country and State
- Gender
- Date of Birth
- Interests
- Pincode

Subscription Table
- Customer ID
- Subscription Start Date
- Subscription Type
- Renewal Date
- Plan Type
- Contract Type
- Cancellation Date
- Cancellation Reason
- Monthly Charges
- Customer Lifetime Value (CLTV)
- Churn Score

Support Table
- Customer ID
- Complaint Date
- Escalations
- CSAT Score
- Customer Comments

🛠️ Tools and Tech Stack

| Tool | Purpose in this project |
|---|---|
| Python | Data analysis and preprocessing |
| Pandas | Data manipulation, cleaning, and aggregation |
| NumPy | Numerical operations and feature engineering |
| SQLite | Relational database storage |
| SQL | Data extraction and table inspection |
| SQLite3 | Python-to-SQLite database integration |
| Matplotlib | Data visualization |
| Seaborn | Statistical visualization |
| Jupyter Notebook | Interactive development environment |

🧠 Core Concepts Demonstrated

- SQL and Python Integration: Connecting Python with SQLite and importing relational tables into Pandas DataFrames.
- Data Cleaning: Renaming columns, selecting relevant features, handling missing values, and checking data quality.
- Data Standardization: Standardizing column names and preparing consistent datasets.
- Data Type Conversion: Converting subscription and complaint dates into appropriate datetime formats.
- Feature Engineering: Creating churn flags, complaint counts, customer tenure, and churn-risk categories.
- Data Integration: Combining customer, subscription, and support information using joins.
- KPI Analysis: Calculating churn rate, retention rate, ARPU, revenue at risk, and support metrics.
- Exploratory Data Analysis: Applying grouping, aggregation, and pivot tables to identify customer behavior patterns.
- Statistical Visualization: Using Matplotlib and Seaborn to analyze churn trends and customer characteristics.

🔄 Project Workflow

Step 1 — Database Connection and Data Import

- Connected Python to the SQLite database using sqlite3.
- Retrieved available database tables.
- Imported customer, subscription, and support data into separate Pandas DataFrames.
- Inspected table structures and column information.

Step 2 — Data Cleaning and Preprocessing

- Renamed columns for consistency.
- Selected relevant columns for analysis.
- Checked missing and duplicate values.
- Standardized column names.
- Converted subscription and complaint dates into datetime format.
- Prepared customer, subscription, and support datasets for analysis.

Step 3 — Feature Engineering and Data Integration

- Created a churn flag using cancellation dates.
- Calculated complaint counts for individual customers.
- Calculated customer tenure using subscription start and cancellation dates.
- Created low, medium, and high churn-risk categories using churn scores.
- Combined customer, subscription, and support information using JOIN operations.

Step 4 — KPI Calculation and Data Analysis

Calculated important business metrics, including:

- Churn rate
- Retention rate
- Churn by subscription plan
- Average Revenue Per User (ARPU)
- Average customer tenure
- Revenue at risk
- Escalation rate
- Average complaints per customer
- Correlation between support escalations and churn

Step 5 — Data Visualization
	Used Matplotlib and Seaborn to explore customer churn patterns, subscription behavior, and relationships between customer attributes.

Step 6 — Pivot Table Analysis
	Created pivot tables to summarize churn performance, customer counts, and monthly charges across subscription plans.

📈 Analysis and Visualizations
	The project includes different analytical techniques and visualizations:

- 📉 Monthly Churn Trend:** Analyzes the number of churned customers over time.
- 💳 Churn by Plan Type:** Compares churn rates across Basic, Standard, and Premium plans.
- 📍 Churn by State:** Examines customer churn across geographical locations.
- 📊 Customer Risk Analysis:** Explores churn scores and customer risk categories.
- 🎧 Support Analysis:** Examines support escalations and their relationship with churn.
- 🔥 Correlation Analysis:** Evaluates relationships between numerical and encoded categorical variables.
- 📋 Pivot Tables: Summarizes customer and subscription KPIs across plan types.

⚙️ Sample Python: Churn Flag Creation

python
import numpy as np

Create churn flag
df_db_subscription['churn_flag'] = np.where(
    df_db_subscription['cancellation_date'].notna(),
    1,
    0
)

📊 Sample Python: Churn KPI Calculation

python
Calculate churn rate
churn_rate = df['churn_flag'].mean() * 100

Calculate retention rate
retention_rate = 100 - churn_rate

Calculate churn by subscription plan
churn_by_plan = (
    df.groupby('plan_type')['churn_flag']
    .mean()
    .mul(100)
    .round(2)
    .reset_index(name='churn_rate_pct')
)

print("Churn Rate:", round(churn_rate, 2), "%")
print("Retention Rate:", round(retention_rate, 2), "%")

print(churn_by_plan)

🚦 Customer Churn Risk Segmentation

Customers are categorized into three risk groups based on their churn scores.

| Churn Score | Risk Category |
|---|---|
| Below 50 | 🟢 Low |
| 50 to below 70 | 🟡 Medium |
| 70 and above | 🔴 High |

This segmentation helps identify customers who may require additional attention and retention efforts.

💼 Business Value

The analysis provides insights that can support subscription businesses through:

- 🎯 Prioritizing high- and medium-risk customers for retention campaigns.
- 💳 Investigating higher churn rates in the Basic subscription plan.
- 📅 Identifying periods with increased customer cancellations.
- 📍 Investigating geographical differences in customer churn.
- 🎧 Using customer complaints and support escalations as potential churn signals.
- 💰 Understanding revenue exposure associated with churned customers.
- 🔄 Identifying opportunities to improve customer retention and subscription renewals.

🚀 How to Reproduce This Project

1. Install Python and the required libraries.
2. Keep customer_churn_data_raw.xlsx and customer_churn.db in the project directory.
3. Open churn_analysis.ipynb using Jupyter Notebook.
4. Execute the notebook cells sequentially.
5. If the SQLite database is unavailable, use the notebook's database creation section to generate customer_churn.db from the Excel workbook.
6. Run the SQL import, data cleaning, feature engineering, KPI analysis, and visualization sections.

Install Required Libraries

pip install pandas numpy matplotlib seaborn openpyxl jupyter


📁 Project Structure


03_Churn-Analysis-Customer-Intelligence/
│
├── churn_analysis.ipynb
├── customer_churn_data_raw.xlsx
├── customer_churn.db
├── .gitignore
└── Data Analytics Project -Churn Analysis Report.pdf


👨‍💻 Author

Siddhesh Desai

📊 Aspiring Data Analyst | Python | SQL | Excel | Power BI

🐙 [GitHub Profile](https://github.com/siddesai2405)

🙏 Project Reference

The project follows the learning roadmap and business case presented in the reference report by Rishabh Mishra, Senior Data Analyst.
The report provides the churn analysis business context, relational database structure, KPI definitions, and recommended analysis workflow.


🗄️ SQL Database → Python Data Cleaning → Feature Engineering → Churn Analysis → Business Insights 📊