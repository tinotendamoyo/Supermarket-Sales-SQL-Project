# 1 SALES AND REVENUE KPIs

# 1.1 The total amount of money earned from sales.
# 1.2 The total amount of money earned from sales by City
# 1.3 Revenue by product category
# 1.4 The average amount spent by customers per transaction.
# 1.5 Number of sales transactions by customers below average

# 1.1 The total amount of money earned from sales.

/*
Select sum(total_price)
From Sales
*/

# FINDINGS 
# 1 The total amount earned from sales is $118,574

# 1.2 The total amount of money earned from sales by City

/*
Select city, sum(total_price) as total_sales
From Sales
group by city
*/

# FINDINGS 
-- 1 The total sales in New york are $40,215, followed by Los Angeles $35,769 and lastly Chicago with $42,590.

# 1.3 Revenue by product category

/*
Select product_category, sum(total_price) as total_sales
From Sales
group by product_category
Order by sum(total_price) desc
*/

# FINDINGS
-- 1 Personal care $ 27,047
-- 2 Fruits $26,196
-- 3 Beverages $22,975
-- 4 Household $21,625
-- 5 Stationery $20,731

# 4 The average amount spent by customers per transaction.

/*
Select Round(Avg(total_price),2) as average_sales_per_transaction
From sales
*/

# FINDINGS 
-- 1 Average sales per transaction is $118,57

# 5 Number of sales transactions by customers below average

/*
Select count(sale_id)
From sales
where total_price < (Select Round(Avg(total_price),2) as average_sales_per_transaction
					 From sales)
*/

# FINDINGS
-- 598 sales transactions out of 1000 are below average sales.


					


