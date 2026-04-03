create database zomato_d;
use zomato_d;
drop table zomato;
CREATE TABLE zomato (
url TEXT,
address TEXT,
name TEXT,
online_order VARCHAR(10),
book_table VARCHAR(10),
rate VARCHAR(10),
votes INT,
phone TEXT,
location TEXT,
rest_type TEXT,
dish_liked TEXT,
cuisines TEXT,
cost_for_two INT,
reviews_list LONGTEXT,
menu_item LONGTEXT,
restaurant_type TEXT,
city TEXT
);
ALTER TABLE zomato
MODIFY cost_for_two INT NULL;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/zomato_clean.csv'
INTO TABLE zomato
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(url,address,name,online_order,book_table,rate,votes,phone,location,rest_type,@dish_liked,cuisines,@cost_for_two,@reviews_list,@menu_item,restaurant_type,city)
SET cost_for_two = NULLIF(@cost_for_two,'');

-- Which area in bangalore have the most restaurants

select city,count(*) as total_restaurants
from zomato group by city order by total_restaurants desc
limit 10;

-- restaurants accept online order and best rating

select online_order, round(avg(rate),2) as avg_rating, count(*) as total_restaurants 
from zomato group by online_order;

-- Restaurant type gives best value ,high rating and low cost

select restaurant_type, round(avg(rate),2) as avg_rating, round(avg(cost_for_two),0) as avg_cost, count(*) as count 
from zomato group by restaurant_type 
having count>50 order by avg_rating desc;

-- Top 10 highest rated cuisines

select cuisines, round(avg(rate),2) as avg_rating, count(*) as restaurant_count
from zomato group by cuisines 
having restaurant_count >100 order by avg_rating desc 
limit 10;

-- restaurant ( BUDGET VS MID VS PREMIUM)

SELECT
 case
     when cost_for_two <= 300 then 'BUDGET'
     when cost_for_two <= 800 then 'MID-Range'
     
else 'PREMIUM'
End as price_segment,
count(*) as restaurant_count, round(avg(rate),2) as avg_rating
from zomato group by price_segment order by restaurant_count desc;  

-- which areas have the best rated restaurants on average

select city,round(avg(rate),2) as avg_rating ,round(avg(cost_for_two),0) as avg_cost, count(*) as total 
from zomato group by city
having total > 100 order by avg_rating desc
limit 10;

-- Table Booking Availability
SELECT book_table, COUNT(*) AS restaurants
FROM zomato
GROUP BY book_table;
     