#Granuar Requirements:-

-- 1. Total Sales by Fat Content
--    Objective: Analyze the impact of fat content on total sales.
--    Additional KPI Metrics: Assess how other KPIs (Average Sales, Number of Items, Average Rating) vary with fat content.
SELECT 
    Item_Fat_Content,
    CONCAT(CAST(SUM(Sales) / 10000 AS DECIMAL (10 , 2 )),'K') AS Tot_Sales_Thousand,
    ROUND(AVG(Sales), 0) AS Avg_sales_by_fat,
    COUNT(*) AS Tot_item_count_by_fat,
    ROUND(AVG(rating), 2) AS avg_rating_by_fat
FROM
    blinkit_data
GROUP BY Item_Fat_Content;

-- 2. Total Sales by Item Type
--    Objective: Identify the performance of different item types in terms of total sales.
-- 	  Additional KPI Metrics: Assess how other KPIs (Average Sales, Number of Items, Average Rating) vary with fat content
select Item_Type,
	concat(cast(sum(Sales) / 10000 as decimal (10,2)),'K') as Tot_Sales_Thousand,
    round(avg(Sales),0) as Avg_sales_by_fat,
    count(*) as Tot_item_count_by_fat,
    round(avg(rating),2) as avg_rating_by_fat 
from blinkit_data
group by Item_Type;

-- 3. Fat Content by Outlet for Total Sales: 
-- 	  Objective: Compare total sales across different outlets segmented by fat content.
--    Additional KPI Metrics: Assess how other KPIs (Average Sales, Number of Items, Average Rating) vary with fat content.
SELECT 
    Outlet_Location_Type,
    ROUND(SUM(CASE WHEN Item_Fat_Content = 'Low Fat' THEN Sales ELSE 0 END), 2) AS Low_Fat,
    ROUND(SUM(CASE WHEN Item_Fat_Content = 'Regular' THEN Sales ELSE 0 END), 2) AS Regular
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Outlet_Location_Type;

-- 4. Total Sales by Outlet Establishment:
-- Objective: Evaluate how the age or type of outlet establishment influences total sales.
SELECT Outlet_Establishment_Year, 
		CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;

-- 5. Percentage of Sales by Outlet Size:
-- Objective: Analyze the correlation between outlet size and total sales.
SELECT 
    Outlet_Size, 
    ROUND(SUM(Sales), 2) AS Total_Sales,
    CONCAT(ROUND(SUM(Sales) * 100.0 / (SELECT SUM(Sales) FROM blinkit_data), 2),'%') AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

-- 6. Sales by Outlet Location:
-- Objective: Assess the geographic distribution of sales across different locations.
    SELECT 
    Outlet_Location_Type, 
    ROUND(SUM(Sales), 2) AS Total_Sales,
    CONCAT(ROUND(SUM(Sales) * 100.0 / (SELECT SUM(Sales) FROM blinkit_data), 2),'%') AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;

-- 7. All Metrics by Outlet Type:
-- Objective: Provide a comprehensive view of all key metrics (Total Sales, Average Sales, Number of 	Items, Average Rating) broken down by different outlet types.
SELECT
    Outlet_Type,
    ROUND(SUM(Sales),2) AS Tot_Sales,
    ROUND(AVG(Sales),2)  AS Avg_sales,
    COUNT(*) AS Tot_item_count,
    ROUND(AVG(rating),2) AS avg_rating,
    ROUND(AVG(Item_Visibility),2) AS Item_Visibility
FROM blinkit_data
GROUP BY Outlet_Type 
ORDER BY Tot_Sales,Avg_sales,Tot_item_count,avg_rating;