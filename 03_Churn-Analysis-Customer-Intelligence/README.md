📉 Churn Analysis & Customer Intelligence
   🎯 An end-to-end customer analytics project focused on identifying churn patterns, customer risk, revenue exposure, and retention opportunities using Python, SQL, and data visualization.

📌 Project Overview
  Customer churn is a major challenge for subscription-based businesses.
  This project analyzes an OTT-style customer dataset by combining **customer demographics, subscription information, and customer-support interactions** to answer three important questions:
  > 👤 Who is churning?  
  > 🔍 Why are customers churning?  
  The objective is to transform raw customer data into **actionable customer intelligence** that can support retention and revenue-protection strategies.

🛠️ Tech Stack
  | Category | Technologies |
  | 🐍 Programming | Python |
  | 📊 Data Analysis | Pandas, NumPy |
  | 🗄️ Database | SQL, SQLite, sqlite3 |
  | 📈 Visualization | Matplotlib, Seaborn |
  | 📓 Environment | Jupyter Notebook |

🔄 Project Workflow
  📥 Raw Customer Data
          ↓
  🗄️ SQLite Database
          ↓
  🔗 SQL + Python Integration
          ↓
  🧹 Data Cleaning
          ↓
  ⚙️ Feature Engineering
          ↓
  🔍 Exploratory Data Analysis
          ↓
  📊 KPI & Visualization Analysis
          ↓
  🚦 Churn Risk Segmentation
          ↓
  💡 Business Insights
          ↓
  🎯 Retention Actions

📂 Data Sources
  The analysis works with three relational datasets:

👤 Customer Data
  Includes:
    Customer ID
    Name
    Country / State
    Gender
    Date of Birth
    Interests
    
💳 Subscription Data
  Includes:
    Subscription start date
    Subscription type
    Plan type
    Contract type
    Renewal date
    Cancellation date
    Cancellation reason
    Monthly charges
    CLTV
    Churn score
    
🎧 Support Data
  Includes:
    Complaint date
    Escalations
    CSAT score
    Customer comments
    
🧹 Data Preparation
  Performed data preparation using Pandas and NumPy, including:
    Data type validation
    Column renaming and selection
    Missing/null value handling
    Data quality checks
    Duplicate handling
    Category standardization
    Customer churn flag creation
    Complaint and escalation calculations
    Data transformation

📊 Key Analysis
  📉 Churn & retention rate
  💳 Churn by plan and contract type
  📅 Monthly churn trends
  📍 Geographic churn analysis
  💰 ARPU, revenue at risk & CLTV
  🎧 Complaints and support escalations
  🚦 Customer churn-risk segmentation

💡 Key Findings
  📉 28.6% overall churn rate
  🔄 71.4% retention rate
  💳 55.6% monthly-contract churn vs 8.3% annual-contract churn
  🏷️ Basic plan contributed the largest share of churn
  📍 Karnataka showed the highest affected churn concentration
  📅 September 2024 was identified as a major churn period
  💼 Business Value
  🎯 Prioritize high- and medium-risk customers
  🔄 Identify contract-migration opportunities
  🏷️ Investigate pricing/plan changes
  🎧 Use support activity as a potential churn signal
  💰 Prioritize retention using customer risk and revenue exposure

📂 Files
  03_Churn-Analysis-Customer-Intelligence/
  ├── churn_analysis.ipynb
  ├── customer_churn_data_raw.xlsx
  ├── README.md
  └── .gitignore
  
🚀 Run the Project
  pip install pandas numpy matplotlib seaborn openpyxl
  jupyter notebook
  Open churn_analysis.ipynb and run the cells.

👨‍💻 Author Siddhesh Desai 
   🎓 Computer Science & Engineering 
   📊 Aspiring Data Analyst 
   🐍 Python | SQL | Pandas | NumPy 
   📈 Data Analysis | EDA | Data Visualization 
   📊 Power BI

🔗 Connect With Me 
   💼 LinkedIn: Siddhesh Desai 
   🐙 GitHub: siddesai2405

📊 Customer Data → Churn Intelligence → Retention Strategy 🚀
