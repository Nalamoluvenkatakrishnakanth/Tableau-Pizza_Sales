create database pizza;
use pizza;
select * from pizza_sold_dataset;

#1) Total revenue:- sum of the total price of all pizza orders

select * from pizza_sold_dataset;
SELECT 
    CAST(SUM(total_price) AS DECIMAL (10 , 2 )) AS total_price
FROM
    pizza_sold_dataset;



#2) Average order value: The average amount spent per order.
   #calculated by dividing the total revenue by the total number of orders
   select * from pizza_sold_dataset;
select cast(cast(sum(total_price) as decimal(10,2))/cast(count(distinct order_id) as decimal(10,2)) as decimal(10,4)) as Avg_order from pizza_sold_dataset;
   
   
   
#3) Total pizza sold :- the sum of the quantities of all pizzas sold
select * from pizza_sold_dataset;
select sum(quantity) as Total_pizza_sold from pizza_sold_dataset;

#4) Total Orders:- The total number of orders placed
select * from pizza_sold_dataset;
select count(distinct order_id) as Total_order from pizza_sold_dataset;


#5) Average pizzas per order:- the average number of pizzas sold per order.
  # Calculated by dividing the total number of pizzas sold by the total number of orders
select * from pizza_sold_dataset;
select sum(quantity)/count(distinct order_id) from pizza_sold_dataset;

