-- Create database Supermarket_Sales
-- use supermarket_sales
-- Show table contents

/*
Select *
From sales
*/

# 1 PRODUCT PERFOMANCE KPIs
-- 1.1 Products contributing the most Sales
-- 1.2 Products Contributing  the most sales in each store
-- 1.3 Product category contributing the most sales
-- 1.4 Product category contributing the most sales in each store

# 1.1 Products contributing the most Sales

/*
Select product_name, Sum(total_price) as total_sales
From Sales
Group by product_name
order by Sum(total_price) desc
Limit 3;
*/

#FINDINGS
# 1 The top selling product is Shampoo with total sales of $27,037
# 2 Second highest product is Notebook with total sales of $24,787
# 3 Third Highest product is Orange juice with sale of $24,684

#1.2 Product contributing the most sales per City

/*
Select City, product_name, Sum(total_price) as total_sales
From Sales
Group by  City, product_name
order by city desc, Sum(total_price) desc
*/

# Findings
# 1 Top 2 contributors for Chicago are Orange Juice ($10,123) and Shampoo ($10,115)
# 2 Top 2 contributors for New York are Shampoo ($9,873) and Notebook ($9,247)
# 3 Top 2 contributors for Los Angeles are Orange Juice ($8,563) and Notebook(7,603)

# 1.3 Product category contributing the most sales

/*
Select product_category, sum(total_price) as total_sales
From sales
Group by product_category
Order by sum(total_price) desc
Limit 3
*/

# FINDINGS
# 1 Top category - Personal Care $27,047
# 2 2nd top category - Fruits $26,196
# 3 3rd top category - Beverages $22,975

# 1.4 Product category contributing the most sales in each store

/*
Select *
From 
(Select City,product_category, sum(total_price) as total_sales,
Row_number() Over(Partition by City order by sum(total_price) desc ) as category_Rank
From sales
Group by City, product_category
Order by sum(total_price) desc) as X
Where category_rank = 1
*/

#FINDINGS
# 1 Top category in New York - Personal Care $10,173
# 2 Top category in Chicago - Stationery $ 9,809
# 3 Top category in Los Angeles - $8,865








