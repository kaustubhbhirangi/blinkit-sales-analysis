CREATE OR REPLACE VIEW view_sales_summary_by_fat AS
SELECT 
    Item_Fat_Content,
    CONCAT(CAST(SUM(Sales) / 10000 AS DECIMAL(10 , 2 )),'K') AS Tot_Sales_Thousand,
    ROUND(AVG(Sales), 0) AS Avg_sales_by_fat,
    COUNT(*) AS Tot_item_count_by_fat,
    ROUND(AVG(rating), 2) AS avg_rating_by_fat
FROM blinkit_data
GROUP BY Item_Fat_Content;

select * from view_sales_summary_by_fat