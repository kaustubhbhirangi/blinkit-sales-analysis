#KPIs Requirement:-

-- 1. Total sales: The overall revenue generated from all the items sold.
select cast(sum(Sales) / 1000000 as decimal (10,2)) as Tot_Sales_Millions 
from blinkit_data;

-- 2. Avg sales: Avg revenue per sale.
select round(avg(Sales),0) as Avg_sales 
from blinkit_data;

-- 3. Number of items: Total count of different items sold.
select count(*) as Tot_Item_Count 
from blinkit_data;

-- 4. Average Rating: Average customer rating.
select round(avg(rating),2) as avg_rating 
from blinkit_data
group by Item_Type order by avg_rating desc;
