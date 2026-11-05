🚚 Supply Chain Analysis & Late Delivery Prediction

An end-to-end data analytics and machine learning project using Python to analyze supply chain operations, investigate delivery delays, identify operational bottlenecks, and predict late delivery risk.

👨‍💻 Project Overview

This project focuses on analyzing supply chain and order delivery data to understand delivery performance, profitability, operational delays, and potential causes of late deliveries.
The objective is to transform raw supply chain data into meaningful business insights through data cleaning, feature engineering, exploratory data analysis, statistical visualization, and machine learning.
The project also applies a Random Forest Classification model to predict late delivery risk using order, product, customer, and shipping-related features.

🎯 Business Problem

Supply chain operations depend on timely order processing and delivery. Late deliveries can affect customer satisfaction, operational efficiency, and business profitability.
The business needs to understand where delivery delays occur, which operational factors contribute to them, how delays affect profitability, and whether machine learning can help identify orders at risk of late delivery.

Business Questions Answered

🚚 What percentage of orders are delivered late?
⏱️ How much time is taken to process and deliver orders?
📦 Which product categories, departments, and shipping modes experience higher delivery delays?
🌍 Which regions have higher late delivery percentages?
🔍 What are the major operational factors associated with late deliveries?
💰 How does delivery delay relate to order profitability?
📅 How do delivery delays vary by month, day, and hour?
🤖 Can machine learning predict late delivery risk using order and shipping information?

📊 Key Findings

Original Dataset: 180,519 records and 53 columns.
Cleaned Dataset: 172,765 records and 20 columns after removing irrelevant columns and canceled shipments.
Duplicate Records: No duplicate records were identified in the original dataset.
Late Deliveries: 94,523 orders were classified as delayed.
Late Delivery Percentage: 54.71%.
On-Time Delivery Percentage: 45.29%.
Total Profit: Approximately $7.5 million.
Loss Associated with Delayed Orders: Approximately $2.1 million.
Profitability Distribution: 80.66% Profit, 18.69% Loss, and 0.65% Break-even orders.
Machine Learning Accuracy: 74% using the Random Forest Classifier.

📂 Data Source

The project uses the DataCo Supply Chain Dataset, containing information about customer orders, products, sales, shipping, delivery performance, and profitability.

Dataset Information

Original Records: 180,519
Original Columns: 53
Cleaned Records: 172,765
Cleaned Columns: 20
Data Format: CSV
Encoding: Latin-1
Important Features
Type — Type of order or transaction
Days for shipping (real) — Actual shipping duration
Days for shipment (scheduled) — Scheduled shipping duration
Delivery Status — Delivery status of the order
Late_delivery_risk — Late delivery risk indicator
Category Name — Product category
Customer Segment — Customer segment
Department Name — Department associated with the order
Sales — Sales amount
Order Profit Per Order — Profit generated per order
Order Region — Geographical order region
Shipping Mode — Shipping method
order date (DateOrders) — Order date
shipping date (DateOrders) — Shipping date

🛠️ Tools and Tech Stack

Tool

Purpose in this project
Python
Data analysis and machine learning
Pandas
Data manipulation and preprocessing
NumPy
Numerical operations and feature engineering
Matplotlib
Data visualization
Seaborn
Statistical visualization
Scikit-learn
Machine learning and model evaluation
Imbalanced-learn
Handling class imbalance using SMOTE
Jupyter Notebook
Interactive development environment

🧠 Core Concepts Demonstrated

Data Cleaning: Removing irrelevant and redundant columns, excluding canceled shipments, and converting date columns.
Feature Engineering: Creating order processing time, delivery delay, delayed-order flags, and time-based features.
Exploratory Data Analysis: Exploring order distribution, delivery performance, profitability, and operational patterns.
Profitability Analysis: Categorizing orders into Profit, Loss, and Break-even groups.
Delivery Performance Analysis: Comparing actual shipping duration against scheduled delivery duration.
Bottleneck Detection: Identifying categories and operational dimensions with higher delivery delay percentages.
Root Cause Analysis: Investigating potential drivers of late deliveries across regions.
Time-Based Analysis: Exploring delivery delays by month, day of the week, and order hour.
Machine Learning: Building a Random Forest Classifier to predict late delivery risk.
Class Imbalance Handling: Applying SMOTE to balance the training dataset.
Model Evaluation: Measuring accuracy, precision, recall, and F1-score.

🔄 Project Workflow

Step 1 — Data Loading and Initial Exploration
Imported the DataCo Supply Chain dataset using Pandas.
Loaded the CSV using Latin-1 encoding.
Inspected dataset dimensions and column names.
Checked duplicate records and missing values.
Explored categorical feature distributions.

Step 2 — Data Cleaning and Preprocessing
Removed irrelevant, redundant, and fully missing columns.
Removed canceled shipments because they were not relevant to delivery-time analysis.
Converted order and shipping date columns into datetime format.
Reduced the dataset from 53 columns to 20 columns.
Prepared the cleaned dataset for further analysis.

