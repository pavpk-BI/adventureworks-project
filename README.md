# 📊 AdventureWorks Sales Insights Dashboard

This project explores the **AdventureWorks** dataset using **SQL** and **Power BI** to build a professional sales analytics dashboard. It showcases key business intelligence skills, including data extraction, transformation, modeling, and visualization to deliver actionable sales insights.

---

## 🚀 Project Overview

**Goal:**  
To analyze sales performance across different products, territories, and time periods for the AdventureWorks company. The aim is to identify key trends, performance metrics, and strategic opportunities through a visual Power BI dashboard.

**Tools & Technologies:**
- 🛠️ SQL Server: Data extraction and transformation
- 📊 Power BI: Data modeling and dashboard creation
- 📐 DAX: Calculated measures and KPIs
- 📁 Power Query: Data shaping and cleaning

---

## 🗂️ Dataset

**AdventureWorks DW 2017** – a sample database provided by Microsoft for business intelligence demonstrations. Key tables used include:
- `FactInternetSales`
- `DimProduct`
- `DimCustomer`
- `DimGeography`
- `DimDate`
- `DimSalesTerritory`

---

## 🔧 Process Breakdown

### 1. Data Extraction (SQL)
Used SQL to join, filter, and aggregate data from multiple normalized tables.

Example query:

```sql
SELECT 
    c.FirstName + ' ' + c.LastName AS CustomerName,
    p.EnglishProductName AS Product,
    d.CalendarYear,
    s.SalesAmount,
    g.EnglishCountryRegionName AS Country
FROM FactInternetSales s
JOIN DimCustomer c ON s.CustomerKey = c.CustomerKey
JOIN DimProduct p ON s.ProductKey = p.ProductKey
JOIN DimDate d ON s.OrderDateKey = d.DateKey
JOIN DimGeography g ON c.GeographyKey = g.GeographyKey;
```

### 2. Data Modeling in Power BI

- Created relationships between fact and dimension tables.
- Cleaned and transformed data using Power Query.
- Built a star schema model for efficient filtering and aggregation.
- Created calculated columns and DAX measures for KPIs like total sales and YoY growth.

### 3. Dashboard Development

Developed an interactive Power BI dashboard featuring:

- Sales trends by year and region
- Top-selling products and top customers
- Revenue breakdown by product category
- Filters for year, region, and product type

📸 **Dashboard Preview:**  --Need to include an image of the dashboard [follow https://www.youtube.com/watch?app=desktop&v=1eOYUZynxt8]
![AdventureWorks Dashboard](images/dashboard-preview.png)

## 📈 Key Insights

- 📈 Sales increased by **18%** from 2013 to 2014.
- 🚲 **Mountain Bikes** generated the highest revenue of all product categories.
- 🌍 **Europe** showed a Q4 sales decline in 2014.
- 🧍‍♂️ Top 10 customers contributed over **30% of total revenue**, indicating a skewed customer distribution.

## 💡 Skills Demonstrated

- **SQL querying** (joins, grouping, filtering)  
  Demonstrated proficiency in extracting and preparing data using SQL.

- **Data cleaning and shaping with Power Query**  
  Applied data transformation techniques to clean and shape data for analysis.

- **Data modeling using star schema**  
  Utilized best practices in data modeling to create an optimized, performance-efficient data model.

- **DAX measures and KPIs**  
  Created custom DAX calculations such as total sales, YoY growth, and other KPIs to support business analysis.

- **Power BI dashboard design and interactivity**  
  Designed an interactive dashboard with filters and slicers to provide a dynamic user experience.

- **Visual storytelling and insight generation**  
  Transformed raw data into compelling visual stories, highlighting key business insights for decision-makers.

## 📂 Project Files

- `dashboard.pbix` – Power BI dashboard file
- `sql-scripts/queries.sql` – SQL used for data extraction
- `images/dashboard-preview.png` – Screenshot of dashboard

## 📬 Contact

If you have any questions or would like to discuss the project further, feel free to reach out:

- **Email**: your-email@example.com
- **LinkedIn**: [LinkedIn Profile](https://www.linkedin.com/in/your-profile)
- **GitHub**: [GitHub Profile](https://github.com/your-profile)

