# 🛒 AtliQ Mart Sales Analysis

## 📌 Project Overview

AtliQ Mart is one of India's leading FMCG retail chains that launched promotional campaigns during **Diwali** and **Sankranti** across its retail stores in Southern India.

The objective of this project is to evaluate the effectiveness of these promotional campaigns by analyzing sales performance before and after promotions. Using **SQL** for business analysis and **Power BI** for interactive visualization, this project identifies the most successful campaigns, promotion types, products, and stores while providing actionable recommendations for future promotional planning.

---

# 🎯 Business Problem

AtliQ Mart's management wanted to measure the impact of promotional campaigns and answer key business questions such as:

- Which promotional campaign generated the highest revenue?
- Which promotion type was the most profitable?
- Which products and product categories performed best?
- Which stores delivered the highest promotional revenue?
- Which cities responded best to promotional campaigns?
- What strategies should be adopted for future campaigns?

---

# 📂 Dataset

The analysis is based on four relational datasets.

| Table | Description |
|--------|-------------|
| dim_campaigns | Campaign information |
| dim_products | Product details and categories |
| dim_stores | Store locations and cities |
| fact_events | Promotional sales transactions |

A complete data dictionary explaining every column is included in the repository.

---

# 🛠️ Tech Stack

- SQL (MySQL)
- Power BI
- DAX
- Power Query
- Microsoft Excel
- Git
- GitHub

---

# 📊 Key Performance Indicators (KPIs)

- Revenue Before Promotion
- Revenue After Promotion
- Incremental Revenue (IR)
- Incremental Revenue Percentage (IR%)
- Units Sold Before Promotion
- Units Sold After Promotion
- Incremental Sold Units (ISU)
- Incremental Sold Units Percentage (ISU%)

---

# 📈 Dashboard Pages

## 🏪 Store Performance Analysis

> *<img width="569" height="395" alt="Dashboard_01_Store_Performance" src="https://github.com/user-attachments/assets/56878b9e-3f96-4c4a-a4b6-8bc03ea50aee" />*

Analyzes:

- Top 10 Stores by Incremental Revenue
- Bottom 10 Stores by Incremental Sold Units
- Incremental Revenue % by City

---

## 🎯 Promotion Performance Analysis

> *<img width="568" height="396" alt="Dashboard_02_Promotion_Analysis" src="https://github.com/user-attachments/assets/8e83cf2f-96f1-4abf-b88d-317fa9d4b4fb" />*

Analyzes:

- Incremental Revenue by Promotion Type
- Incremental Sold Units by Promotion Type
- Revenue Waterfall Analysis
- Campaign Performance Comparison

---

## 📦 Product & Category Performance Analysis

> *<img width="555" height="388" alt="Dashboard_03_Product_Analysis" src="https://github.com/user-attachments/assets/d5f6693f-ae97-4ea8-947e-dc6a59a364cf" />*

Analyzes:

- Revenue by Product Category
- Quantity Sold Before & After Promotion
- Top Products by Incremental Revenue

---

# 💡 Dashboard Insights

## 🏪 Store Performance Analysis

- **STMYS-3** emerged as the highest-performing store, generating **₹3.06M** in Incremental Revenue during the promotional campaigns.
- The **top five stores** each generated more than **₹2.6M** in Incremental Revenue, highlighting consistently strong campaign performance across key retail locations.
- **Madurai** and **Chennai** recorded the highest **Incremental Revenue Percentage (147%)**, demonstrating exceptional promotion effectiveness.
- **STMLR-0** recorded the **lowest Incremental Sold Units (348)** among the bottom 10 stores, indicating the weakest customer response during the promotional campaigns.

---

## 🎯 Promotion Performance Analysis

- **BOGOF (Buy One Get One Free)** was the most effective promotion, generating **₹8.11M** in Incremental Revenue and approximately **44.34K** Incremental Sold Units.
- The **₹500 Cashback** promotion delivered the second-highest campaign performance, contributing **₹10.50M** in Incremental Revenue and around **4.82K** additional units sold.
- Percentage discount promotions (**25% OFF, 33% OFF, and 50% OFF**) generated **negative Incremental Revenue**, indicating lower profitability compared to value-based promotions.
- Overall, the promotional campaigns generated **₹17.67M** in Incremental Revenue and approximately **52.77K** Incremental Sold Units.

---

## 📦 Product & Category Performance Analysis

- **Combo1** was the highest-performing product category, generating **₹91.05M** in Revenue After Promotion, making it the largest contributor to total campaign revenue.
- **Atliq Home Essential 8** generated the **highest Incremental Revenue** among all individual products, making it the best-performing product during the campaign.
- **Grocery & Staples** recorded the highest sales volume, increasing from **18.26K** units before promotion to **31.98K** units after promotion, reflecting strong customer demand during festive campaigns.
- **Personal Care** remained the lowest revenue-generating category after promotion, indicating comparatively lower campaign impact.

---

# 🚀 Business Recommendations

- Continue investing in **BOGOF** promotions, as they consistently delivered the highest revenue growth and sales uplift.
- Replicate the promotional strategies used by **STMYS-3** in lower-performing stores to improve overall campaign effectiveness.
- Increase inventory allocation for **Combo1** products and the **Grocery & Staples** category before festive campaigns to meet higher customer demand.
- Reassess percentage discount promotions (**25% OFF, 33% OFF, and 50% OFF**), as they reduced profitability despite increasing sales volume.
- Investigate the factors contributing to the low performance of **STMLR-0** and implement targeted strategies to improve promotional effectiveness in underperforming locations.

---

# 📝 SQL Business Requests

The project addresses five business requests using SQL:

1. High Value BOGOF Products
2. Store Count by City
3. Campaign Revenue Analysis
4. Diwali Incremental Sold Units Ranking
5. Top Products by Incremental Revenue Percentage

Each SQL solution is available in the **SQL** folder.

---

# 📁 Repository Structure

```
AtliQ-Mart-Sales-Analysis
│
├── Dashboard
├── Dataset
├── Project_Documents
├── SQL
├── Screenshots
├── README.md
├── LICENSE
└── .gitignore
```

---

# 👩‍💻 Author

**Shruti Patidar**

Aspiring Data Analyst with hands-on experience in **SQL, Power BI, DAX, Excel, and Python**, passionate about transforming business data into actionable insights through data visualization and analytics.

---

⭐ If you found this project interesting, feel free to explore the repository and share your feedback!
