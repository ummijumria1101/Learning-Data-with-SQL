select * FROM customer;
SELECT * FROM product;
SELECT * FROM sales;

select city, count(customer_id) as customer_count from customer
group by city
order by customer_count desc;

select product_id, sum(quantity) as soldquantity from sales
group by product_id
order by soldquantity desc;

select city, count(customer_id) as jumlahcustomer from customer
group by city
order by jumlahcustomer desc
limit 10;

select product_id, sum(sales) as total_sales, sum(quantity) as total_sales_quantity, 
count(order_id) as number_of_orders, max(sales) as max_sales, 
min(sales) as min_sales, avg(sales) as avg_sales
from sales
group by product_id
order by total_sales desc

select product_id, sum(quantity) as jumlahproduk
from sales
group by product_id
having sum(quantity)>10

select *,
case when age<30 then 'young'
	when age>30 then 'old'
	else 'middle age'
end as age_category
from customer;

--joins
