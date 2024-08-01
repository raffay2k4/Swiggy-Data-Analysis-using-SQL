create database portfolio_proj;
use portfolio_proj;

create table users (user_id int,
 name varchar(255),
 email varchar(255),
 passwords varchar(50)
 );
 
 INSERT INTO users (user_id, name, email, passwords) VALUES
(1, 'Nitish', 'nitish@gmail.com', 'p252h'),
(3, 'Vartika', 'vartika@gmail.com', '9hu7j'),
(4, 'Ankit', 'ankit@gmail.com', 'lkko3'),
(5, 'Neha', 'neha@gmail.com', '3i7qm'),
(6, 'Anupama', 'anupama@gmail.com', '46rdw2'),
(7, 'Rishabh', 'rishabh@gmail.com', '4sw123');

create table restaurants ( r_id int,
        r_name varchar(255),
        cuisine varchar(255));
        
insert into restaurants values
(1,'dominos','Italian'),
(2,'kfc','American'),
(3,'box8','North Indian'),
(4,'Dosa Plaza','South Indian'),
(5,'China Town', 'Chinese');

create table food (f_id int,
       f_name varchar(255),
       type varchar(255));

insert into food values
(1, 'Non-veg Pizza','Non-veg'),
(2, 'Veg Pizza', 'Veg'),
(3, 'Choco Lava cake', 'Veg'),
(4, 'Chicken Wings', 'Non-veg'),
(5, 'Chicken Popcorn', 'Non-veg'),
(6, 'Rice Meal', 'Veg'),
(7, 'Roti meal', 'Veg'),
(8, 'Masala Dosa', 'Veg'),
(9, 'Rava Idli', 'Veg'),
(10,'Schezwan Noodles', 'Veg'),
(11,'Veg Manchurian','Veg');

create table menu (menu_id int,
       r_id int,
       f_id int,
       price int);
       
INSERT INTO menu (menu_id, r_id, f_id, price) VALUES
(1, 1, 1, 450),
(2, 1, 2, 400),
(3, 1, 3, 100),
(4, 2, 3, 115),
(5, 2, 4, 230),
(6, 2, 5, 300),
(7, 3, 3, 80),
(8, 3, 6, 160),
(9, 3, 7, 140),
(10, 4, 6, 230),
(11, 4, 8, 180),
(12, 4, 9, 120),
(13, 5, 6, 250),
(14, 5, 10, 220),
(15, 5, 11, 180);

create table orders (order_id int,
     user_id int,
     r_id int,
     amount int,
     date date, 
     partner_id int,
     delivery_time int,
     delivery_rating int,
     restaurant_rating int);
     

INSERT INTO orders (order_id, user_id, r_id, amount, date, partner_id, delivery_time, delivery_rating, restaurant_rating) VALUES
(1001, 1, 1, 550, '2022-05-10', 1, 25, 5, 3),
(1002, 1, 2, 415, '2022-05-26', 1, 19, 5, 2),
(1003, 1, 3, 240, '2022-06-15', 5, 29, 4, NULL),
(1004, 1, 3, 240, '2022-06-29', 4, 42, 3, 5),
(1005, 1, 3, 220, '2022-07-10', 1, 58, 1, 4),
(1006, 2, 1, 950, '2022-06-10', 2, 16, 5, NULL),
(1007, 2, 2, 530, '2022-06-23', 3, 60, 1, 5),
(1008, 2, 3, 240, '2022-07-07', 5, 33, 4, 5),
(1009, 2, 4, 300, '2022-07-17', 4, 41, 1, NULL),
(1010, 2, 5, 650, '2022-07-31', 1, 67, 1, 4),
(1011, 3, 1, 450, '2022-05-10', 2, 25, 3, 1),
(1012, 3, 4, 180, '2022-05-20', 5, 33, 4, 1),
(1013, 3, 2, 230, '2022-05-30', 4, 45, 3, NULL),
(1014, 3, 2, 230, '2022-06-11', 2, 55, 1, 2),
(1015, 3, 2, 230, '2022-06-22', 3, 21, 5, NULL),
(1016, 4, 4, 300, '2022-05-15', 3, 31, 5, 5),
(1017, 4, 4, 300, '2022-05-30', 1, 50, 1, NULL),
(1018, 4, 4, 400, '2022-06-15', 2, 40, 3, 5),
(1019, 4, 5, 400, '2022-06-30', 1, 70, 2, 4),
(1020, 4, 5, 400, '2022-07-15', 3, 26, 5, 3),
(1021, 5, 1, 550, '2022-07-01', 5, 22, 2, NULL),
(1022, 5, 1, 550, '2022-07-08', 1, 34, 5, 1),
(1023, 5, 2, 645, '2022-07-15', 4, 38, 5, 1),
(1024, 5, 2, 645, '2022-07-21', 2, 58, 2, 1),
(1025, 5, 2, 645, '2022-07-28', 2, 44, 4, NULL);

CREATE TABLE delivery_partners (
  partner_id INT,
  partner_name VARCHAR(50)
);

