-- TOTAL REVENUE --
select SUM(sales) AS Total_Sales
FROM global_superstore2;

--  CATEGORY SALES --
select category,SUM(sales) as Total_Sales
FROM global_superstore2
GROUP BY category
ORDER BY Total_Sales DESC;

-- SUB-CATEGORY SALES --
select sub_category,SUM(sales) as Total_Sales
FROM global_superstore2
GROUP BY sub_category
ORDER BY Total_Sales DESC;

-- REGION SALES --
select region,SUM(sales) as Total_Sales
FROM global_superstore2
GROUP BY region
ORDER BY Total_Sales DESC;
-- TOTAL PROFIT --
select sum(profit) as Total_Profit
from global_superstore2;

-- PROFIT CATEGORY --
select category,SUM(profit) as Total_Profit
FROM global_superstore2
GROUP BY category
ORDER BY Total_Profit DESC; 

-- PROFIT SUB-CATEGORY -- 
select sub_category,SUM(profit) as Total_Profit
FROM global_superstore2
GROUP BY sub_category
ORDER BY Total_Profit DESC; 

-- LOSS BY PRODUCT
select product_name,SUM(profit) as Total_Profit
FROM global_superstore2
GROUP BY product_name
ORDER BY Total_Profit 
LIMIT 5; 

-- PROFIT MARGIN BY CATEGORY 
select category,(sum(profit) / sum(sales))*100 as Profit_Margin
FROM global_superstore2
GROUP BY category
ORDER BY Profit_Margin ;

-- PROFIT MARGIN BY SUB_CATEGORY 
select sub_category,(sum(profit) / sum(sales))*100 as Profit_Margin
FROM global_superstore2
GROUP BY sub_category
ORDER BY Profit_Margin 
LIMIT 5;