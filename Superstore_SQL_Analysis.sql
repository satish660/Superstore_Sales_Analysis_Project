USE superstore;

-- Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore_sales;

-- Sales by Category
SELECT Category, ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore_sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Sales by Region
SELECT Region, ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore_sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top 10 Customers
SELECT Customer_Name, SUM(Sales) AS Total_Sales
FROM superstore_sales
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Year-wise Sales
SELECT YEAR(Order_Date) AS Year,
SUM(Sales) AS Total_Sales
FROM superstore_sales
GROUP BY YEAR(Order_Date)
ORDER BY Year;
