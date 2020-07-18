#Assignment –6 Using Special Operators in Conditions.
/*1) Write two different queries that would produce all orders taken on October 3rd or 
4th, 1990.*/

 Use day1;
 select * from orders where odate between '1990-10-03' AND '1990-10-04';

 /*2) Write a query that selects all of the customers serviced by Peel or Motika.
(Hint: the snum field relates the two tables to one another).*/

select * from customers where snum=1001 or snum=1004;

/*3) Write a query that will produce all the customers whose names begin with a letter 
from ‘A’ to ‘G’.*/
select * from customers where Cname >'A' and Cname <'H';

 
 
 /*4)Write a query that selects all customers whose names begin with the letter ‘C’.*/
 select * from customers where Cname like 'G%';
 
 
 /*5) Write a query that selects all orders except those with zeroes or NULLs in the amt 
field.*/
 
SELECT * FROM orders WHERE amt IS NOT NULL;