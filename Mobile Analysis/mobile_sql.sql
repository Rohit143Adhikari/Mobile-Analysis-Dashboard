create database warehouse_mobile;
use warehouse_mobile;
select * from mobile;

-- Check mobile features and price list --
select phone_name , price from mobile;

-- Find out the price of 5 most expensive phones --
select * from mobile
order by price  desc
limit 5;

-- Find out the price of 5 most cheapest phones --
select * from mobile
order by price asc
limit 5;
 
 -- list of top 5 samsung phones with price and all features --
 select * from mobile where Brands = "Samsung"
 order by price desc
 limit 5;
 
 -- must have android phone list then top 5 high price android phones --
 select * from mobile where operating_system_type = "Android"
 order by price desc
 limit 5;
 
 -- Must have android phone list them top 5 lower price andrpid phones --
 select * from mobile where operating_system_type = "Android"
 order by price asc
 limit 5;
 
 -- Must have IOS phone list then top 5 High price IOS phones --
 select * from mobile where  operating_system_type = "IOS"
 order by price desc
 limit 5;
 
 -- Must have IOS phone list then top 5 lowest price IOS phones --
 select * from mobile where operating_system_type = "IOS"
 order by price asc
 limit 5;
 
 -- write a query which phone support 5g and also top 5 phone with 5g support --
 select * from mobile where 5G_Availability = "Yes"
 order by price desc
 limit 5;
 
-- Total price of all mobile is to be found with brand name --
select brands, sum(price) from mobile group by brands;
 