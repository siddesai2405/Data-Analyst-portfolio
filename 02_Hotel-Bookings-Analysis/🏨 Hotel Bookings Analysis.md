🏨 Hotel Bookings Analysis

	> An Exploratory Data Analysis (EDA) project using Python to understand hotel booking patterns, customer 	behavior, pricing trends, and hotel performance.

👨‍💻 Project Overview

This project focuses on analyzing hotel booking data to explore booking patterns, understand customer behavior, compare hotel performance, and examine pricing trends.

The objective was to transform raw hotel booking data into meaningful insights through data cleaning, preprocessing, exploratory data analysis, and statistical visualization using Python.

The analysis covers two hotel categories: City Hotel and Resort Hotel, with a focus on booking distribution, lead time, Average Daily Rate (ADR), and relationships between numerical variables.

🎯 Business Problem

The hospitality industry needs to understand customer booking behavior, hotel demand, and pricing patterns to make better business decisions.

This analysis explores hotel booking data to identify patterns in booking distribution, customer arrival behavior, and room pricing.

Business Questions Answered

- 🏨 How are bookings distributed between City Hotels and Resort Hotels?
- 📅 How does the average daily rate (ADR) change across arrival months?
- ⏳ What is the distribution of booking lead time?
- 💰 How does average daily rate differ between hotel types?
- 📊 How are ADR values distributed across different hotels?
- 🔍 What relationship exists between lead time and ADR?
- 📈 What correlations exist between numerical variables?
- ⚠️ How can ADR outliers be identified and analyzed?

📊 Key Analysis & Findings

- Dataset Size: Started with 119,390 records and selected 18 relevant columns for analysis.
- Data Cleaning: Identified and removed 35,235 duplicate records, resulting in 84,155 records.
- Missing Values: Handled missing values in the children and country columns.
- Outlier Detection: Identified 2,468 ADR outlier records using the Interquartile Range (IQR) method.
- ADR Distribution: The original maximum ADR was 5,400, while the maximum value after IQR-based filtering was 227.15.
- Hotel Comparison: Analyzed booking distribution and average ADR across City Hotels and Resort Hotels.

📂 Data Source

The project uses a hotel booking dataset containing information about hotel reservations, customer details, arrival dates, booking lead times, room types, and pricing.

Dataset Information

- Original Records: 119,390
- Selected Columns: 18
- Records After Duplicate Removal: 84,155
- Hotel Categories: City Hotel and Resort Hotel

Selected Features

- Hotel and cancellation status
- Lead time and arrival month
- Weekend and weekday stays
- Adults, children, and babies
- Meal and country
- Market segment and distribution channel
- Reserved room type and deposit type
- Customer type
- Average Daily Rate (ADR)
- Total special requests

🛠️ Tools and Tech Stack

| Tool | Purpose in this project |
|--------|---------------------------------|
| Python | Data analysis and preprocessing |
| Pandas | Data manipulation, cleaning, and aggregation |
| NumPy | Numerical operations |
| Matplotlib | Data visualization |
| Seaborn | Statistical visualization |
| Jupyter Notebook | Interactive analysis environment |

🧠 Core Concepts Demonstrated

- Data Cleaning: Selecting relevant columns and preparing the dataset for analysis.
- Missing Value Treatment: Replacing missing children values with 0 and missing country values with Unknown.
- Duplicate Removal: Identifying and removing duplicate booking records.
- Exploratory Data Analysis (EDA): Exploring booking patterns, hotel categories, pricing, and customer-related variables.
- Statistical Analysis: Using descriptive statistics and correlation analysis.
- Outlier Detection: Applying the IQR method to identify unusual ADR values.
- Data Visualization: Creating plots to communicate distributions, comparisons, and relationships.

🔄 Project Workflow

Step 1 — Data Loading and Selection

Imported the hotel booking dataset using Pandas and selected 18 relevant columns from the original 31-column dataset.

Step 2 — Data Cleaning and Preprocessing

- Checked dataset structure and data types.
- Identified missing values.
- Replaced missing values in children with 0.
- Replaced missing values in country with Unknown.
- Identified 35,235 duplicate records.
- Removed duplicates and retained 84,155 records.

Step 3 — Exploratory Data Analysis

Performed analysis using Pandas, Matplotlib, and Seaborn to explore:

- Hotel-wise booking distribution.
- Monthly average ADR trends.
- Booking lead-time distribution.
- Average ADR by hotel type.
- ADR distribution across hotel categories.
- Relationship between lead time and ADR.
- Correlations among numerical variables.

Step 4 — Outlier Detection

Applied the Interquartile Range (IQR) method to identify ADR outliers, created a separate dataset without outliers, and compared the ADR distributions before and after filtering.

Step 5 — Data Visualization

Created different visualizations to understand hotel booking patterns, pricing behavior, and numerical relationships.

📈 Visualizations

The project includes the following visualizations:

- 📦 Boxplot — ADR distribution by hotel type.
- 🔥 Correlation Heatmap — Relationships between numerical variables.
- 📉 Line Chart — Average ADR by arrival month.
- 📊 Count Plot — Number of bookings by hotel type.
- 🥧 Pie Chart — Percentage of bookings by hotel type.
- 📊 Histogram — Distribution of booking lead time.
- 📈 Bar Plot — Average ADR by hotel type.
- 🔍 Scatter Plot — Lead time versus ADR.
- 📉 KDE Plot — Distribution of Average Daily Rate.
- 🔗 Pair Plot — Relationships between numerical features by hotel type.

⚙️ Outlier Detection Using IQR

The project uses the Interquartile Range method to identify unusual ADR values.

python
q1 = df['adr'].quantile(0.25)
q3 = df['adr'].quantile(0.75)

iqr = q3 - q1

lower = q1 - 1.5 * iqr
upper = q3 + 1.5 * iqr

outliers = df[
    (df['adr'] > upper) |
    (df['adr'] < lower)
]

non_outliers = df[
    (df['adr'] > lower) &
    (df['adr'] < upper)
]
```

💼 Business Value

The analysis demonstrates how hotel booking data can support hospitality business decisions through:

- 🏨 Comparing booking patterns across hotel categories.
- 💰 Understanding pricing distributions and ADR trends.
- 📅 Exploring seasonal pricing patterns.
- ⏳ Understanding customer booking lead times.
- 📊 Identifying unusual pricing observations.
- 📈 Supporting data-driven hotel performance analysis.

🚀 How to Reproduce This Project

1. Obtain the hotel booking dataset (hotel_bookings.csv).
2. Install the required Python libraries.
3. Open `hotel bookings.ipynb in Jupyter Notebook.
4. Update the dataset file path according to your local system.
5. Run the notebook cells sequentially to reproduce the analysis and visualizations.

Install Required Libraries

	pip install pandas numpy matplotlib seaborn jupyter


📁 Project Structure

text
DA_0 Hotel-Bookings-Analysis/
│
├── hotel bookings.ipynb
├── boxplot.png
├── correlation Heatmap.png
└── Line chart.png

Dashboard

👨‍💻 Author

Siddhesh Desai

📊 Aspiring Data Analyst | Python | SQL | Excel | Power BI

🐙 [GitHub Profile](https://github.com/siddesai2405)

🏨 Raw Hotel Data → Data Cleaning → EDA → Visualization → Business Insights 📊