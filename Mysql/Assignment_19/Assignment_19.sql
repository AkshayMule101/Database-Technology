							#Assignment – 18
					
					#Maintaining the Integrity of your Data.
                    
-- 1) Create a view that shows all of the customers who have the highest ratings.

 create view v7 as select * from customers where rating = 
 (select max(rating) from customers);
 
 select * from v7;
 
 -- 2) Create a view that shows the number of salespeople in each city.
 
create view  v9 as select city, count(city) 'Number of salespeople'
from salespeople group by city;

select * from v9;

/*3) Create a view that shows the average and total orders for each salesperson after 
his or her name. Assume all names are unique.*/

create view v11 as select distinct sname, avg(amt), count(onum) from salespeople 
natural join orders group by sname;

select * from v11;

-- 4) Create a view that shows each salesperson with multiple customers.

create view sc as select sname,cname from salespeople natural join  customers order by sname;

select * from sc;