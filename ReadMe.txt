# Creed Perfume Sales & Customer Insights Dashboard

## 📌 Project Overview
This project simulates and analyzes **luxury perfume sales (Creed brand)** using synthetic data.  
It demonstrates how **Python (Faker), BigQuery, and Power BI** can be used to generate insights into:
- Top-selling perfumes
- Customer demographics & preferences
- Country-wise and channel-wise sales distribution
- Monthly sales trends

The dashboard is designed for **executive-level storytelling** and helps make **data-driven business decisions** in the luxury retail sector.

---

## 🛠️ Tech Stack
- **Python** → Data generation (Faker library)
- **BigQuery** → Data storage & SQL analytics
- **Power BI** → Dashboard visualization

---

## 📂 Dataset
- File: `creed_perfume_sales.csv`
- Size: 500 synthetic sales records
- Fields:
  - CustomerID, Name, Gender, AgeGroup, City, Country
  - PerfumeName, FragranceFamily, Price, Quantity, Discount(%), TotalAmount
  - PurchaseChannel, PurchaseDate

---

## 📊 Key Analysis (BigQuery SQL)
1. **Top-Selling Perfumes by Revenue**
2. **Gender-wise Perfume Preferences**
3. **Country-wise Sales Performance**
4. **Monthly Sales Trend**
5. **Purchase Channel Distribution**

---

## 📈 Power BI Dashboard
### Visuals:
- **KPI Cards**: Total Revenue, Units Sold, Top Perfume, Top Country
- **Bar Chart**: Top-Selling Perfumes
- **Stacked Column Chart**: Gender-wise Preferences
- **Pie/Donut Chart**: Purchase Channel Distribution
- **Line Chart**: Monthly Sales Trend
- **Map Visual**: Country-wise Sales
- **Matrix Table**: Perfume × FragranceFamily × Revenue

---

## 🚀 Future Enhancements
- Integration with **real POS (Point of Sale) systems**
- Integration with **CRM (Customer Relationship Management) systems**
- Time-series forecasting for perfume sales
- Customer segmentation with clustering models
- Sentiment analysis from customer reviews

---

## 📎 How to Run
1. Clone this repo
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
Run the Python script to generate data:

python generate_creed_data.py


Import CSV into BigQuery

Connect BigQuery to Power BI and build visuals

📌 Author

Tanmay Sharma

Data Analyst | BigQuery | Power BI | Python