INSERT INTO delivery_partners (partner_id, partner_name) VALUES
(1, 'Suresh'),
(2, 'Amit'),
(3, 'Lokesh'),
(4, 'Kartik'),
(5, 'Gyandeep');

CREATE TABLE order_details (
  id INT,
  order_id INT,
  f_id INT
);

INSERT INTO order_details (id, order_id, f_id) VALUES
(1, 1001, 1),
(2, 1001, 3),
(3, 1002, 4),
(4, 1002, 3),
(5, 1003, 6),
(6, 1003, 3),
(7, 1004, 6),
(8, 1004, 3),
(9, 1005, 7),
(10, 1005, 3),
(11, 1006, 1),
(12, 1006, 2),
(13, 1006, 3),
(14, 1007, 4),
(15, 1007, 3),
(16, 1008, 6),
(17, 1008, 3),
(18, 1009, 8),
(19, 1009, 9),
(20, 1010, 10),
(21, 1010, 11),
(22, 1010, 6),
(23, 1011, 1),
(24, 1012, 8),
(25, 1013, 4),
(26, 1014, 4),
(27, 1015, 4),
(28, 1016, 8),
(29, 1016, 9),
(30, 1017, 8),
(31, 1017, 9),
(32, 1018, 10),
(33, 1018, 11),
(34, 1019, 10),
(35, 1019, 11),
(36, 1020, 10),
(37, 1020, 11),
(38, 1021, 1),
(39, 1021, 3),
(40, 1022, 1),
(41, 1022, 3),
(42, 1023, 3),
(43, 1023, 4),
(44, 1023, 5),
(45, 1024, 3),
(46, 1024, 4),
(47, 1024, 5),
(48, 1025, 3),
(49, 1025, 4),
(50, 1025, 5);


-- Q1: Find customers who have never ordered
Select * from users
where user_id not in
( 
Select user_id from orders
);

-- Q2: Average Price/dish
Select avg(price) as Average_Price_Per_Dish from menu ;

-- Q3: Find the top restaurant in terms of the number of orders for a given month (June)=
with cte as
(
Select r_id, count(order_id) as no_of_orders from orders
where month(date)=6
group by r_id
)
Select r.r_name as restaurant_name, c.no_of_orders as no_of_orders_in_june from restaurants r
inner join cte c on c.r_id=r.r_id
order by c.no_of_orders desc
limit 3;

-- Q4: Restaurants with monthly sales greater than x for (x = Avg sale per month)
with cte as
(
Select r_id,monthname(date) as monthname ,sum(amount) as sales_of_month from orders
group by r_id, monthname(date)
),
cte2 as
(
select monthname, avg(sales_of_month) as avg_sales_of_month from cte
group by monthname
),
cte3 as
(
select c1.*, c2.avg_sales_of_month from cte c1
inner join cte2 c2 on c1.monthname=c2.monthname
where c1.sales_of_month>c2.avg_sales_of_month
)
select r.r_name,c3.* from restaurants r
inner join cte3 c3 on c3.r_id=r.r_id;

-- Q5: Show all orders with order details for a particular customer (3) in a particular date range (June)
with cte as
(
select o.* from orders o
inner join users u where u.user_id=o.user_id 
and u.user_id=3 and month(o.date)=6
)
Select od.*,c.* from order_details od
inner join cte c on od.order_id=c.order_id;

-- Q6: Find restaurants with max repeated customers
with cte as
(
select r_id,user_id,count(order_id) from orders
group by r_id,user_id
having count(order_id)>1
)
select r.r_name,count(c.user_id) from cte c
inner join restaurants r on r.r_id=c.r_id
group by r.r_name 
order by count(c.user_id) desc
limit 1;

-- Q7: Month over month revenue growth of Swiggy
with cte as
(
select month(date) as monthnum, sum(amount) as totalrevenue from orders
group by monthnum
)
select monthnum, totalrevenue as revenue_of_month,
(totalrevenue-lag(totalrevenue) over (order by monthnum)) as revenue_growth
from cte;

-- Q8:Customer — favourite food
with cte as
(
select o.user_id,f.f_name,count(o.order_id) as timesordered from orders o
inner join order_details od on o.order_id=od.order_id
inner join food f on f.f_id=od.f_id
group by o.user_id,f.f_name
),
cte2 as
(
Select rank() over (partition by user_id order by timesordered desc) as Most_ordered_ranking ,user_id,f_name,timesordered
from cte
)
Select * from cte2
where Most_ordered_ranking=1;
   
-- Q9:Find the most loyal customers for all restaurant 
with cte as
(
select r.r_name,o.user_id, count(o.order_id) as timesvisited from orders o
inner join restaurants r on o.r_id=r.r_id
group by r.r_name,o.user_id
),
cte2 as
(
Select rank() over (partition by r_name order by timesvisited desc) as loyalranking,r_name,user_id,timesvisited
from cte
)
Select * from cte2 
where loyalranking =1;

-- Q10:Month-over-month revenue growth of a restaurant (2=Kfc)
with cte as
(
Select month(date) as monthnum, sum(amount) as sales from orders
where r_id=2
group by monthnum
)
Select monthnum, sales, (sales - lag(sales) over (order by monthnum)) as revenue_growth
from cte;