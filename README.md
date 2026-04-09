# zomato-restaurant-analysis
Which area ,cuisines and restaurant types in Bangalore offer the best value for customers combining high rating with reasonable pricing

🍽️ Zomato Bangalore Restaurant Analysis

📌 Project Overview

This project analyzes restaurant data from Bangalore using Python, SQL, and Power BI to uncover insights about customer preferences, pricing trends, and restaurant performance.

The goal is to identify which areas, cuisines, and restaurant types provide the best value by combining rating, cost, and availability of services like online ordering.

---

📂 Dataset Information

- Source: Kaggle – Zomato Bangalore Restaurants Dataset
- Total Records: 51,000+ restaurants
- Columns: 17 features including rating, cost, location, cuisine, and services
- Cleaned Dataset Size: ~38,000 records (after removing nulls and duplicates)

Key Columns Used:

- "name" – Restaurant name
- "online_order" – Online ordering availability
- "book_table" – Table booking availability
- "rate" – Rating (converted to numeric)
- "votes" – Number of votes
- "cost_for_two" – Approximate cost for two people
- "restaurant_type" – Type (Buffet, Cafe, Delivery, etc.)
- "city" – Area/location in Bangalore
- "cuisines" – Type of food served

---

🛠️ Tools & Technologies

- Python (Pandas, NumPy) – Data cleaning & preprocessing
- Matplotlib & Seaborn – Data visualization
- MySQL – Business analysis queries
- Power BI – Interactive dashboard

---

🧹 Data Cleaning Steps

- Removed invalid rating values like ""NEW"" and ""-""
- Converted rating from string (e.g., "4.1/5") → float
- Cleaned cost column (removed commas and converted to numeric)
- Dropped missing values in key columns ("rate", "cost_for_two")
- Removed duplicate restaurant entries

---

📊 Exploratory Data Analysis (EDA)

Key visualizations created:

- Top restaurant locations
- Rating distribution
- Online order vs rating comparison
- Cost vs rating relationship
- Restaurant type distribution
- Top cuisines by rating

---

🧠 Business Questions Solved (SQL)

1. Which areas have the highest number of restaurants?
2. Do online-order restaurants have better ratings?
3. Which restaurant types offer best value?
4. What are the top-rated cuisines?
5. How are restaurants distributed across price ranges?
6. Which locations have the highest average ratings?

---

🔍 Key Insights

- 📍 BTM, Koramangala, Indiranagar are major restaurant hubs
- 📱 Restaurants with online ordering have higher average ratings
- 💰 Budget restaurants (₹300 and below) perform nearly equal to premium ones
- ☕ Cafes and Quick Bites offer best value (high rating + low cost)
- 🍜 While North Indian & Chinese dominate volume, Continental cuisines rank highest in ratings

---

📈 Power BI Dashboard

The dashboard includes:

- KPI cards (Total Restaurants, Avg Rating, Avg Cost)
- Area-wise restaurant distribution
- Rating comparison by restaurant type
- Cost vs Rating scatter analysis
- Filters for online order & restaurant type

📎 View Dashboard: "dashboard/zomato_dashboard.pdf"

---

📁 Project Structure

zomato-restaurant-analysis/
│
├── data/
│   └── zomato_clean.csv
│
├── notebooks/
│   ├── zomato_cleaning.ipynb
│   └── zomato_eda.ipynb
│
├── sql/
│   └── zomato_analysis.sql
│
├── charts/
│   ├── chart1_top_areas.png
│   ├── chart2_rating_dist.png
│   ├── chart3_online_vs_rating.png
│   ├── chart4_cost_vs_rating.png
│   ├── chart5_restaurant_types.png
│   └── chart6_top_cuisines.png
│
├── dashboard/
│   └── zomato_dashboard.pdf
│
└── README.md

---

▶️ How to Run the Project

Step 1: Clone the Repository

git clone https://github.com/your-username/zomato-restaurant-analysis.git
cd zomato-restaurant-analysis

Step 2: Run Data Cleaning

- Open "zomato_cleaning.ipynb" in Jupyter Notebook
- Run all cells

Step 3: Perform EDA

- Open "zomato_eda.ipynb"
- Run all cells to generate charts

Step 4: Run SQL Analysis

- Import "zomato_clean.csv" into MySQL
- Execute queries from "zomato_analysis.sql"

Step 5: View Dashboard

- Open "zomato_dashboard.pdf"

---

💡 Future Im
## 📂 Project Files (Download)

Due to large file size, project files are stored in Google Drive:

🔗 [Download Project Files].(https://drive.google.com/drive/folders/1cS9_vkgfIOQ4qP1hmOZFYXb2N-YLfHP8?usp=sharing)