Step 3 — Feature Engineering
Created additional analytical features:
Order Processing Time — Difference between shipping date and order date.
Delay — Difference between actual processing time and scheduled shipment duration.
Is_Delayed — Boolean indicator identifying delayed orders.
order_month — Month extracted from order date.
order_day — Day of the week extracted from order date.
order_hour — Hour extracted from order date.
Profitability Flag — Categorizes orders into Profit, Loss, and Break-even.

Step 4 — Delivery and Profitability Analysis
Calculated total orders and late deliveries.
Measured on-time and late delivery percentages.
Calculated total order profit.
Estimated losses associated with delayed orders.
Compared order profitability across different delay durations.

Step 5 — Bottleneck and Root Cause Analysis
Analyzed delay percentages across operational categories.
Investigated shipping modes, customer segments, departments, order types, and order statuses.
Explored potential drivers of late deliveries across different regions.

Step 6 — Time-Based Analysis
Examined delivery performance based on:
Order month
Day of the week
Order hour

Step 7 — Machine Learning Modeling
Selected relevant order, customer, product, and shipping features.
Encoded categorical variables using frequency encoding.
Split the dataset into training and testing sets.
Applied SMOTE to balance the training data.
Trained a Random Forest Classification model.
Evaluated model performance using classification metrics.

📈 Analysis and Visualizations

The project includes the following analytical visualizations:
🥧 Profitability Distribution: Percentage distribution of profitable, loss-making, and break-even orders.

📊 Profitability vs Delay: Examines average profit and total profit across delivery delay durations.

🚚 Delivery Delay Distribution: Analyzes the percentage of orders across different delay durations.

🔍 Bottleneck Analysis: Compares late delivery percentages across operational categories.

🌍 Regional Root Cause Analysis: Investigates potential drivers of late deliveries by region.

📅 Monthly Delay Analysis: Explores how delivery delays vary across months.

📆 Day-Based Analysis: Examines delivery performance by day of the week.

⏰ Hourly Analysis: Investigates delivery patterns based on order hour.

⚙️ Feature Engineering: Delivery Delay Calculation

Calculate order processing time
df['Order Processing Time'] = (
    df['shipping date (DateOrders)'] -
    df['order date (DateOrders)']
).dt.days

Calculate delivery delay
df['Delay'] = (
    df['Order Processing Time'] -
    df['Days for shipment (scheduled)']
)

Identify delayed orders
df['Is_Delayed'] = df['Delay'] > 0

#Extract time-based features
df['order_month'] = df['order date (DateOrders)'].dt.month
df['order_day'] = df['order date (DateOrders)'].dt.day_name()
df['order_hour'] = df['order date (DateOrders)'].dt.hour

🤖 Machine Learning: Late Delivery Prediction
	The project uses a Random Forest Classifier to predict late delivery risk.
Model Features
The model uses the following input features:

Type
Days for shipment (scheduled)
Category Name
Customer Segment
Department Name
Order Region
Shipping Mode
Order Month
Order Hour

Model Evaluation
📊 Random Forest Classification Results
Evaluation Metric
Score
Accuracy
74%
Precision
79%
Recall
75%
Classification Report
Class
Precision
Recall
F1-Score
0
0.68
0.73
0.70
1
0.79
0.75
0.77

The training dataset was balanced using SMOTE before fitting the Random Forest model.

💼 Business Value
This analysis demonstrates how data analytics and machine learning can support supply chain operations through:
🚚 Monitoring late delivery and on-time delivery performance.

🔍 Identifying operational bottlenecks.

🌍 Investigating regional delivery issues.

📦 Understanding shipping and product-related delivery patterns.

💰 Evaluating profitability across delivery delay durations.

📅 Identifying time-based delivery trends.

🤖 Predicting orders with potential late delivery risk.

🎯 Supporting better operational planning and delivery management.


🚀 How to Reproduce This Project
Download or clone this repository.
Keep DataCoSupplyChainDataset.csv and DescriptionDataCoSupplyChain.csv in the same directory as the notebook.
Install Python and the required libraries.
Open Supply Chain Analysis.ipynb in Jupyter Notebook.
Execute the notebook cells sequentially.
Review the EDA, delivery analysis, bottleneck detection, root cause analysis, and machine learning results.

Install Required Libraries
pip install pandas numpy matplotlib seaborn scikit-learn imbalanced-learn jupyter

📁 Project Structure

05_Supply-Chain-Analysis/
│
├── Supply Chain Analysis.ipynb
├── DataCoSupplyChainDataset.csv
└── DescriptionDataCoSupplyChain.csv

👨‍💻 Author

Siddhesh Desai

📊 Aspiring Data Analyst | Python | SQL | Excel | Power BI

🐙 [GitHub Profile] (https://github.com/siddesai2405)

🚚 Raw Supply Chain Data → Data Cleaning → EDA → Delivery Analysis → Machine Learning → Business Insights 📊
