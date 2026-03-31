SELECT COUNT(DISTINCT "Order_ID") AS total_orders
FROM train ;


SELECT category, SUM(Sales) AS total_sales
FROM train
group by category
order by total_sales desc;


SELECT "customer_name", sum(sales) as total_spent
from train 
GROUP by "customer_name"
order by total_spent DESC
LIMIT 10;


SELECT
     strftime ('%y-%m', "Order_date") as month,
     sum(sales) as total_sales
FROM train
group by month 
order by month ;

SELECT "product_name", sum(sales) as total_sales
FROM train
group by "product_name"
order by total_sales DESC
limit 1;
