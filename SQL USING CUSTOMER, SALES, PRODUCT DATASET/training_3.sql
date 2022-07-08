select * from customer
select * from product
select * from sales

create table sales2015 as select * from sales where ship_date between '2015-01-01' and '2015-12-31';
select * from sales2015;
--select jumlah customer pada tabel sales2015
select count(distinct customer_id) as jumlahcustomer2015 from sales2015;

create table customer_20_60 as select * from customer where age between 20 and 60;
select count(customer_id) from customer_20_60;
select * from customer_20_60;

--inner join
SELECT
a.order_line,
a.product_id,
a.customer_id,
a.sales,
b.customer_name,
b.age
FROM sales2015 as a
INNER JOIN customer_20_60 AS b
ON a.customer_id=b.customer_id
order by customer_id;