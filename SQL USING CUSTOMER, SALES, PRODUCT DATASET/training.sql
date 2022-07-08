select * FROM customer;
SELECT * FROM product;
SELECT * FROM sales;

select * from customer
where city in ('Philadelphia', 'Seattle'); --same result with or statement

select * from customer
where age between 20 and 30 --same result with and statement
order by age;

select * from sales
where ship_date between '2016-11-11' and '2017-10-11'
order by ship_date;

select * from customer
where customer_name like 'J%';

SELECT * FROM customer
where customer_name like '___ %';

select distinct city, region
from customer
where region in ('North', 'East');

select * from sales
where sales between 100 and 500
order by sales;

select * from customer
where customer_name like '% ____';

SELECT * from sales
where discount >0
order by discount desc limit 10;

select count (product_id) as totalbelanjaan,COUNT (distinct order_id) as orderid
from sales
where customer_id='CG-12520'

select sum(profit) as "total profit"
from sales;

select count (distinct customer_id), max(quantity) as maxquantity
from sales;