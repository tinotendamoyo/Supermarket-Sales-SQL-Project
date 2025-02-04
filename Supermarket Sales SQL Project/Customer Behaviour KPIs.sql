# 1 CUSTOMER BEHAVIOUR KPIs
# 1.1 The number of customers visiting each store
# 1.2 Percentage of membership in each store
# 1.3 Number of Male or Female customers per store
# 1.4 Total number of transactions above $200 per store
# 1.5 The gender spending the most

# 1.1 The number of customers visiting each store

/*
Select City, count( Distinct sale_id) as No_of_customers
From sales
Group by City
*/

#FINDINGS
# 1 New York 344
# 2 Chicago 330
# 3 Los Angeles 326

# 1.2 Percentage of membership in each store

/*
Select City,
(Sum(Case When customer_type= 'member' Then 1 Else 0 End)/Count(*))*100 as Percentages
From sales
group by City
*/

#FINDINGS
# 1 New York 51.45%
# 2 Los Angeles 49.39%
# 3 Chicago 59.94%

# 1.3 Number of male or female customers per store

/*
Select City, Gender, Count(Gender) as Gender_Count
From Sales
Group by City, Gender
order by City
*/

# FINDINGS
# 1 Chicago - Female (146) , Male (184)
# 2 Los Angeles - Females (154), Male (172)
# 3 New York - Females (172), Male (172)

# 1.4 Total number of transactions above $200 per store

/*
Select City, Count(total_price) as No_of_Transactions 
From Sales
Where total_price > 200
Group by City
*/

# FINDINGS
# 1 Chicago 81
# 2 Los Angeles 60
# New York 69
	
# 1.5 The gender spending the most

/*
Select gender, sum(total_price) as total_sales
From sales
Group by gender
*/

#FINDINGS
# 1 The male gender spend the most with $64,309 in total sales followed by females with $54,265 in total sales