-- Query: Total Internet Sales by Month
-- Purpose: Used to visualize sales trends over time in Power BI

SELECT 
    DATENAME(MONTH, OrderDate) AS [Month],
    YEAR(OrderDate) AS [Year],
    SUM(TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader
WHERE OnlineOrderFlag = 1
GROUP BY YEAR(OrderDate), DATENAME(MONTH, OrderDate)
ORDER BY Year, Month;
