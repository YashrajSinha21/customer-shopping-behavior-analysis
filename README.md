# customer-shopping-behavior-analysis

## 📌 Project Overview
This project analyzes customer shopping behavior using transactional data from 3,900 purchases across multiple product categories. The objective is to uncover insights into customer spending patterns, subscription behavior, and product preferences to support data-driven business decisions.

---

## 🛠️ Tools & Technologies
- Python (Jupyter Notebook) – Data Cleaning & Feature Engineering  
- PostgreSQL (SQL) – Data Analysis & Querying  
- Power BI – Data Visualization & Dashboard  

---

## 📂 Dataset Information
- Total Records: 3,900  
- Total Columns: 18  

### Key Features:
- Customer demographics (Age, Gender, Location, Subscription Status)  
- Purchase details (Category, Purchase Amount, Season, Size, Color)  
- Behavioral data (Previous Purchases, Discount Applied, Frequency, Review Rating, Shipping Type)  

---

## 🔍 Data Preprocessing (Python)
- Loaded dataset using pandas  
- Handled missing values in *Review Rating* using median imputation  
- Renamed columns to snake_case for consistency  
- Created new features:
  - `age_group` (customer segmentation by age)
  - `purchase_frequency_days`  
- Removed redundant column (`promo_code_used`)  
- Connected Python to PostgreSQL and exported cleaned dataset  

---

## 📊 SQL Analysis (PostgreSQL)

Performed business-driven analysis to answer key questions:

1. **Subscription Rate**
   - Calculated percentage of customers subscribed  

2. **Customer Segmentation**
   - Segmented customers into New, Returning, and Loyal  

3. **Segment-wise Subscription Analysis**
   - Compared subscription behavior across segments  

4. **Top Product Categories**
   - Identified most purchased product categories  

5. **Discount Impact**
   - Analyzed effect of discounts on subscription behavior  

6. **Location-wise Sales**
   - Identified top-performing locations  

7. **Highest Subscription Segment**
   - Found segment with highest conversion rate  

---

## 📈 Power BI Dashboard

Developed an interactive dashboard including:

### KPIs:
- Total Customers  
- Subscription Rate  
- Total Sales  
- Average Purchase Value  

### Visualizations:
- Subscription Distribution (Donut Chart)  
- Subscription Rate by Segment  
- Sales by Category  
- Sales by Season  
- Discount Impact Analysis  
- Location-wise Sales  

### Filters:
- Customer Segment  
- Product Category  

---

## 🔑 Key Insights
- Only ~27% of customers are subscribed → strong growth opportunity  
- Loyal customers contribute the highest subscription rate  
- Clothing category generates maximum sales  
- Discounts positively influence subscription behavior  
- Sales remain consistent across seasons  

---

## 💡 Business Recommendations
- Improve subscription conversion through targeted campaigns  
- Focus on retaining loyal customers with exclusive benefits  
- Invest in high-performing product categories  
- Use discounts strategically to boost conversions  
- Target high-revenue locations for expansion  

---

## 🎯 Conclusion
This project demonstrates an end-to-end data analytics workflow, from data cleaning and feature engineering to SQL-based analysis and dashboard visualization, delivering actionable business insights.



